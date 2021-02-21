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



cursor.execute("SHOW TABLES")
l = cursor.fetchall()
q = []
for i in l:
    q.append(i[0].decode())
# # mydb.commit()
p=[]
for i in q:
    cursor.execute("DESC {}".format(i))
    p.append(cursor.fetchall())

print()
for i in range(len(p)):
    print (f"DESCRIPTION OF {q[i]}")
    for j in p[i]:
        print (f"Attribute - {j[0]}")
        for t in range(1, len(j)):
            print (f"Constraints {t}: {j[t]}")
        print()
    print("------------------------------------------------------------\n")
