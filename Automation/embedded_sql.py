import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "student",
    database = "safeya_dbms")

def none_conv(b):
    if(b is None):
        return "All combinations"
    else:
        return b
def print_gender_index():
    print("0 represents Male")
    print("1 represents Female")
    print("2 represents others")
def print_range_mapping():
    print("A represents rating BETWEEN 4 and 5")
    print("B represents rating BETWEEN 3 and 4")
    print("C represents rating BETWEEN 2 and 3")
    print("D represents rating BETWEEN 1 and 2")
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
while(True):
    print ("List of queries: ")
    print ("1.Worker analysis on the basis of gender,average rating and average salary\n2.worker analysis on the age ranges and average rating")
    print("3.worker analysis on the Average_Ratings")
    print("4.Students last health check up status")
    print("5.Security guard age analysis")
    print("6.complaints analysis on the basis of Category")
    print("7.analysis on Number_of_Complaints on location")
    print("8.Total Average_Rating of complaints in last 1000 days")
    print("9.Total Average_Salary of male and female workers")
    ans = positive_int_input("\nPlease select the query you want to execute: ")
    while (ans>9):
        ans = positive_int_input("Please select the query you want to execute: ")

    print()
    if ans==1:
        qry = """SELECT Gender, CASE WHEN Avg_Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Avg_Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN  Avg_Rating BETWEEN 3 AND 4 THEN 'B'
           ELSE 'A' END as Rating_Range, AVG(Salary) as Average_Salary
        FROM workers
        GROUP BY Gender, CASE WHEN Avg_Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Avg_Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN  Avg_Rating BETWEEN 3 AND 4 THEN 'B'
           ELSE 'A'
    END
    WITH ROLLUP;
    """
        cursor.execute(qry)
        result = cursor.fetchall()
        result=list(map(lambda x: f" For the gender {none_conv(x[0])} with the rating range {none_conv(x[1])} has an Average_Salary of {none_conv(x[2])}",result))
        c=0;
        print_gender_index()
        print("")
        print_range_mapping()
        for i in result:
            print (i)
            c=c+1

    elif ans==2:
        qry = """SELECT  CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45+'
    ELSE 'UNDERAGE'
    END AS Range_of_Ages, CASE WHEN Avg_Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Avg_Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN  Avg_Rating BETWEEN 3 AND 4 THEN 'B'
        ELSE 'A'
    END AS Average_Ratings, COUNT(ID)
    FROM workers
    GROUP BY CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45+'
    ELSE 'UNDERAGE'
    END , CASE WHEN Avg_Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Avg_Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN  Avg_Rating BETWEEN 3 AND 4 THEN 'B'
        ELSE 'A'
    END
    WITH ROLLUP
    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        print_range_mapping()
        print("")
        result = list(map(lambda x: f"In the range {none_conv(x[0])} Average_Rating  {none_conv(x[1])} is of {none_conv(x[2])} workers.", result))
        for i in range(1, len(result)+1):
            print (f"{i}. {result[i-1]}")

    elif ans==3:
        qry = """SELECT CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45+'
    ELSE 'UNDERAGE'
    END AS Range_of_Ages, AVG(Avg_Rating) FROM workers
    GROUP BY CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45+'
    ELSE 'UNDERAGE'
    END
    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        result = list(map(lambda x: f"In the range {none_conv(x[0])} Average_Rating is {none_conv(x[1])} .", result))
        c = 0
        for i in result:
            print (i)
            c+=1
        # result = list(map(lambda x: f"{x[0]} {x[1]} was last assigned {x[2]} minutes ago.", result))
    elif ans==4:
        qry = """SELECT Gender, CASE WHEN DATEDIFF(NOW(),Last_Health_Check) BETWEEN 0 AND 3 THEN '0 AND 3 DAYS' 
    WHEN DATEDIFF(NOW(),Last_Health_Check) BETWEEN 3 AND 7 THEN '3 AND 7 DAYS' 
    ELSE '7+ DAYS' 
    END AS ‘Last_Check_up’, AVG(Age) as Average_Age FROM Students 
    GROUP BY Gender,  CASE WHEN DATEDIFF(NOW(),Last_Health_Check) BETWEEN 0 AND 3 THEN '0 AND 3 DAYS' 
    WHEN DATEDIFF(NOW(),Last_Health_Check) BETWEEN 3 AND 7 THEN '3 AND 7 DAYS' 
    ELSE '7+ DAYS' END 
    WITH ROLLUP

    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        print_gender_index()
        print("")
        result = list(map(lambda x: f"For the gender {none_conv(x[0])} last health check up was {none_conv(x[1])} and Average_Age of the group is {none_conv(x[2])}.", result))
        c = 0
        for i in result:
            print (i)
            c+=1
    elif ans==5:
        qry = """SELECT Gender, CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45+'
    ELSE 'UNDERAGE'
    END AS Range_of_Ages, COUNT(ID)
    FROM Security
    GROUP BY Gender , CASE WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age>45 THEN '45'
    ELSE 'UNDERAGE'
    END
    WITH ROLLUP


    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        print_gender_index()
        result = list(map(lambda x: f"For the gender {none_conv(x[0])} in the age range {none_conv(x[1])} number of Security guard is {none_conv(x[2])}.", result))
        c = 0
        for i in result:
            print (i)
            c+=1
    elif ans==6:
        qry = """SELECT Category, CASE WHEN Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN Rating BETWEEN 3 AND 4 THEN 'B'
        ELSE 'A'
    END AS Average_Ratings, count(Complaint_ID) AS Number_of_Complaints
    FROM complaints WHERE RESOLVED = 1
    GROUP BY Category, CASE WHEN Rating BETWEEN 1 AND 2 THEN 'D'
            WHEN Rating BETWEEN 2 AND 3 THEN 'C'
            WHEN  Rating BETWEEN 3 AND 4 THEN 'B'
        ELSE 'A'
    END WITH ROLLUP



    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        print_range_mapping()
        print("")
        result = list(map(lambda x: f"For the Category {none_conv(x[0])} with the Average Rating {none_conv(x[1])} number of complaints are {none_conv(x[2])}.", result))
        c = 0
        for i in result:
            print (i)
            c+=1
    elif ans==7:
        qry = """Select Count(Complaint_ID) AS Number_of_Complaints ,Location_ID
    FROM complaints
    WHERE DATEDIFF(NOW(),Start_time)<365
    GROUP BY Location_ID 


    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        result = list(map(lambda x: f"For the location {none_conv(x[1])} total {none_conv(x[0])} complaints were registerd in the past year.", result))
        c = 0
        for i in result:
            print (i)
            c+=1
    elif ans==8:
        qry = """SELECT AVG(Rating) AS Average_Complaint_Ratings FROM complaints WHERE Resolved = 1 AND DATEDIFF(NOW(),End_time) < 1000



    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        result = list(map(lambda x: f"Average Complaint Ratings for the past 1000 days is {none_conv(x[0])}", result))
        c = 0
        for i in result:
            print (i)
            c+=1
    elif ans==9:
        qry = """SELECT AVG(Salary) AS GenderWiseAverageIncomes, gender
    FROM workers
    GROUP BY Gender

    """
        cursor.execute(qry)
        result = cursor.fetchall()
        #print(result)
        print_gender_index()
        print("")
        result = list(map(lambda x: f"For the gender {none_conv(x[1])} the average Income is {none_conv(x[0])}.", result))
        c = 0
        for i in result:
            print (i)
            c+=1

    print("")





