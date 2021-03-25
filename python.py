from snake import Snake


class Python(Snake):
    def __init__(self):
        super().__init__()
        self.large = True
        self.two_lungs = True

    def climb(self):
        return 'up we go..'

    def swallow(self):
        return 'cant be bothered to chew'


python_object = Python()

print(python_object.climb())  # import from Python class
print(python_object.use_tongue_to_smell())  # import from Sanke class
print(python_object.hunt())  # import from Reptile class
print(python_object.breath())  # import from Animal class
