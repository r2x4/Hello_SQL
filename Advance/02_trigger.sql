-- es un disparador 
-- sirve ejemplo que cuado se actualice un mail lo guardara en otra base de datos y deja el actual

CREATE TABLE `email_history` (
  `id_email_history` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email_history`)
  UNIQUE INDEX 'email_history_id_UNIQUE'('email_history_id' ASC) VISIBLE);


  CREATE TRIGGER tg_email
  BEFORE/AFTER INSERT/UPDATE/DELETE-- son las opciones antes despues ect
  ON users

  CREATE TRIGGER tg_email
  AFTER UPDATE -- antes de carga
  ON users
