# python_packages

## What is a package and why should we use them ?

Packages are namespaces which contain multiple packages and modules themselves. They are simply directories, but with a twist.

Each package in Python is a directory which **MUST** contain a special file called `__init__.py`. This file can be empty, and it indicates that the directory it contains is a Python package, so it can be imported the same way a module can be imported.

If we create a directory called `foo`, which marks the package name, we can then create a module inside that package called `bar`. We also must not forget to add the `__init__.py` file inside the `foo` directory.

## What is a module and why should we use them ?

In programming, a module is a piece of software that has a specific functionality. For example, when building a ping pong game, one module would be responsible for the game logic, and
another module would be responsible for drawing the game on the screen. Each module is a different file, which can be edited separately.
Modules in Python are simply Python files with a .py extension. The name of the module will be the name of the file. A Python module can have a set of functions, classes or variables defined and implemented.

### What is pip?

- pip is the standard package manager for `Python`. It allows you to install and manage additional packages that are not part of the `Python standard library`.
- To use pip `pip install package_name`
- `pip3 install requests`

```python
import random # generates random
import math
#from random import random
# print(random())
print(random.random())

num_float = 23.6
print(math.ceil(num_float)) # if number .5 round it up
print(math.floor(num_float)) # if number .4 or less round it down
```
