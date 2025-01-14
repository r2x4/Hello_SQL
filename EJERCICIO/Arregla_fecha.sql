USE prueba_sql;

SELECT 
    STR_TO_DATE(FECHA, '%d-%m-%Y') AS fecha_convertida
FROM 
    julio_dia01;

USE prueba_sql;

SELECT 
    STR_TO_DATE(FECHA, '%Y-%m-%d') AS fecha_convertida
FROM 
    julio_dia01;
USE prueba_sql;

SELECT 
    STR_TO_DATE(FECHA, '%d/%m/%Y') AS fecha_convertida
FROM 
    julio_dia01;

USE prueba_sql;

SELECT 
    STR_TO_DATE(FECHA, '%m/%d/%Y') AS fecha_convertida
FROM 
    julio_dia01;

-- no se pero sirve