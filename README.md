# Eng84_python_tasks

# Program calculate year of birth!

Cool, we've used strings to make a program that made a welcome message. Now let's use some numerical types.

Create program that calculates the year of birth.

## Tasks

- define the variables `age` and `name`
- make a calculation for the year in which the person was born
- print out "OMG <person>, you are <age> years old so you were born in <year>" with the correct values

### Second Part

- prompt the user for input and re-assing the variable `age` and `name`
- figure out a way to account for if the persons bithday has already happened this year or not

### Extra

- go look into the library time
- print out the amount of hour this person has lived

## Acceptance Criteria

- program defines the variable `age` and `name`
- program prints the string "OMG <person>, you are <age> years old so you were born in <year>"

---

# Lists - Restaurant Waiter Helper program

## Summary

Now that we've created had some time to use our lists, time to make something more useful.

You are going to make a program that helps a waiter with his menu and his orders.

See tasks for the user stories.

## Tasks

User stories:

```
# User Stories
#1
# AS a User I want to be able to see the menu in a formated way, so that I can order my meal.

#2
# AS a User I want to be able to order 3 times, and have my responses added to a list so they aren't forgotten

#3
# As a user, I want to have my order read back to me in formated way so I know what I ordered.
```

## Acceptance Criteria

- its own project on your laptop and Github
- be git tracked
- have 5 commits mininum!
- has documentation
- follows best practices

---

# 04 Xmas Holiday List that never ends!

Amazing, you've learner about the for loop!
Time to use that, plush a while loop to keep things going!

Your task is to create a list of xmas gifts using cool control flow now!

Read the task for the user stories.

hint: While loops and break conditions, use lists and append, iterate to print

## Tasks

User stories:

```
#1 as a user, i want to be able to add items to the list, so I can read it later.

#2 as a user, I want to be able to keep adding things to the list until I use exit

#3 as as user, I should be able to use the word exit in a sentence and still have the program terminate, so that anyone can use it

4# as a user, when the program exits, I want to see the complete list in caps lock and numbered, so that I know what to buy. example:
  # 1 - RC car
  # 2 - PS2
  # 3 - GTA Vice City

```

## Acceptance Criteria

- All user stories are completed
- Has documentation

---

# Fizz Buzz!

## Summary

Super simple game that will substitute multiples of 3 and 5 for fizz an buzz respectily, or fizzbuzz for multiples of the two

## Tasks

Core:

- Write a program that prints the numbers from 1 to 100.
- For multiples of three print "Fizz" instead of the number
- For the multiples of five print "Buzz" instead of the number
- For numbers which are multiples of both three and five print "FizzBuzz".

Extra:

- make a new fizzbuzz file and make it functional
- make it so we we can decide which numbers to substitute for fizz and buzz using functions

Hint: loop, range, control flow

## Acceptance Criteria

- All core task are done
- Core works with no error

---

2 # Functional Calculator

## Summary

Amazing you now know functions, lets make a functional calculator.

## Tasks

- Complete the core tasks

```python
# functions
# practice using, defining and calling functions

# Build a basic functional
# Core 1: build function containing
    # add,
    # subtract,
    # multiply,
    # divide.

# Core 2: Build more functions for
    # area of a circle
    # area of a square
    # area of a triangle (just find the easiest way)

#example
def add_funtion(arg1, arg2):
    return arg1 + arg2

```

Extra:

- run the function with arguments
- assert against known values - so adding 10 + 30 will always be 40

```python

#example
def add_funtion(arg1, arg2):
    return arg1 + arg2

# As a user I want to have a add_funtion()
# that takes in two arguments and add them.
print("calling the add_function() with 290 and 10, expect 300 to be the result ")
print(add_funtion(290, 10) == 300)
print('got:', add_funtion(290, 10) )

print("calling the add_function() with 270 and 5, expect 275 to be the result ")
print(add_funtion(270, 5) == 275)
print('got:', add_funtion(270, 5) )

```

Hint: do one function at a time! And use my structure for the running the functions

## Acceptance Criteria

- All core functions done
- Separation of concerns if followed
- DRY code and functions

---

3 - # Loops and lists

Let's loop over some list!

## Tasks

- make a loop with a range that says hello 10 times
- create another loop with a range that asks for names and appends to list_names
- make a loop that iterated over each name in lit_name and format's it into lowercase in a new variable called list_names_lower
- Iterate over the list of values to find if the are even

## Acceptance Criteria

- all tasks have been done.


#######################################

Fizzbuzz
The Problem

"Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."

