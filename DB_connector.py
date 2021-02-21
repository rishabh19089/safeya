import mysql.connector

mydb = mysql.connector.connect(
    host = "b1hjbod5x53zcqbm37to-mysql.services.clever-cloud.com",
    user = "up14z3lqs6xuvo6u",
    password = "pQhvn3a6xMFxWJ09iA5M",
    database = "b1hjbod5x53zcqbm37to")

cursor = mydb.cursor()

# cursor.execute("drop table washroom")
# cursor.execute("SELECT * FROM washroom")
# tables = cursor.fetchall()

# print (tables)

cursor.execute("SELECT COUNT(w.ID)-COUNT(DISTINCT w.ID) FROM Workers w RIGHT JOIN assignments a ON w.ID = a.ID")
l = cursor.fetchall()
for i in l:
    print (i)
# mydb.commit()
