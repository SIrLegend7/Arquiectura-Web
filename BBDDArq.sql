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

select current_user();
SET PASSWORD FOR 'root'@'localhost' = 'hola';
--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `DNITrabajador` varchar(10) NOT NULL,
  `idproyecto` varchar(45) NOT NULL,
  `libre` tinyint DEFAULT NULL,
  `fecha` date NOT NULL,
  `horaIni` numeric DEFAULT NULL,
  `horaFin` numeric DEFAULT NULL,
  PRIMARY KEY (`DNITrabajador`,`idproyecto`,`fecha`),
  KEY `idproyecto_idx` (`idproyecto`),
  CONSTRAINT `DNITrabajador` FOREIGN KEY (`DNITrabajador`) REFERENCES `trabajador` (`DNI`),
  CONSTRAINT `idproyecto` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`idproyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES ('1234568A','1',0,'2021-01-16',8,14),('1234568A','10',1,'2021-01-17',0,0),('2520295W','1',0,'2021-01-18',8,15);
select * from calendario;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresacliente`
--

DROP TABLE IF EXISTS `empresacliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresacliente` (
  `NIF` int NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`NIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresacliente`
--

LOCK TABLES `empresacliente` WRITE;
/*!40000 ALTER TABLE `empresacliente` DISABLE KEYS */;
INSERT INTO `empresacliente` VALUES (1234,'123456789','correoPrueba@gmail.com','empresaDePrueba1','Calle Falsa, 123');
/*!40000 ALTER TABLE `empresacliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peticion`
--

DROP TABLE IF EXISTS `peticion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peticion` (
  `fecha` date NOT NULL,
  `asunto` varchar(45) NOT NULL,
  `DNI` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fecha`,`asunto`),
  KEY `DNI_idx` (`DNI`),
  CONSTRAINT `DNI` FOREIGN KEY (`DNI`) REFERENCES `trabajador` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peticion`
--

LOCK TABLES `peticion` WRITE;
/*!40000 ALTER TABLE `peticion` DISABLE KEYS */;
/*!40000 ALTER TABLE `peticion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `idproyecto` varchar(45) NOT NULL,
  `NIF` int NOT NULL,
  `presupuesto` int DEFAULT NULL,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  PRIMARY KEY (`idproyecto`),
  KEY `NIF_idx` (`NIF`),
  CONSTRAINT `NIF` FOREIGN KEY (`NIF`) REFERENCES `empresacliente` (`NIF`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES ('1',1234,100,'2021-02-02 00:00:00','2021-01-05 00:00:00'),('10',1234,100000,'2021-02-03 00:00:00','2021-06-06 00:00:00');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador` (
  `DNI` varchar(10) NOT NULL,
  `IBAN` varchar(20) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `tipoTrabajador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES ('1234568A','1111222233334444','correoDePrueba@gmail.com','111222333','Calle de Prueba','','usuario','contraseña','analista'),('2520295W','1234','correoTrabajador','111222333','Calle Falsa 234','Alejandro',NULL,NULL,NULL);
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 19:03:07
