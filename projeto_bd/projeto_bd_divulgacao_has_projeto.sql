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
-- Table structure for table `divulgacao_has_projeto`
--

DROP TABLE IF EXISTS `divulgacao_has_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divulgacao_has_projeto` (
  `divulgacao_codigo_divulgacao` int NOT NULL,
  `divulgacao_professor_id_professor` int NOT NULL,
  `divulgacao_aluno_matricula_aluno` int NOT NULL,
  `divulgacao_aluno_curso_codigo_curso` varchar(45) NOT NULL,
  `divulgacao_aluno_matricula_aluno1` int NOT NULL,
  `divulgacao_aluno_curso_codigo_curso1` varchar(45) NOT NULL,
  `divulgacao_professor_id_professor1` int NOT NULL,
  `projeto_codigo_projeto` int NOT NULL,
  PRIMARY KEY (`divulgacao_codigo_divulgacao`,`divulgacao_professor_id_professor`,`divulgacao_aluno_matricula_aluno`,`divulgacao_aluno_curso_codigo_curso`,`divulgacao_aluno_matricula_aluno1`,`divulgacao_aluno_curso_codigo_curso1`,`divulgacao_professor_id_professor1`,`projeto_codigo_projeto`),
  KEY `fk_divulgacao_has_projeto_projeto1_idx` (`projeto_codigo_projeto`),
  KEY `fk_divulgacao_has_projeto_divulgacao1_idx` (`divulgacao_codigo_divulgacao`,`divulgacao_professor_id_professor`,`divulgacao_aluno_matricula_aluno`,`divulgacao_aluno_curso_codigo_curso`,`divulgacao_aluno_matricula_aluno1`,`divulgacao_aluno_curso_codigo_curso1`,`divulgacao_professor_id_professor1`),
  CONSTRAINT `fk_divulgacao_has_projeto_divulgacao1` FOREIGN KEY (`divulgacao_codigo_divulgacao`, `divulgacao_professor_id_professor`, `divulgacao_aluno_matricula_aluno`, `divulgacao_aluno_curso_codigo_curso`, `divulgacao_aluno_matricula_aluno1`, `divulgacao_aluno_curso_codigo_curso1`, `divulgacao_professor_id_professor1`) REFERENCES `divulgacao` (`codigo_divulgacao`, `professor_id_professor`, `aluno_matricula_aluno`, `aluno_curso_codigo_curso`, `aluno_matricula_aluno1`, `aluno_curso_codigo_curso1`, `professor_id_professor1`),
  CONSTRAINT `fk_divulgacao_has_projeto_projeto1` FOREIGN KEY (`projeto_codigo_projeto`) REFERENCES `mydb`.`projeto` (`codigo_projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divulgacao_has_projeto`
--

LOCK TABLES `divulgacao_has_projeto` WRITE;
/*!40000 ALTER TABLE `divulgacao_has_projeto` DISABLE KEYS */;
/*!40000 ALTER TABLE `divulgacao_has_projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17  6:31:21
