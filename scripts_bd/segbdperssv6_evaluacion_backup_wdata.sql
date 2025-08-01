-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: segbdperssv6
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `segbdperssv6`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `segbdperssv6` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `segbdperssv6`;

--
-- Table structure for table `autoridad`
--

DROP TABLE IF EXISTS `autoridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autoridad` (
  `aut_id` int unsigned NOT NULL AUTO_INCREMENT,
  `aut_nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `aut_nombre_usr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  PRIMARY KEY (`aut_id`),
  UNIQUE KEY `idxAut` (`aut_nombre`,`aut_nombre_usr`),
  KEY `fk_usuario` (`aut_nombre_usr`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`aut_nombre_usr`) REFERENCES `usuario` (`usr_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoridad`
--

LOCK TABLES `autoridad` WRITE;
/*!40000 ALTER TABLE `autoridad` DISABLE KEYS */;
INSERT INTO `autoridad` VALUES (2,'ROLE_ADMIN','alex'),(5,'ROLE_ADMIN','tavo'),(1,'ROLE_AGENTE','alex'),(3,'ROLE_AGENTE','david'),(4,'ROLE_LOGISTICA','tavo');
/*!40000 ALTER TABLE `autoridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usr_nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usr_paswd` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usr_habilitado` tinyint(1) NOT NULL,
  PRIMARY KEY (`usr_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('alex','{bcrypt}$2a$10$/wT0FWOyjVNLEWwdlz4Ugun/eIkYD64Bm2D.KyfgvYD3P9pZPp/ki',1),('david','{bcrypt}$2a$10$i0rgAykQH/.dm.ZweInlTOmwbYohydgL3MFVYRUjZKWsuEe7jVIc6',1),('tavo','{bcrypt}$2a$10$H1EqBwIs5ZLnnePgZODr5uQpCxgw0wtpkTJhEEzuaSUzRQsFmFqhy',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'segbdperssv6'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-23 13:18:20
