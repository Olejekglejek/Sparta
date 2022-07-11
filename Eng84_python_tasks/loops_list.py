# ----------------------------------------------
# 3 - # Loops and lists

# Let's loop over some list!

# ## Tasks

# * make a loop with a range that says hello 10 times
# for i in range(10):
#     print("Hello")

# * create another loop with a range that asks for names and appends to list_names
# list_names = []
# for i in range(3):
#     list_names.append(input('Please insert your name: '))
# print(list_names)

# * make a loop that iterated over each name in lit_name and format's it into lowercase in a new variable called list_names_lower
# list_names_lower = []
# list_names = ['Oleg', 'James', 'Bond']
# for i in list_names:
#     list_names_lower.append(i.lower())
# print(list_names_lower)

# * Iterate over the list of values to find if the are even
list_of_values = [1,2,3,4,5]
total_of_values = 0
for i in list_of_values:
    total_of_values +=1
if total_of_values % 2==0:
    print("List has an even amount of numbers")    
else:
    print("List has an odd amount of numbers")    

# ## Acceptance Criteria

# * all tasks have been done.
# ---------------------------------------------------------------- 
# 4-