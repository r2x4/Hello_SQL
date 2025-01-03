-- datos comunes de dos tablas lo que no esta diligenciado osea null no lo trae
-- esto es para 1:1

SELECT * FROM users
INNER JOIN  dni
ON users.user_id = dni.user_id;

SELECT * FROM users
JOIN  dni
ON users.user_id = dni.user_id;-- es igual Inner Join al Join llaman las misma informacion

-- se puede hacer tablas ejemplo

SELECT name, last_name, age, email, dni_number FROM users
JOIN  dni
ON users.user_id = dni.user_id
ORDER BY age ASC;-- se pueden hacer consultas internas aprende cabezon

-- esto N:N 

SELECT * FROM users
JOIN Companies
ON users.company_id = Companies.company_id;

SELECT * FROM Companies
JOIN users
ON users.company_id = Companies.company_id;

-- se hace tabla con datos especiales
SELECT Companies.name, users.name, last_name FROM Companies
JOIN users
ON users.company_id = Companies.company_id;

-- varias tablas 

SELECT * FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

-- aqui es el mismo anterior pero llamo columnas y les cambio el nombre

SELECT users.name AS nombre, last_name AS apellidos, languages.name AS lenguaje_de_programacion FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

SELECT users.name AS nombre, last_name AS apellidos, languages.name AS lenguaje FROM users_languages
LEFT JOIN users ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;