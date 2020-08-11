CREATE DATABASE  IF NOT EXISTS `practica_profesionalizante_ii` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `practica_profesionalizante_ii`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: practica_profesionalizante_ii
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `NombreCliente` varchar(40) NOT NULL,
  `TipoDocumento` int(11) NOT NULL,
  `NumeroDocumento` varchar(11) NOT NULL,
  `Domicilio` varchar(35) DEFAULT NULL,
  `CondicionIva` int(11) NOT NULL,
  `Localidad` int(11) DEFAULT NULL,
  `Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdCliente`),
  KEY `tipoDocClien_idx` (`TipoDocumento`),
  KEY `condIvaClient_idx` (`CondicionIva`),
  KEY `ciudadClient_idx` (`Localidad`),
  CONSTRAINT `ciudadClient` FOREIGN KEY (`Localidad`) REFERENCES `localidades` (`IdLocalidad`),
  CONSTRAINT `condIvaClient` FOREIGN KEY (`CondicionIva`) REFERENCES `condiciones_iva` (`IdCondicion`),
  CONSTRAINT `tipoDocClien` FOREIGN KEY (`TipoDocumento`) REFERENCES `tipos_documento` (`IdTipoDoc`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (0,'FACTURACION SIN CLIENTE',1,'12345678912','xxxxxxxxxxxxxxx',3,1,0),(1,'Molina Agustin',1,'20369643879','Luis Ponce 840',7,1,1),(2,'Lopez Martin',6,'37614018','Ricardo Petersen 860',3,1,1),(3,'Zabala Angel',1,'11225544668','Agustin Alvarez 1234',3,1,1),(6,'Molina Marchetti Cristian Agustin',1,'20369643879','Luis Ponce 840',3,1,1),(7,'Pruieb',1,'1234512','asdqwe',1,1,0),(8,'AAAA',1,'123132121','SDASE',1,1,0),(9,'Juancito',1,'12312312311','LALALA',11,3,0),(10,'JUANCHITOOOO',5,'33222112','ASDAXCZXC',5,4,0),(11,'Nuevitooo',8,'12345678','Av. Alvear Oeste n° 1234',3,1,0),(12,'Veisaga David',6,'40325125','Rafaela n° 2245',3,5,1),(13,'Raul Lopez',1,'20251453658','Salonia nº 22',3,5,1),(14,'Vamos a probar',1,'20123456789','Su casa',5,4,0),(16,'PROB',6,'33221154','Dir',3,5,0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-11 20:12:07
