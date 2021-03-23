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

age = int(input('Whats your age: '))

age_restriction = [12, '12a', 'PG', 'U', 15, 18]

if age in age_restriction:
	print('Sorry not permited.')
