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
def add_function(arg1, arg2):
    return arg1 + arg2
#     # subtract,
def substract_function(arg1, arg2):
    return arg1 - arg2
#     # multiply,
def multiply_function(arg1, arg2):
    return arg1 * arg2
#     # divide.
def divide_function(arg1, arg2):
    return arg1 / arg2

# # Core 2: Build more functions for
#     # area of a circle
import math
def circle_area(radius):
    return (radius**2) * math.pi
#     # area of a square
def square_area(side_length):
    return side_length**2
#     # area of a triangle (just find the easiest way)
import math
def equilateral_triangle_area(side_length):
    return ((side_length**2)*math.sqrt(3))/4
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