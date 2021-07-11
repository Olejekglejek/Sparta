# Establish a connection to a SQL DB using pyodbc
import pyodbc
from nw_products import NwProducts
from login_details import LoginDetails

# Define important connection variables using file of information
file = open("keyInfo", "r")
ip = file.readline().strip("\n")
database = file.readline().strip("\n")
uname = file.readline().strip("\n")
passwd = file.readline().strip("\n")

# Define the connection settings
connection = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};' +
                            f'SERVER={ip};DATABASE={database};UID={uname};PWD={passwd}')


# Test the functions
if __name__ == "__main__":
    stock = NwProducts("Products", connection)
    print(stock.count_stock("Chai"))
    stock.update_stock("Chai", 14)
    print(stock.count_stock("Chai"))
    stock.delete_product("Chai")
    print(stock.count_stock("Chai"))
    del stock