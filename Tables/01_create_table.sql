CREATE TABLE persons(
    id int,
    name varchar (70),
    surname varchar (120),
    age int,
    created date,
    email varchar (120)
);-- tabal normal

CREATE TABLE persons2(
    id int NOT NULL,
    name varchar (70) NOT NULL,
    surname varchar (120),
    age int,
    created date,
    email varchar (120)
);-- tabla con constrains aqui uso not null

CREATE TABLE persons3(
    id int NOT NULL,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime,
    email varchar (120),
    UNIQUE(id)
);-- tabla con constrains aqui uso unique

CREATE TABLE persons4(
    id int NOT NULL,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime,
    email varchar (120),
    PRIMARY KEY(id)
);-- tabla con constrains aqui uso primary key

CREATE TABLE persons5(
    id int NOT NULL,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime,
    email varchar (120),
    PRIMARY KEY(id),
    CHECK (age>=18)
);-- tabla con constrains aqui uso de check evitara en este ejemplo que se carguen datos de menores de 18 es ejemplo se puede en las columnas

CREATE TABLE persons6(
    id int NOT NULL,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    email varchar (120) DEFAULT 'unico@gmail.com',
    PRIMARY KEY(id),
    CHECK (age>=18)
);-- tabla con constrains aqui uso de defaul ejemplo un email dummi osea uno cuando halla null, o en datetime fecha del dia en el sistema 

CREATE TABLE persons7(
    id int NOT NULL AUTO_INCREMENT,
    name varchar (100) NOT NULL,
    surname varchar (120),
    age int,
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    email varchar (120) DEFAULT 'unico@gmail.com',
    PRIMARY KEY(id),
    CHECK (age>=18)
);-- tabla con constrains aqui uso de auto incremento que en este caso es auto_increment
