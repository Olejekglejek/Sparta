#String and Casting

# Lets have a look at some industry practices
# Single and doulbe quote example

# single_quotes = 'single quotes \'wow\' '
# double_quotes = "double quotes"
# print(single_quotes)
# print(double_quotes)

# String slicing
# greetings = 'Hello world!'  # string

# indexing in Python starts from 0
# H e l l o   w o r l d  !
# 0 1 2 3 4 5 6 7 8 9 10 11
# how can we find out the length of this statement
# print(len(greetings))
# We have a method called len() to find out the total length of the statement
# print(greetings[0:5])  # outputs Hello starting from 0 to 4

# print(greetings[6:])
# reverse indexing starts with -1
# print(greetings[-1])
# print(greetings[::-1]) # reverse the string

# String methods
white_space = "Lot's of space at the end         "
# strip() helps to delete all white spaces
print(len(white_space))
print(white_space.strip())
print(len(white_space))

Example_text = "here's Some text with lot's of text"
print(Example_text.count('text'))
# Counts the number of times a word was mentioned in the statement
print(Example_text.upper())  # upper case
print(Example_text.lower())  # lower case
print(Example_text.capitalize())  # capitalize first letter
print(Example_text.replace("with", ","))  # replace
