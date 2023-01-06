import subprocess
import json
import os
import requests

def read():
    with open("./demo.txt","r") as f:
        
        print(f.read())
        f.close()

if __name__ == "__main__":
#     main = DMAlert()
#     main.run()
    print("running python")
    print(os.environ.get("GITHUB_WORKSPACE"))
    read()
    subprocess.call("git fetch origin pr_test", shell=True, cwd=os.environ.get("GITHUB_WORKSPACE"))
    subprocess.call("git checkout pr_test", shell=True, cwd=os.environ.get("GITHUB_WORKSPACE"))
    read()
    
