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
    INSERT INTO complaints (Complaint_ID, Category, Start_time, Resolved, Location_ID, ID) VALUES ({complaint_no},1,NOW(), 0, {loc}, {session["username"]})
    """
    cursor.execute(query)
    mydb.commit()
    return complaint_no

def rate_complaint(complaint_no, my_rating):
    query1 = f"""
    UPDATE complaints SET Rating={my_rating} WHERE Complaint_ID = {complaint_no}"""
    query2 = f"""UPDATE Workers SET Average_Rating = (num_complaints*Average_Rating+{my_rating})/(num_complaints+1)"""
    cursor.execute(query1)
    cursor.execute(query2)
    mydb.commit()

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
    if "username" in session and get_redirect(session["username"]) == "student":
        msg1 = ""
        msg2 = ""
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
            print("hello")
            complaint_no = request.form["fname"]
            rating = request.form["star"]
            print(rating)
            rate_complaint(complaint_no, rating)
        return render_template('studentdash.html', name_=name, roll=usr, age=age, gender=gender, last_check=last_check, room=room, last_cleaned=last_cleaned, msg1 = msg1, msg2=msg2)
    return "Please Login First!"

@app.route("/staff",  methods=['POST', "GET"])
def staff():
    if "username" in session and get_redirect(session["username"]) == "staff":
        usr = session["username"]
        return render_template('fmsdash.html')
    return "Please Login First!"

@app.route("/admins")
def admins():
    if "username" in session and get_redirect(session["username"]) == "admins":
        usr = session["username"]
        return render_template('fmsdash2.html')
    return "Please Login First!"


@app.route("/logout", methods=['POST', "GET"])
def logout(): 
	session.pop("username", None) 
	return redirect(url_for("home")) 


if __name__ == "__main__":
    app.run(debug=True)
