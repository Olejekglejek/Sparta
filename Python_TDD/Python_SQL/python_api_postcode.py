# API for postcode.io
import requests

url = "http://api.postcodes.io/postcodes/"
postcode = "E147TH"
url_arg = url + postcode
# print(url_arg)
response = requests.get(url_arg)
# print(response.status_code)
# print(response.content)
# print(response.headers)
# print(response.history)
# print(response.cookies)

# print(response.headers.keys())
# print(response.is_redirect)

response_dict = response.json()
response_keys = response_dict['result']

for keys in response_keys.keys():
    if keys == "postcode":

        print("Your postcode location is " + str(response_keys['postcode']))
    if keys == 'longitude':
        print("Your longitude is " + str(response_keys['longitude']))
    elif keys == "latitude":
        print('Your latitude is ' + str(response_keys['latitude']))


# print(type(response_dict))
