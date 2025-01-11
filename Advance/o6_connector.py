import mysql.connector

config = {
    "host": "localhost",
    "port": "3306",
    "database": "hello_sql",
    "user": "root",
    "password": "Dragon2307*", 
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)
    
cursor.close()
connection.close()

# ojo esto cambia deacuerdo ala lenjuaje se puede en python java es para conectar la base nada mas 

