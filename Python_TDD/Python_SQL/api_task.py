# greeting user
# ask user to input data
# validate connection
# create class
# check status code
# check weather
import requests


class Api:
    def __init__(self):
        self.url = "http://api.postcodes.io/postcodes/"
        self.postcode = str(input("Hello!\nPlease enter your postcode: "))
        self.url_arg = self.url + self.postcode
        self.response = requests.get(self.url_arg)
        print("Staus code is: " + str(self.response.status_code))
        self.response_dict = self.response.json()

    def country(self):
        print("Your country is: " +
              str(self.response_dict['result']['country']))

    def region(self):
        print("Your region is: " +
              str(self.response_dict['result']['region']))


a = Api()
a.country()
a.region()
