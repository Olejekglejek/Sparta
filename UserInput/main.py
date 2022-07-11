# Get the user input and store it into variables
first_name = input('Please insert your first name: ')
last_name = input('Please insert your last name: ')
age = input('Please insert your age: ')
salary = input('Please insert your salary: ')
date_of_birth = input('Please insert your date of birth: ')
post_code = input('Please insert your post code: ')

# Print the output to the console
print(
    f'Please verify all your details: {first_name}, {last_name}, {age}, {salary}, {date_of_birth}, {post_code}')

# Print the datatype of the variables
print(f'Type of first_name:{type(first_name)}')
print(f'Type of last_name:{type(last_name)}')
print(f'Type of age:{type(age)}')
print(f'Type of salary:{type(salary)}')
print(f'Type of post_code:{type(post_code)}')
