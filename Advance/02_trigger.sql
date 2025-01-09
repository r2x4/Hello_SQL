-- es un disparador 
-- sirve ejemplo que cuado se actualice un mail lo guardara en otra base de datos y deja el actual

CREATE TABLE `email_history` (
  `id_email_history` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email_history`)
  UNIQUE INDEX 'email_history_id_UNIQUE'('email_history_id' ASC) VISIBLE);


  DELIMITER //

<<<<<<< HEAD
  DELIMITER //

=======
>>>>>>> ca535daa940e03e163f8f4297a20f3cc1845ff3e
CREATE TRIGGER tg_email
  AFTER UPDATE ON users
  FOR EACH ROW
  BEGIN
      IF OLD.email <> NEW.email THEN
          INSERT INTO email_history (user_id, email)
          VALUES (OLD.user_id, OLD.email);
      END IF;
  END//

DELIMITER ;
