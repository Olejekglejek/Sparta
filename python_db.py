# To establish connection between Python and SQL we will use PYODBC
import pyodbc

server = "Ip adress"
database = "Northwind"
username = "username"
password = "password"
docker_Northwind = pyodbc.connect(
    'DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD=' + password)

# Lets check if the connection has been validated and cursor object is created
cursor = docker_Northwind.cursor()
print(cursor.execute("SELECT @@version;"))

# Lets fetch some data from the Northwind DB
row = cursor.fetchone()
print(row)

# Lets connect to our DB and fetch some data from Customers table
customers_rows = cursor.execute("SELECT * FROM Customers").fetchall()
print(customers_rows)
# We use execute to run our queries within a string
# fetchall() gets all the data from the table

products_rows = cursor.execute("SELECT * FROM Products").fetchall()
# Lets iterate through the product Table and check the UnitPrice available
for records in products_rows:
    print(records.UnitPrice)

row = cursor.execute('SELECT * FROM Products')
while True:
    record = row.fetchone()
    if record is None:
        break
    print(record.UnitPrice)

# to close connection northwind_database.close()
northwind_database.close()