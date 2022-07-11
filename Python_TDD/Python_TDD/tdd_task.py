# TDD Bread Factory! :bread:

# Timings

# 30-45 Minutes

# Summary

# TDD bread factory is the latest bread brand in Py Land. It always produces the best bread because it has the best testing strategy!

# What they do is before they make any new bread, they make a test to make sure the end ouput is correct. Then they adjust the recipe until it's just right!

# You are going to do the same with bread! This is called Test Driven Development.

# Tasks

# This exercise is going to bring together lots of concepts.

# Learning Outcomes
# Learning outcomes include:
# - git
# - github
# - functions
# - TDD
# - Separation of concerns - this is important do not ignore!
# - DRY code
# - DOD


## Intalling and running
# To run the naan factory do the following:

# ```python
# import naan_factory
# run_factory()
# ```


# TDD - test driven development

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

# Unit Tests

# Test single pieces of code. Like a function.

# **base of a test**
# Usually has 3 phases.
# - setup phase (know variables)
# - calling of the function / piece of code with know variables
# - asserting for expect output


# User stories for Naan Factory

# ```
# #1
# As a user, I can use the make dough with 'water' and 'flour' to make 'dough'.

# #2
# As a user, I can use the bake dough with dough to get naan.

# #3
# As a user, I can use the run factory with water and flour and get naan.

# ```
class NaanFactory:
    def make_dough(self, val1, val2):
        if val1 == 'water' and val2 == 'flour':
            return 'dough'

    def make_naan(self, val1, val2):
        if val1 == 'bake' and val2 == 'dough':
            return 'naan'


# Acceptance Criteria

# * you have written tests
# * test pass
# * you have written more test to make sure everything works as indented
# * all user stories are satisfied
# * code does not break
# * code has exit condition
# * DOD if followed
