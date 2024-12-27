SELECT * FROM users HAVING age > 45;-- conteo con no hace nada en el having

SELECT  COUNT(age) FROM users HAVING COUNT(age) > 4;-- aqui no toma la edades basico es para limistar