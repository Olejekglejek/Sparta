# Whats is a List
# Lists is commonly used to store the data
# Lists are Mutable
# Syntax [] - to create a list

shopping_list = ['bread', 'chocolate', 'avocados', 'milk']
#                   0         1            2          3
print(type(shopping_list))
print(shopping_list[1])
print(shopping_list[-2])

# change the value of 0 index from 'bread' to 'orange'
shopping_list[0] = 'orange'
print(shopping_list)

shopping_list.append('ice')  # append an intem
shopping_list.remove('orange')  # remove item by value
shopping_list.pop()  # remove last item or by index
print(shopping_list)
