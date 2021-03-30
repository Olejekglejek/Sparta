# # SQL OOP

# ## Timings

# 25 - 30

# * OOP example using pyodbc

# create an example of how we can create service objects related to a particular table.

# ## An sql manager for the products table

# create an object that relates only to the products table in the Northwind database. The reason for creating a single object for any table within the database would be to ensure that all functionality we build into this relates to what could be defined as a 'business function'.

# As an example the products table, although relating to the rest of the company, will service a particular area of the business in this scenario we will simply call them the 'stock' department.

# The stock department may have numerous requirements and it makes sense to contain all the requirements a code actions within a single object.

# Create two files `nw_products.py` & `nw_runner.py` and then we will move into creating our object.

# APPLY OOP - DRY CRUD WHERE POSSIBLE
class Stock():
    def __init__(self):
        import pyodbc
        self.server = "IP ADress"
        self.database = "Northwind"
        self.username = "username"
        self.password = "password"
        self.docker_Northwind = pyodbc.connect(
            'DRIVER={ODBC Driver 17 for SQL Server};SERVER='+self.server+';DATABASE='+self.database+';UID='+self.username+';PWD=' + self.password)
        self.cursor = self.docker_Northwind.cursor()

    def check_connection(self):
        print(self.cursor.execute("SELECT @@version;"))
