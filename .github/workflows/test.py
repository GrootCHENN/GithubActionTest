import requests
import json
import os

def read_file():
  with open("./demo.txt","r") as f:
    txt = f.read()
    print(txt)
def edit_pr():
  url = "https://api.github.com/repos/GrootCHENN/GithubActionTest/pulls/1"
  headers = {
      "Accept": "application/vnd.github+json",
      "Authorization": "Bearer {}".format(token),
      "X-GitHub-Api-Version": "2022-11-28"
  }
  data = {
    "title":"{}".format(title),
    "body":"updated with python",
    "state":"open",
    "base":"main"
  }
  rsp = requests.post(url, data=json.dumps(data),headers = headers).text
  print(rsp)
 
if __name__ == "__main__":
  token = os.environ.get("GITHUB_TOKEN")
  title = os.environ.get("PR_TITLE")
  repository = os.environ.get("REPOSITORY")
  if not token:
    raise RuntimeError("token not found")
  else:
    print("get token -- {}".format(token.split("_")))
    print("get title -- {}".format(title))
    print("get repostitory -- {}".format(repository))
  read_file()
#   edit_pr()
