import requests

def hello_world():
  with open("./demo.txt","r") as f:
    txt = f.read()
    print(txt)
  data = requests.get("http://43.142.76.49:8989/kaoyanbisheng").text
  print(data)
 
if __name__ == "__main__":
  hello_world()
