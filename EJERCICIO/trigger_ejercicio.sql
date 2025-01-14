SELECT * FROM prueba_sql.tecnicos_unicos;
DELIMITER //

CREATE TRIGGER `insertar_tecnico` 
AFTER INSERT ON `prueba_sql`.`julio_dia01`
FOR EACH ROW
BEGIN
  -- Comprobamos si la cédula del técnico ya está en la tabla de técnicos
  IF NOT EXISTS (SELECT 1 FROM `prueba_sql`.`tecnicos_unicos` WHERE `CEDULA TECNICO REAL` = NEW.`CEDULA TECNICO REAL`) THEN
    -- Si no existe, lo insertamos en la tabla de técnicos
    INSERT INTO `prueba_sql`.`tecnicos_unicos` (`CEDULA TECNICO REAL`, `NOMBRE TECNICO REAL`)
    VALUES (NEW.`CEDULA TECNICO REAL`, NEW.`NOMBRE TECNICO REAL`);
  END IF;
END//

DELIMITER ;
DELIMITER //

CREATE TRIGGER `insertar_coordinador`
AFTER INSERT ON `prueba_sql`.`julio_dia01`
FOR EACH ROW
BEGIN
  -- Comprobamos si el coordinador ya está en la tabla coordinadores
  IF NOT EXISTS (SELECT 1 FROM `prueba_sql`.`coordinadores` WHERE `NOMBRE_COORDINADOR` = NEW.`COORDINADOR`) THEN
    -- Si no existe, lo insertamos en la tabla coordinadores
    INSERT INTO `prueba_sql`.`coordinadores` (`NOMBRE_COORDINADOR`)
    VALUES (NEW.`COORDINADOR`);
  END IF;
END//

DELIMITER ;