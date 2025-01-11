-- procedimiento almacenado
-- lo primero es poner delimitadores cordarse rodrigo

DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN 
    SELECT * FROM users;
END//

-- llamado se hace generico exc pero tambin con call este ultimo es mejor

CALL p_all_users;

-- otro ejercicio por edad

DELIMITER //
CREATE PROCEDURE p_age_users(IN age INT)
BEGIN 
    SELECT * FROM users WHERE age = age;
END//

-- borrar el procedimiento

DROP PROCEDURE p_age_users;

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param INT)
BEGIN 
    SELECT * FROM users WHERE age = age_param;
END//

-- hacer el llamdo alo buscado
CALL p_age_users (44);-- se cargan usurios de esa edad serian 2

-- hay otro comsepto llamado tracsacciones y es cuando dan numeros negativos es volver la base al punto antes de que se carge ese valor negativo
-- Buscar informacion rodrigo 
-- START TRANSACTION, COMMIT, ROLLBACK ojo son comseptos aprender

-- segundo comsepto concurrencia es cuando hay varios usuaior para un campo es mas del administrador como se optimiza los datos 
