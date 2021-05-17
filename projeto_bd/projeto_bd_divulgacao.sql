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
-- Table structure for table `divulgacao`
--

DROP TABLE IF EXISTS `divulgacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divulgacao` (
  `codigo_divulgacao` int NOT NULL,
  `titulo_divulgacao` varchar(45) NOT NULL,
  `autor_divulgacao` varchar(45) NOT NULL,
  `tipo_divulgacao` int NOT NULL,
  `assunto_divulgacao` varchar(255) NOT NULL,
  `professor_id_professor` int NOT NULL,
  `aluno_matricula_aluno` int NOT NULL,
  `aluno_curso_codigo_curso` varchar(45) NOT NULL,
  `aluno_matricula_aluno1` int NOT NULL,
  `aluno_curso_codigo_curso1` varchar(45) NOT NULL,
  `professor_id_professor1` int NOT NULL,
  PRIMARY KEY (`codigo_divulgacao`,`professor_id_professor`,`aluno_matricula_aluno`,`aluno_curso_codigo_curso`,`aluno_matricula_aluno1`,`aluno_curso_codigo_curso1`,`professor_id_professor1`),
  KEY `fk_divulgacao_aluno1_idx` (`aluno_matricula_aluno1`,`aluno_curso_codigo_curso1`),
  KEY `fk_divulgacao_professor1_idx` (`professor_id_professor1`),
  CONSTRAINT `fk_divulgacao_aluno1` FOREIGN KEY (`aluno_matricula_aluno1`, `aluno_curso_codigo_curso1`) REFERENCES `mydb`.`aluno` (`matricula_aluno`, `curso_codigo_curso`),
  CONSTRAINT `fk_divulgacao_professor1` FOREIGN KEY (`professor_id_professor1`) REFERENCES `professor` (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divulgacao`
--

LOCK TABLES `divulgacao` WRITE;
/*!40000 ALTER TABLE `divulgacao` DISABLE KEYS */;
INSERT INTO `divulgacao` VALUES (1,'Duvida C1','Gabriella Tavares',1,'Duvida em integral',0,170010988,'906',170010988,'906',0),(2,'ED','Luana Almeida',2,'Conteudo prova final',0,170185486,'1341',170185486,'1341',0),(3,'Vagas para estagiario','Mandeli',3,'Estagiario no departamento',123456,0,'370',0,'370',123456),(4,'Cardapio RU','Ana Maria',4,'Arroz, Feijão, proteina de soja e salada',0,170045879,'1341',170045879,'1341',0),(5,'Vagas no TCU','Laura Carvalho',5,'Vagas para estagiario no TCU',0,1701596244,'1341',1701596244,'1341',0);
/*!40000 ALTER TABLE `divulgacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17  6:31:16
