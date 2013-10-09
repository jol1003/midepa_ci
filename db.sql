/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.0.51b-community-nt-log : Database - generaco_midepadata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`generaco_midepadata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `generaco_midepadata`;

/*Table structure for table `areacomun` */

DROP TABLE IF EXISTS `areacomun`;

CREATE TABLE `areacomun` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(30) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `areacomun` */

insert  into `areacomun`(`id`,`nombre`) values (1,'Canchita de Fútbol'),(4,'Estacionamiento'),(6,'Gimnasio'),(7,'Juegos para niños'),(3,'Lavanderia'),(2,'Patio'),(5,'Piscina');

/*Table structure for table `articulo` */

DROP TABLE IF EXISTS `articulo`;

CREATE TABLE `articulo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `titulo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `urltitulo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sumilla` text collate utf8_unicode_ci,
  `cuerpo` text collate utf8_unicode_ci,
  `imagen` varchar(10) collate utf8_unicode_ci default NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `articulo` */

insert  into `articulo`(`id`,`titulo`,`urltitulo`,`sumilla`,`cuerpo`,`imagen`,`estado`,`fechacreacion`) values (1,'Título de prueba','titulo-prueba','sumilla de prueba','<p>cuerpo de prueba</p>','1_a.jpg','1','2012-11-13 14:17:51');

/*Table structure for table `cuenta` */

DROP TABLE IF EXISTS `cuenta`;

CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL auto_increment,
  `rol_id` int(11) NOT NULL,
  `nombres` varchar(100) collate utf8_unicode_ci default NULL,
  `apellidos` varchar(200) collate utf8_unicode_ci default NULL,
  `correo` varchar(100) collate utf8_unicode_ci default NULL,
  `clave` text collate utf8_unicode_ci,
  `estado` int(1) default '1',
  `fechacreacion` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `id_rol` (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cuenta` */

insert  into `cuenta`(`id`,`rol_id`,`nombres`,`apellidos`,`correo`,`clave`,`estado`,`fechacreacion`) values (1,1,'Williams','Enero','will.enero@gmail.com','tecsup',1,'2012-10-25 10:29:45'),(2,2,'Miguel','Pérez','mprensaperu@gmail.com','generaccion',1,'2012-10-25 12:36:34'),(3,1,'Luis','Canaza','filesluis_63@hotmail.com','luiscan',1,'2012-10-25 15:23:39');

/*Table structure for table `departamento` */

DROP TABLE IF EXISTS `departamento`;

CREATE TABLE `departamento` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(20) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `departamento` */

insert  into `departamento`(`id`,`nombre`,`estado`) values (1,'AMAZONAS','1'),(2,'ANCASH','1'),(3,'APURIMAC','1'),(4,'AREQUIPA','1'),(5,'AYACUCHO','1'),(6,'CAJAMARCA','1'),(7,'CALLAO','1'),(8,'CUSCO','1'),(9,'HUANCAVELICA','1'),(10,'HUANUCO','1'),(11,'ICA','1'),(12,'JUNIN','1'),(13,'LA LIBERTAD','1'),(14,'LAMBAYEQUE','1'),(15,'LIMA','1'),(16,'LORETO','1'),(17,'MADRE DE DIOS','1'),(18,'MOQUEGUA','1'),(19,'PASCO','1'),(20,'PIURA','1'),(21,'PUNO','1'),(22,'SAN MARTIN','1'),(23,'TACNA','1'),(24,'TUMBES','1'),(25,'UCAYALI','1');

/*Table structure for table `distrito` */

DROP TABLE IF EXISTS `distrito`;

CREATE TABLE `distrito` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `provincia_id` int(10) unsigned NOT NULL,
  `nombre` varchar(30) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `provincia_id` (`provincia_id`),
  CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `distrito` */

