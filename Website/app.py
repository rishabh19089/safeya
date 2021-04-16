from flask import Flask, render_template, request, url_for
import mysql.connector

host = "localhost",
user = "root",
password = "saarthak"
database = "safeya_dbms"

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "saarthak",
    database = "dbms")

app = Flask("safeya")
app.secret_key = 'your secret key'
app.config['MYSQL_HOST'] = host
app.config['MYSQL_USER'] = user
app.config['MYSQL_PASSWORD'] = password[0]
app.config['MYSQL_DB'] = database

# mysql = MySQL(app)

@app.route("/", methods=["POST", "GET"])
def home():
    msg=''
    if request.method == 'POST' and 'username' in request.form and 'passkey' in request.form:
        username = int(request.form['username'])
        password = request.form['passkey']
        # print(username, password)
        cursor = mydb.cursor()
        query= f"""
        SELECT * FROM login WHERE username = {username} AND passkey = "{password}";
        """
        # print(query)
        cursor.execute(query)
        account = cursor.fetchone()
        # print(account)
        if account:
            msg = 'Logged in successfully !'
            if 201500<username<2015101:
                q = f"""
                SELECT CONCAT(First_name, " ", Last_name) FROM Students WHERE ID = {username}
                """
                cursor.execute(q)
                name = cursor.fetchall()[0][0]
                return render_template('studentdash.html', name_=name)
            elif 51<=username<=150:
                return render_template('fmsdash.html')
            elif 1<=username<=50:
                return render_template("fmsdash2.html")
        else:
            msg = 'Incorrect username / password!'
    return render_template('login.html', msg = msg)





if __name__ == "__main__":
    app.run(debug=True)