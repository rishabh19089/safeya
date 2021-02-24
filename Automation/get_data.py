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
    while ans<1:
        try:
            ans = int(input(qn))
        except:
            print ("Please enter an integer.")
    return ans


cursor.execute("SHOW TABLES")
l = cursor.fetchall()
q = []
for i in l:
    if type(i)==str:
        q.append(i[0])
    else:
        q.append(i[0].decode())

print("Table Description")
print("Showing all the options....")
for i in range(1, len(q)+1):
    print(f"{i}. {q[i-1]}")

ans = positive_int_input("\nPlease enter the table number that you want to see the data of: ")
while (ans>len(q)):
    print("Please enter a number from 1 to {}".format(len(q)))
    ans = positive_int_input("Please enter the table number that you want to see the data of: ")

cursor.execute("SELECT * FROM {}".format(q[ans-1]))
results = cursor.fetchall()

widths = []
columns = []
tavnit = '|'
separator = '+' 

c = 0
for cd in cursor.description:
    c+=1
    if ("time" in cd[0]):
        widths.append(cd[1]*2)
    elif ("name" in cd[0]):
        widths.append(15)
    elif ("declaration" in cd[0]):
        widths.append(100)
    else:
        widths.append(max(cd[1], len(cd[0])))
    columns.append(cd[0])

# print (max(widths))
for w in widths:
    tavnit += " %-"+"%ss |" % (w,)
    separator += '-'*w + '--+'

print(separator)
print(tavnit % tuple(columns))
print(separator)
for row in results:
    print(tavnit % row)
print(separator)
