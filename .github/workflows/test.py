import subprocess
import json
import os
import requests

class Package:
    package_name: str
    checksum: str
    version: str
    identity: str
    url: str

    def __init__(self, package_name: str, checksum: str, version: str, identity: str, url: str):
        self.package_name = package_name
        self.checksum = checksum
        self.version = version
        self.identity = identity
        self.url = url

class DMAlert:
    github_repo: str
    github_url: str
    branch_name: str = "main"
    diff_value: dict

    def __init__(self):
        self.load_env()

    def run(self):
        swift_package_dump_output = self.run_command("swift package dump-package")
        package_targets = self.parse_packages(self.str_to_json(swift_package_dump_output))
        if self.branch_name == "main":
            old_targets = self.read_from_local()
            new_targets = package_targets
            self.get_diff(old_targets, new_targets)
            self.send_msg_in_slack()
        else:
            self.save_in_local(package_targets)

    def load_env(self):
        github_repo = os.environ.get("GITHUB_REPO")
        github_url = os.environ.get("GITHUB_URL")
        branch_name = os.environ.get("BRANCH_NAME")
        if branch_name is None:
            raise Exception("can't find BRANCH_NAME ENV in Github action.")
        if github_url is None:
            raise Exception("can't find GITHUB_URL ENV in Github action.")
        if github_repo is None:
            raise Exception("can't find GITHUB_REPO ENV in Github action.")

    def run_command(self, command: str) -> str:
        output = subprocess.check_output(command, shell=True, text=True)
        return output

    def str_to_json(self, content: str) -> json:
        return json.loads(content)

    def get_package_version(self, name: str) -> str:
        return name.split("-")[-1].split(".x")[0]

    def parse_packages(self, manifest: json) -> dict:
        name = manifest["name"]
        targets_json = manifest["targets"]
        targets: dict = {}
        for target in targets_json:
            package_name = target["name"]
            checksum = target["checksum"]
            url = target["url"]
            version = self.get_package_version(url)
            if version.replace(".", "").isdigit():
                identity = None
            else:
                identity = version
                version = None
            package = Package(package_name= package_name,checksum=checksum,url=url,version=version,identity=identity)
            targets[package_name] = package.__dict__
        package_dependencies = {"projectName": name, "githubRepo": os.environ.get("GITHUB_REPO"),
                                "githubPRUrl": os.environ.get("GITHUB_URL"), "dependencies": targets}
        return package_dependencies

    def save_in_local(self, data: dict):
        with open("./package.json", "w") as f:
            f.write(json.dumps(data,indent=4))
            f.close()
            print("save package.json to local -- Done!")

    def read_from_local(self) -> json:
        with open("./package.json", "r") as f:
            data = f.read()
            f.close()
            return json.loads(data)

    def get_diff(self, old: json, new: json) -> json:
        diff_values = {
            "delete": [],
            "update": [],
            "increase": [],
        }
        old_dependencies = old["dependencies"]
        new_dependencies = new["dependencies"]
        for key, oldDependency in old_dependencies.items():
            # FOR DELETE ITEMS
            if key not in new_dependencies:
                diff_values["delete"].append(old_dependencies[key])
                continue
            # FOR UPDATE ITEMS
            diff_dependency = oldDependency
            update_flag = False
            for option, optionValue in new_dependencies[key].items():
                if oldDependency[option] != optionValue:
                    diff_dependency[option] = strikethrough(str(oldDependency[option])) + " 􀄫 " + str(optionValue)
                    update_flag = True
            if update_flag: diff_values["update"].append(diff_dependency)
        # FOR INCREASED ITEMS
        for key, new_dependencies in new_dependencies.items():
            if key not in old_dependencies:
                diff_values["increase"].append(new_dependencies)
        # CHECK IF THERE GOT EMPTY DIFF ITEMS
        for key, value in list(diff_values.items()):
            if len(value) == 0:
                diff_values.pop(key)
        self.diff_value = diff_values
        # print(json.dumps(diff_values, indent=4, ensure_ascii=False))

    def send_msg_in_slack(self):
        payload = {
            "blocks": [
                {
                    "type": "section",
                    "text": {
                        "type": "mrkdwn",
                        "text": "*The {} has been updated in this branch*\n*<{}|{}>*".format(self.github_repo, self.github_url, self.branch_name)
                    }
                },
                {
                    "type": "section",
                    "text": {
                        "type": "mrkdwn",
                        "text": "{}".format(self.content_builder())
                    },
                }
            ]
        }
        headers = {
            "Content-Type": "application/json"
        }
        rsp = requests.post("https://hooks.slack.com/services/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",
                            data=json.dumps(payload),
                            headers=headers).text
        print(rsp)
        # print(json.dumps(payload, indent=4))

    def content_builder(self) -> str:
        msg = ""
        for key, value in self.diff_value.items():
            msg += switch_line(bold(key.upper()))
            for index, data in enumerate(value):
                if index == 0:
                    msg += subline(data["package_name"], index+1)
                elif index == len(value) -1:
                    msg += subline(data["package_name"], index+1)
                else:
                    msg += subline(data["package_name"], index+1)
        print(msg)
        return msg

def strikethrough(s: str) -> str:
    return ''.join([u'\u0336{}'.format(char) for char in s])

def switch_line(s: str) -> str:
    return s+"\n"

def bold(s: str) -> str:
    return "*{}*".format(s+":")

def subline(s: str, index: int) -> str:
    # return "{}".format("    "+s+", " if is_first else s+".\n" if is_last else s+", ")
    return "{}".format("    "+str(index)+". "+s+"\n")

if __name__ == "__main__":
    # ENV should have GITHUB_REPO and GITHUB_URL
    main = DMAlert()
    main.run()
