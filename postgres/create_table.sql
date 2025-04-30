CREATE SCHEMA IF NOT EXISTS prueba;

CREATE TABLE
    prueba.clientes (
        id SERIAL PRIMARY KEY,
        nombre VARCHAR(100),
        correo VARCHAR(150),
        telefono VARCHAR(20),
        fecha_registro DATE DEFAULT CURRENT_DATE
    );

-- crear base de datos ojo se hace en donde dice bases de datos
CREATE DATABASE nombre_rodrigo;

-- ver una tabla
SELECT
    *
FROM
    information_schema.tables
WHERE
    table_name = 'clientes'
    AND table_schema = 'prueba';

-- ver la tabla 
SELECT
    *
FROM
    prueba.clientes;

-- cambio de nombre de una columna
ALTER TABLE prueba.clientes
RENAME COLUMN nombre TO nombre_apellido;