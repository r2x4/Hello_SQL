-- crear vista con consultas en especifico tre facilita el trabajo ojo no es u8na tabla es una vista osea una consulta

CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;


-- eliminar una vista 

DROP VIEW v_adult_users;