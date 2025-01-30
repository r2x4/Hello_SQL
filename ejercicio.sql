CREATE DATABASE practicando_sql;
USE practicando_sql;
CREATE TABLE practicando_sql(
	regional varchar (50),
	ciudad varchar (50),
	codtrabajo varchar (50),
	fecha date,
	cuenta int,
	orden int,
	cantidad int,
	nombre_tecnico varchar (150) not null,
	cedula bigint primary key not null unique,
	tipo_trabajo varchar (50),
	precio_trabajo decimal (10, 2),
	tipo_movil varchar (50),
	esquema_trabajo varchar (20),
	coordinador varchar (150)
);

-- trigger uno

DELIMITER $$

CREATE TRIGGER after_insert_practicando_sql
AFTER INSERT ON practicando_sql
FOR EACH ROW
BEGIN
    -- Aquí se podría registrar en un log
    INSERT INTO log_inserciones (cedula, nombre_tecnico, fecha_insercion)
    VALUES (NEW.cedula, NEW.nombre_tecnico, NOW());
END $$

DELIMITER ;

-- tabla del trigger anterio

CREATE TABLE log_inserciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula BIGINT,
    nombre_tecnico VARCHAR(150),
    fecha_insercion DATETIME
);


CREATE TABLE practicando_sql (
    regional VARCHAR(50),
    ciudad VARCHAR(50),
    codtrabajo VARCHAR(50),
    fecha VARCHAR(50,
    cuenta INT,
    orden INT,
    cantidad INT,
    nombre_tecnico VARCHAR(150) NOT NULL,
    cedula BIGINT  NOT NULL,
    tipo_trabajo VARCHAR(50),
    precio_trabajo VARCHAR(50),
    tipo_movil VARCHAR(50),
    esquema_trabajo VARCHAR(20),  -- Aquí solo una vez
    coordinador VARCHAR(150)
);

LOAD DATA LOCAL INFILE 'C:/Users/rrs23/OneDrive/Documentos/Prueba_Analistas.csv'
INTO TABLE practicando_sql
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'practicando_sql
IGNORE 1 ROWS;

SELECT * FROM practicando_sql;

SELECT COUNT(REGIONAL)
FROM practicando_sql;

ALTER TABLE practicando_sql MODIFY COLUMN FECHA DATE;
RENAME TABLE carga_inicial TO practicando_sql;

SELECT * FROM practicando_sql;
ALTER TABLE practicando_sql MODIFY COLUMN FECHA DATE;

UPDATE practicando_sql
SET FECHA = STR_TO_DATE(FECHA, '%d/%m/%Y');

SET SQL_SAFE_UPDATES = 0;
UPDATE practicando_sql
SET FECHA = STR_TO_DATE(FECHA, '%d/%m/%Y');
SET SQL_SAFE_UPDATES = 1;

-- insertar datos en una columna basia

UPDATE `practicando_sql`
SET `COORDINADOR` = CASE 
    WHEN `CIUDAD` = 'BOGOTA' AND `ESQUEMA DE TRABAJO` = 'HFC' THEN 'GIOVANNI V'
    WHEN `CIUDAD` = 'BOGOTA' AND `ESQUEMA DE TRABAJO` = 'FTTH' THEN 'JHON T'
    WHEN `CIUDAD` = 'BUCARAMANGA' AND `ESQUEMA DE TRABAJO` = 'HFC' THEN 'DIEGO S'
    WHEN `CIUDAD` = 'BUCARAMANGA' AND `ESQUEMA DE TRABAJO` = 'FTTH' THEN 'EDINSON Q'
    WHEN `CIUDAD` = 'YOPAL' AND `ESQUEMA DE TRABAJO` = 'HFC' THEN 'HUBER M'
    WHEN `CIUDAD` = 'YOPAL' AND `ESQUEMA DE TRABAJO` = 'FTTH' THEN 'JHON G'
    WHEN `CIUDAD` = 'VILLAVICENCIO' AND `ESQUEMA DE TRABAJO` = 'HFC' THEN 'SERGIO G'
    WHEN `CIUDAD` = 'VILLAVICENCIO' AND `ESQUEMA DE TRABAJO` = 'FTTH' THEN 'ANDRES G'
    ELSE `COORDINADOR` -- No modifica si no se cumplen las condiciones
END
WHERE `COORDINADOR` IS NULL;

-- TRIGGER

DELIMITER $$

CREATE TRIGGER after_insert_practicando_sql
AFTER INSERT ON practicando_sql
FOR EACH ROW
BEGIN
    -- Aquí se podría registrar en un log
    INSERT INTO coordinador (coordinador, ciudad, fecha_insercion)
    VALUES (NEW.coordinador, NEW.ciudad, NOW());
END $$

DELIMITER ;

-- tabla del trigger anterior


CREATE TABLE coordinador (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50),
    coordinador VARCHAR(150),
    fecha_insercion DATETIME
);