CREATE DATABASE  IF NOT EXISTS `storefront1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `storefront1`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: storefront1
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_type` varchar(45) NOT NULL,
  `Parent_Cat_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Category_Id`),
  UNIQUE KEY `_UNIQUE` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Men',NULL),(2,'Women',NULL),(3,'Ehtnic',1),(4,'Electronics',NULL),(5,'Mobile',4),(6,'Western',2),(7,'Western',1),(8,'Sports',1),(9,'Shoes',8),(10,'Grocery',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `Product_Id` int(11) NOT NULL,
  `P_Images` varchar(45) NOT NULL,
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `Product_Id` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'2'),(2,'6'),(4,'7');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `P_Name` varchar(45) NOT NULL,
  `P_Price` float NOT NULL,
  `P_Detail` varchar(45) DEFAULT NULL,
  `P_status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'levis Jeans',1000,'5 pocket jeans','Active'),(2,'levis Top',500,'Olive Color','Active'),(3,'Block Printed Kurta',1000,'Long Kurta','Active'),(4,'Grocery',1000,'6 pc set','Inactive'),(5,'MI Note 5 pro',15000,'64GB/4GB','Active'),(6,'Samsung Galaxy 8',19000,'64GB/4GB','Inactive'),(7,'Puma Shoes',3100,'RedColor','Inactive'),(8,'Pencil',12,NULL,'Inactive'),(9,'Eraser',10,NULL,'Inactive'),(10,'Top',200,NULL,'Inactive');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopper`
--

