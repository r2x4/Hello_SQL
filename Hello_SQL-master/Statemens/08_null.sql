SELECT * FROM users WHERE email IS NULL;-- busca los campos null en columna email
SELECT * FROM users WHERE email IS NOT NULL;-- evitara los null solo los campos diligenciados en la columna
SELECT * FROM users WHERE email IS NOT NULL AND age = 50;-- lleva dos condiciones not y and y postraria el que los cumpla
SELECT name, last_name, IFNULL(age, 0) AS Edad FROM users;-- campos con null colocar un valor en este caso 0