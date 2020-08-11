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
-- Table structure for table `cuerpo_comprobantes`
--

DROP TABLE IF EXISTS `cuerpo_comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cuerpo_comprobantes` (
  `IdCuerpo` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroComprobante` int(11) NOT NULL,
  `ProductoServicio` int(11) NOT NULL,
  `Cantidad` float NOT NULL,
  `UnidadMedida` int(11) DEFAULT NULL,
  `PrecioUnitario` float NOT NULL,
  `Bonificacion` float NOT NULL DEFAULT '0',
  `BonificacionTotal` float NOT NULL DEFAULT '0',
  `SubTotal` float DEFAULT NULL,
  `Total` float NOT NULL,
  PRIMARY KEY (`IdCuerpo`),
  KEY `productoCuerpo_idx` (`ProductoServicio`) /*!80000 INVISIBLE */,
  KEY `cuerpoEncab_idx` (`NumeroComprobante`),
  KEY `unidadCuerpo_idx` (`UnidadMedida`),
  CONSTRAINT `cuerpoEncab` FOREIGN KEY (`NumeroComprobante`) REFERENCES `encabezado_comprobantes` (`NumComprobante`),
  CONSTRAINT `productoCuerpo` FOREIGN KEY (`ProductoServicio`) REFERENCES `productos` (`IdProducto`),
  CONSTRAINT `unidadCuerpo` FOREIGN KEY (`UnidadMedida`) REFERENCES `unidades_medida` (`IdUnidadMedida`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo_comprobantes`
--

LOCK TABLES `cuerpo_comprobantes` WRITE;
/*!40000 ALTER TABLE `cuerpo_comprobantes` DISABLE KEYS */;
INSERT INTO `cuerpo_comprobantes` VALUES (1,1,1,5,NULL,75,0,0,NULL,375),(2,1,3,3,NULL,150,0,0,NULL,450),(3,1,5,1,NULL,230.46,0,0,NULL,230.46),(4,2,1,10,NULL,75,0,0,NULL,750),(5,2,5,6,NULL,230.46,0,0,NULL,1382.76),(6,3,3,12,NULL,150,0,0,NULL,1800),(7,4,1,2,NULL,75,0,0,NULL,150),(8,4,6,1.5,NULL,37.5,0,0,NULL,56.25),(9,4,3,1,NULL,150,0,0,NULL,150),(10,4,5,10,NULL,230.46,0,0,NULL,2304.6),(11,5,5,2,NULL,230.46,0,0,NULL,460.92),(12,5,1,1,NULL,75,0,0,NULL,75),(13,6,3,10,NULL,150,0,0,NULL,1500),(14,6,1,10,NULL,75,50,375,NULL,375),(15,6,6,2.3,NULL,37.5,0,0,NULL,86.25),(16,7,1,12,NULL,75,25,125,NULL,675),(17,7,6,2,NULL,37.5,0,0,NULL,75),(18,8,1,9,NULL,75,0,0,NULL,675),(19,8,5,8,NULL,230.46,10,184.37,NULL,1659.31),(20,9,6,3,NULL,37.5,0,0,NULL,112.5),(21,9,1,1,NULL,75,0,0,NULL,75),(22,10,3,10,NULL,150,10,150,NULL,1350),(23,10,1,5,NULL,75,0,0,NULL,375),(24,11,26,1,NULL,1000,0,0,NULL,1000),(25,13,26,1,7,1000,0,0,1000,1000),(26,14,20,1,7,276.53,0,0,276.53,276.53),(27,15,20,1,7,276.53,0,0,276.53,276.53),(28,15,19,1,7,300,0,0,300,576.53),(29,15,19,1,7,300,0,0,300,876.53),(30,16,20,1,7,276.53,0,0,276.53,276.53),(31,16,19,1,7,300,0,0,300,576.53),(32,17,20,3,7,276.53,10,82.959,746.631,746.631),(33,17,19,6,7,300,0,0,1800,2546.63),(34,17,6,2.5,1,37.5,0,0,93.75,2640.38);
/*!40000 ALTER TABLE `cuerpo_comprobantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-11 20:12:08
