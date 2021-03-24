# # Program calculate year of birth!

# Cool, we've used strings to make a program that made a welcome message. Now let's use some numerical types.

# Create program that calculates the year of birth.

# ## Tasks

# * define the variables `age` and `name`
# age = 24
# name = 'Oleg'

# * make a calculation for the year in which the person was born
# birth_year = 2021 - age

# * print out "OMG <person>, you are <age> years old so you were born in <year>" with the correct values
# print(f"OMG {name}, you are {age} years old so you were born in {birth_year}")
# ### Second Part

# * prompt the user for input and re-assing the variable `age` and `name`

# name = input('What is your name: ')
# age = int(input('What is your age: '))
# * figure out a way to account for if the persons bithday has already happened this year or not
# import datetime

# birth_day = int(input('What is the day of your birth: '))
# birth_month = int(input('What is the month of your birth in digits: '))

# current_date = datetime.datetime.now()

# if birth_month < current_date.month:
#     print("Oh nice, Your birthday already happened!")
# elif birth_month == current_date.month:
#     if birth_day < current_date.day:
#         print("Oh nice, Your birthday already happened this month!")

# ### Extra

# * go look into the library time
# * print out the amount of hour this person has lived
# import datetime
# from dateutil.relativedelta import relativedelta

# birth_date = input('Hi, could you insert your birth date in this format YYYY-MM-DD HH:MM:SS:  ')
# start_date = datetime.datetime.strptime(birth_date, '%Y-%m-%d %H:%M:%S')
# current_date = datetime.datetime.now()
# diff = relativedelta(start_date, current_date)
# total_hours = diff.years + diff.months + diff.hours
# print(total_hours)



# ## Acceptance Criteria

# * program defines the variable `age` and `name`
# * program prints the string "OMG <person>, you are <age> years old so you were born in <year>"
# --------------------------------------------------------

# # Lists - Restaurant Waiter Helper program

# ## Summary

# Now that we've created had some time to use our lists, time to make something more useful.

# You are going to make a program that helps a waiter with his menu and his orders.

# See tasks for the user stories.

# ## Tasks

# User stories:

# ```
# # User Stories
# #1
# # AS a User I want to be able to see the menu in a formated way, so that I can order my meal.

# #2
# # AS a User I want to be able to order 3 times, and have my responses added to a list so they aren't forgotten

# #3
# # As a user, I want to have my order read back to me in formated way so I know what I ordered.
# ```


# ## Acceptance Criteria

# * its own project on your laptop and Github
# * be git tracked
# * have 5 commits mininum!
# * has documentation
# * follows best practices


# ----------------------------------------------------------
# # 04 Xmas Holiday List that never ends!


# Amazing, you've learner about the for loop!
# Time to use that, plush a while loop to keep things going!

# Your task is to create a list of xmas gifts using cool control flow now!

# Read the task for the user stories.

# hint: While loops and break conditions, use lists and append, iterate to print

# ## Tasks

# User stories:

# ```
# #1 as a user, i want to be able to add items to the list, so I can read it later.

# #2 as a user, I want to be able to keep adding things to the list until I use exit

# #3 as as user, I should be able to use the word exit in a sentence and still have the program terminate, so that anyone can use it

# 4# as a user, when the program exits, I want to see the complete list in caps lock and numbered, so that I know what to buy. example:
#   # 1 - RC car
#   # 2 - PS2
#   # 3 - GTA Vice City

# ```

# ## Acceptance Criteria

# * All user stories are completed
# * Has documentation

# ----------------------------------------------------------
# # Fizz Buzz!


# ## Summary

# Super simple game that will substitute multiples of 3 and 5 for fizz an buzz respectily, or fizzbuzz for multiples of the two

for i in range(101):
    print("Fizz"*(i%3<1)+"Buzz"*(i%5<1) or i)

# ## Tasks

# Core:
# * Write a program that prints the numbers from 1 to 100.
# * For multiples of three print "Fizz" instead of the number
# * For the multiples of five print "Buzz" instead of the number
# * For numbers which are multiples of both three and five print "FizzBuzz".

# Extra:
# * make a new fizzbuzz file and make it functional
# * make it so we we can decide which numbers to substitute for fizz and buzz using functions



# Hint: loop, range, control flow

# ## Acceptance Criteria

# * All core task are done
# * Core works with no error
# ------------------------------------------------
# 2 # Functional Calculator


# ## Summary

# Amazing you now know functions, lets make a functional calculator.

# ## Tasks

# * Complete the core tasks

# ```python
# # functions
# # practice using, defining and calling functions

# # Build a basic functional
# # Core 1: build function containing
#     # add,
#     # subtract,
#     # multiply,
#     # divide.

# # Core 2: Build more functions for
#     # area of a circle
#     # area of a square
#     # area of a triangle (just find the easiest way)

# #example
# def add_funtion(arg1, arg2):
#     return arg1 + arg2

# ```

# Extra:

# * run the function with arguments
# * assert against known values - so adding 10 + 30 will always be 40

# ```python

# #example
# def add_funtion(arg1, arg2):
#     return arg1 + arg2

# # As a user I want to have a add_funtion()
# # that takes in two arguments and add them.
# print("calling the add_function() with 290 and 10, expect 300 to be the result ")
# print(add_funtion(290, 10) == 300)
# print('got:', add_funtion(290, 10) )

# print("calling the add_function() with 270 and 5, expect 275 to be the result ")
# print(add_funtion(270, 5) == 275)
# print('got:', add_funtion(270, 5) )

# ```

# Hint: do one function at a time! And use my structure for the running the functions

# ## Acceptance Criteria

# * All core functions done
# * Separation of concerns if followed
# * DRY code and functions
# ----------------------------------------------
# 3 - # Loops and lists

# Let's loop over some list!

# ## Tasks

# * make a loop with a range that says hello 10 times
# * create another loop with a range that asks for names and appends to list_names
# * make a loop that iterated over each name in lit_name and format's it into lowercase in a new variable called list_names_lower
# * Iterate over the list of values to find if the are even

# ## Acceptance Criteria

# * all tasks have been done.
# ---------------------------------------------------------------- 
# 4-