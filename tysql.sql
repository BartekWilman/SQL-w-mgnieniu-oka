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
-- Temporary view structure for view `adresyemailklientow`
--

DROP TABLE IF EXISTS `adresyemailklientow`;
/*!50001 DROP VIEW IF EXISTS `adresyemailklientow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `adresyemailklientow` AS SELECT 
 1 AS `kl_id`,
 1 AS `kl_nazwa`,
 1 AS `kl_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dostawcy`
--

DROP TABLE IF EXISTS `dostawcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dostawcy` (
  `dost_id` char(10) NOT NULL,
  `dost_nazwa` char(50) NOT NULL,
  `dost_adres` char(50) DEFAULT NULL,
  `dost_miasto` char(50) DEFAULT NULL,
  `dost_woj` char(5) DEFAULT NULL,
  `dost_kod` char(10) DEFAULT NULL,
  `dost_kraj` char(50) DEFAULT NULL,
  `dost_witryna` char(100) DEFAULT NULL,
  PRIMARY KEY (`dost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dostawcy`
--

LOCK TABLES `dostawcy` WRITE;
/*!40000 ALTER TABLE `dostawcy` DISABLE KEYS */;
INSERT INTO `dostawcy` VALUES ('BRE02','Misiowe Imperium','Chopina 32','Gliwice','SLK','44-333','Polska','pornhub.pl'),('BRS01','Misie Pysie','Dolna 111','Misiowo','MAZ','44-444','Polska','pornhub.pl'),('DLL01','Lalki S.A.','Matejki 23','Staszów','SWK','99-999','Polska','pornhub.pl'),('FNG01','Fun and Games','42 Galaxy Road','London',NULL,'N16 6PS','Anglia','pornhub.pl'),('FRB01','Furball Inc.','1000 5th Avenue','New York',NULL,'11111','USA','pornhub.pl'),('JTS01','Jouets et ours','1 Rue Amusement','Paris',NULL,'45678','Francja','pornhub.pl');
/*!40000 ALTER TABLE `dostawcy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementyzamowienia`
--

DROP TABLE IF EXISTS `elementyzamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementyzamowienia` (
  `zam_numer` int NOT NULL,
  `zam_element` int NOT NULL,
  `prod_id` char(10) NOT NULL,
  `ilosc` int NOT NULL,
  `cena_elem` decimal(8,2) NOT NULL,
  PRIMARY KEY (`zam_numer`,`zam_element`),
  KEY `FK_OrIt_Pr` (`prod_id`),
  CONSTRAINT `FK_OrIt_Or` FOREIGN KEY (`zam_numer`) REFERENCES `zamowienia` (`zam_numer`),
  CONSTRAINT `FK_OrIt_Pr` FOREIGN KEY (`prod_id`) REFERENCES `produkty` (`prod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementyzamowienia`
--

LOCK TABLES `elementyzamowienia` WRITE;
/*!40000 ALTER TABLE `elementyzamowienia` DISABLE KEYS */;
INSERT INTO `elementyzamowienia` VALUES (20005,1,'BR01',100,24.99),(20005,2,'BR03',100,49.99),(20006,1,'BR01',20,25.99),(20006,2,'BR02',10,38.99),(20006,3,'BR03',10,51.99),(20007,1,'BR03',50,50.99),(20007,2,'BNBG01',100,9.49),(20007,3,'BNBG02',100,9.49),(20007,4,'BNBG03',100,9.49),(20007,5,'RGAN01',50,11.99),(20008,1,'RGAN01',5,12.99),(20008,2,'BR03',5,51.99),(20008,3,'BNBG01',10,9.99),(20008,4,'BNBG02',10,9.99),(20008,5,'BNBG03',10,9.99),(20009,1,'BNBG01',250,8.99),(20009,2,'BNBG02',250,8.99),(20009,3,'BNBG03',250,8.99);
/*!40000 ALTER TABLE `elementyzamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienci` (
  `kl_id` char(10) NOT NULL,
  `kl_nazwa` char(50) NOT NULL,
  `kl_adres` char(50) DEFAULT NULL,
  `kl_miasto` char(50) DEFAULT NULL,
  `kl_woj` char(5) DEFAULT NULL,
  `kl_kod` char(10) DEFAULT NULL,
  `kl_kraj` char(50) DEFAULT NULL,
  `kl_kontakt` char(50) DEFAULT NULL,
  `kl_email` char(255) DEFAULT NULL,
  PRIMARY KEY (`kl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES ('1000000001','Zabawki wiejskie','Konopi 11','Warszawa','MAZ','44-444','Polska','Jan Kowalski','sprzedaz@zabawkiwiejskie.pl'),('1000000002','Świat dziecka','Zwycięstwa 23','Kraków','MAL','43-333','Polska','Michelle Znany',NULL),('1000000003','Zabawa dla wszystkich','Słoneczna 1','Gliwice','SLK','42-222','Polska','Piotr Nowak','pnowak@zdw.pl'),('1000000004','Zabawa dla wszystkich','Alei WP 2','Poznań','WKP','88-888','Polska','Danuta Sroka','dsroka@zdw.pl'),('1000000005','Skład zabawek','Polna 121','Gdańsk','POM','54-545','Polska','Maria Skowronek',NULL);
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `kliencizzamowieniami`
--

DROP TABLE IF EXISTS `kliencizzamowieniami`;
/*!50001 DROP VIEW IF EXISTS `kliencizzamowieniami`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kliencizzamowieniami` AS SELECT 
 1 AS `kl_id`,
 1 AS `kl_nazwa`,
 1 AS `kl_adres`,
 1 AS `kl_miasto`,
 1 AS `kl_woj`,
 1 AS `kl_kod`,
 1 AS `kl_kraj`,
 1 AS `kl_kontakt`,
 1 AS `kl_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `kopiaelementyzamowienia`
--

DROP TABLE IF EXISTS `kopiaelementyzamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kopiaelementyzamowienia` (
  `zam_numer` int NOT NULL,
  `zam_element` int NOT NULL,
  `prod_id` char(10) NOT NULL,
  `ilosc` int NOT NULL,
  `cena_elem` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kopiaelementyzamowienia`
--

LOCK TABLES `kopiaelementyzamowienia` WRITE;
/*!40000 ALTER TABLE `kopiaelementyzamowienia` DISABLE KEYS */;
INSERT INTO `kopiaelementyzamowienia` VALUES (20005,1,'BR01',100,24.99),(20005,2,'BR03',100,49.99),(20006,1,'BR01',20,25.99),(20006,2,'BR02',10,38.99),(20006,3,'BR03',10,51.99),(20007,1,'BR03',50,50.99),(20007,2,'BNBG01',100,9.49),(20007,3,'BNBG02',100,9.49),(20007,4,'BNBG03',100,9.49),(20007,5,'RGAN01',50,11.99),(20008,1,'RGAN01',5,12.99),(20008,2,'BR03',5,51.99),(20008,3,'BNBG01',10,9.99),(20008,4,'BNBG02',10,9.99),(20008,5,'BNBG03',10,9.99),(20009,1,'BNBG01',250,8.99),(20009,2,'BNBG02',250,8.99),(20009,3,'BNBG03',250,8.99);
/*!40000 ALTER TABLE `kopiaelementyzamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kopiazamowienia`
--

DROP TABLE IF EXISTS `kopiazamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kopiazamowienia` (
  `zam_numer` int NOT NULL,
  `zam_data` datetime NOT NULL,
  `kl_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kopiazamowienia`
--

LOCK TABLES `kopiazamowienia` WRITE;
/*!40000 ALTER TABLE `kopiazamowienia` DISABLE KEYS */;
INSERT INTO `kopiazamowienia` VALUES (20005,'2012-05-01 00:00:00','1000000001'),(20006,'2012-01-12 00:00:00','1000000003'),(20007,'2012-01-30 00:00:00','1000000004'),(20008,'2012-02-03 00:00:00','1000000005'),(20009,'2012-02-08 00:00:00','1000000001');
/*!40000 ALTER TABLE `kopiazamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lokalizacjaklientow`
--

DROP TABLE IF EXISTS `lokalizacjaklientow`;
/*!50001 DROP VIEW IF EXISTS `lokalizacjaklientow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lokalizacjaklientow` AS SELECT 
 1 AS `dost_tytul`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `produkty`
--

DROP TABLE IF EXISTS `produkty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produkty` (
  `prod_id` char(10) NOT NULL,
  `dost_id` char(10) NOT NULL,
  `prod_nazwa` char(255) NOT NULL,
  `prod_cena` decimal(8,2) NOT NULL,
  `prod_opis` text,
  PRIMARY KEY (`prod_id`),
  KEY `FK_Pr_Ve` (`dost_id`),
  CONSTRAINT `FK_Pr_Ve` FOREIGN KEY (`dost_id`) REFERENCES `dostawcy` (`dost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES ('BNBG01','DLL01','Rybka szmacianka z sypkim wypełnieniem',9.99,'Rybka szmacianka z sypkim wypełnieniem, dodatkowo robaki szmacianki'),('BNBG02','DLL01','Ptaszek szmacianka z sypkim wypełnieniem',9.99,'Ptaszek szmacianka z sypkim wypełnieniem, bez jajek'),('BNBG03','DLL01','Króliczek szmacianka z sypkim wypełnieniem',9.99,'Króliczek szmacianka z sypkim wypełnieniem, dodatkowo marchewki szmacianki'),('BR01','BRS01','Pluszowy miś 20 cm',25.99,'Pluszowy miś 20 cm, dostarczany z czapką i kurtką'),('BR02','BRS01','Pluszowy miś 30 cm',38.99,'Pluszowy miś 30 cm, dostarczany z czapką i kurtką'),('BR03','BRS01','Pluszowy miś 40 cm',51.99,'Pluszowy miś 40 cm, dostarczany z czapką i kurtką'),('RGAN01','DLL01','Raggedy Ann',12.99,'40 cm lalka Raggedy Ann'),('RYL01','FNG01','Lalka króla',39.49,'30 cm lalka króla z odpowiednimi szatami i koroną'),('RYL02','FNG01','Lalka królowej',39.49,'30 cm lalka królowej z odpowiednimi szatami i koroną');
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `produktyklientow`
--

DROP TABLE IF EXISTS `produktyklientow`;
/*!50001 DROP VIEW IF EXISTS `produktyklientow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produktyklientow` AS SELECT 
 1 AS `kl_nazwa`,
 1 AS `kl_kontakt`,
 1 AS `prod_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wartoscielementowzamowienia`
--

DROP TABLE IF EXISTS `wartoscielementowzamowienia`;
/*!50001 DROP VIEW IF EXISTS `wartoscielementowzamowienia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wartoscielementowzamowienia` AS SELECT 
 1 AS `zam_numer`,
 1 AS `prod_id`,
 1 AS `ilosc`,
 1 AS `cena_elem`,
 1 AS `wartosc`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zamowienia` (
  `zam_numer` int NOT NULL,
  `zam_data` datetime NOT NULL,
  `kl_id` char(10) NOT NULL,
  PRIMARY KEY (`zam_numer`),
  KEY `FK_Or_Cu` (`kl_id`),
  CONSTRAINT `FK_Or_Cu` FOREIGN KEY (`kl_id`) REFERENCES `klienci` (`kl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zamowienia`
--

LOCK TABLES `zamowienia` WRITE;
/*!40000 ALTER TABLE `zamowienia` DISABLE KEYS */;
INSERT INTO `zamowienia` VALUES (20005,'2012-05-01 00:00:00','1000000001'),(20006,'2012-01-12 00:00:00','1000000003'),(20007,'2012-01-30 00:00:00','1000000004'),(20008,'2012-02-03 00:00:00','1000000005'),(20009,'2012-02-08 00:00:00','1000000001');
/*!40000 ALTER TABLE `zamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `adresyemailklientow`
--

/*!50001 DROP VIEW IF EXISTS `adresyemailklientow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `adresyemailklientow` AS select `klienci`.`kl_id` AS `kl_id`,`klienci`.`kl_nazwa` AS `kl_nazwa`,`klienci`.`kl_email` AS `kl_email` from `klienci` where (`klienci`.`kl_email` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kliencizzamowieniami`
--

/*!50001 DROP VIEW IF EXISTS `kliencizzamowieniami`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kliencizzamowieniami` AS select `klienci`.`kl_id` AS `kl_id`,`klienci`.`kl_nazwa` AS `kl_nazwa`,`klienci`.`kl_adres` AS `kl_adres`,`klienci`.`kl_miasto` AS `kl_miasto`,`klienci`.`kl_woj` AS `kl_woj`,`klienci`.`kl_kod` AS `kl_kod`,`klienci`.`kl_kraj` AS `kl_kraj`,`klienci`.`kl_kontakt` AS `kl_kontakt`,`klienci`.`kl_email` AS `kl_email` from (`klienci` join `zamowienia` on((`klienci`.`kl_id` = `zamowienia`.`kl_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lokalizacjaklientow`
--

/*!50001 DROP VIEW IF EXISTS `lokalizacjaklientow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lokalizacjaklientow` AS select concat(rtrim(`dostawcy`.`dost_nazwa`),' (',rtrim(`dostawcy`.`dost_kraj`),')') AS `dost_tytul` from `dostawcy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `produktyklientow`
--

/*!50001 DROP VIEW IF EXISTS `produktyklientow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produktyklientow` AS select `klienci`.`kl_nazwa` AS `kl_nazwa`,`klienci`.`kl_kontakt` AS `kl_kontakt`,`elementyzamowienia`.`prod_id` AS `prod_id` from ((`klienci` join `zamowienia`) join `elementyzamowienia`) where ((`klienci`.`kl_id` = `zamowienia`.`kl_id`) and (`elementyzamowienia`.`zam_numer` = `zamowienia`.`zam_numer`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wartoscielementowzamowienia`
--

/*!50001 DROP VIEW IF EXISTS `wartoscielementowzamowienia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wartoscielementowzamowienia` AS select `elementyzamowienia`.`zam_numer` AS `zam_numer`,`elementyzamowienia`.`prod_id` AS `prod_id`,`elementyzamowienia`.`ilosc` AS `ilosc`,`elementyzamowienia`.`cena_elem` AS `cena_elem`,(`elementyzamowienia`.`ilosc` * `elementyzamowienia`.`cena_elem`) AS `wartosc` from `elementyzamowienia` */;
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

-- Dump completed on 2022-09-07 16:08:28
