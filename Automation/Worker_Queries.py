import mysql.connector

mydb = mysql.connector.connect(
    host = "b1hjbod5x53zcqbm37to-mysql.services.clever-cloud.com",
    user = "up14z3lqs6xuvo6u",
    password = "pQhvn3a6xMFxWJ09iA5M",
    database = "b1hjbod5x53zcqbm37to")

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


cursor = mydb.cursor()
print ("List of queries: ")
print ("1.Get the details of all the workers who are under-performing\n2.Get the details of all the workers and the time in minutes since they were last assigned.")
print("3.Show the setails of the Workers and the complaints they are currently working on.")
ans = positive_int_input("\nPlease select the query you want to execute: ")
while (ans>3):
    ans = positive_int_input("Please select the query you want to execute: ")

print()
if ans==1:
    qry = """SELECT CONCAT(First_name, ' ', Last_name, ', age ', Age, ' years old, has an average rating of ', Avg_Rating)  FROM Workers WHERE Avg_Rating<2.5"""
    cursor.execute(qry)
    result = cursor.fetchall()
    for i in range(1,len(result)+1):
        print (f"{i}. {result[i-1][0]}")

if ans==2:
    qry = """SELECT First_name, Last_name, TIMESTAMPDIFF(DAY, Last_Assigned, NOW()) FROM Workers WHERE DUTY=0 ORDER BY Last_Assigned"""
    cursor.execute(qry)
    result = cursor.fetchall()
    result = list(map(lambda x: f"{x[0]} {x[1]} was last assigned {x[2]} minutes ago.", result))
    print (f"{100-len(result)} workers are currently on duty.\nListing all the available workers..\n")
    for i in range(1, len(result)+1):
        print (f"{i}. {result[i-1]}")

else:
    qry = """SELECT w.ID, w.First_name, w.Last_name, a.Complaint_ID FROM Workers w NATURAL JOIN assignments a ORDER BY w.ID"""
    cursor.execute(qry)
    result = cursor.fetchall()
    result = list(map(lambda x: f"{x[1]} {x[2]} currently has Complaint ID {x[3]}.", result))
    c = 0
    for i in result:
        print (f"{c+1}. {i}")
        c+=1
    # result = list(map(lambda x: f"{x[0]} {x[1]} was last assigned {x[2]} minutes ago.", result))
