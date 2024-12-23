SELECT * FROM users ORDER BY age;--Ordena de menor a mayor por edad siendo primero los null
SELECT * FROM users ORDER BY age ASC;--Ordena asendentemente igual al otro primero null
SELECT * FROM users ORDER BY age DESC;--Ordena desendente osea e mayor a null
SELECT * FROM users WHERE email='rrs2307@hotmail.es' ORDER BY age DESC;--En este caso trae ejmplo si tienen el mismo correo
SELECT * FROM users WHERE email='rrs2307@hotmail.es' ORDER BY age ASC;--En este caso trae ejmplo si tienen el mismo correo