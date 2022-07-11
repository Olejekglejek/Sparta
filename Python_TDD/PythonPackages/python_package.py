# import random # generates random 
# import math
#from random import random
# print(random())
# print(random.random())

# num_float = 23.6
# print(math.ceil(num_float)) # if number .5 round it up
# print(math.floor(num_float)) # if number .4 or less round it down
# ceil() rounds up the value

# Python Modules
import os
import datetime, sys

working_directory = os.getcwd() # it tells us the current dir location
# print(os.uname()) # works on linux
#for windows use platform.uname()
# print(os.cpu_count())
print(datetime.datetime.today())
print(sys.path)