# Lets import Animal class
from animal import Animal  # this is to ensure Animal class is inherited


class Reptile(Animal):  # we need to pass the animal class as and arg to our Reptile class
    def __init__(self):
        super().__init__()  # super is to make everything available from parent class
        self.cold_blooded = True
        self.tetrapod = None
        self.heart_chambers = [3, 4]

    def hunt(self):
        return "working hard to catch the next meal "

    def use_venom(self):
        return 'I use it if ive got'

    def seek_heat(self):
        return 'looking for sunshine'

# lets see amazing benefits of inheritance


reptile_object = Reptile()
# Time to see the magic of OOP
print(reptile_object.hunt())
print(reptile_object.breath())
