# Dealing with files and error/exception handeling

# There is a built in a method in Python called open('')

# file = open("orders.txt") # looks for the file called orders.text

#keyword try

try:
    file = open("orders.text")
    print(file.read())
except FileNotFoundError as errmsg:
    print('The above block was not executed')
    print(errmsg)
    # raise
finally:
    print('THe error was found, your task is to read the data and display it as a list')

# second iteration:
# Your task is to read the data and display it as a list
try:
    file = open("orders.text")
    print(file.read())
except FileNotFoundError as errmsg:
    print('The above block was not executed')
    print(errmsg)
    # raise
finally:
    print('THe error was found, your task is to read the data and display it as a list')
#3rd Iteration
# Create a function to do the same job DRY

def read_file():
    file = open("orders.text")
    print(file.read())