from flask import Flask, render_template, request, url_for, redirect, session
import mysql.connector
import keyring as kr

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = kr.get_password("db", "root"),
    database = "safeya_dbms")

cursor = mydb.cursor()


app = Flask("safeya")
app.secret_key = "secret"

def get_redirect(username):
    if 201500<username<2015101:
        return "student"
    elif 51<=username<=150:
        return "staff"
    elif 1<=username<=50:
        return "admins"

def generate_complaint(loc):
    q1 = f"""SELECT MAX(Complaint_ID) FROM complaints"""
    cursor.execute(q1)
    complaint_no = cursor.fetchall()[0][0]+1
    query = f"""
    INSERT INTO complaints (Complaint_ID, Category, Start_time, Resolved, Location_ID, ID) VALUES ({complaint_no},1,NOW(), 3, {loc}, {session["username"]})
    """
    cursor.execute(query)
    mydb.commit()
    return complaint_no

def rate_complaint(complaint_no, my_rating, remarks):
    print(remarks, type(remarks))
    query1 = f"""
    UPDATE complaints SET Rating={my_rating}, Remarks={remarks} WHERE Complaint_ID = {complaint_no}"""
    query2 = f"""UPDATE Workers SET Avg_Rating = (num_complaints*Avg_Rating+{my_rating})/(num_complaints+1) WHERE ID = (SELECT Worker_ID FROM assigns WHERE Complaint_ID = {complaint_no})"""
    cursor.execute("""UPDATE complaints SET Rating=%s, Remarks=%s WHERE Complaint_ID = %s""", (my_rating, remarks, complaint_no))
    cursor.execute(query2)
    mydb.commit()

def assign_task(cid, wid, usr):
    q1 = f"""INSERT INTO assigns (Worker_ID, Complaint_ID, FMS_ID) VALUES ({wid}, {cid}, {usr});"""
    cursor.execute(q1)
    q2 = f"""INSERT INTO assignments (ID, Complaint_ID) VALUES ({wid}, {cid});"""
    cursor.execute(q2)
    q3 = f"""UPDATE Complaints SET Resolved=0 WHERE Complaint_ID = {cid}"""
    cursor.execute(q3)
    q4 = f"""UPDATE Workers SET Last_Assigned=NOW() WHERE ID = {wid}"""
    cursor.execute(q4)
    mydb.commit()

def execute_query(query, update=False):
    cursor.execute(query)
    if update:
        mydb.commit()
    else:
        return cursor.fetchall()

@app.route("/", methods=["POST", "GET"])
def home():
    msg=''
    if request.method == 'POST' and 'username' in request.form and 'passkey' in request.form:
        username = int(request.form['username'])
        password = request.form['passkey']
        session["username"] = username
        session["pwd"] = password
        query= f"""SELECT * FROM login WHERE username = {username} AND passkey = "{password}";"""
        cursor.execute(query)
        account = cursor.fetchone()
        if account:
            msg = 'Logged in successfully !'
            return redirect(url_for(get_redirect(username)))
        else:
            msg = 'Incorrect username / password!'
    else:
        if "username" in session:
            get_redirect(session["username"])
    return render_template('login.html', msg = msg)


@app.route("/student",  methods=['POST', "GET"])
def student():
    msg1 = ""
    msg2 = ""
    if "username" in session and get_redirect(session["username"]) == "student":
        usr = session["username"]
        q = f"""SELECT CONCAT(First_name, " ", Last_name), Age, Gender, Last_Health_Check, Location_ID FROM Students WHERE ID = {usr}"""
        cursor.execute(q)
        name, age, gender, last_check, room = cursor.fetchall()[0]
        if gender==0:
            gender = "Male"
        else:
            gender = "Female"
        if room:
            cursor.execute(f"""SELECT Last_Cleaned FROM Hostel_Room WHERE Location_ID={room}""")
            last_cleaned = cursor.fetchall()[0][0]
        else:
            last_cleaned = "Not Applicable."
        if request.method == 'POST' and 'gender' in request.form:
            if request.form["gender"] == "my_room" and room:
                print(room)
                comp_no = generate_complaint(room)
                msg1 = f"Complaint {comp_no} Generated!"
            else:
                location = request.form["fname_room"]
                if int(location)>=101:
                    comp_no = generate_complaint(location)
                    msg1 = f"Complaint {comp_no} Generated!"
        if request.method == 'POST' and 'star' in request.form:
            complaint_no = int(request.form["fname"])
            rating = request.form["star"]
            remarks = request.form["remarks"]
            rate_complaint(complaint_no, rating, remarks)
        if request.method == 'POST' and 'cid' in request.form:
            cid = request.form["cid"]
            res = request.form["res"]
            res1 = 2
            if res=="resolved":
                res1 = 1
                execute_query(f"""DELETE FROM assignments WHERE Complaint_ID = {cid}""", update=True)
                execute_query(f"""UPDATE Complaints SET End_time = NOW() WHERE Complaint_ID = {cid}""", update=True)
            execute_query(f"""UPDATE Complaints SET Resolved = {res1} WHERE Complaint_ID = {cid}""", update=True)
        return render_template('studentdash.html', name_=name, roll=usr, age=age, gender=gender, last_check=last_check, room=room, last_cleaned=last_cleaned, msg1 = msg1, msg2=msg2)
    return "Please Login First!"