insert  into `distrito`(`id`,`provincia_id`,`nombre`,`estado`) values (1,1,'CHACHAPOYAS','1'),(2,1,'ASUNCION','1'),(3,1,'BALSAS','1'),(4,1,'CHETO','1'),(5,1,'CHILIQUIN','1'),(6,1,'CHUQUIBAMBA','1'),(7,1,'GRANADA','1'),(8,1,'HUANCAS','1'),(9,1,'LA JALCA','1'),(10,1,'LEIMEBAMBA','1'),(11,1,'LEVANTO','1'),(12,1,'MAGDALENA','1'),(13,1,'MARISCAL CASTILLA','1'),(14,1,'MOLINOPAMPA','1'),(15,1,'MONTEVIDEO','1'),(16,1,'OLLEROS','1'),(17,1,'QUINJALCA','1'),(18,1,'SAN FRANCISCO DE DAGUAS','1'),(19,1,'SAN ISIDRO DE MAINO','1'),(20,1,'SOLOCO','1'),(21,1,'SONCHE','1'),(22,8,'LIMA','1'),(23,8,'ANCON','1'),(24,8,'ATE','1'),(25,8,'BARRANCO','1'),(26,8,'BREÑA','1'),(27,8,'CARABAYLLO','1'),(28,8,'CHACLACAYO','1'),(29,8,'CHORRILLOS','1'),(30,8,'CIENEGUILLA','1'),(31,8,'COMAS','1'),(32,8,'EL AGUSTINO','1'),(33,8,'INDEPENDENCIA','1'),(34,8,'JESUS MARIA','1'),(35,8,'LA MOLINA','1'),(36,8,'LA VICTORIA','1'),(37,8,'LINCE','1'),(38,8,'LOS OLIVOS','1'),(39,8,'LURIGANCHO','1'),(40,8,'LURIN','1'),(41,8,'MAGDALENA DEL MAR','1'),(42,8,'PUEBLO LIBRE','1'),(43,8,'MIRAFLORES','1'),(44,8,'PACHACAMAC','1'),(45,8,'PUCUSANA','1'),(46,8,'PUENTE PIEDRA','1'),(47,8,'PUNTA HERMOSA','1'),(48,8,'PUNTA NEGRA','1'),(49,8,'RIMAC','1'),(50,8,'SAN BARTOLO','1'),(51,8,'SAN BORJA','1'),(52,8,'SAN ISIDRO','1'),(53,8,'SAN JUAN DE LURIGANCHO','1'),(54,8,'SAN JUAN DE MIRAFLORES','1'),(55,8,'SAN LUIS','1'),(56,8,'SAN MARTIN DE PORRES','1'),(57,8,'SAN MIGUEL','1'),(58,8,'SANTA ANITA','1'),(59,8,'SANTA MARIA DEL MAR','1'),(60,8,'SANTA ROSA','1'),(61,8,'SANTIAGO DE SURCO','1'),(64,8,'SURQUILLO','1'),(65,8,'VILLA EL SALVADOR','1'),(66,8,'VILLA MARIA DEL TRIUNFO','1'),(67,18,'CALLAO','1'),(68,18,'BELLAVISTA','1'),(69,18,'CARMEN DE LA LEGUA REYNOSO','1'),(70,18,'LA PERLA','1'),(71,18,'LA PUNTA','1'),(72,18,'VENTANILLA','1'),(73,2,'LA PECA','1'),(74,2,'ARAMANGO','1'),(75,2,'COPALLIN','1'),(76,2,'EL PARCO','1'),(77,2,'IMAZA','1'),(78,3,'JUMBILLA','1'),(79,3,'CHISQUILLA','1'),(80,3,'CHURUJA','1'),(81,3,'COROSHA','1'),(82,3,'CUISPES','1'),(83,3,'FLORIDA','1'),(84,3,'JAZAN','1'),(85,3,'RECTA','1'),(86,3,'SAN CARLOS','1'),(87,3,'SHIPASBAMBA','1'),(88,3,'VALERA','1'),(89,3,'YAMBRASBAMBA','1'),(90,4,'NIEVA','1'),(91,4,'EL CENEPA','1'),(92,4,'RIO SANTIAGO','1'),(93,5,'LAMUD','1'),(94,5,'CAMPORREDONDO','1'),(95,5,'COCABAMBA','1'),(96,5,'COLCAMAR','1'),(97,5,'CONILA','1'),(98,5,'INGUILPATA','1'),(99,5,'LONGUITA','1'),(100,5,'LONYA CHICO','1'),(101,5,'LUYA','1'),(102,5,'LUYA VIEJO','1'),(103,5,'MARIA','1'),(104,5,'OCALLI','1'),(105,5,'OCUMAL','1'),(106,5,'PISUQUIA','1'),(107,5,'PROVIDENCIA','1'),(108,5,'SAN CRISTOBAL','1'),(109,5,'SAN FRANCISCO DEL YESO','1'),(110,5,'SAN JERONIMO','1'),(111,5,'SAN JUAN DE LOPECANCHA','1'),(112,5,'SANTA CATALINA','1'),(113,5,'SANTO TOMAS','1'),(114,5,'TINGO','1'),(115,5,'TRITA','1'),(116,6,'SAN NICOLAS','1'),(117,6,'CHIRIMOTO','1'),(118,6,'COCHAMAL','1'),(119,6,'HUAMBO','1'),(120,6,'LIMABAMBA','1'),(121,6,'LONGAR','1'),(122,6,'MARISCAL BENAVIDES','1'),(123,6,'MILPUC','1'),(124,6,'OMIA','1'),(125,6,'SANTA ROSA','1'),(126,6,'TOTORA','1'),(127,6,'VISTA ALEGRE','1'),(128,7,'BAGUA GRANDE','1'),(129,7,'CAJARURO','1'),(130,7,'CUMBA','1'),(131,7,'EL MILAGRO','1'),(132,7,'JAMALCA','1'),(133,7,'LONYA GRANDE','1'),(134,7,'YAMON','1'),(135,9,'BARRANCA','1'),(136,9,'PARAMONGA','1'),(137,9,'PATIVILCA','1'),(138,9,'SUPE','1'),(139,9,'SUPE PUERTO','1'),(140,10,'CAJATAMBO','1'),(141,10,'COPA','1'),(142,10,'GORGOR','1'),(143,10,'HUANCAPON','1'),(144,10,'MANAS','1'),(145,11,'CANTA','1'),(146,11,'ARAHUAY','1'),(147,11,'HUAMANTANGA','1'),(148,11,'HUAROS','1'),(149,11,'LACHAQUI','1'),(150,11,'SAN BUENAVENTURA','1'),(151,11,'SANTA ROSA DE QUIVES','1'),(152,12,'SAN VICENTE DE CAÑETE','1'),(153,12,'ASIA','1'),(154,12,'CALANGO','1'),(155,12,'CERRO AZUL','1'),(156,12,'CHILCA','1'),(157,12,'COAYLLO','1'),(158,12,'IMPERIAL','1'),(159,12,'LUNAHUANA','1'),(160,12,'MALA','1'),(161,12,'NUEVO IMPERIAL','1'),(162,12,'PACARAN','1'),(163,12,'QUILMANA','1'),(164,12,'SAN ANTONIO','1'),(165,12,'SAN LUIS','1'),(166,12,'SANTA CRUZ DE FLORES','1'),(167,12,'ZUÑIGA','1'),(168,13,'HUARAL','1'),(169,13,'ATAVILLOS ALTO','1'),(170,13,'ATAVILLOS BAJO','1'),(171,13,'AUCALLAMA','1'),(172,13,'CHANCAY','1'),(173,13,'IHUARI','1'),(174,13,'LAMPIAN','1'),(175,13,'PACARAOS','1'),(176,13,'SAN MIGUEL DE ACOS','1'),(177,13,'SANTA CRUZ DE ANDAMARCA','1'),(178,13,'SUMBILCA','1'),(179,13,'VEINTISIETE DE NOVIEMBRE','1'),(180,14,'MATUCANA','1'),(181,14,'ANTIOQUIA','1'),(182,14,'CALLAHUANCA','1'),(183,14,'CARAMPOMA','1'),(184,14,'CHICLA','1'),(185,14,'CUENCA','1'),(186,14,'HUACHUPAMPA','1'),(187,14,'HUANZA','1'),(188,14,'HUAROCHIRI','1'),(189,14,'LAHUAYTAMBO','1'),(190,14,'LANGA','1'),(191,14,'LARAOS','1'),(192,14,'MARIATANA','1'),(193,14,'RICARDO PALMA','1'),(194,14,'SAN ANDRES DE TUPICOCHA','1'),(195,14,'SAN ANTONIO','1'),(196,14,'SAN BARTOLOME','1'),(197,14,'SAN DAMIAN','1'),(198,14,'SAN JUAN DE IRIS','1'),(199,14,'SAN JUAN DE TANTARANCHE','1'),(200,14,'SAN LORENZO DE QUINTI','1'),(201,14,'SAN MATEO','1'),(202,14,'SAN MATEO DE OTAO','1'),(203,14,'SAN PEDRO DE CASTA','1'),(204,14,'SAN PEDRO DE HUANCAYRE','1'),(205,14,'SANGALLAYA','1'),(206,14,'SANTA CRUZ DE COCACHACRA','1'),(207,14,'SANTA EULALIA','1'),(208,14,'SANTIAGO DE ANCHUCAYA','1'),(209,14,'SANTIAGO DE TUNA','1'),(210,14,'SANTO DOMINGO DE LOS OLLEROS','1'),(211,14,'SURCO','1'),(212,15,'HUACHO','1'),(213,15,'AMBAR','1'),(214,15,'CALETA DE CARQUIN','1'),(215,15,'CHECRAS','1'),(216,15,'HUALMAY','1'),(217,15,'HUAURA','1'),(218,15,'LEONCIO PRADO','1'),(219,15,'PACCHO','1'),(220,15,'SANTA LEONOR','1'),(221,15,'SANTA MARIA','1'),(222,15,'SAYAN','1'),(223,15,'VEGUETA','1');

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `empresatipo` char(1) collate utf8_unicode_ci NOT NULL COMMENT '1=constructora, 2=agente inmobiliario',
  `ruc` char(11) collate utf8_unicode_ci NOT NULL,
  `nombrecomercial` varchar(100) collate utf8_unicode_ci NOT NULL,
  `nombrecontacto` varchar(100) collate utf8_unicode_ci NOT NULL,
  `distrito_id` int(10) unsigned default NULL,
  `direccion` varchar(100) collate utf8_unicode_ci default NULL,
  `descripcion` text collate utf8_unicode_ci,
  `paginaweb` varchar(100) collate utf8_unicode_ci default NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ruc` (`ruc`),
  KEY `distrito_id` (`distrito_id`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `empresa` */

/*Table structure for table `inmueble` */

DROP TABLE IF EXISTS `inmueble`;

CREATE TABLE `inmueble` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `usuario_id` int(10) unsigned NOT NULL,
  `categoria` char(1) collate utf8_unicode_ci NOT NULL COMMENT '1=inmueble, 2=proyecto',
  `proyecto_id` int(11) default NULL,
  `tipo` char(1) collate utf8_unicode_ci default NULL COMMENT '1=compra, 2=alquiler',
  `inmuebletipo_id` int(10) unsigned default NULL,
  `nombre` varchar(255) collate utf8_unicode_ci NOT NULL,
  `urlnombre` varchar(255) collate utf8_unicode_ci NOT NULL,
  `imagen` varchar(60) collate utf8_unicode_ci NOT NULL,
  `video` varchar(60) collate utf8_unicode_ci default NULL,
  `antiguedad` char(1) collate utf8_unicode_ci default NULL COMMENT '1=proyecto en construccion, 2=usado, 3=nuevo',
  `distrito_id` int(10) unsigned NOT NULL,
  `direccion` varchar(255) collate utf8_unicode_ci NOT NULL,
  `urlyou` varchar(40) collate utf8_unicode_ci default NULL,
  `areatotalmin` decimal(6,2) default NULL,
  `areatotalmax` decimal(6,2) default NULL,
  `areaconstruidamin` decimal(6,2) default NULL,
  `areaconstruidamax` decimal(6,2) default NULL,
  `preciomin` decimal(8,2) default NULL,
  `preciomax` decimal(8,2) default NULL,
  `preciodolaresmin` decimal(8,2) default NULL,
  `preciodolaresmax` decimal(8,2) default NULL,
  `dormitoriosmin` int(2) default NULL,
  `dormitoriosmax` int(2) default NULL,
  `banosmin` int(2) default NULL,
  `banosmax` int(2) default NULL,
  `areacomun` varchar(11) collate utf8_unicode_ci default NULL,
  `adicionales` text collate utf8_unicode_ci,
  `nedificios` int(2) default NULL,
  `npisos` int(2) default NULL,
  `web` varchar(255) collate utf8_unicode_ci default NULL,
  `latitud` varchar(25) collate utf8_unicode_ci default NULL,
  `longitud` varchar(25) collate utf8_unicode_ci default NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL default '1',
  `fechacreacion` datetime NOT NULL,
  `fechaactualizacion` datetime NOT NULL,
  `fechainicio` date default NULL,
  `fechafin` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `inmuebletipo_id` (`inmuebletipo_id`),
  KEY `distrito_id` (`distrito_id`),
  CONSTRAINT `inmueble_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `inmueble_ibfk_2` FOREIGN KEY (`inmuebletipo_id`) REFERENCES `inmuebletipo` (`id`),
  CONSTRAINT `inmueble_ibfk_3` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `inmueble` */

