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
import datetime
from dateutil.relativedelta import relativedelta

birth_date = input('Hi, could you insert your birth date in this format YYYY-MM-DD HH:MM:SS:  ')
start_date = datetime.datetime.strptime(birth_date, '%Y-%m-%d %H:%M:%S')
current_date = datetime.datetime.now()
diff = relativedelta(start_date, current_date)
total_hours = (diff.years * 365 * -24) + (diff.months * 31 * -24) + (diff.hours * -1)
print(total_hours)



# ## Acceptance Criteria

# * program defines the variable `age` and `name`
# * program prints the string "OMG <person>, you are <age> years old so you were born in <year>"
