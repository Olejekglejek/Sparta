# --------------------------------------------------------

# # Lists - Restaurant Waiter Helper program

# ## Summary

# Now that we've created had some time to use our lists, time to make something more useful.

# You are going to make a program that helps a waiter with his menu and his orders.

# See tasks for the user stories.

# ## Tasks

# User stories:

# ```
# # User Stories
# #1
# # AS a User I want to be able to see the menu in a formated way, so that I can order my meal.

# #2
# # AS a User I want to be able to order 3 times, and have my responses added to a list so they aren't forgotten

# #3
# # As a user, I want to have my order read back to me in formated way so I know what I ordered.
# ```


# ## Acceptance Criteria

# * its own project on your laptop and Github
# * be git tracked
# * have 5 commits mininum!
# * has documentation
# * follows best practices

menu = ['1. Soup', '2. Pizza', '3. Pasta', '4. Burger', '5. Wine', '6. Beer']
order_list = []
for times in range(3):
    order = int(input("Just pick the number representing your food: "))
    order_list.append(menu[order-1])

print(f"Here is your order list: {order_list}")