@app.route("/staff",  methods=['POST', "GET"])
def staff():
    if "username" in session and get_redirect(session["username"]) == "staff":
        usr = session["username"]
        q = f"""SELECT CONCAT(First_name, " ", Last_name), Age, Gender, Last_Assigned, Temperature FROM workers WHERE ID = {usr}"""
        cursor.execute(q)
        name, age, gender, last_assigned, temp = cursor.fetchall()[0]
        if gender==0:
            gender = "Male"
        else:
            gender = "Female"
        if {usr}:
            cursor.execute(f"""SELECT Complaint_ID, Location_ID, Start_time FROM complaints WHERE Complaint_ID IN (SELECT Complaint_ID FROM assignments WHERE ID= {usr})""")
            l = cursor.fetchall()
        return render_template('fmsdash.html', name_=name, roll=usr, age=age, gender=gender, last_assigned=last_assigned, temp=temp, x=l)
    return "Please Login First!"

@app.route("/admins", methods=['POST', "GET"])
def admins():
    name1 = ""; rating = ""; remarks = ""; cid=""
    if "username" in session and get_redirect(session["username"]) == "admins":
        usr = session["username"]
        execute_query(f"""UPDATE fms_admin SET Last_Checked=NOW() WHERE ID={usr}""", update=True)
        q = f"""SELECT CONCAT(First_name, " ", Last_name), Age, Gender, Designation FROM institute_admins WHERE ID = {usr}"""
        cursor.execute(q)
        name, age, gender, desig = cursor.fetchall()[0]
        if gender==0:
            gender = "Male"
        else:
            gender = "Female"
        q1 = """SELECT ID, CONCAT(First_name, " ", Last_name), TIMESTAMPDIFF(DAY, Last_Assigned, NOW()) FROM Workers WHERE DUTY=0 ORDER BY Last_Assigned"""
        det1 = execute_query(q1)[:15]
        det2 = execute_query("""SELECT Location_ID FROM location WHERE DATEDIFF(NOW(), Last_Cleaned)>7 AND Request_Active=0""")[:15]
        det3 = execute_query("""SELECT CONCAT(First_name, ' ', Last_name, ', age ', Age, ' years old, has an average rating of ', Avg_Rating, ".")  FROM Workers WHERE Avg_Rating<2.5""")[:7]
        det4 = execute_query("""SELECT Complaint_ID FROM Complaints WHERE Resolved = 3""")[:10]
        det4 = ", ".join(map(lambda x: str(x[0]), det4))
        det5 = execute_query(f"""SELECT w.ID, CONCAT(w.First_name, " ", w.Last_name), a.Complaint_ID FROM Workers w NATURAL JOIN assignments a ORDER BY w.ID""")[:15]
        if request.method == 'POST' and 'cid' in request.form:
            cid = request.form["cid"]
            wid = request.form["wid"]
            assign_task(cid, wid, usr)
            det1 = execute_query(q1)[:15]
            det4 = execute_query("""SELECT Complaint_ID FROM Complaints WHERE Resolved = 3""")
            det4 = ", ".join(map(lambda x: str(x[0]), det4))
        if request.method == 'POST' and 'complaint_id' in request.form:
            cid = request.form["complaint_id"]
            name1 = execute_query(f"""SELECT Worker_ID from assigns WHERE Complaint_ID={cid};""")[0][0]
            rating, remarks = execute_query(f"""SELECT Rating, Remarks FROM Complaints WHERE Complaint_ID={cid};""")[0]
        return render_template('fmsdash2.html', name=name, id=usr, age=age, gender=gender, desig=desig, det1=det1, det2=det2, det3=det3, det4=det4, det5 = det5, name1=name1, rating=rating, remarks=remarks, cid=cid)
    return "Please Login First!"


@app.route("/logout", methods=['POST', "GET"])
def logout(): 
	session.pop("username", None) 
	return redirect(url_for("home")) 


if __name__ == "__main__":
    app.run(debug=True)
