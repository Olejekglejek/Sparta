# What is a function
# Why functions

# How to create a function
# Syntax to create a function: def is a Python keyword, tells the interpreter that the function is beeing declared

# Lets create one def name_of_the_function():
# Greeting function, first iteration
# def greetings():
#     print("Welcome on board")
# if we run the program, there wont be any outcome, because we just declared but not executed/called the function
# greetings()

# Second iteration to take the argument
# def greetings(name):
#     print("Welcome on board" + name)

# greetings('James')

# third iteration
# Lets create an add() to pass 2 args
# def add(num1, num2):
#     print(num1 + num2)

# add(3, 2)
# Fourth Iterations - To use return statement
# def substract(num1, num2):
# print('Print before return')
# return num1 - num2 # return state is the end of the function
# print('Print after return') # doesnt get executed
# substract(4, 2)

# Create a calculator to add, substract, devide, mulpitply
# display appropriate message with computation values as to what the outcome is from each functin
# create a greting function by taking use input as the user name and diplay it with the greeting message

def calculator():
    num1 = int(input('Hello!, Tell me your first number: '))
    num2 = int(input('Hello!, Tell me your second number: '))
    a = int(input('Select what operation you want to execute: \n1. Addition\n2.Substraciton\n3.Division \n4.Multiplication\n'))
    if a == 1:
        print(f'Result:{num1 + num2}')
    if a == 2:
        print(f'Result:{num1 - num2}')
    if a == 3:
        print(f'Result:{num1 / num2}')
    if a == 4:
        print(f'Result:{num1 * num2}')


calculator()
