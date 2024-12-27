SELECT *,
CASE 
    WHEN age >= 45 THEN 'Mayores de 45'
    WHEN age > 50 THEN'Mayores de 50'
    ELSE 'Menores de 45'
END AS Edad
FROM users;-- sirve para crera otra columna con condiciones especificas 

SELECT *,
CASE 
    WHEN age >= 45 THEN True
    ELSE False
END AS Edad
FROM users;-- Nos emite valores boleanos 1 and 0

SELECT *,
CASE 
	WHEN age >= 50 THEN 'Mayores de 50'
    WHEN age >= 45 THEN 'Mayores de 45'
    WHEN age <= 17 THEN 'Menor de Edad'
    ELSE 'Menores de 45'
END AS Edad
FROM users;-- se pueden colocar varias condiciones