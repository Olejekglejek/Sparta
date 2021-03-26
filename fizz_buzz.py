# ----------------------------------------------------------
# # Fizz Buzz!


# ## Summary

# Super simple game that will substitute multiples of 3 and 5 for fizz an buzz respectily, or fizzbuzz for multiples of the two

# for i in range(1,101):
#     print("Fizz"*(i%3<1)+"Buzz"*(i%5<1) or i)

# ## Tasks

# Core:
# * Write a program that prints the numbers from 1 to 100.
# * For multiples of three print "Fizz" instead of the number
# * For the multiples of five print "Buzz" instead of the number
# * For numbers which are multiples of both three and five print "FizzBuzz".

# Extra:
# * make a new fizzbuzz file and make it functional
# * make it so we we can decide which numbers to substitute for fizz and buzz using functions
def fizzbuzz():
    num1 = int(input('Insert your first number: '))
    num2 = int(input("Insert your second number: "))
    range_length = int(input('Select the range length: '))
    for i in range(1,range_length):
        print("Fizz"*(i%num1<1)+"Buzz"*(i%num2<1) or i)

fizzbuzz()

# Hint: loop, range, control flow

# ## Acceptance Criteria

# * All core task are done
# * Core works with no error