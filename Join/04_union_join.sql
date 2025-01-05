-- En otras bases SQL se encuentra como
(RIGHT, LEFT FULL) OUTER JOIN -- en encabezado mas el outer join ojo enotras bases SQL se llama union en MYSQL

-- aqui trae informacion de parte de las tablas 
SELECT users.user_id AS Users1_id, dni.user_id AS Users2_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT users.user_id AS Users1_id,dni.user_id AS Users2_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- aqui trae toda la informacion
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION 
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;