insert  into `inmueble`(`id`,`usuario_id`,`categoria`,`proyecto_id`,`tipo`,`inmuebletipo_id`,`nombre`,`urlnombre`,`imagen`,`video`,`antiguedad`,`distrito_id`,`direccion`,`urlyou`,`areatotalmin`,`areatotalmax`,`areaconstruidamin`,`areaconstruidamax`,`preciomin`,`preciomax`,`preciodolaresmin`,`preciodolaresmax`,`dormitoriosmin`,`dormitoriosmax`,`banosmin`,`banosmax`,`areacomun`,`adicionales`,`nedificios`,`npisos`,`web`,`latitud`,`longitud`,`estado`,`fechacreacion`,`fechaactualizacion`,`fechainicio`,`fechafin`) values (1,4,'1',0,'2',1,'Depa de estreno','','1.jpg',NULL,'3',52,'Av Arequipa 234',NULL,'100.00',NULL,'100.00',NULL,'140000.00',NULL,'70000.00',NULL,3,NULL,3,NULL,'1,2,3,5,6,7','Datos adicionales  Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales ',NULL,NULL,NULL,'-12.0881394','-77.02748539999999','1','2013-10-09 22:06:08','2013-10-09 22:06:08','2013-10-09','2013-10-19'),(2,4,'1',0,'1',1,'CASA DE ESTRENO','','2.jpg',NULL,'3',41,'Av Brasil 3434',NULL,'100.00',NULL,'100.00',NULL,'25000.00',NULL,'15000.00',NULL,3,NULL,3,NULL,'1,2,3,5,6,7','Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales Datos adicionales ',NULL,NULL,NULL,'-12.0881394','-77.02748539999999','1','2013-10-09 23:09:22','2013-10-09 23:09:22','2013-10-09','2013-10-19');

