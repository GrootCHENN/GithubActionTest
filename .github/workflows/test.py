
def hello_world():
  with open("./demo.txt","r") as f:
    txt = f.read()
    print(txt)
 
if __name__ == "__main__":
  hello_world()
