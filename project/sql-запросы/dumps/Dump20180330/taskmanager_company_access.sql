CREATE DATABASE  IF NOT EXISTS `taskmanager` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `taskmanager`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: taskmanager
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company_access`
--

DROP TABLE IF EXISTS `company_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_access` (
  `user_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`right_id`,`company_id`),
  KEY `fk_company_access_company_id_idx` (`company_id`),
  KEY `fk_company_access_right_id_idx` (`right_id`),
  CONSTRAINT `fk_company_access_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_company_access_right_id` FOREIGN KEY (`right_id`) REFERENCES `right` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_company_access_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_access`
--

LOCK TABLES `company_access` WRITE;
/*!40000 ALTER TABLE `company_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_access` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-30 14:25:54
