CREATE TABLE persons8(
    id int NOT NULL AUTO_INCREMENT,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    email varchar (120) DEFAULT 'unico@gmail.com',
    PRIMARY KEY(id),
    CHECK (age>=18)
);

ALTER TABLE persons8
ADD telephon INT;-- asi se le agrega una columna ala tabla esta mal escrito telefono en ingles ojo

ALTER TABLE persons8
RENAME COLUMN telephon TO Telefono;-- renombro la columna aprende cabezon

ALTER TABLE persons8
MODIFY COLUMN Telefono varchar(250);-- cambio el tipo de dato se tenia INT y se pasa para varchar

ALTER TABLE persons8
DROP COLUMN Telefono;-- borrar una columna 