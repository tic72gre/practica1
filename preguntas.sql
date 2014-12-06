
CREATE DATABASE /*!32312 IF NOT EXISTS*/`preguntas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `preguntas`;


DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) DEFAULT NULL,
  `respuesta1` varchar(255) DEFAULT NULL,
  `respuesta2` varchar(255) DEFAULT NULL,
  `respuesta3` varchar(255) DEFAULT NULL,
  `correcta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;


insert  into `preguntas`(`id`,`pregunta`,`respuesta1`,`respuesta2`,`respuesta3`,`correcta`) values (1,'¿En qué año fue fundada la Primera División Profesional de México?','1932','1943','1952',2),(2,'¿Cómo se llamaban antiguamente los torneos de Clausura y Apertura?','Verano e Invierno ','Primero y Segundo','Cierre y Comienzo',1),(3,'¿Cuál de los siguientes clásicos está considerado como el más antiguo del fútbol mexicano?','Clasico Nacional o Clásico de Clásicos','Clásico Tapatío ','Clásico Regiomontano',2),(4,'¿Cuántos equipos disputaron la primera temporada de la Primera División Profesional de México?','6','8','10',3),(5,'¿Cuál fue el primer equipo que fue capaz de ganar 4 campeonatos consecutivos de la liga profesional?','León','América','Guadalajara',3),(6,'¿En qué temporada fue creada la Segunda División?','1943/44','1948/49','1950/51',3),(7,'¿De qué equipo fue una leyenda el portero José Miguel Marín Acotto?','Tigres','Cruz Azul','América',2),(8,'¿En qué club debutó el mítico Hugo Sánchez?','Pumas','Atlante','Veracruz',1),(9,'¿Cuál es el estadio del Toluca?','Morelos','Hidalgo','Nemesio Díez',3),(10,'¿Cuántos títulos de goleo consiguió Evanivaldo Castro Silva \"Cabinho\"?','3','5','7',3),(11,'¿Quien es el equipo mas ganador? ','America','Chivas','Toluca',2),(12,'¿Unico equipo que a ganado la copa sudamericana?','Chivas','America','Pachuca',3),(13,'¿Unicos equipos que han llegado a la final de la libertadores?','America y Cruz Azul','Toluca y Pachuca','Cruz Azul y Chivas',3),(14,'¿Primer campeon?','Orizaba Athletic Club','Chivas','America',1),(15,'¿Cuando fue fundada la FMF?','1916','1927','1930',2),(16,'¿Primer equipo que descendio?','Puebla','Leon','Ciudad Juárez',3),(17,'¿Unico bicampeon?','Pumas','America','Cruz Azul',1),(18,'¿Equipo actual con menos participaciones en la Primera Division?','Pachuca','San Luis','Queretaro',3),(19,'¿Marcar de la final del Apertura 2005 entre Toluca y Monterrey?','Gana Toluca 6-3','Gana Monterrey 5-3','Gana Monterrey 6-5',1),(20,'Equipos con mas subcampeonatos','Toluca y Pachuca','Chivas y Cruz Azul','America y Monterrey',2),(21,'Equipo con mas juegos ganados','Cruz Azul','Queretaro','America',3),(22,'Equipo con mas juegos empatados','America','Chivas','Trigres',2),(23,'Equipo con mas juegos perdidos','Atlas','Queretaro','Trigres',1),(24,'Equipo que mas a llegado a la final','Chivas','Toluca','Cruz Azul',3),(25,'Jugador con mas goles','Evanivaldo Castro','Carlos Hermosillo','Jared Borgetti',1),(26,'Primeros cuatro esquipos con mas juegos en liguillas','America,Cruz Azul,Toluca y Pumas','Chivas,America,Cruz Azul y Toluca','Cruz Azul,Chivas,Pachuca y Pumas',1),(27,'Mayor goleada en liguilla','7-0','7-1','6-2',1),(28,'Tecnico con mas campeonatos','Chepo','Tuca','Lapuente',3),(29,'Equipo con mas hinchas ','Chivas','Cruz Azul','America',3),(30,'¿Primer equipo que descendio?','Ciudad Juárez','Puebla','Leon',1);


DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  `calmay` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


insert  into `usuario`(`id`,`usuario`,`contrasena`,`nivel`,`estatus`,`calmay`) values (1,'misa','123',NULL,'1',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