NOTE -> Must be in class and method format
-----------------------------------------------------
Base Scrabble word calculator instructions
Given the below scoring create a Scrabble word calculator that will provide the correct scores dependent on the string provided.

Letter                             Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
------------------------------------

# TDD Bread Factory! :bread:

## Timings

60-90 Minutes

## Summary

TDD bread factory is the latest bread brand in Py Land. It always produces the best bread because it has the best testing strategy!

What they do is before they make any new bread, they make a test to make sure the end ouput is correct. Then they adjust the recipie until it's just right!

You are going to do the same with bread! This is called Test Driven Development.

## Tasks

This exercise is going to bring together lots of concepts.

### Learning Outocomes
Learning outcomes include:
- git
- github
- functions
- TDD
- Separation of concerns - this is important do not ignore!
- DRY code
- DOD


## Intalling and running
To run the naan factory do the following:

```python
import naan_factory
run_factory()
```


### TDD - test driven development

1. write the test
2. run it, and read the error
3. code and make it pass the test

this helps with:
- Stop over engineering
- Maintainable code
- Reduce technical debt
- Goes well with agile and working code
- errors can be your guide in complex systems

How it works is that we write unit tests.

##### Unit Tests

Test single pieces of code. Like a function.

**base of a test**
Usually has 3 phases.
- setup phase (know variables)
- calling of the function / piece of code with know variables
- asserting for expect output



### User stories for Naan Factory

```
#1
As a user, I can use the make_dough with 'water' and 'flour' to make 'dough'.

#2
As a user, I can use the bake_dough with dough to get naan.

#3
As a user, I can user the run_factory with water and flour and get naan.

```

## Acceptance Criteria

* you have written tests
* test pass
* you have writen more test to make sure everything works as intented
* all user stories are statisfied
* code does not break
* code has exit condition
* DOD if followed


#########################################################
# Control Flow Age and Permission

## Timings

30 Minutes

## Summary

Simple program to use control flow!

## Tasks

* rules of what the program is supose to do are followed,see bellow

Starter code
```
age = 19
driver_lisence = True


# - You can vote and drive
# - You can vote
# - You can driver
# - you can't legally drink but your mates/uncles might have your back (bigger 16)
# - Your too young, go back to school!


 #  as a user I should be able to keep being prompted for input until I say 'exit'

```

## Acceptance Criteria

* is a program that run continuously
* handles strings and integers
* has exist condition
* all business logic works
-----------------------------------------------------------------
# Your Hero Story!

## Timings

30-50 Minutes

## Summary

Your going to write a story, cut it into section, store the section in a python dictionary!

## Tasks

* define a dictionary
* add your content as values for keys
* follow the instruction in the pseudo code bellow:

```
# Dictionary basics :D

#1 - Define a dictionary call story1, it should have the following keys:
        # 'start', 'middle' and 'end'

#2 - Print the entire dictionary

#3 - Print the type of your dictionary

#4 - Print only the keys

#5 - print only the values

#6 - print the individual values using the keys (individually, lots of print commands)

#7 - Now let's add a new key:value pair.
    # 'hero': yourSuperHero
```

## Acceptance Criteria

* all 7 tasks are done
* runs with no errors
* tell a story
--------------------------------------------------------------------
# Control Flow Age and Permission

## Timings

30 Minutes

## Summary

Simple program to use control flow!

## Tasks

* rules of what the program is supose to do are followed,see bellow

Starter code
```
age = 19
driver_lisence = True


# - You can vote and drive
# - You can vote
# - You can driver
# - you can't legally drink but your mates/uncles might have your back (bigger 16)
# - Your too young, go back to school!


 #  as a user I should be able to keep being prompted for input until I say 'exit'

```

## Acceptance Criteria

* is a program that run continuously
* handles strings and integers
* has exist condition
* all business logic works
-----------------------------------------------------------------
# Your Hero Story!

## Timings

30-50 Minutes

## Summary

Your going to write a story, cut it into section, store the section in a python dictionary!

## Tasks

* define a dictionary
* add your content as values for keys
* follow the instruction in the pseudo code bellow:

```
# Dictionary basics :D

#1 - Define a dictionary call story1, it should have the following keys:
        # 'start', 'middle' and 'end'

#2 - Print the entire dictionary

#3 - Print the type of your dictionary

#4 - Print only the keys

#5 - print only the values

#6 - print the individual values using the keys (individually, lots of print commands)

#7 - Now let's add a new key:value pair.
    # 'hero': yourSuperHero
```

## Acceptance Criteria

* all 7 tasks are done
* runs with no errors
* tell a story
--------------------------------------------------------------------

