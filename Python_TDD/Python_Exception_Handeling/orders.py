# Dealing with files and error/exception handeling

# There is a built in a method in Python called open('')

# file = open("orders.txt") # looks for the file called orders.text

# keyword try

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

# try:
#     file = open("orders.text", "r")
#     print(file.read())
# except FileNotFoundError as errmsg:
#     print('The above block was not executed')
#     print(errmsg)
#     # raise
# finally:
#     print('THe error was found, your task is to read the data and display it as a list')

# 3rd Iteration
# Create a function to do the same job DRY


def read_file():
    file = open("orders.text", 'r')
    print(file)

# Examples
# Its worth noting that the `+` operator can be used with


def open_file_using_with_and_print(file):
    try:
        with open(file, "r") as file:
            for line n file.readlines():
                print(line.rstrip(\n))
    except FileNotFoundError:
        print("File cannot be found or directory is incorrcet, please check the details provided")
        raise
    finally:
        print('\nPlease chose the items from the list and enjoy your HAPPY MEAL')


open_file_using_with_and_print('orders.text')

# - Lets add an item to our orders.text


def write_to_file(file, order_item):
    try:
        with open(file, 'w') as file:
            file.write(order_item + '\n')
    except FileNotFoundError:
        print("File cannot be found or directory is incorrect, please check the details provided: ")
        raise


write_to_file('order.txt', 'Ice Cream')

#close the file fileObject.close()

