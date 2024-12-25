SELECT * FROM users WHERE age BETWEEN 40 AND 50;
SELECT name, date AS fecha  FROM users WHERE age BETWEEN 40 AND 50;-- llama dos columnas y cambia date por fecha
SELECT date AS fecha FROM users;-- cambia el nombre de la columna mira 
SELECT CONCAT(name, ' ',last_name ) FROM users;-- concatenamos dos columnas en una sola
SELECT CONCAT(name, ' ',last_name ) AS 'Nombre Completo' FROM users;-- aqui nueva columna y la bautizo entre comillas aprenda payaso jajajaja