SELECT * FROM users WHERE age = 44;-- Para llamar campos iguales este caso edad
SELECT name FROM users WHERE age = 44;-- Para Llamar un campo especifico nombre con esa edad
SELECT DISTINCT age FROM users WHERE age = 44;-- Para traer un solo campo es repetitivo
SELECT DISTINCT name FROM users WHERE age = 44;-- Para traer los campos que cumplan sentencia