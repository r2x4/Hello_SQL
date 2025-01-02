-- relaciones 1:1

CREATE TABLE dni(
dni_id INT AUTO_INCREMENT PRIMARY KEY,
dni_number INT NOT NULL,
user_id INT UNSIGNED,
UNIQUE (dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id) 
);-- relacion 1:1 

CREATE TABLE Companies(
company_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(150) NOT NULL
 
);


-- relaciones de N:M
-- lo primero que hago es modificar el dato lo paso de varchar a INT
USE hello_sql;
SELECT * FROM users;
ALTER TABLE users
MODIFY COLUMN company_id INT;

-- modifico para clave foranea aprenda cabezon
ALTER TABLE users
ADD CONSTRAINT FK_Companies-- al FK se le coloca el nombre de la tabla
FOREIGN KEY(company_id) REFERENCES Companies(company_id)-- la relacion donde queda la llave foranea


-- relaciones N:N  muchos a muchos son ejemplos rodrigo 
-- se crea tabla 
CREATE TABLE languages(
language_id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);

-- se crea la tabla de relacion
-- se nombra en general con el nombre de las tablas
CREATE TABLE users_languages(
users_anguage_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
language_id INT,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(language_id) REFERENCES languages(language_id),
UNIQUE (user_id, language_id)
);