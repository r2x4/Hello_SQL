
CREATE DATABASE practica_sql;

USE practica_sql;

CREATE TABLE practica_sql(
    regional VARCHAR(50) NOT NULL,
    ciudad VARCHAR(70) NOT NULL,
    codtrabajo VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    cuenta INT,
    orden INT,
    cnatidad INT,
    nombre_tecnico VARCHAR(150) NOT NULL,
    cedula BIGINT NOT NULL,
)