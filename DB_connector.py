
import mysql.connector

mydb = mysql.connector.connect(
    host = "blwndf0yd7pdzkgejxao-mysql.services.clever-cloud.com",
    user = "ux5cswqtdrax9bls",
    password = "?",
    database = "blwndf0yd7pdzkgejxao")


print (mydb)

cursor = mydb.cursor()

cursor.execute("CREATE TABLE ABC (name varchar(255), id INT)")