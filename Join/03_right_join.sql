-- right Join el trae todo y loque no este diligenciado lo pone nulo toma la tabla de la derecha
SELECT * FROM users
RIGHT JOIN  dni
ON users.user_id = dni.user_id;

SELECT users.name, dni.dni_number FROM users
RIGHT JOIN  dni
ON users.user_id = dni.user_id;-- es el mismo ejercicio de antes solo campos que queremos ver llama los users y en la otra columna trae null

SELECT users.name, dni.dni_number FROM dni
RIGHT JOIN  users
ON users.user_id = dni.user_id;-- aqui trae dni de primero y no trae los null de users por que es facil deacuerdo alo primero que se llama lo trae sin null en esa caolumna asi la otra traiga null rellena la tabla de null para compensar el llamado

SELECT * FROM users_languages
RIGHT JOIN users ON users_languages.user_id = users.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;

