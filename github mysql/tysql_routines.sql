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
-- Dumping routines for database 'tysql'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-07 15:55:24
