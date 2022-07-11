# Python requests package
# Lets connect to live web using python requests api
# We will connect to www.bbc.com and check if the web is live

# import requests

# responses = requests.get("http://www.bbc.co.uk/")
# if responses.status_code == 200:
#     print('The website is up and running '+ str(responses.status_code))
# else:
#     print('Opps something went wrong ' + str(responses.status_code))
# status 200 which is a success means the website is live running
# status 400 or 404 means not working


#create a function called status code check
# function should return status code with appropriate message
# DRY
# def status_code_check():
#     import requests
#     # responses = requests.get("http://www.bbc.co.uk/")
#     responses = input("Please enter your web address: ")
#     if responses.status_code == 200:
#         print('The website is up and running '+ str(responses.status_code))
#     else:
#         print('Opps something went wrong ' + str(responses.status_code))

# status_code_check() 

import requests

response = requests.get("http://www/bbc/co/uk/")
def check_status()
    if response: # the condition was True
        print('success '+ str(response.status_code))
    elif response:
        print('failuer')
    elif response:
        print('OOPS something went wrong')
print(check_status())
#requests goes one step further in simplifying this process for us
#if you use response instance in a condition expression
#it will evaluate to True if the status code was between 200 and 400, false otherwise
#therefore, you can simplify the last example by rewriting the if statement as above
