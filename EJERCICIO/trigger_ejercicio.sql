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
  -- Insertamos el coordinador y su ciudad directamente
  INSERT INTO `prueba_sql`.`coordinadores` (`NOMBRE_COORDINADOR`, `CIUDAD_COORDINADOR`)
  VALUES (NEW.`COORDINADOR`, NEW.`CIUDAD`);
END//

DELIMITER ;