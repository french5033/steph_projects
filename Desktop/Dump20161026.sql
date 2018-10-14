-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: collegewebserver.com    Database: sfrench_registration
-- ------------------------------------------------------
-- Server version	5.5.51-38.2

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
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `product_key` int(11) NOT NULL,
  `product_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `product_location` varchar(45) CHARACTER SET utf8 NOT NULL,
  `product_buyer` varchar(45) CHARACTER SET utf8 NOT NULL,
  `product_seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (100,'Build-a-Bear','Anaheim','Plushie',5000),(125,'Sephora','Anaheim','Blush Powder',4394),(150,'Disney Store','Anaheim','Mickey Mouse Cup',3594),(200,'ESPN Zone','Anaheim','Hot Dog Plate',4592),(250,'Lego Store','Anaheim','Lego Star Wars',5920),(300,'Sanuk Store','Anaheim','Flipflops',4505),(135,'Sephora','Anaheim','Eyeliner',3929),(145,'Sephora','Anaheim','Foundation Powder',2939),(105,'Build-a-Bear','Anaheim','Ewok Stuffie',3020),(110,'Build-a-Bear','Anaheim','Pikachu Stuffie',2040);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT_TYPE`
--

DROP TABLE IF EXISTS `PRODUCT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT_TYPE` (
  `product_type` int(11) NOT NULL,
  `COSMETICS` varchar(45) CHARACTER SET utf8 NOT NULL,
  `RESTAURANTS/CAFES` varchar(45) CHARACTER SET utf8 NOT NULL,
  `KIDS TOYS` varchar(45) CHARACTER SET utf8 NOT NULL,
  `CLOTHING` varchar(45) CHARACTER SET utf8 NOT NULL,
  `JEWELRY` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`product_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT_TYPE`
--

LOCK TABLES `PRODUCT_TYPE` WRITE;
/*!40000 ALTER TABLE `PRODUCT_TYPE` DISABLE KEYS */;
INSERT INTO `PRODUCT_TYPE` VALUES (83939,'Sephora','Rainforest Cafe','Lego Store','Disney Store','claires'),(83940,'Ulta','ESPN Zone','Lego Store','Disney Store','Kevin Jewelers');
/*!40000 ALTER TABLE `PRODUCT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `PRODUCT_ID` int(11) NOT NULL,
  `Clarinet` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Trombone` varchar(45) CHARACTER SET utf8 NOT NULL,
  `FLUTE` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (0,'Jupiter','Bach',''),(1,'Hachimitsu','Corona','Heidelberg');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 22:02:24
