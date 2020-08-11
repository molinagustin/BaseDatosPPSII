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
-- Table structure for table `encabezado_comprobantes`
--

DROP TABLE IF EXISTS `encabezado_comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `encabezado_comprobantes` (
  `NumComprobante` int(11) NOT NULL AUTO_INCREMENT,
  `ComprobanteCompleto` varchar(45) DEFAULT NULL,
  `CAE` varchar(45) DEFAULT NULL,
  `TipoComprobante` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Cliente` int(11) NOT NULL DEFAULT '0',
  `CondicionIva` int(11) NOT NULL,
  `ConceptoInc` varchar(45) DEFAULT '""',
  `PuntoVta` int(11) DEFAULT '1',
  `FormaPago` int(11) NOT NULL,
  `Operacion` int(11) NOT NULL DEFAULT '0',
  `Tarjeta` int(11) DEFAULT '0',
  `NumeroTarjDebito` varchar(16) DEFAULT '""',
  `NumeroTarjCredito` varchar(16) DEFAULT '""',
  PRIMARY KEY (`NumComprobante`),
  KEY `tipoCompEncab_idx` (`TipoComprobante`),
  KEY `condIvaEncab_idx` (`CondicionIva`),
  KEY `formaPagoEncab_idx` (`FormaPago`),
  KEY `puntoVtaEncab_idx` (`PuntoVta`),
  KEY `operacionEncab_idx` (`Operacion`),
  KEY `clienteEncab_idx` (`Cliente`),
  KEY `tarjetaEncab_idx` (`Tarjeta`),
  CONSTRAINT `clienteEncab` FOREIGN KEY (`Cliente`) REFERENCES `clientes` (`IdCliente`),
  CONSTRAINT `condIvaEncab` FOREIGN KEY (`CondicionIva`) REFERENCES `condiciones_iva` (`IdCondicion`),
  CONSTRAINT `formaPagoEncab` FOREIGN KEY (`FormaPago`) REFERENCES `formas_pago` (`IdForma`),
  CONSTRAINT `operacionEncab` FOREIGN KEY (`Operacion`) REFERENCES `operacion_condicion_iva` (`IdOpera`),
  CONSTRAINT `puntoVtaEncab` FOREIGN KEY (`PuntoVta`) REFERENCES `puntos_venta` (`IdPuntoVta`),
  CONSTRAINT `tarjetaEncab` FOREIGN KEY (`Tarjeta`) REFERENCES `tarjetas` (`IdTarjeta`),
  CONSTRAINT `tipoCompEncab` FOREIGN KEY (`TipoComprobante`) REFERENCES `tipos_comprobantes` (`IdTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encabezado_comprobantes`
--

LOCK TABLES `encabezado_comprobantes` WRITE;
/*!40000 ALTER TABLE `encabezado_comprobantes` DISABLE KEYS */;
INSERT INTO `encabezado_comprobantes` VALUES (1,NULL,NULL,3,'2019-01-01',6,1,'\"\"',1,1,0,0,'\"\"','\"\"'),(2,NULL,NULL,3,'2019-05-13',2,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(3,NULL,NULL,1,'2019-08-17',6,1,'\"\"',1,1,0,0,'\"\"','\"\"'),(4,NULL,NULL,1,'2019-12-12',6,1,'\"\"',1,1,0,0,'\"\"','\"\"'),(5,NULL,NULL,2,'2019-12-12',6,1,'\"\"',1,1,0,0,'\"\"','\"\"'),(6,NULL,NULL,3,'2020-01-26',3,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(7,NULL,NULL,3,'2020-04-04',2,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(8,NULL,NULL,3,'2020-05-17',2,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(9,NULL,NULL,3,'2020-07-22',0,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(10,NULL,NULL,3,'2020-07-17',0,3,'\"\"',1,1,0,0,'\"\"','\"\"'),(11,NULL,NULL,3,'2020-08-10',2,3,'Productos',1,1,0,0,NULL,NULL),(12,NULL,NULL,3,'2020-08-11',2,3,'Productos',1,1,0,0,NULL,NULL),(13,NULL,NULL,3,'2020-08-11',2,3,'Productos',1,1,0,0,NULL,NULL),(14,NULL,NULL,3,'2020-08-11',2,3,'Productos',1,1,0,0,NULL,NULL),(15,NULL,NULL,3,'2020-08-11',2,3,'Productos',1,1,0,0,NULL,NULL),(16,NULL,NULL,3,'2020-08-11',12,3,'Productos',1,1,0,0,NULL,NULL),(17,NULL,NULL,3,'2020-08-11',6,3,'Productos',1,1,0,0,NULL,NULL);
/*!40000 ALTER TABLE `encabezado_comprobantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-11 20:12:06
