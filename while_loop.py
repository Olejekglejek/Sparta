# ----------------------------------------------------------
# # 04 Xmas Holiday List that never ends!


# Amazing, you've learner about the for loop!
# Time to use that, plush a while loop to keep things going!

# Your task is to create a list of xmas gifts using cool control flow now!

# Read the task for the user stories.

# hint: While loops and break conditions, use lists and append, iterate to print

# ## Tasks

# User stories:

# ```
# #1 as a user, i want to be able to add items to the list, so I can read it later.

# #2 as a user, I want to be able to keep adding things to the list until I use exit

# #3 as as user, I should be able to use the word exit in a sentence and still have the program terminate, so that anyone can use it

# 4# as a user, when the program exits, I want to see the complete list in caps lock and numbered, so that I know what to buy. example:
#   # 1 - RC car
#   # 2 - PS2
#   # 3 - GTA Vice City

# ```

# ## Acceptance Criteria
def xmas_list():
    gift_list = []
    loop = True
    while loop:
        gift = input('Add a gift to the list: ')
        if(gift.upper() != "EXIT"):
            gift_list.append(gift)
        else:
            loop = False
            for gift in gift_list:
                print(f"{gift_list.index(gift)} - {gift.upper()}")


xmas_list()
# * All user stories are completed
# * Has documentation
