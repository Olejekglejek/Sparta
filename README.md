# Python_OOP_functions
## DRY
## Use cases

- What is a function and why is it useful?

A function is a block of code which only runs when it is called.
You can pass data, known as parameters, into a function.
A function can return data as a result.
- How to create a function?

In Python a function is defined using the `def` keyword:
```python
def my_function():
  print("Hello from a function")
```
- Function structure and arguments

Information can be passed into functions as arguments.
Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma.
The following example has a function with one argument (fname). When the function is called, we pass along a first name, which is used inside the function to print the full name:
```python
def my_function(fname):
  print(fname + " Refsnes")

my_function("Emil")
my_function("Tobias")
my_function("Linus")
```
- Function, best practices

Do One Thing, Level of abstraction, Sections within functions, Identation level.