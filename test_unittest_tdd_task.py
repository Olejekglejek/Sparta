# Lets create tests to check if the code would be running without any errors

from tdd_task import NaanFactory
# importing the file and class where we would write our code
import unittest
# importing unittest to inherit TestCase to create out tests against the code


class Test(unittest.TestCase):

    calc = NaanFactory()

    def test_make_dough(self):

        self.assertEqual(self.calc.make_dough('water', 'flour'), 'dough')

    def test_make_naan(self):
        self.assertEqual(self.calc.make_dough('bake', 'dough'), 'naan')
