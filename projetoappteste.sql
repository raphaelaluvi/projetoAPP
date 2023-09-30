CREATE DATABASE  IF NOT EXISTS `projetoapp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `projetoapp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projetoapp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `descricaop`
--

DROP TABLE IF EXISTS `descricaop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descricaop` (
  `idprojeto` int(11) NOT NULL,
  `projeto` varchar(20) NOT NULL,
  `descricao` text DEFAULT NULL,
  `ods` varchar(20) DEFAULT NULL,
  `palestra` enum('Sim','Não') DEFAULT NULL,
  PRIMARY KEY (`idprojeto`),
  UNIQUE KEY `projeto` (`projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descricaop`
--

LOCK TABLES `descricaop` WRITE;
/*!40000 ALTER TABLE `descricaop` DISABLE KEYS */;
INSERT INTO `descricaop` VALUES (1,'chip para animais','Chip mais barato que rastreia animais.','N sei','Não'),(2,'garrafa inteligente','Garrafa que contabiliza quantidade de água ingerida.','N sei','Não'),(3,'mouse diferente','Mouse que vai ser diferente -exemplo-','N sei','Não'),(4,'sensor de movimento','Sensores de movimento.','N sei','Não'),(5,'caneta inteligente','Cantea que lê o que está escrito e ajuda na alfabetização.','N sei','Não'),(6,'óculos 3D','Óculos 3D mais acessível.','N sei','Não');
/*!40000 ALTER TABLE `descricaop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projetos`
--

DROP TABLE IF EXISTS `projetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projetos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alunos` varchar(20) NOT NULL,
  `projeto` varchar(20) DEFAULT NULL,
  `patrocinadores` varchar(20) DEFAULT NULL,
  `cidades` varchar(20) DEFAULT NULL,
  `etecoufatec` enum('E','F') DEFAULT NULL,
  `descricaoprojeto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `descricaoprojeto` (`descricaoprojeto`),
  CONSTRAINT `projetos_ibfk_1` FOREIGN KEY (`descricaoprojeto`) REFERENCES `descricaop` (`idprojeto`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projetos`
--

LOCK TABLES `projetos` WRITE;
/*!40000 ALTER TABLE `projetos` DISABLE KEYS */;
INSERT INTO `projetos` VALUES (1,'Ana, Luis e Vitoria','chip para animais',NULL,'Diadema','E',1),(2,'Maria, José e João','garrafa inteligente',NULL,'Sorocaba','F',2),(3,'Luisa, Mariana e Gui','mouse diferente',NULL,'Barueri','F',3),(4,'Valentina, Enzo e Is','sensor de movimento',NULL,'São Bernardo','E',4),(5,'Beatriz, Luara e Mar','caneta inteligente',NULL,'Casa Verde','E',5),(6,'Rapha, Carolina e Ca','óculos 3D',NULL,'Ribeirão Pires','E',6);
/*!40000 ALTER TABLE `projetos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-30 18:05:23
