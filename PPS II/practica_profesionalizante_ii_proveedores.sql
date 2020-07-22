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
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedores` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProveedor` varchar(40) NOT NULL,
  `DomicilioProveedor` varchar(35) NOT NULL,
  `Telefono` varchar(25) DEFAULT NULL,
  `CorreoElectronico` varchar(45) DEFAULT NULL,
  `Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'La Lechera','Melbourne n° 123 - Buenos Aires','112345554423','',1),(2,'La Serenisima S.A.','Buenos Aires - Carril Industrial','11223335468','',1),(3,'Sancor S.R.L.','Buenos Aires','011215487','',1),(4,'12 Arroyos','Rivadavia 321 - Santa Fe','','12.arroyos@stafe.gov.ar',1),(5,'Marolio','','','',1),(6,'Quaker','','','',1),(7,'Santo Guiliano','Av. Alvear Este n° 1234','','',1),(8,'Don proveedor','Luis Ponce','','',0),(9,'asdasd','','','',0),(10,'Branca','Cordoba','','branca@gmail.com',1),(11,'Arcor S.A','Buenos Aires','01123154687','',1),(12,'Nuevo Proveedor','Calle Falsa nº 123','01154789','correo@gmail.com',0),(13,'Nuevo Proveedor','','','',0);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 10:52:13
