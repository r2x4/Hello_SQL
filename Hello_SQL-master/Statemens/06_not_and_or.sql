SELECT * FROM users WHERE NOT email = 'rrs2307@hotmail.es';-- basicamente para buscar lo contrario en este caso no este correo si no los demas

SELECT * FROM users WHERE NOT email = 'rrs2307@hotmail.es' AND age = 50;-- aqui se busca con Not mas and pero busca el el especifico caso la edad

SELECT * FROM users WHERE NOT email = 'rrs2307@hotmail.es' OR age = 50; -- igualmente que la anterior pero trae dosn condiciones posibles a cumplir