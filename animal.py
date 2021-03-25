# Lets create first class
# Syntax class - is the keyword + name

# Create an Animal class
class Animal():

    name = 'Dog'  # class variable

    def __init__(self):  # self refers to the current class
        self.alive = True
        self.spine = True
        self.lungs = True

    def move(self):
        return "moving left right and center"

    def eat(self):
        return "they love to eat"

    def breath(self):
        return "ability to breath"
    # pass #pass is a keyword to bypass the code


# creating an object of out Animal class
cat = Animal()  # this will store all the data and methods of Animal class into cat
print(cat.eat())  # eat() is now abstracted

# Lets move on to inheritance