/*Table structure for table `inmueble_destacado` */

DROP TABLE IF EXISTS `inmueble_destacado`;

CREATE TABLE `inmueble_destacado` (
  `id_inmueble_destacado` int(11) NOT NULL auto_increment,
  `id_inmueble` int(11) default NULL,
  `dias_inmueble_destacado` int(11) default NULL,
  `fecha_inicio_inmueble_destacado` date default NULL,
  `fecha_fin_inmueble_destacado` date default NULL,
  `estado_inmueble_destacado` char(1) default '1',
  PRIMARY KEY  (`id_inmueble_destacado`),
  KEY `id_inmueble` (`id_inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `inmueble_destacado` */

/*Table structure for table `inmueblegaleria` */

DROP TABLE IF EXISTS `inmueblegaleria`;

CREATE TABLE `inmueblegaleria` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `inmueble_id` int(10) unsigned NOT NULL,
  `imagen` varchar(60) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `inmueble_id` (`inmueble_id`),
  CONSTRAINT `inmueblegaleria_ibfk_1` FOREIGN KEY (`inmueble_id`) REFERENCES `inmueble` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `inmueblegaleria` */

insert  into `inmueblegaleria`(`id`,`inmueble_id`,`imagen`,`estado`,`fechacreacion`) values (1,1,'1.jpg','1','2013-10-09 22:06:08'),(2,1,'2291.jpg','1','2013-10-09 22:06:57'),(3,1,'3557.jpg','1','2013-10-09 22:07:09'),(4,2,'2.jpg','1','2013-10-09 23:09:22');

/*Table structure for table `inmuebletipo` */

DROP TABLE IF EXISTS `inmuebletipo`;

CREATE TABLE `inmuebletipo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(20) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `inmuebletipo` */

insert  into `inmuebletipo`(`id`,`nombre`) values (1,'Casa'),(2,'Departamento'),(3,'Habitación'),(5,'Oficina'),(4,'Terreno');

/*Table structure for table `inmueblevisita` */

DROP TABLE IF EXISTS `inmueblevisita`;

CREATE TABLE `inmueblevisita` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `visitas` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `inmueblevisita` */

insert  into `inmueblevisita`(`id`,`visitas`) values (1,5),(2,1),(3,1),(4,0),(5,4);

/*Table structure for table `pago_inmueble` */

DROP TABLE IF EXISTS `pago_inmueble`;

CREATE TABLE `pago_inmueble` (
  `id_pago_inmueble` int(11) NOT NULL auto_increment,
  `inmueble_id` int(11) default NULL,
  `usuario_id` int(11) default NULL,
  `id_tipo_pago` int(11) default NULL,
  `id_tipo_moneda` int(11) default NULL,
  `id_tipo_cambio` int(11) default NULL,
  `fecha_pago_inmueble` date default NULL,
  `comentario_pago_inmueble` varchar(200) default NULL,
  `transaccion_pago_inmueble` varchar(20) default NULL,
  `referencia_pago_inmueble` varchar(20) default NULL,
  `estado_pago_inmueble` char(1) default '1',
  PRIMARY KEY  (`id_pago_inmueble`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pago_inmueble` */

insert  into `pago_inmueble`(`id_pago_inmueble`,`inmueble_id`,`usuario_id`,`id_tipo_pago`,`id_tipo_moneda`,`id_tipo_cambio`,`fecha_pago_inmueble`,`comentario_pago_inmueble`,`transaccion_pago_inmueble`,`referencia_pago_inmueble`,`estado_pago_inmueble`) values (1,0,2,3,0,0,'2012-11-22','','','','1'),(2,0,4,3,0,0,'2012-11-22','','','','1'),(3,0,4,3,0,0,'2012-11-22','','','','1'),(4,0,4,3,0,0,'2012-11-22','','','','1'),(5,0,4,3,0,0,'2012-11-22','','','','1'),(6,0,4,3,0,0,'2012-11-24','','','','1'),(7,0,4,3,0,0,'2012-11-24','','','','1'),(8,0,4,3,0,0,'2012-11-24','','','','1'),(10,0,4,3,0,0,'2012-11-28','','','','1');

/*Table structure for table `pago_inmueble_detalle` */

DROP TABLE IF EXISTS `pago_inmueble_detalle`;

CREATE TABLE `pago_inmueble_detalle` (
  `id_pago_detalle` int(10) unsigned NOT NULL auto_increment,
  `id_pago_inmueble` int(11) default NULL,
  `id_inmueble` int(11) default NULL,
  `id_tipo_renovacion` int(11) default NULL,
  `cantidad_pago_detalle` int(11) default NULL,
  `precio_pago_detalle` decimal(10,2) default NULL,
  PRIMARY KEY  (`id_pago_detalle`),
  KEY `id_pago_inmueble` (`id_pago_inmueble`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `pago_inmueble_detalle` */

insert  into `pago_inmueble_detalle`(`id_pago_detalle`,`id_pago_inmueble`,`id_inmueble`,`id_tipo_renovacion`,`cantidad_pago_detalle`,`precio_pago_detalle`) values (1,1,1,NULL,30,'1.00'),(2,1,5,NULL,30,'1.00'),(3,2,3,NULL,33,'1.00'),(4,2,2,NULL,60,'1.00'),(5,3,3,NULL,60,'1.00'),(6,3,4,NULL,60,'1.00'),(7,4,5,NULL,30,'1.00'),(8,5,5,NULL,30,'1.00'),(9,6,1,NULL,30,'1.00'),(10,7,5,NULL,30,'1.00'),(11,8,5,NULL,30,'1.00'),(14,10,5,2,30,'2.00');

/*Table structure for table `pago_inmueble_detalle_temp` */

DROP TABLE IF EXISTS `pago_inmueble_detalle_temp`;

CREATE TABLE `pago_inmueble_detalle_temp` (
  `id_pago_detalle` int(10) unsigned NOT NULL auto_increment,
  `id_pago_inmueble` varchar(250) default NULL,
  `id_inmueble` int(11) default NULL,
  `id_tipo_renovacion` int(11) default NULL,
  `cantidad_pago_detalle` int(11) default NULL,
  `precio_pago_detalle` decimal(10,2) default NULL,
  PRIMARY KEY  (`id_pago_detalle`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pago_inmueble_detalle_temp` */

insert  into `pago_inmueble_detalle_temp`(`id_pago_detalle`,`id_pago_inmueble`,`id_inmueble`,`id_tipo_renovacion`,`cantidad_pago_detalle`,`precio_pago_detalle`) values (1,'2012112815535414255600',1,2,30,'2.00'),(2,'2012112822295630959400',5,2,30,'2.00'),(3,'2013042714424364967700',5,1,30,'1.00');

/*Table structure for table `pago_inmueble_temp` */

DROP TABLE IF EXISTS `pago_inmueble_temp`;

CREATE TABLE `pago_inmueble_temp` (
  `id_pago_inmueble` varchar(250) NOT NULL,
  `inmueble_id` int(11) default NULL,
  `usuario_id` int(11) default NULL,
  `id_tipo_pago` int(11) default NULL,
  `id_tipo_moneda` int(11) default NULL,
  `id_tipo_cambio` int(11) default NULL,
  `fecha_pago_inmueble` date default NULL,
  `comentario_pago_inmueble` varchar(200) default NULL,
  `transaccion_pago_inmueble` varchar(20) default NULL,
  `referencia_pago_inmueble` varchar(20) default NULL,
  PRIMARY KEY  (`id_pago_inmueble`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pago_inmueble_temp` */

insert  into `pago_inmueble_temp`(`id_pago_inmueble`,`inmueble_id`,`usuario_id`,`id_tipo_pago`,`id_tipo_moneda`,`id_tipo_cambio`,`fecha_pago_inmueble`,`comentario_pago_inmueble`,`transaccion_pago_inmueble`,`referencia_pago_inmueble`) values ('2012112815535414255600',1,4,0,0,0,'0000-00-00','','',''),('2013042714424364967700',5,4,0,0,0,'0000-00-00','','','');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nombres` varchar(40) collate utf8_unicode_ci NOT NULL,
  `apellidos` varchar(40) collate utf8_unicode_ci NOT NULL,
  `dni` char(8) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `persona` */

insert  into `persona`(`id`,`nombres`,`apellidos`,`dni`,`estado`) values (4,'julio','oncebay lopez','43245435','0'),(5,'miguel','alban','23432432','0'),(6,'xxx','xxx','21212122','0'),(7,'dsdsdsds','dsdsdsdds','32424234','0'),(8,'sfsdfsfdsfdsf','sfsdfdsfdsfdsfdsf','54353534','0'),(9,'fdsfdsfdsfdsf','dsfdsfdsfdsf','12345678','0'),(10,'julio','once','77687678','0'),(11,'sdfsgfdgfdg','fdgfdgfdg','43543543','0');

/*Table structure for table `provincia` */

DROP TABLE IF EXISTS `provincia`;

CREATE TABLE `provincia` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `departamento_id` int(10) unsigned NOT NULL,
  `nombre` varchar(20) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `departamento_id` (`departamento_id`),
  CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `provincia` */

insert  into `provincia`(`id`,`departamento_id`,`nombre`,`estado`) values (1,1,'CHACHAPOYAS','1'),(2,1,'BAGUA','1'),(3,1,'BONGARA','1'),(4,1,'CONDORCANQUI','1'),(5,1,'LUYA','1'),(6,1,'RODRIGUEZ DE MENDOZA','1'),(7,1,'UTCUBAMBA','1'),(8,15,'LIMA','1'),(9,15,'BARRANCA','1'),(10,15,'CAJATAMBO','1'),(11,15,'CANTA','1'),(12,15,'CAÑETE','1'),(13,15,'HUARAL','1'),(14,15,'HUAROCHIRI','1'),(15,15,'HUAURA','1'),(16,15,'OYON','1'),(17,15,'YAUYOS','1'),(18,7,'CALLAO','1');

/*Table structure for table `rol` */

DROP TABLE IF EXISTS `rol`;

CREATE TABLE `rol` (
  `id` int(11) NOT NULL auto_increment,
  `nombres` varchar(100) collate utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL,
  `fechacreacion` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `rol` */

insert  into `rol`(`id`,`nombres`,`estado`,`fechacreacion`) values (1,'Super Administrador',1,'2012-10-25 10:28:20'),(2,'Administrador',1,'2012-10-25 10:28:40');

/*Table structure for table `tipo_cambio` */

DROP TABLE IF EXISTS `tipo_cambio`;

CREATE TABLE `tipo_cambio` (
  `id_tipo_cambio` int(10) unsigned NOT NULL auto_increment,
  `monto_tipo_cambio` decimal(10,2) default NULL,
  `fecha_tipo_cambio` date default NULL,
  PRIMARY KEY  (`id_tipo_cambio`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_cambio` */

insert  into `tipo_cambio`(`id_tipo_cambio`,`monto_tipo_cambio`,`fecha_tipo_cambio`) values (1,'2.60','2012-11-15'),(2,'2.70','2012-11-16');

/*Table structure for table `tipo_pagos` */

DROP TABLE IF EXISTS `tipo_pagos`;

CREATE TABLE `tipo_pagos` (
  `id_tipo_pago` int(10) unsigned NOT NULL auto_increment,
  `nombre_tipo_pago` varchar(20) default NULL,
  `texto_tipo_pago` varchar(200) default NULL,
  `img_tipo_pago` varchar(60) default NULL,
  `estado_tipo_pago` char(1) default NULL,
  PRIMARY KEY  (`id_tipo_pago`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_pagos` */

insert  into `tipo_pagos`(`id_tipo_pago`,`nombre_tipo_pago`,`texto_tipo_pago`,`img_tipo_pago`,`estado_tipo_pago`) values (1,'Paypal','numerosycuentas@hotmail.com','logo_paypal.jpg','1'),(2,'Safetypay',NULL,'img_safetypay.jpg','0'),(3,'Deposito Bancario','123 456 789 ','logo_tb.jpg','1');

/*Table structure for table `tipo_renovacion` */

DROP TABLE IF EXISTS `tipo_renovacion`;

CREATE TABLE `tipo_renovacion` (
  `id_tipo_renovacion` int(11) NOT NULL auto_increment,
  `nombre_tipo_renovacion` varchar(60) default NULL,
  `precio_tipo_renovacion` decimal(10,2) default NULL,
  `img_tipo_renovacion` varchar(50) default NULL,
  `estado_tipo_renovacion` char(1) default '1',
  PRIMARY KEY  (`id_tipo_renovacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_renovacion` */

insert  into `tipo_renovacion`(`id_tipo_renovacion`,`nombre_tipo_renovacion`,`precio_tipo_renovacion`,`img_tipo_renovacion`,`estado_tipo_renovacion`) values (1,'Renovacion Simple','1.00','renovacion1.jpg','1'),(2,'Renovacion + Destacado','2.00','renovacion2.jpg','1');

/*Table structure for table `u_confirma` */

DROP TABLE IF EXISTS `u_confirma`;

CREATE TABLE `u_confirma` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `codigo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `u_confirma` */

insert  into `u_confirma`(`id`,`codigo`,`estado`,`fechacreacion`) values (4,'3fe0dab4e835b2ccba8e0ad596372816','1','2012-11-18 22:43:12'),(5,'bd57b44ef7ac66f00dddfe1800a3f1ee','1','2013-09-14 10:42:59'),(6,'06ebb284a0d09ea4ec9f6f94f83f527c','1','2013-09-26 23:07:17'),(7,'21f69526ecd29399e147bbe750deca37','1','2013-09-26 23:11:17'),(8,'4baa43379a22d9b8dcb878038438aec9','1','2013-09-26 23:12:48'),(9,'25ab97b4c9b387f64a65752d701db127','1','2013-09-26 23:15:17'),(10,'09a895528287478ac020eed9ba18bd5d','1','2013-09-26 23:19:53'),(11,'29bb8edfcb3d5e8f42acca3e75f4c243','1','2013-10-02 22:54:49');

/*Table structure for table `u_recupera` */

DROP TABLE IF EXISTS `u_recupera`;

CREATE TABLE `u_recupera` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `codigo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `u_recupera` */

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `usuariotipo` char(1) collate utf8_unicode_ci NOT NULL COMMENT '1=persona natural, 2=empresa',
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `contrasena` varchar(255) collate utf8_unicode_ci NOT NULL,
  `imagen` varchar(10) collate utf8_unicode_ci default NULL,
  `telefono1` varchar(9) collate utf8_unicode_ci default NULL,
  `telefono2` varchar(9) collate utf8_unicode_ci default NULL,
  `telefono3` varchar(9) collate utf8_unicode_ci default NULL,
  `boletin` char(1) collate utf8_unicode_ci NOT NULL,
  `estado` char(1) collate utf8_unicode_ci NOT NULL,
  `fechaacceso` datetime NOT NULL,
  `fechacreacion` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`usuariotipo`,`email`,`contrasena`,`imagen`,`telefono1`,`telefono2`,`telefono3`,`boletin`,`estado`,`fechaacceso`,`fechacreacion`) values (1,'2','rfcinmuebles@outlook.com','906c0769d4c0a133ff15c301afaaf612','1.jpg','2241686',NULL,NULL,'1','1','2012-11-14 11:16:53','2012-11-14 11:16:53'),(2,'2','will.enero@gmail.com','5e8edd851d2fdfbd7415232c67367cc3','2.jpg','4589-8967',NULL,NULL,'1','1','2012-11-15 15:25:57','2012-11-15 15:25:57'),(3,'2','inmobiliaria@inversionesalv.com','880abc0150a3fb01e587ed8c80ae6814','3.jpg','224-1385',NULL,NULL,'0','1','2012-11-16 12:50:37','2012-11-16 12:50:37'),(4,'1','j_olopez@hotmail.com.pe','e10adc3949ba59abbe56e057f20f883e','4.jpg','','','','0','1','2012-11-18 22:46:04','2012-11-18 22:46:04'),(5,'1','miguel@hotmail.com','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,NULL,NULL,'0','0','2013-09-14 10:42:59','2013-09-14 10:42:59'),(6,'1','j_olopezggg@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,NULL,NULL,NULL,'','0','2013-09-26 23:07:16','2013-09-26 23:07:16'),(7,'1','j_olopedssdsdsddsddsz@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,NULL,NULL,NULL,'0','0','2013-09-26 23:11:17','2013-09-26 23:11:17'),(8,'1','j_olopefffffffdfdfdf@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055',NULL,NULL,NULL,NULL,'0','0','2013-09-26 23:12:48','2013-09-26 23:12:48'),(9,'1','j_olo4dfdpez@hotmail.com','202cb962ac59075b964b07152d234b70',NULL,NULL,NULL,NULL,'0','0','2013-09-26 23:15:17','2013-09-26 23:15:17'),(10,'1','j_olopez@hotmail.com','e10adc3949ba59abbe56e057f20f883e','10.jpg','','','','0','1','2013-09-26 23:19:53','2013-09-26 23:19:53'),(11,'1','j_olopez456456@hotmail.com','310dcbbf4cce62f762a2aaa148d556bd',NULL,NULL,NULL,NULL,'0','0','2013-10-02 22:54:49','2013-10-02 22:54:49');

/*Table structure for table `todos` */

DROP TABLE IF EXISTS `todos`;

/*!50001 DROP VIEW IF EXISTS `todos` */;
/*!50001 DROP TABLE IF EXISTS `todos` */;

/*!50001 CREATE TABLE  `todos`(
 `id` int(11) unsigned ,
 `nombre` varchar(100) 
)*/;

/*View structure for view todos */

/*!50001 DROP TABLE IF EXISTS `todos` */;
/*!50001 DROP VIEW IF EXISTS `todos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todos` AS select `persona`.`id` AS `id`,concat(`persona`.`nombres`,_utf8' ',`persona`.`apellidos`) AS `nombre` from `persona` union select `empresa`.`id` AS `id`,`empresa`.`nombrecomercial` AS `nombre` from `empresa` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
