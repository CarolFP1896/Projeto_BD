-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_bd
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `aluno_has_tutoria`
--

DROP TABLE IF EXISTS `aluno_has_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_has_tutoria` (
  `aluno_matricula_aluno` int NOT NULL,
  `aluno_curso_codigo_curso` varchar(45) NOT NULL,
  `tutoria_codigo_tutoria` int NOT NULL,
  PRIMARY KEY (`aluno_matricula_aluno`,`aluno_curso_codigo_curso`,`tutoria_codigo_tutoria`),
  KEY `fk_aluno_has_tutoria_tutoria1_idx` (`tutoria_codigo_tutoria`),
  KEY `fk_aluno_has_tutoria_aluno1_idx` (`aluno_matricula_aluno`,`aluno_curso_codigo_curso`),
  CONSTRAINT `fk_aluno_has_tutoria_aluno1` FOREIGN KEY (`aluno_matricula_aluno`, `aluno_curso_codigo_curso`) REFERENCES `aluno` (`matricula_aluno`, `curso_codigo_curso`),
  CONSTRAINT `fk_aluno_has_tutoria_tutoria1` FOREIGN KEY (`tutoria_codigo_tutoria`) REFERENCES `tutoria` (`codigo_tutoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_has_tutoria`
--

LOCK TABLES `aluno_has_tutoria` WRITE;
/*!40000 ALTER TABLE `aluno_has_tutoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno_has_tutoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17  6:31:20
