# Host: localhost:33065  (Version 5.5.5-10.1.34-MariaDB)
# Date: 2019-04-25 11:32:29
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "empleados"
#

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) NOT NULL DEFAULT '',
  `edad` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "empleados"
#

INSERT INTO `empleados` VALUES (3,'Fernando','Guzman Valverde',21),(4,'Delma Dafné ','Torrico Flores',20),(5,'Miguel Angel','López Agudo',35),(6,'Brayan','Lopez',35),(8,'Dora','Solares',19);

#
# Structure for table "estudiante"
#

DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE `estudiante` (
  `idEstudiante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "estudiante"
#

INSERT INTO `estudiante` VALUES (3,'Fernando'),(5,'dodo'),(6,'ale');

#
# Structure for table "inscripciones"
#

DROP TABLE IF EXISTS `inscripciones`;
CREATE TABLE `inscripciones` (
  `idInscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `idEstudiante` int(11) NOT NULL DEFAULT '0',
  `idMateria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "inscripciones"
#

INSERT INTO `inscripciones` VALUES (1,3,2),(2,5,2),(3,6,3);

#
# Structure for table "materia"
#

DROP TABLE IF EXISTS `materia`;
CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nombreMateria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "materia"
#

INSERT INTO `materia` VALUES (1,'algebra'),(2,'calculo'),(3,'fisica');

#
# Structure for table "paises"
#

DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) NOT NULL DEFAULT '',
  `latitud` varchar(255) NOT NULL DEFAULT '',
  `longitud` varchar(255) NOT NULL DEFAULT '',
  `imagen` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "paises"
#

INSERT INTO `paises` VALUES (1,'Bolivia','-66.225606','-17.339079','bo.png'),(2,'Argentina','-34.6157437','-58.5733849','ar.png'),(3,'Peru','-12.0264987','-77.2679826','pe.png'),(8,'Australia','-16','-17','8.png'),(9,'Afganstan','-16','-17','9.png'),(10,'Brasil','-14','-14','10.png');

#
# Structure for table "productos"
#

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) NOT NULL DEFAULT '',
  `cantidad` int(11) unsigned NOT NULL DEFAULT '0',
  `habilitado` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "productos"
#

INSERT INTO `productos` VALUES (1,'arroz',10,0,NULL),(2,'pan',200,0,NULL),(3,'leche',50,0,NULL),(4,'carne',20,0,NULL),(5,'papa',15,0,NULL),(9,'cebolla',12,0,NULL),(10,'embutido',25,1,NULL),(11,'sandia',60,1,NULL),(12,'Kacha',2,1,NULL),(13,'Vaca',8,1,NULL),(14,'dora',1,0,'14.png'),(15,'fercho',1,1,'15.png'),(16,'silla',8,1,'16.png');

#
# Structure for table "usuarios"
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL DEFAULT '',
  `contrasenia` varchar(255) NOT NULL DEFAULT '',
  `habilitado` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `rol` varchar(255) NOT NULL DEFAULT '',
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "usuarios"
#

INSERT INTO `usuarios` VALUES (1,'fer','b1f37ec94d5ce01b55b89cec07183cef',1,'Administrador',NULL),(2,'dora','b1f37ec94d5ce01b55b89cec07183cef',1,'Operador',NULL),(3,'ale','b1f37ec94d5ce01b55b89cec07183cef',0,'',NULL),(4,'miguel','b1f37ec94d5ce01b55b89cec07183cef',1,'',NULL),(5,'daf','b1f37ec94d5ce01b55b89cec07183cef',0,'','5.png'),(6,'thor','b1f37ec94d5ce01b55b89cec07183cef',1,'Operador','6.png'),(7,'fercho','d41d8cd98f00b204e9800998ecf8427e',1,'Administrador','7.png'),(8,'rene','b1f37ec94d5ce01b55b89cec07183cef',1,'Administrador','8.png');
