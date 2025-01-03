-- left Join el trae todo y loque no este diligenciado lo pone nulo
SELECT * FROM users
LEFT JOIN  dni
ON users.user_id = dni.user_id;

SELECT users.name, dni.dni_number FROM users
LEFT JOIN  dni
ON users.user_id = dni.user_id;-- es el mismo ejercicio de antes solo campos que queremos ver llama los users y en la otra columna trae null

SELECT users.name, dni.dni_number FROM dni
LEFT JOIN  users
ON users.user_id = dni.user_id;-- aqui trae dni de primero y no trae los null de users por que es facil deacuerdo alo primero que se llama lo trae sin null en esa caolumna asi la otra traiga null rellena la tabla de null para compensar el llamado

SELECT * FROM users_languages
LEFT JOIN users ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;

