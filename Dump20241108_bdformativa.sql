-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: formativa
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
-- Table structure for table `aeronave`
--

DROP TABLE IF EXISTS `aeronave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeronave` (
  `id_nave` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL,
  `comunicacao` varchar(50) NOT NULL,
  PRIMARY KEY (`id_nave`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeronave`
--

LOCK TABLES `aeronave` WRITE;
/*!40000 ALTER TABLE `aeronave` DISABLE KEYS */;
INSERT INTO `aeronave` VALUES (1,'Space X','Marte','radio'),(2,'JGT','Canada','satelite'),(3,'META','uruguai','instragram'),(4,'NASA','buraco negro','omitido'),(5,'123milhas','hawai','telefone');
/*!40000 ALTER TABLE `aeronave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passageiro`
--

DROP TABLE IF EXISTS `passageiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passageiro` (
  `id_pass` int NOT NULL AUTO_INCREMENT,
  `id_nave` int DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pass`),
  KEY `id_nave` (`id_nave`),
  CONSTRAINT `passageiro_ibfk_1` FOREIGN KEY (`id_nave`) REFERENCES `aeronave` (`id_nave`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passageiro`
--

LOCK TABLES `passageiro` WRITE;
/*!40000 ALTER TABLE `passageiro` DISABLE KEYS */;
INSERT INTO `passageiro` VALUES (6,1,'Rudrian almeida domingues','Vila bart','15 99602-6913'),(7,5,'Julio Cesar da Silva Moraes','Lago dos Ipês','15 99943-2801'),(8,4,'Caio Fernando Faria do Amaral','uruguai','15 99856-5947'),(9,1,'Nicolle Albuquerque','Casa','16 99943-2801'),(10,3,'Guilherme Bueno Martis de Queiroz','itapetininga','16 99856-5947'),(11,3,'Carlos Eduardado Bernades dos Santos','morador de rua','16 99602-6913'),(12,2,'Guilherme Vieira Bicudo de Almeida','Canada','15 99667-8524'),(13,2,'Newton André Thomaz','SENAI','Sem Telefone'),(14,4,'ALBERTO ROBERTO','Centro','omitido'),(15,5,'Fellipe Oliveira Raszejas','shopping',' #####-####');
/*!40000 ALTER TABLE `passageiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_passageiros_voando`
--

DROP TABLE IF EXISTS `vw_passageiros_voando`;
/*!50001 DROP VIEW IF EXISTS `vw_passageiros_voando`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_passageiros_voando` AS SELECT 
 1 AS `nome_passageiro`,
 1 AS `Nome_Aeronave`,
 1 AS `destino_aeronave`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_passageiros_voando`
--

/*!50001 DROP VIEW IF EXISTS `vw_passageiros_voando`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_passageiros_voando` AS select `passageiro`.`nome` AS `nome_passageiro`,`aeronave`.`nome` AS `Nome_Aeronave`,`aeronave`.`destino` AS `destino_aeronave` from (`passageiro` join `aeronave` on((`passageiro`.`id_nave` = `aeronave`.`id_nave`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-08 10:55:09
