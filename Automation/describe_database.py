import mysql.connector

mydb = mysql.connector.connect(
    host = "b1hjbod5x53zcqbm37to-mysql.services.clever-cloud.com",
    user = "up14z3lqs6xuvo6u",
    password = "pQhvn3a6xMFxWJ09iA5M",
    database = "b1hjbod5x53zcqbm37to")

cursor = mydb.cursor()


def positive_int_input(qn):
    '''
    Take integer input > 0.
    Paramters: qn -> The question asked in string form.
    Returns: The integer input.
    '''
    ans = -1
    while ans<0:
        try:
            ans = int(input(qn))
        except:
            print ("Please enter an integer.")
    return ans

cols = ["FIELD", "TYPE", "NULL", "KEY", "DEFAULT", "EXTRA"]

cursor.execute("SHOW TABLES")
l = cursor.fetchall()
q = []
for i in l:
    if type(i[0])==str:
        q.append(i[0])
    else:
        q.append(i[0].decode())

print("Table Description")
print("Showing all the options....")
print ("\n0. All Tables")
for i in range(1, len(q)+1):
    print(f"{i}. {q[i-1]}")

ans = positive_int_input("\nPlease enter the table number that you want described: ")
while (ans>len(q)):
    print("Please enter a number from 0 to {}".format(len(q)))
    ans = positive_int_input("Please enter the table number that you want described: ")

if ans==0:
    p=[]
    for i in q:
        cursor.execute(f"DESC {i}")
        p.append(cursor.fetchall())
    print()
    for i in range(len(p)):
        print (f"DESCRIPTION OF {q[i]}")
        print()
        for j in p[i]:
            print (f"Attribute - {j[0]}")
            for t in range(1, len(j)):
                if type(j[t])==bytearray:
                    print (f"\t    {cols[t]}: {j[t].decode()}")
                elif type(j[t])==bytes:
                    print (f"\t    {cols[t]}: {j[t].decode()}")
                else:
                    print (f"\t    {cols[t]}: {j[t]}")
            print()
        print("------------------------------------------------------------\n")

else:
    i = ans-1
    cursor.execute(f"DESC {q[i]}")
    l = cursor.fetchall()
    print (f"\nDESCRIPTION OF {q[i]}")
    print()
    for j in l:
        print (f"Attribute - {j[0]}")
        for t in range(1, len(j)):
            if type(j[t])==bytearray:
                print (f"\t    {cols[t]}: {j[t].decode()}")
            elif type(j[t])==bytes:
                print (f"\t    {cols[t]}: {j[t].decode()}")
            else:
                print (f"\t    {cols[t]}: {j[t]}")
        print()
    print("------------------------------------------------------------\n")




