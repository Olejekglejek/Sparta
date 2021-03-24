# Control Flow
In Python, the selection statements are also known as Decision control statements or branching statements.

The selection statement allows a program to test several conditions and execute instructions based on which condition is true.

Some Decision Control Statements are:

- Simple if
- if-else
- nested if
- if-elif-else

**Simple if:** If statements are control flow statements that help us to run a particular code, but only when a certain condition is met or satisfied. A simple if only has one condition to check.

**if-else:** The if-else statement evaluates the condition and will execute the body of if if the test condition is True, but if the condition is False, then the body of else is executed.

**nested if:** Nested if statements are an if statement inside another if statement.

**if-elif-else:** The if-elif-else statement is used to conditionally execute a statement or a block of statements.

# Loops help to iterate through the data
- `for` loop
- `while` loop
- data coletions dict lists tuple sets
- We used loops to iterate through our shopping_list
```python
# Syntax to create a loop
# for in python keyword variable the data_collection
shopping_list = ['bread', 'eggs', 'milk', 'orange']
print(shopping_list)
print(shopping_list[0])
print(shopping_list[1])
print(shopping_list[2])
print(shopping_list[3])

#lets use for loop to iterate through list
for items in shopping_list:
	print(items)
```
- We used loops to iterate through a word
```python
#lets iterate through letter in a word
for letter in 'fruits':
	print(letter)
```
- We used the keyword `break` to stop and exit the loop
```python
shopping_list = ['bread', 'eggs', 'milk', 'orange']

for items in shopping_list:
	print(items)
	if items == 'milk'
		break # when milk is found in the items, the iterating stops (get out of the loop)

```
- We covered the iteration through a dictionary
```python
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
```