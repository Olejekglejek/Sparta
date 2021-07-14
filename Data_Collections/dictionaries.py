# Dictionaries
# Dictionaries use Key Value pairs to save data
# Data can be retrieved by its value or key
# Syntax dict{} List[] Tuple()
# Dictionaries can store list, tuples

# Create dictionary
dev_ops_student = {
    'key': 'value',
    'name': 'James',
    'steam': 'devOps',
    #  key     value
    'completed_lessons': 3,
    'completed_lessons_names': ['variables', 'data types', 'collections'],
}

# print(dev_ops_student)
# confirm the type
# print(type(dev_ops_student))

# print(dev_ops_student['name'])
# print(dev_ops_student['completed_lessons'])

# add "operators" in completed lesson
# dev_ops_student["completed_lessons_names"].append('operators')
# change the completed lesson from 3 to 4
# dev_ops_student['completed_lessons'] = 4
# remove the 'data types' from the list in completed_lessons_names
# dev_ops_student['completed_lessons_names'].remove('data types')

# print(dev_ops_student['completed_lessons_names'])
# print(dev_ops_student['completed_lessons'])


# print(dev_ops_student['completed_lessons_names'][1])
# print(dev_ops_student.keys())
# print(dev_ops_student.values())

# Sets? and the difference- are unordered
# Syntax {}

# create set
car_parts = {'wheels', 'windows', 'doors'}
print(car_parts)
print(type(car_parts))
car_parts.add('seats')
car_parts.discard('doors')


# Frozen sets - home work
