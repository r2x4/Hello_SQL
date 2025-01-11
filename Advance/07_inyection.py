import mysql.connector

def print_user(user):

    config = {
        "host": "localhost",
        "port": "3306",
        "database": "hello_sql",
        "user": "root",
        "password": "Dragon2307*", 
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name ='" + user + "'"
    cursor.execute(query)
    result = cursor.fetchall()

    for row in result:
        print(row)
    
    cursor.close()
    connection.close()

print_user("Nyny")

# esto seria como pueen estraer informacion hay que leer documentacion para hay que hacer ciertas cosas para evitar o mas bien minimizar el escape de la informacion