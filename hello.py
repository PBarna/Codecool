import sys

def hello():
    global name
    name = "World"

    if len(sys.argv) == 2:
        name = sys.argv[1]

    elif len(sys.argv) > 2:
        name = sys.argv[1] + " " + sys.argv[2]

def screen():
    print("Hello " + name + "!")

hello()
screen()
