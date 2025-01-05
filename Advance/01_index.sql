-- es un indice o simil indice en un libro
CREATE INDEX idx_name ON users(name);

CREATE UNIQUE INDEX idx_name ON users(name);

CREATE UNIQUE INDEX idx_name ON users(name, last_name);

-- borrar el index

DROP INDEX idx_name ON users;


-- el llamadado despues de index
SELECT * FROM users WHERE name = "Rodrigo";
-- el hace referencia para una columna o varias es como para sacer un  dato concreto