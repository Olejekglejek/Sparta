#########################################################
# Control Flow Age and Permission

# Timings

# 30 Minutes

# Summary

# Simple program to use control flow!

# Tasks

# * rules of what the program is supose to do are followed,see bellow

# Starter code
# ```
# age = 19
# driver_lisence = True


# - You can vote and drive
# - You can vote
# - You can driver
# - you can't legally drink but your mates/uncles might have your back (bigger 16)
# - Your too young, go back to school!

#  as a user I should be able to keep being prompted for input until I say 'exit'

# ```

# Acceptance Criteria

# * is a program that run continuously
# * handles strings and integers
# * has exist condition
# * all business logic works

class Driver():
    def __init__(self):
        self.age = 18
        self.driver_lisence = True
        self.keep_asking = True

    def user_interaction(self):
        while self.keep_asking:
            self.age = int(input("Tell me your age: "))
            if (self.age >= 18):
                print('Cool, you can Vote and also can drive!')
                # self.keep_asking = False
            elif (self.age >= 17):
                print('Cool, you can drive but note Vote yet!')
                # self.keep_asking = False
            elif(self.age >= 16):
                print(
                    "You can't legally drink but your mates/uncles might have your back")
                # self.keep_asking = False
            else:
                print('Your too young, go back to school!')
                # self.keep_asking = False
            res_to_exit = input(
                "Type 'exit' if you want to exit, otherwise just press enter to continue: ").upper()
            if (res_to_exit == 'EXIT'):
                self.keep_asking = False
            else:
                print('Ok, lets continue') 


jora = Driver()
jora.user_interaction()
