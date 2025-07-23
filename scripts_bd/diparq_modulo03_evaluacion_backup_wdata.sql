-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: diparq_modulo03_evaluacion
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
-- Current Database: `diparq_modulo03_evaluacion`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `diparq_modulo03_evaluacion` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `diparq_modulo03_evaluacion`;

--
-- Table structure for table `componente`
--

DROP TABLE IF EXISTS `componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componente` (
  `idComponente` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `costo` decimal(12,2) NOT NULL,
  `precioBase` decimal(12,2) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `memoriaTarjetaVideo` varchar(50) DEFAULT NULL,
  `capacidadAlmacenamiento` varchar(50) DEFAULT NULL,
  `sku` varchar(45) NOT NULL,
  PRIMARY KEY (`idComponente`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente`
--

LOCK TABLES `componente` WRITE;
/*!40000 ALTER TABLE `componente` DISABLE KEYS */;
INSERT INTO `componente` VALUES (1,'Monitor Gaming 24','ASUS','TUF VG249Q',150.00,299.99,'Monitor',NULL,NULL,'MON-ASU-VG249Q'),(2,'Monitor 4K 27','LG','27UN850-W',300.00,499.99,'Monitor',NULL,NULL,'MON-LG-27UN850'),(3,'Monitor Curvo 32','Samsung','C32JG56',200.00,349.99,'Monitor',NULL,NULL,'MON-SAM-C32JG56'),(4,'Monitor Profesional 27','Dell','UltraSharp U2722D',250.00,429.99,'Monitor',NULL,NULL,'MON-DEL-U2722D'),(5,'Monitor Portátil 15.6','AOC','E1659FWU',75.00,129.99,'Monitor',NULL,NULL,'MON-AOC-E1659FWU'),(6,'RTX 3080 Ti','NVIDIA','Founders Edition',800.00,1199.99,'Tarjeta de video','12GB GDDR6X',NULL,'GPU-NVI-3080TI-12G'),(7,'RX 6800 XT','AMD','Radeon',650.00,999.99,'Tarjeta de video','16GB GDDR6',NULL,'GPU-AMD-6800XT-16G'),(8,'GTX 1660 Super','MSI','Ventus XS',200.00,299.99,'Tarjeta de video','6GB GDDR5',NULL,'GPU-MSI-1660S-6G'),(9,'RTX 4090','Gigabyte','AORUS Xtreme',1500.00,1999.99,'Tarjeta de video','24GB GDDR6X',NULL,'GPU-GIG-4090-24G'),(10,'Arc A770','Intel','Limited Edition',300.00,349.99,'Tarjeta de video','16GB GDDR6',NULL,'GPU-INT-A770-16G'),(11,'SSD 1TB NVMe','Samsung','970 EVO Plus',80.00,129.99,'Disco duro',NULL,'1TB','SSD-SAM-970EVO-1T'),(12,'HDD 4TB','Seagate','BarraCuda',60.00,89.99,'Disco duro',NULL,'4TB','HDD-SEA-BARRA-4T'),(13,'SSD 2TB SATA','Crucial','MX500',120.00,169.99,'Disco duro',NULL,'2TB','SSD-CRU-MX500-2T'),(14,'NVMe 500GB','WD','Black SN770',50.00,79.99,'Disco duro',NULL,'500GB','NVME-WD-SN770-500G'),(15,'PSU 750W Gold','Corsair','RM750x',90.00,129.99,'PSU',NULL,NULL,'PSU-COR-RM750X-G'),(16,'PSU 850W Platinum','EVGA','SuperNOVA P2',130.00,199.99,'PSU',NULL,NULL,'PSU-EVG-P2-850P'),(17,'PSU 550W Bronze','Thermaltake','Smart BX1',40.00,59.99,'PSU',NULL,NULL,'PSU-THE-BX1-550B'),(18,'Ryzen 9 7950X','AMD','Ryzen 9',450.00,699.99,'Procesador',NULL,NULL,'CPU-AMD-7950X'),(19,'Core i9-13900K','Intel','Core i9',500.00,749.99,'Procesador',NULL,NULL,'CPU-INT-13900K'),(20,'Ryzen 5 5600X','AMD','Ryzen 5',150.00,199.99,'Procesador',NULL,NULL,'CPU-AMD-5600X'),(21,'Core i5-12400F','Intel','Core i5',120.00,149.99,'Procesador',NULL,NULL,'CPU-INT-12400F'),(22,'RAM 32GB DDR5','G.Skill','Trident Z5',120.00,179.99,'Memoria RAM',NULL,NULL,'RAM-GSK-32G-D5'),(23,'RAM 16GB DDR4','Corsair','Vengeance LPX',50.00,79.99,'Memoria RAM',NULL,NULL,'RAM-COR-16G-D4'),(24,'RAM 64GB DDR5','Kingston','Fury Beast',250.00,349.99,'Memoria RAM',NULL,NULL,'RAM-KIN-64G-D5'),(25,'RAM 8GB DDR4','Crucial','Ballistix',30.00,49.99,'Memoria RAM',NULL,NULL,'RAM-CRU-8G-D4'),(26,'Motherboard Z790','ASUS','ROG Strix',250.00,399.99,'Tarjeta Madre',NULL,NULL,'MB-ASU-Z790'),(27,'Motherboard B550','MSI','Tomahawk',120.00,169.99,'Tarjeta Madre',NULL,NULL,'MB-MSI-B550'),(28,'Motherboard H610','Gigabyte','UD AC',80.00,109.99,'Tarjeta Madre',NULL,NULL,'MB-GIG-H610'),(29,'Gabinete Mid Tower','NZXT','H510',70.00,99.99,'Gabinete',NULL,NULL,'CASE-NZXT-H510'),(30,'Gabinete Full Tower','Lian Li','PC-O11',150.00,229.99,'Gabinete',NULL,NULL,'CASE-LIAN-PC011'),(31,'PC Gamer Extreme',NULL,NULL,1200.00,1999.99,'PC',NULL,NULL,'PC-EXTREME-1'),(32,'PC Oficina',NULL,NULL,400.00,699.99,'PC',NULL,NULL,'PC-OFIC-1'),(33,'PC Streaming',NULL,NULL,900.00,1499.99,'PC',NULL,NULL,'PC-STREAM-1'),(34,'PC Workstation',NULL,NULL,1800.00,2999.99,'PC',NULL,NULL,'PC-WORK-1'),(35,'PC Económica',NULL,NULL,300.00,499.99,'PC',NULL,NULL,'PC-ECO-1'),(36,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'MON-SAM-GOL500-17'),(37,'Monitor 24 pulgadas','Samsung','Goliat-24',2000.00,2200.00,'Monitor',NULL,NULL,'MON-SAM-GOL24-24'),(38,'Monitor 27 pulgadas','Samsung','Goliat-27',3000.00,3200.00,'Monitor',NULL,NULL,'MON-SAM-GOL27-27'),(39,'Monitor 32 pulgadas','Samsung','Goliat-32',4000.00,4200.00,'Monitor',NULL,NULL,'MON-SAM-GOL32-32'),(44,'NVMe 1TB','WD','SN770-1TB',200.00,230.00,'Disco duro',NULL,'1TB','NVME-WD-SN770-1T'),(45,'NVMe 2TB','WD','SN780-2TB',300.00,330.00,'Disco duro',NULL,'2TB','NVME-WD-SN780-2T'),(46,'NVMe 1TB','WD','SN770-1TB',200.00,230.00,'Disco duro',NULL,NULL,'44'),(47,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(48,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(49,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(50,'PC Generica','Generica','GEN-1',0.00,0.00,'PC',NULL,NULL,'PC-GEN-1'),(51,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(52,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(53,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(54,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(55,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(56,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(57,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(58,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(59,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(60,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(61,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(62,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(63,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(64,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(65,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(66,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(67,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(68,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(69,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(70,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(71,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(72,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(73,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(74,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(75,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(76,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(77,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(78,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(79,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(80,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(81,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(82,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(83,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(84,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(85,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(86,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(87,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(88,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(89,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(90,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(91,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(92,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(93,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(94,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(95,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(96,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(97,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(98,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(99,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(100,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(101,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(102,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(103,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(104,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(105,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(106,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(107,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(108,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(109,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(110,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(111,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(112,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(113,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(114,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(115,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(116,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(117,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(118,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(119,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(120,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(121,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(122,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(123,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(124,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(125,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(126,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(127,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(128,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(129,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(130,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(131,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(132,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(133,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(134,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(135,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(136,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(137,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(138,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(139,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(140,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(141,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(142,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(143,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(144,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(145,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(146,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(147,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(148,'Monitor 15 pulgadas','Sony','VR-30',1100.00,2000.00,'Monitor',NULL,NULL,'M022'),(149,'Disco estado sólido','Seagate','T-455',500.00,1000.00,'Disco duro',NULL,'2TB','D-23'),(150,'Tarjeta THOR','TechBrand','X200-34',150.00,300.00,'Tarjeta de video','8GB',NULL,'C0XY'),(151,'Disco Seagate','TechXYZ','X200',1880.00,2000.00,'Disco duro',NULL,'1TB','D001'),(152,'Monitor 17 pulgadas','Sony','Z9000',3200.00,6000.00,'Monitor',NULL,NULL,'M001'),(153,'Tarjeta XYZ','TechBrand','X200',150.00,200.00,'Tarjeta de video','16GB',NULL,'C001'),(154,'Laptop 15000 s300','Dell','Terminator',0.00,0.00,'PC',NULL,NULL,'pc0001'),(155,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(156,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(157,'Monitor 17 pulgadas','Samsung','Goliat-500',1000.00,2000.00,'Monitor',NULL,NULL,'M001'),(158,'Monitor Gaming 24','ASUS','TUF VG249Q',150.00,299.99,'Monitor',NULL,NULL,'1'),(159,'Monitor Gaming 24','ASUS','TUF VG249Q',150.00,299.99,'Monitor',NULL,NULL,'1');
/*!40000 ALTER TABLE `componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componentepc`
--

DROP TABLE IF EXISTS `componentepc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componentepc` (
  `idComponentePc` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `idComponente` int NOT NULL,
  `idPC` int NOT NULL,
  PRIMARY KEY (`idComponentePc`),
  UNIQUE KEY `unique_ensamble` (`idPC`,`idComponente`),
  KEY `idComponente` (`idComponente`),
  CONSTRAINT `componentepc_ibfk_1` FOREIGN KEY (`idComponente`) REFERENCES `componente` (`idComponente`),
  CONSTRAINT `componentepc_ibfk_2` FOREIGN KEY (`idPC`) REFERENCES `componente` (`idComponente`),
  CONSTRAINT `componentepc_chk_1` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentepc`
--

LOCK TABLES `componentepc` WRITE;
/*!40000 ALTER TABLE `componentepc` DISABLE KEYS */;
INSERT INTO `componentepc` VALUES (1,1,6,31),(2,1,17,31),(3,2,20,31),(4,1,24,31),(5,1,10,31),(6,1,13,31),(7,1,29,31),(8,1,8,32),(9,1,19,32),(10,1,21,32),(11,1,25,32),(12,1,12,32),(13,1,15,32),(14,1,28,32),(15,1,7,33),(16,1,18,33),(17,4,22,33),(18,1,24,33),(19,2,9,33),(20,1,14,33),(21,1,29,33),(22,1,10,34),(23,1,17,34),(24,4,22,34),(25,1,24,34),(26,2,11,34),(27,1,14,34),(28,1,29,34),(29,1,9,35),(30,1,20,35),(31,1,23,35),(32,1,25,35),(33,1,12,35),(34,1,15,35),(35,1,28,35),(36,1,47,50),(37,1,48,50),(38,1,49,50),(39,1,47,58),(40,1,48,58),(41,1,49,58),(42,1,47,66),(43,1,48,66),(44,1,49,66),(45,1,47,74),(46,1,48,74),(47,1,49,74),(48,1,47,82),(49,1,48,82),(50,1,49,82),(51,1,47,90),(52,1,48,90),(53,1,49,90),(54,1,47,98),(55,1,48,98),(56,1,49,98),(57,1,47,106),(58,1,48,106),(59,1,49,106),(60,1,47,114),(61,1,48,114),(62,1,49,114),(63,1,47,122),(64,1,48,122),(65,1,49,122),(66,1,47,130),(67,1,48,130),(68,1,49,130),(69,1,47,138),(70,1,48,138),(71,1,49,138),(72,1,47,146),(73,1,48,146),(74,1,49,146),(75,1,47,154),(76,1,48,154),(77,1,49,154);
/*!40000 ALTER TABLE `componentepc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion`
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `idCotizacion` int NOT NULL AUTO_INCREMENT,
  `fechaCreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cliente` varchar(255) DEFAULT NULL,
  `total` decimal(12,2) NOT NULL,
  PRIMARY KEY (`idCotizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion`
--

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion` VALUES (1,'2025-05-10 00:11:50','Cliente Corporativo ABC',0.00),(2,'2025-05-10 00:11:50','Tienda Tech Solutions',0.00),(3,'2025-05-10 00:11:50','Universidad XYZ',0.00),(4,'2025-05-10 00:11:50','Freelancer Design',0.00),(5,'2025-05-10 00:11:50','Gamer Pro',0.00),(6,'2025-05-10 00:11:50','Oficina Contable',0.00),(7,'2025-05-10 00:11:50','Estudio de Edición',0.00);
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecotizacion`
--

DROP TABLE IF EXISTS `detallecotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallecotizacion` (
  `idDetalleCotizacion` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `cantidad` int NOT NULL,
  `importeCotizado` decimal(12,2) NOT NULL,
  `precioBase` decimal(12,2) NOT NULL,
  `idCotizacion` int NOT NULL,
  `idComponente` int NOT NULL,
  `sku` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDetalleCotizacion`),
  KEY `idComponente` (`idComponente`),
  KEY `idx_cotizacion` (`idCotizacion`),
  CONSTRAINT `detallecotizacion_ibfk_1` FOREIGN KEY (`idCotizacion`) REFERENCES `cotizacion` (`idCotizacion`),
  CONSTRAINT `detallecotizacion_ibfk_2` FOREIGN KEY (`idComponente`) REFERENCES `componente` (`idComponente`),
  CONSTRAINT `detallecotizacion_chk_1` CHECK ((`cantidad` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecotizacion`
--

LOCK TABLES `detallecotizacion` WRITE;
/*!40000 ALTER TABLE `detallecotizacion` DISABLE KEYS */;
INSERT INTO `detallecotizacion` VALUES (1,NULL,1,1999.99,1999.99,1,31,''),(2,NULL,3,1499.97,499.99,1,2,''),(3,NULL,2,2399.98,1199.99,1,6,''),(4,NULL,1,699.99,699.99,1,17,''),(5,NULL,4,719.96,179.99,1,20,''),(6,NULL,5,3499.95,699.99,2,32,''),(7,NULL,5,499.95,99.99,2,28,''),(8,NULL,5,299.95,59.99,2,15,''),(9,NULL,5,449.95,89.99,2,12,''),(10,NULL,10,799.90,79.99,2,21,''),(11,NULL,2,2999.98,1499.99,3,33,''),(12,NULL,2,1999.98,999.99,3,7,''),(13,NULL,3,599.97,199.99,3,14,''),(14,NULL,8,2799.92,349.99,3,22,''),(15,NULL,4,319.96,79.99,3,9,''),(16,NULL,1,2999.99,2999.99,4,34,''),(17,NULL,3,2999.97,999.99,4,10,''),(18,NULL,2,799.98,399.99,4,24,''),(19,NULL,4,679.96,169.99,4,11,''),(20,NULL,2,459.98,229.99,4,29,''),(21,NULL,10,4999.90,499.99,5,35,''),(22,NULL,5,1499.95,299.99,5,8,''),(23,NULL,5,849.95,169.99,5,25,''),(24,NULL,5,749.95,149.99,5,19,''),(25,NULL,10,499.90,49.99,5,23,''),(26,NULL,8,2799.92,349.99,6,3,''),(27,NULL,5,649.95,129.99,6,16,''),(28,NULL,3,2249.97,749.99,6,18,''),(29,NULL,5,199.95,39.99,6,26,''),(30,NULL,2,219.98,109.99,6,27,''),(31,NULL,6,779.94,129.99,7,5,''),(32,NULL,4,1719.96,429.99,7,4,''),(33,NULL,3,389.97,129.99,7,13,''),(34,NULL,2,199.98,99.99,7,30,''),(35,NULL,6,1079.94,179.99,7,20,'');
/*!40000 ALTER TABLE `detallecotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'diparq_modulo03_evaluacion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-23 13:13:21
