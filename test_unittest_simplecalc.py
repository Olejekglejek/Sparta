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
# pytest looks for any file wtih name including test.*.py