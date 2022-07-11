# Fizzbuzz
# The Problem

# "Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."

# NOTE -> Must be in class and method format

# class FizzBuzz:
#     def fizzbuzz(self):
#         for i in range(1,101):
#             print("Fizz"*(i%3<1)+"Buzz"*(i%5<1) or i)
        

# obj = FizzBuzz()
# obj.fizzbuzz()
# -----------------------------------------------------
# Base Scrabble word calculator instructions
# Given the below scoring create a Scrabble word calculator that will provide the correct scores dependent on the string provided.

# Letter                             Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# ------------------------------------

value1 = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
value2 = ['D', 'G']
value3 = ['B', 'C', 'M', 'P' ]
value4 = ['F', 'H', 'V', 'W', 'Y' ]
value5 = ['K']
value8 = ['J', 'X' ]
value10 = ['Q', 'Z' ]

word = input('Ok, I am waiting for your word: ')
score = 0
for letter in word:
    if letter.upper() in value1:
        score +=1
    elif letter.upper() in value2:
        score += 2
    elif letter.upper() in value3:
        score += 3
    elif letter.upper() in value4:
        score += 4
    elif letter.upper() in value5:
        score += 5
    elif letter.upper() in value8:
        score += 8
    elif letter.upper() in value10:
        score += 10
print(f"Alright, so your score is: {score}")



# # TDD Bread Factory! :bread:

# ## Timings

# 60-90 Minutes

# ## Summary

# TDD bread factory is the latest bread brand in Py Land. It always produces the best bread because it has the best testing strategy!

# What they do is before they make any new bread, they make a test to make sure the end ouput is correct. Then they adjust the recipie until it's just right!

# You are going to do the same with bread! This is called Test Driven Development.

# ## Tasks

# This exercise is going to bring together lots of concepts.

# ### Learning Outocomes
# Learning outcomes include:
# - git
# - github
# - functions
# - TDD
# - Separation of concerns - this is important do not ignore!
# - DRY code
# - DOD


# ## Intalling and running
# To run the naan factory do the following:

# ```python
# import naan_factory
# run_factory()
# ```


# ### TDD - test driven development

# 1. write the test
# 2. run it, and read the error
# 3. code and make it pass the test

# this helps with:
# - Stop over engineering
# - Maintainable code
# - Reduce technical debt
# - Goes well with agile and working code
# - errors can be your guide in complex systems

# How it works is that we write unit tests.

# ##### Unit Tests

# Test single pieces of code. Like a function.

# **base of a test**
# Usually has 3 phases.
# - setup phase (know variables)
# - calling of the function / piece of code with know variables
# - asserting for expect output




# ### User stories for Naan Factory

# ```
# #1
# As a user, I can use the make_dough with 'water' and 'flour' to make 'dough'.

# #2
# As a user, I can use the bake_dough with dough to get naan.

# #3
# As a user, I can user the run_factory with water and flour and get naan.

# ```

# ## Acceptance Criteria

# * you have written tests
# * test pass
# * you have writen more test to make sure everything works as intented
# * all user stories are statisfied
# * code does not break
# * code has exit condition
# * DOD if followed

