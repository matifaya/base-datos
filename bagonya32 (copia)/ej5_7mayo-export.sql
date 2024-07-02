-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ejercicio5_7mayo
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso` (
  `registro` int NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `n habitacion` int DEFAULT NULL,
  `cama paciente` int DEFAULT NULL,
  `fecha ingreso` date DEFAULT NULL,
  `paciente_codigo` int NOT NULL,
  `medic_codigo` int NOT NULL,
  PRIMARY KEY (`registro`),
  KEY `fk_ingreso_paciente_idx` (`paciente_codigo`),
  KEY `fk_ingreso_medic1_idx` (`medic_codigo`),
  CONSTRAINT `fk_ingreso_medic1` FOREIGN KEY (`medic_codigo`) REFERENCES `medic` (`codigo`),
  CONSTRAINT `fk_ingreso_paciente` FOREIGN KEY (`paciente_codigo`) REFERENCES `paciente` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
INSERT INTO `ingreso` VALUES (48777002,'C101',2,41,'2022-05-06',302,81);
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medic`
--

DROP TABLE IF EXISTS `medic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medic` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medic`
--

LOCK TABLES `medic` WRITE;
/*!40000 ALTER TABLE `medic` DISABLE KEYS */;
INSERT INTO `medic` VALUES (80,'Matias','Faya',48768120,'Pediatra'),(81,'Joaquin','Gonzalez',61123916,'Traumatologo'),(82,'Santino','Cantale',78234419,'Traumatologo'),(83,'Ulises','Copati',87238421,'Traumatologo');
/*!40000 ALTER TABLE `medic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `codigo postal` varchar(45) DEFAULT NULL,
  `f nac` date DEFAULT NULL,
  `tel` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (301,'Madison','Beer','La Matanza','Monroe','C1431','1998-06-23',87125563),(302,'Corinna','Kopf','Jose C Paz','Triunvirato','C1432','1999-07-12',76148751),(303,'Abella','Danger','Berazategui','Artigas','C1433','2001-04-18',48719127),(304,'Katie','Sigmond','Gonzalez Catan','Cabildo','C1434','1985-04-22',74359997);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14 16:42:02
