-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ef_grupo_3
-- ------------------------------------------------------
-- Server version	8.0.31

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
CREATE SCHEMA IF NOT EXISTS `ef_grupo_3` DEFAULT CHARACTER SET utf8 ;
USE `ef_grupo_3` ;
--
-- Table structure for table `cortelaser`
--

DROP TABLE IF EXISTS `cortelaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cortelaser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grosor` int NOT NULL,
  `material` int NOT NULL,
  `alto` int NOT NULL,
  `ancho` int NOT NULL,
  `url` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `valido` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `costo` double NOT NULL,
  `realizacion` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_corteLaser_usuarios1_idx` (`correo`),
  CONSTRAINT `fk_corteLaser_usuarios1` FOREIGN KEY (`correo`) REFERENCES `usuarios` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cortelaser`
--

LOCK TABLES `cortelaser` WRITE;
/*!40000 ALTER TABLE `cortelaser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cortelaser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credenciales`
--

DROP TABLE IF EXISTS `credenciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credenciales` (
  `password` varchar(550) NOT NULL,
  `admin` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`correo`),
  KEY `fk_credenciales_usuarios_idx` (`correo`),
  CONSTRAINT `fk_credenciales_usuarios` FOREIGN KEY (`correo`) REFERENCES `usuarios` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credenciales`
--

LOCK TABLES `credenciales` WRITE;
/*!40000 ALTER TABLE `credenciales` DISABLE KEYS */;
/*!40000 ALTER TABLE `credenciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escaneo3d`
--

DROP TABLE IF EXISTS `escaneo3d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escaneo3d` (
  `id` int NOT NULL AUTO_INCREMENT,
  `largo` double NOT NULL,
  `ancho` double NOT NULL,
  `altura` double NOT NULL,
  `resolucion` int NOT NULL,
  `correo` varchar(50) NOT NULL,
  `costo` double NOT NULL,
  `realizacion` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_escaneo3D_usuarios1_idx` (`correo`),
  CONSTRAINT `fk_escaneo3D_usuarios1` FOREIGN KEY (`correo`) REFERENCES `usuarios` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escaneo3d`
--

LOCK TABLES `escaneo3d` WRITE;
/*!40000 ALTER TABLE `escaneo3d` DISABLE KEYS */;
/*!40000 ALTER TABLE `escaneo3d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impresion3d`
--

DROP TABLE IF EXISTS `impresion3d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impresion3d` (
  `id` int NOT NULL AUTO_INCREMENT,
  `densidad` int NOT NULL,
  `grosor` int NOT NULL,
  `altura` int NOT NULL,
  `material` int NOT NULL,
  `url` varchar(100) NOT NULL,
  `autoservicio` int NOT NULL,
  `valido` int NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(50) NOT NULL,
  `costo` double NOT NULL,
  `realizacion` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_impresion3D_usuarios1_idx` (`correo`),
  CONSTRAINT `fk_impresion3D_usuarios1` FOREIGN KEY (`correo`) REFERENCES `usuarios` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impresion3d`
--

LOCK TABLES `impresion3d` WRITE;
/*!40000 ALTER TABLE `impresion3d` DISABLE KEYS */;
INSERT INTO `impresion3d` VALUES (1,2,3,1,2,'urlRandom',1,1,'2022-11-29 00:00:00','correo@pucp.edu.pe',0,0);
/*!40000 ALTER TABLE `impresion3d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `correo` varchar(50) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `tipoUser` int NOT NULL,
  PRIMARY KEY (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('correo@pucp.edu.pe','Alumno','Alumno',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 13:39:56
