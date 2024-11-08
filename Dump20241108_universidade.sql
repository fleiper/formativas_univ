-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade_forms
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `ID_ESTUDANTE` int NOT NULL AUTO_INCREMENT,
  `ID_UNI` int DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `TELEFONE` varchar(50) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `NUMERO` int DEFAULT NULL,
  `CEP` varchar(50) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_ESTUDANTE`),
  KEY `ID_UNI` (`ID_UNI`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`ID_UNI`) REFERENCES `universidade` (`ID_UNI`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,1,'Rudrian almeida domingues','6913-7598','Rua Adriano Adauto',987,'19000-100','Lago dos Ipês','Itapetininga','Brasil'),(2,2,'Julio Cesar da Silva Moraes','7598-6913','Rua patrick jane',654,'19000-100','Pinheiros','Itapetininga','Brasil'),(3,3,'Caio Fernando Faria do Amaral','7598-6913',' Rua Dexter morgan',321,'19000-100','Shopping','Itapetininga','Brasil'),(4,4,'Nicolle Albuquerque','7598-6913','Rua Sebastião Maia',147,'19000-100','centro','Itapetininga','Brasil'),(5,5,'Fellipe Oliveira Raszejas','1498-6913','Rua freddy mercury',258,'19000-100','Bela vista','Itapetininga','Brasil');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidade`
--

DROP TABLE IF EXISTS `universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universidade` (
  `ID_UNI` int NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  `TELEFONE` varchar(50) DEFAULT NULL,
  `RUA` varchar(50) DEFAULT NULL,
  `NUMERO` int DEFAULT NULL,
  `CEP` varchar(50) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_UNI`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
INSERT INTO `universidade` VALUES (1,'USP','3218-7598','Rua Francisco combicheck',333,'19000-100','Zona oeste','São Pualo','Brasil'),(2,'HARVARD','7534-1598','Rua general dafossa',555,'18201-480','Alplhaville','Inglaterra','Inglaterra'),(3,'YALE','7418-5296','Rua Richard Gilmore',777,'19000-110','Zona norte','São Pualo','Inglaterra'),(4,'SESI','7531-9514','Rua Adriano Adauto',999,'18201-100','Zona sul','Itapetininga','Brasil'),(5,'UNICAMP','3687-1549','Rua Sr.Raszejas',123,'20000-100','Zona leste','Campinas','Brasil');
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08 11:46:55
