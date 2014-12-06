
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cuestionario` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cuestionario`;


DROP TABLE IF EXISTS `calificaciones`;

CREATE TABLE `calificaciones` (
  `idt` int(11) NOT NULL AUTO_INCREMENT,
  `idu` int(11) DEFAULT NULL,
  `calf` int(11) DEFAULT NULL,
  PRIMARY KEY (`idt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


insert  into `calificaciones`(`idt`,`idu`,`calf`) values (2,1,6),(3,29,5);


DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` text,
  `respuesta` int(5) DEFAULT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;


insert  into `preguntas`(`idp`,`pregunta`,`respuesta`) values (1,'El momento magnetico de una espira es proporcional al campo magnetico',0),(2,'La fuerza neta que un campo magnetico uniforme ejerce sobre una espira es nula',1),(3,'El campo electrico creado por una placa infinita cargada uniformemente no depende de la distancia a la misma',1),(4,'Un generador transforma energia mecanica en energia electrica',1),(5,'Las lineas de campo electrico son siempre paralelas a las superficies equipotenciales',0),(6,'Bajo la unica accion de la fuerza electrostatica las cargas electricas negativas se mueven hacia donde aumenta su energia potencial electrostatica',0),(7,'El trabajo de la fuerza electrostatica para llevar una carga de un punto a otro depende de la variacion de potencial electrico entre esos dos puntos',1),(8,'Cuando en una region del espacio el campo electrico es nulo, tambien lo es el potencial electrico',0),(9,'En el interior de un conductor en equilibrio el campo electrico siempre es nulo',1),(10,'Las lineas de campo electrico salen de las cargas negativas y llegan a las positivas',0),(11,'Todas las cargas electricas tienden a moverse hacia donde disminuye el potencial electrico',0),(12,'Cuando se produce mas de lo que se demanda de un determinado bien, se dice entonces que de dicho bien hay escasez',0),(13,'La escasez es un fenomeno relativo en tanto afecta a las economias menos desarrolladas',0),(14,'El objetivo de la economia es explicar y predecir el comportamiento de los agentes economicos siempre que los recursos se usen eficientemente',0),(15,'La economia se basa principalmente en el estudio del dinero',0),(16,'La decision de acudir al futbol o al cine, aun suponiendo que el precio de la entrada sea el mismo en ambos casos, entraña, entre otros, un problema economico',1),(17,'Si nos encontramos en un punto a la derecha de la frontera de posibilidades de la produccion (FPP), podemos producir mas utilizando los mismos recursos',0),(18,'El objetivo de la macroeconomia es estudiar el comportamiento de cada empresa.',0),(19,'Internet es un ejemplo de TIC',1),(20,'Las TICs favorecen las externalidades generadas por la innovacion',1),(21,'Las economias de red son un factor que retrasa el progreso pues inciden negativamente en algunos agentes',0),(22,'Si un atentado terrorista en Londres tiene efectos negativos sobre los flujos internacionales de capital, puede considerarse como un ejemplo de la globalizacion',1),(23,'Una disminucion del ratio de comercio internacional implica un aumento de la globalizacion',0),(24,'El aumento de la migracion internacional es un sintoma claro de globalizacion',1),(25,'La proliferacion de las multinacionales perjudica el proceso de globalizacion',0);


DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text,
  `paterno` text,
  `materno` text,
  `telefono` varchar(10) DEFAULT NULL,
  `calle` text,
  `exterior` varchar(5) DEFAULT NULL,
  `interior` varchar(5) DEFAULT NULL,
  `colonia` text,
  `municipio` text,
  `estado` text,
  `cp` varchar(5) DEFAULT NULL,
  `correo` text,
  `usuario` text,
  `contrasena` text,
  `nivel` int(11) DEFAULT NULL,
  `estatus` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idu`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

insert  into `usuarios`(`idu`,`nombre`,`paterno`,`materno`,`telefono`,`calle`,`exterior`,`interior`,`colonia`,`municipio`,`estado`,`cp`,`correo`,`usuario`,`contrasena`,`nivel`,`estatus`) values (1,'Alfredo','Neri','Colin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AlNERIC','c0f70e034774ebd1d92ae507c564e81e',2,'1'),(29,'Raul','Garcia','Martinez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ferdy','c0f70e034774ebd1d92ae507c564e81e',1,'1'),(30,'Área','Martínez','Sandoval',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'1'),(31,'juan','cortez','sanabria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1'),(32,'ijuj','jusn','bjj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1'),(33,'sad','sxsad','sdsa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1'),(34,'algo','sada','sad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
