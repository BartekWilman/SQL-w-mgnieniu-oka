CREATE DATABASE  IF NOT EXISTS `tysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tysql`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tysql
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES ('BNBG01','DLL01','Rybka szmacianka z sypkim wypełnieniem',9.99,'Rybka szmacianka z sypkim wypełnieniem, dodatkowo robaki szmacianki'),('BNBG02','DLL01','Ptaszek szmacianka z sypkim wypełnieniem',9.99,'Ptaszek szmacianka z sypkim wypełnieniem, bez jajek'),('BNBG03','DLL01','Króliczek szmacianka z sypkim wypełnieniem',9.99,'Króliczek szmacianka z sypkim wypełnieniem, dodatkowo marchewki szmacianki'),('BR01','BRS01','Pluszowy miś 20 cm',25.99,'Pluszowy miś 20 cm, dostarczany z czapką i kurtką'),('BR02','BRS01','Pluszowy miś 30 cm',38.99,'Pluszowy miś 30 cm, dostarczany z czapką i kurtką'),('BR03','BRS01','Pluszowy miś 40 cm',51.99,'Pluszowy miś 40 cm, dostarczany z czapką i kurtką'),('RGAN01','DLL01','Raggedy Ann',12.99,'40 cm lalka Raggedy Ann'),('RYL01','FNG01','Lalka króla',39.49,'30 cm lalka króla z odpowiednimi szatami i koroną'),('RYL02','FNG01','Lalka królowej',39.49,'30 cm lalka królowej z odpowiednimi szatami i koroną');
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-07 15:55:23
