CREATE DATABASE  IF NOT EXISTS `zipcode` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zipcode`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: zipcode
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `zipcode_city_state`
--

DROP TABLE IF EXISTS `zipcode_city_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zipcode_city_state` (
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `City` (`City`),
  UNIQUE KEY `State` (`State`),
  UNIQUE KEY `unique_index` (`City`,`State`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zipcode_city_state`
--

LOCK TABLES `zipcode_city_state` WRITE;
/*!40000 ALTER TABLE `zipcode_city_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `zipcode_city_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zipcodemapping`
--

DROP TABLE IF EXISTS `zipcodemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zipcodemapping` (
  `Zip_code` bigint(20) NOT NULL,
  `Zip_code_mapping` int(11) NOT NULL,
  PRIMARY KEY (`Zip_code`),
  KEY `ZipMap` (`Zip_code_mapping`),
  CONSTRAINT `ZipMap` FOREIGN KEY (`Zip_code_mapping`) REFERENCES `zipcode_city_state` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zipcodemapping`
--

LOCK TABLES `zipcodemapping` WRITE;
/*!40000 ALTER TABLE `zipcodemapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `zipcodemapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-17 19:31:25
