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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProducto` varchar(35) NOT NULL,
  `Rubro` int(11) NOT NULL,
  `PrecioCosto` float NOT NULL,
  `PrecioFinal` float NOT NULL,
  `Proveedor` int(11) NOT NULL,
  `UnidadMedida` int(11) NOT NULL,
  `Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `rubroProd_idx` (`Rubro`),
  KEY `proveedorProd_idx` (`Proveedor`),
  KEY `unidadProdu_idx` (`UnidadMedida`),
  CONSTRAINT `proveedorProd` FOREIGN KEY (`Proveedor`) REFERENCES `proveedores` (`IdProveedor`),
  CONSTRAINT `rubroProd` FOREIGN KEY (`Rubro`) REFERENCES `rubros` (`IdRubro`),
  CONSTRAINT `unidadProdu` FOREIGN KEY (`UnidadMedida`) REFERENCES `unidades_medida` (`IdUnidadMedida`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Leche Sachet 1 L.',1,70,75,3,7,1),(3,'Galletas Quaker por 130gr.',14,80.99,101.24,6,7,1),(4,'Galletas Quaker por 100gr.',2,80.99,110,6,7,0),(5,'Galletas Quaker por 250gr',3,200,230.46,6,7,1),(6,'Avena Integral',2,30,37.5,6,1,1),(7,'Dulce de Membrillo',6,150.25,165.28,4,7,0),(8,'Dulce de Membrillo',6,150.25,165.28,4,7,0),(9,'Dulce de Membrillo',6,150.25,165.28,4,7,0),(10,'asdad',1,11,11,5,1,0),(14,'dds',1,11,11,5,1,0),(15,'asd',1,11,111,6,1,0),(16,'asdq',1,22,22,2,1,0),(17,'rwer2',1,222,222,6,1,0),(18,'Coca Cola 1Lt',7,100,120,7,44,0),(19,'Coca Cola 1Lt',11,100,300,7,45,1),(20,'Fernet 1 Lt.',12,250.25,276.53,10,7,1),(21,'Caramelos Duros',9,10,11.5,11,44,1),(22,'Probando',1,554,554,1,29,0),(23,'Probando2',7,32.5,40.69,7,44,0),(24,'Barras Cereal Cremix 250gr. Frut.',8,77.5,120.32,4,44,1),(25,'Baja Producto',1,150,150,3,44,0);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 10:52:15
