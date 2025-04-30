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