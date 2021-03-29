# TDD Test Driven Development

## Why should we use TDD

### what are the benefits of using TDD

**Best Use Cases**

- We will use Pytest unittest in Python to implement TDD
- TDD is widely used and is the cheapest way to test the code or implement test driven development

**Best practices for TDD**

- Write the smallest possible test case that matches what we need program
- TDD cycle start with everything failing - `RED`
- Write code to pass the test `GREEN`
- Refactor the code for next test `BLUE`
- This continues until all the test have successfully passed

There are also numerous assertions that are inherited from the TestCase base class, assertions are everything in testing...

| Method                    | Checks that          | New in |
| :------------------------ | :------------------- | :----- |
| assertEqual(a, b)         | a == b               |        |
| assertNotEqual(a, b)      | a != b               |        |
| assertTrue(x)             | bool(x) is True      |        |
| assertFalse(x)            | bool(x) is False     |        |
| assertIs(a, b)            | a is b               | 3.1    |
| assertIsNot(a, b)         | a is not b           | 3.1    |
| assertIsNone(x)           | x is None            | 3.1    |
| assertIsNotNone(x)        | x is not None        | 3.1    |
| assertIn(a, b)            | a in b               | 3.1    |
| assertNotIn(a, b)         | a not in b           | 3.1    |
| assertIsInstance(a, b)    | isinstance(a, b)     | 3.2    |
| assertNotIsInstance(a, b) | not isinstance(a, b) | 3.2    |

- Let's create file called `test_unittest_simplecalc.py`
- Naming convention is extremely important when it comes to TDD in Python

```python
# Lets create tests to check if the code would be running without any errors

from simple_calc import SimpleCalc
# importing the file and class where we would write our code
import unittest
# importing unittest to inherit TestCase to create out tests against the code


class CaclTest(unittest.TestCase):

    calc = SimpleCalc()  # create an object of our SimpleCalc() class

    def test_add(self):  # Naming convention - using test in the name of our function will let python interpretor know that this need to be tested
        # 2+2=4 outcome is True
        self.assertEqual(self.calc.add(2, 4), 6)
        # this test is checking if 2+4=6 that would be true, if true test will pass

    def test_substract(self):
        self.assertEqual(self.calc.substract(4, 2), 2)
        # This tests the values as 4-2=2 to be True if True the test passes

    def test_multiply(self):
        self.assertEqual(self.calc.multiply(3, 3), 9)
        # This tests the values as 3*3=9 to be True

    def test_divide(self):
        self.assertEqual(self.calc.divide(8, 4), 2)
        # This test the values as 8/4=2 if True

```

-Run the tests `python -m pytest`

**Lets write the code to pass the tests**

```python
class SimpleCalc:
    # pass
    def add(self, val1, val2):
        return val1 + val2
        # this function adds the values for val1 and val2 against the test we have in other class

    def substract(self, val1, val2):
        return val1 - val2
        # this f substracts 2 values

    def multiply(self, val1, val2):
        return val1 * val2
        # this f multiplys 2 values

    def divide(self, val1, val2):
        return val1 / val2
        # this f divide 2 values

```
