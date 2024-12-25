SELECT MAX(age) FROM users GROUP BY age;-- agrupa maximas edades
SELECT COUNT(age) FROM users GROUP BY age;-- agrupa por cantidad edad
SELECT COUNT(age),age FROM users GROUP BY age;-- saca las dos columnas jajaja que facil 
SELECT COUNT(age),age FROM users GROUP BY age ORDER BY age ASC;-- asendente osea de menor a mayor
SELECT COUNT(age),age FROM users GROUP BY age ORDER BY age DESC;-- desendente de mayor a menor
SELECT COUNT(age),age FROM users WHERE age > 42 GROUP BY age ORDER BY age ASC;-- le agrego where aprende rodrigo capo y mostruo 