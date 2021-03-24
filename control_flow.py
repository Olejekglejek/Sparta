# Control flow
# if, else if/elif
# Conditional statements are used to control the flow of our program


# age = 14
# if the user is above age of 15 allow to buy ticket
# if age => 15: #if condition is met/true the print statement will execute
	# print("Thank you, please proceed to your purchase")

#if the user is under 15 years of age do not allow to buy a ticket
# elif age < 15:
	# print('Sorry you are under age to watch this movie')
# else block gets executed if non of the above conditions met	
# else:
	# print('Opps something went wrong, please try later')

#Exercise
# as a user i would like to sell tickets according the age of the user
# age = 12, 12a, PG, U, 15 and 18
#user input to let us know the age to decide wheather to sell the ticket or not
#Casting implemented
# display the age back to user with appropriate message

#Ensure your github README documentation for todays lessons are up to date

# age = int(input('Whats your age: '))

# age_restriction = [12, '12a', 'PG', 'U', 15, 18]

# if age in age_restriction:
# 	print('Sorry not permitted.')

# Syntax to create a loop
# for in python keyword variable the data_collection
# shopping_list = ['bread', 'eggs', 'milk', 'orange']
# print(shopping_list)
# print(shopping_list[0])
# print(shopping_list[1])
# print(shopping_list[2])
# print(shopping_list[3])

#lets use for loop to iterate through list
# for items in shopping_list:
# 	print(items)

#lets iterate through letter in a word
# for letter in 'fruits':
# 	print(letter)

# shopping_list = ['bread', 'eggs', 'milk', 'orange']

# for items in shopping_list:
# 	print(items)
# 	if items == 'milk'
# 		break # when milk is found in the items, the iterating stops (get out of the loop)

#lets create a dictionary of our food bill so we can iterate with for loop
food_bill = {
	1: {'name': 'James',
	'bill': '1$'},
	2: {'name': 'Bond',
	'bill': '2$'},
	3: {'name': 'oleg',
	'bill': '3$'}
}

#lets iterate through out dict
for items in food_bill.keys():
	print(items)
for items in food_bill.values():
	print(items)

#print the names with the bill amount for each person
# James and the amount for James

for items in food_bill.values():
	print(items['name'], items['bill'])