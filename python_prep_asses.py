
# 1. Create a function called greetings and takes one argument as string and returns the name

# def greetings(arg):
#     return val

# 2. Declare a list of numbers from 0 to 9, iterate thorugh the list and print the list

# list = [0,1,2,3,4,5,6,7,8,9]
# for num in list:
#     print(num)

# 3. Write the boolean operators

# AND, OR, NOT

# 4. Create a list of 5 numbers starting from 0
# numbers = []

# for num in range(5):
#     numbers.append(num)

# Create a tuple with same information
# numbers_tuple = tuple(numbers)

# Change the value of tuple in the last index
# Tuples a immutable therefore we cannt change the values, unlike lists which are mutable

# 5. Create a dictionary with 2 key-value pairs
# first key is "name", value = "James"
# second key is "age", value is 18
# print the value of keys

# names = {
#     "name": "James",
#     "age": 18,
# }
# print(names.values())

# 6. Create a class called Isabel and initialize the class that takes 2 arguments and create an object of that class

# class Oleg:
#     def __init__(self, name, birthdate):
#         self.name = name
#         self.birthdate = birthdate


# obj = Oleg("Oleg", "16 Feb")
# create an object called student of the same class
# student = Oleg("James", "1 March")

# 7. Correct syntax for set with value from 1-4
# set_name = {1,2,3,4,5}

# Write difference between sets and all other collections
# Set will output in random order
# print(set_name)
# set_name.update({5})
# set_name.add(10)

# 8. Create a method that takes one argument as a string and that string is your name
# if the name == "Dunni" return true else false
# def is_Oleg(name):
#     if name == "Oleg":
#         return True
#     return False

# print(is_Oleg("Oleg"))

# 9. Create a class called Human with one method called breathe that returns "breathing"
# Create another class called student that inherits from human
# Create an object of student class and call the method from the parrent class

# class Human:
#     def breathe(self):
#         return "breathing"


# class Student(Human):
#     pass

# stud_obj = Student()
# print(stud_obj.breathe())

# 10. Write the correct syntax to use the keyword super
# class Human:
#     def __init__(self):
#         self.alive = True

#     def breathe(self):
#         return "breathing"


# class Student(Human):
#     def __init__():
#         super().__init__()
#         # Super allows us to implement polymorfism and overwrite the parrent's atributes and methods


# stud_obj = Student()
# print(stud_obj.breathe())

# 11. create a variable called user_data and store 0 to 4
# Create a function that takes an argument as a list
# function return true if the data type is list else false

# user_data = [0, 1, 2, 3, 4]


# def is_list(the_list):
#     if type(the_list) == "<class 'list'>":
#         return True
#     else:
#         return False


# print(is_list(user_data))

# 12. Create a function called get_percentage takes 2 integers as args, return the % of the 2

# def get_percentage(num1, num2):
#     percent_num1 = num1 / (num1 + num2) * 100
#     return percent_num1


# print(get_percentage(10, 90))

# 13. Create a function, that takes 2 args, as int, and devide first val by second val
# returns the outcome
# checks if the numbers given is divisible by 0
# through an error cant be divided by 0 else the value

# def function(arg1, arg2):
#     try:
#         return int(arg1) / int(arg2)
#     except ZeroDivisionError as error:
#         return error

# print(function(9,0))

# 14. Write five odd numbers in a list and five even numbers in another list
# iterate through these lists to combine and display the numbers in a method

# example 1
# odd_numbers = [1, 3, 5, 7, 9]
# even_numbers = [2, 4, 6, 8, 10]


# def combine_odd_even(odd_list, even_list):
#     new_list = odd_list
#     count = 1
#     for n in even_list:
#         new_list.insert(count, n)
#         count += 2

#     print(new_list)

# example 2
# odd_nums = [1, 3, 5, 7, 9]
# even_nums = [0, 2, 4, 6, 8]
# num_list = []


# def odd_even(odd_nums, even_nums, num_list):
#     for x in range(5):
#         num_list.append(even_nums[x])
#         num_list.append(odd_nums[x])
#     print(num_list)


# odd_even(odd_nums, even_nums, num_list)

# 14. Create a dict called shopping_list with 3 keyvalue pairs
# create a f that takes an arg as the dictionary iterate through the values of dict, and total value and returns the total cost

# shopping_list = {
#     "milk": 1,
#     "yougurt": 1.15,
#     "ice-cream": 2.58
# }


# def add_shoppingItems():
#     return sum(shopping_list.values())


# print(add_shoppingItems())

# 15. Display the cost of yougurt

shopping_list = {
    "milk": 1,
    "yougurt": 1.15,
    "ice-cream": 2.58
}
print(f"Cost of yougurt is {shopping_list['yougurt']}")