DROP TABLE IF EXISTS `shopper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopper` (
  `ShopperID` int(11) NOT NULL AUTO_INCREMENT,
  `S_name` varchar(105) NOT NULL,
  `S_mob_no` bigint(20) NOT NULL,
  `S_user` varchar(100) NOT NULL,
  `S_email` varchar(45) NOT NULL,
  PRIMARY KEY (`ShopperID`),
  UNIQUE KEY `ShopperID_UNIQUE` (`ShopperID`),
  UNIQUE KEY `S_email_UNIQUE` (`S_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopper`
--

LOCK TABLES `shopper` WRITE;
/*!40000 ALTER TABLE `shopper` DISABLE KEYS */;
INSERT INTO `shopper` VALUES (1,'Komal Khatri',9461094737,'KomalKhatri3','komal@gmail.com'),(2,'Akshita Agrawal',9456321756,'Akshira2','akshita@gmail.com'),(3,'Ramji Choudhary',8765432109,'Ramji2','Ramji1@gmail.com'),(4,'Surbhi Singh',9460094737,'Surbhi3','surbhi@gmail.com'),(5,'Shubham Joshi',9087654321,'shubham1','shubham@gmail.com'),(6,'Vaibhav Gautam',8764182526,'vaibhav3','vaibhav@gmail.com'),(7,'Pratiksha Jain',8209035061,'prati20','pratij20@gmail.com');
/*!40000 ALTER TABLE `shopper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `Product_Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `Prod_Cat_Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Prod_Cat_Id`),
  KEY `Product_Id` (`Product_Id`),
  KEY `Category_Id` (`Category_Id`),
  CONSTRAINT `Category_Id` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Category_Id`),
  CONSTRAINT `Product_Id1` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,7,1),(2,6,2),(3,6,3),(4,10,4),(5,5,5),(6,5,6),(7,9,7),(1,3,8),(1,6,9),(1,2,10),(2,5,12),(3,3,13),(2,3,14),(4,2,15);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL AUTO_INCREMENT,
  `Product_Id` int(11) NOT NULL,
  `Shopper_Id` int(11) NOT NULL,
  `quatnity` int(11) NOT NULL,
  PRIMARY KEY (`idCart`),
  KEY `Product_Id` (`Product_Id`),
  KEY `Shopper_Id` (`Shopper_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Shopper_Id` int(11) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `Address Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Address Id`),
  KEY `Shopper_Id` (`Shopper_Id`),
  CONSTRAINT `Shopper_Id` FOREIGN KEY (`Shopper_Id`) REFERENCES `shopper` (`ShopperID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Jaipur','Rajasthan','Sitapura',1),(2,'SGNR','RAJ','VINOBA BASTI',2),(2,'JAIPUR','RAJ','METACUBE',3),(3,'bhopal','mp','street 2',4),(4,'mumbai','MH','strreet 3',5),(4,'jaipur','RAJ','Metacube',6),(5,'Kanpur','UP','street 4',7),(6,'Ahmedabad','GJ','street 3',8),(7,'HNMG','RAJ','street 4',9);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_product` (
  `Order_Id` int(11) NOT NULL,
  `Product_Id` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Product_Order_Id` int(11) NOT NULL AUTO_INCREMENT,
  `product_price` int(11) NOT NULL,
  PRIMARY KEY (`Product_Order_Id`),
  UNIQUE KEY `Product_Order_Id_UNIQUE` (`Product_Order_Id`),
  KEY `Order_Id` (`Order_Id`),
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `Order_Id` FOREIGN KEY (`Order_Id`) REFERENCES `order` (`Order_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,'Shipped',1,500),(1,2,'Initial',2,500),(2,1,'Shipped',3,200),(2,2,'Shipped',4,100),(43,1,'Shipped',5,500),(43,2,'Initial',6,500),(43,1,'Shipped',7,500),(44,1,'Initial',8,200),(45,1,'Shipped',9,500),(46,5,'Shipped',10,500),(46,1,'Initial',11,500),(47,1,'Shipped',12,500),(47,1,'Shipped',13,500),(47,1,'Shipped',14,500),(48,1,'Initial',15,500),(48,1,'Shipped',16,500),(49,5,'Shipped',17,1500),(49,3,'Shipped',18,500),(50,1,'Initial',19,500),(50,1,'Shipped',20,500),(51,1,'Shipped',21,500),(51,1,'Shipped',22,500),(1,1,'Shipped',23,500),(1,2,'Cancelled',24,500),(2,1,'Cancelled',25,200),(2,2,'Shipped',26,100),(43,1,'Shipped',27,500),(43,2,'Cancelled',28,500),(43,1,'Shipped',29,500),(44,1,'Initial',30,200),(45,1,'Cancelled',31,500),(46,5,'Shipped',32,500),(46,1,'Initial',33,500),(47,1,'Cancelled',34,500),(47,1,'Cancelled',35,500),(47,1,'Shipped',36,500),(48,1,'Cancelled',37,500),(48,1,'Shipped',38,500),(49,5,'Cancelled',39,1500),(49,3,'Shipped',40,500),(50,1,'Initial',41,500),(50,1,'Cancelled',42,500),(51,1,'Shipped',43,500),(51,1,'Shipped',44,500),(1,2,'Shipped',45,500),(1,2,'Cancelled',46,500),(2,5,'Cancelled',47,200),(2,2,'Shipped',48,100),(43,4,'Shipped',49,500),(43,4,'Cancelled',50,500),(43,4,'Shipped',51,500),(44,1,'Initial',52,200),(45,1,'Cancelled',53,500),(46,4,'Shipped',54,500),(46,6,'Initial',55,500),(47,7,'Cancelled',56,500),(47,7,'Cancelled',57,500),(47,1,'Shipped',58,500),(48,8,'Cancelled',59,500),(48,8,'Shipped',60,500),(49,8,'Cancelled',61,1500),(49,9,'Shipped',62,500),(50,4,'Initial',63,500),(50,4,'Cancelled',64,500),(51,4,'Shipped',65,500),(51,1,'Shipped',66,500);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `Order_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Shopper_Id` int(11) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Date_order` date NOT NULL,
  `Date_deliver` date DEFAULT NULL,
  `Order_cost` int(11) NOT NULL,
  PRIMARY KEY (`Order_Id`),
  UNIQUE KEY `Order_Id_UNIQUE` (`Order_Id`),
  KEY `Shopper_Id` (`Shopper_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'Shipped','2018-08-15',NULL,1000),(2,3,'Shipped','2018-08-14',NULL,200),(3,6,'Initial','2018-08-14',NULL,10000),(4,7,'Shipped','2018-08-14',NULL,3000),(5,1,'Initial','2018-08-14',NULL,1999),(6,3,'Initial','2018-08-13',NULL,999),(7,5,'Shipped','2018-08-13',NULL,199),(8,3,'Shipped','2018-08-13',NULL,10000),(9,2,'Shipped','2018-08-13',NULL,15000),(10,7,'Initial','2018-08-12',NULL,1300),(11,3,'Shipped','2018-08-12',NULL,1934),(12,2,'Shipped','2018-08-12',NULL,1987),(13,1,'Shipped','2018-08-12',NULL,109),(14,3,'Initial','2018-08-11',NULL,102),(15,4,'Shipped','2018-08-11',NULL,190),(16,5,'Initial','2018-08-11',NULL,120),(17,6,'Shipped','2018-08-11',NULL,1000),(18,7,'Initial','2018-08-11',NULL,1500),(19,2,'Shipped','2018-08-11',NULL,1200),(20,1,'Shipped','2018-08-11',NULL,1700),(21,3,'Initial','2018-08-11',NULL,10000),(22,4,'Shipped','2018-08-10',NULL,10011),(23,5,'Shipped','2018-08-10',NULL,1004),(24,6,'Shipped','2018-08-10',NULL,3000),(25,1,'Initial','2018-08-10',NULL,3200),(26,3,'Shipped','2018-08-09',NULL,3100),(27,4,'Shipped','2018-08-09',NULL,4300),(28,6,'Shipped','2018-08-09',NULL,5400),(29,7,'Shipped','2018-08-09',NULL,1200),(30,5,'Initial','2018-08-09',NULL,2900),(31,5,'Shipped','2018-08-09',NULL,4500),(32,3,'Shipped','2018-08-09',NULL,3400),(33,2,'Initial','2018-08-08',NULL,19000),(34,1,'Shipped','2018-08-08',NULL,2100),(35,1,'Shipped','2018-08-08',NULL,999),(36,1,'Shipped','2018-08-08',NULL,9999),(37,1,'Shipped','2018-08-04',NULL,1234),(38,2,'Shipped','2018-08-04',NULL,1234),(39,2,'Initial','2018-08-04',NULL,145),(40,3,'Shipped','2018-08-04',NULL,1234),(41,4,'Initial','2018-08-04',NULL,1786),(42,5,'Shipped','2018-08-04',NULL,1123),(43,3,'Shipped','2018-08-04',NULL,1111),(44,3,'Initial','2018-08-04',NULL,4599),(45,5,'Shipped','2018-08-03',NULL,5999),(46,7,'Shipped','2018-08-03',NULL,12999),(47,7,'Initial','2018-08-03',NULL,12543),(48,7,'Shipped','2018-08-03',NULL,1100),(49,7,'Initial','2018-08-02',NULL,1700),(50,5,'Shipped','2018-07-31',NULL,1800),(51,6,'Shipped','2018-07-31',NULL,1200),(52,6,'Shipped','2018-07-31',NULL,1500),(53,6,'Initial','2018-07-29',NULL,1700),(54,1,'Shipped','2018-07-29',NULL,1000),(55,4,'Shipped','2018-07-29',NULL,1400),(56,2,'Shipped','2018-07-14',NULL,1400),(57,2,'Shipped','2018-07-04',NULL,1000),(58,2,'Shipped','2018-07-04',NULL,10000),(59,7,'Initial','2018-07-02',NULL,1100),(60,3,'Shipped','2018-07-02',NULL,1100),(61,3,'Initial','2018-07-02',NULL,1010),(62,3,'Shipped','2018-07-02',NULL,190),(63,3,'Initial','2018-08-17',NULL,200),(64,6,'Initial','2018-08-17',NULL,10000),(65,7,'Initial','2018-08-17',NULL,3000),(66,1,'Initial','2018-08-17',NULL,1999),(67,3,'Initial','2018-08-17',NULL,999),(68,5,'Initial','2018-08-17',NULL,199),(69,3,'Initial','2018-08-17',NULL,10000),(70,2,'Initial','2018-08-17',NULL,15000),(71,7,'Initial','2018-08-17',NULL,1300),(72,3,'Initial','2018-08-17',NULL,1934),(73,2,'Initial','2018-08-17',NULL,1987),(74,1,'Initial','2018-08-17',NULL,109),(75,3,'Initial','2018-08-17',NULL,102),(76,4,'Initial','2018-08-17',NULL,190),(77,5,'Initial','2018-08-17',NULL,120),(78,6,'Initial','2018-08-17',NULL,1000),(79,3,'Initial','2018-08-17',NULL,200),(80,6,'Initial','2018-08-17',NULL,10000),(81,7,'Initial','2018-08-17',NULL,3000),(82,1,'Initial','2018-08-17',NULL,1999),(83,3,'Initial','2018-08-17',NULL,999),(84,5,'Initial','2018-08-17',NULL,199),(85,3,'Initial','2018-08-17',NULL,10000),(86,2,'Initial','2018-08-17',NULL,15000),(87,7,'Initial','2018-08-17',NULL,1300),(88,3,'Initial','2018-08-17',NULL,1934),(89,2,'Initial','2018-08-17',NULL,1987),(90,1,'Initial','2018-08-17',NULL,109),(91,3,'Initial','2018-08-17',NULL,102),(92,4,'Initial','2018-08-17',NULL,190),(93,5,'Initial','2018-08-17',NULL,120),(94,6,'Initial','2018-08-17',NULL,1000);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `Product_Id` int(11) NOT NULL,
  `Available_Quantity` float DEFAULT NULL,
  `Adding_Date` date NOT NULL,
  `Stock_Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Stock_Id`),
  UNIQUE KEY `Product_Id_UNIQUE` (`Product_Id`),
  KEY `Product_ID` (`Product_Id`),
  KEY `Product_Key` (`Product_Id`),
  CONSTRAINT `Product_Key` FOREIGN KEY (`Product_Id`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,100,'2018-08-16',2),(2,200,'2018-08-15',3),(3,45,'2018-08-14',4),(4,300,'2018-08-15',5),(5,200,'2018-08-15',6),(6,20,'2018-08-15',7),(7,0,'2018-08-16',8);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-17 19:31:52
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-17 19:31:52
