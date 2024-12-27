SELECT age AS Edad_Inicial,
CASE 
    WHEN age >= 45 THEN 'Mayores de 45'
    ELSE 'Menores de 45'
END AS Edad
FROM users;-- sirve para crera otra columna con condiciones especificas 