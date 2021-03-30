from nw_products import Stock


class Business(Stock):
    def create_table(self):
        # oleg_table = self.cursor.execute(
        #     "CREATE TABLE oleg_table LIKE Products").fetchall()
        oleg_table = self.cursor.execute(
            "SELECT * FROM Products").fetchall()
        print(oleg_table)

    def populate_table(self):
        pass

    def delete_product():
        pass


a = Business()
a.create_table()
