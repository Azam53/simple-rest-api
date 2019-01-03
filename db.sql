-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: erply
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Fashion','Category for anything related to fashion.','2014-06-01 00:35:07','2014-05-30 12:04:33'),(2,'Electronics','Gadgets, drones and more.','2014-06-01 00:35:07','2014-05-30 12:04:33'),(3,'Motors','Motor sports and more','2014-06-01 00:35:07','2014-05-30 12:04:54'),(5,'Movies','Movie products.','2017-02-23 12:34:56','2016-01-08 07:57:26'),(6,'Books','Kindle books, audio books and more.','2017-01-10 10:00:00','2016-01-08 07:57:47'),(13,'Sports','Drop into new winter gear.','2016-01-09 02:24:24','2016-01-08 19:54:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'LG P880 4X HD','My first awesome phone!',336.00,3,'2014-06-01 01:12:26','2014-05-31 11:42:26'),(2,'Google Nexus 4','The most awesome phone of 2013!',299.00,2,'2014-06-01 01:12:26','2014-05-31 11:42:26'),(3,'Samsung Galaxy S4','How about no?',600.00,3,'2014-06-01 01:12:26','2014-05-31 11:42:26'),(6,'Bench Shirt','The best shirt!',29.00,1,'2014-06-01 01:12:26','2014-05-30 20:42:21'),(7,'Lenovo Laptop','My business partner.',399.00,2,'2014-06-01 01:13:45','2014-05-30 20:43:39'),(8,'Samsung Galaxy Tab 10.1','Good tablet.',259.00,2,'2014-06-01 01:14:13','2014-05-30 20:44:08'),(9,'Spalding Watch','My sports watch.',199.00,1,'2014-06-01 01:18:36','2014-05-30 20:48:31'),(10,'Sony Smart Watch','The coolest smart watch!',300.00,2,'2014-06-06 17:10:01','2014-06-05 12:39:51'),(11,'Huawei Y300','For testing purposes.',100.00,2,'2014-06-06 17:11:04','2014-06-05 12:40:54'),(12,'Abercrombie Lake Arnold Shirt','Perfect as gift!',60.00,1,'2014-06-06 17:12:21','2014-06-05 12:42:11'),(13,'Abercrombie Allen Brook Shirt','Cool red shirt!',70.00,1,'2014-06-06 17:12:59','2014-06-05 12:42:49'),(26,'Another product','Awesome product!',555.00,2,'2014-11-22 19:07:34','2014-11-21 14:37:34'),(28,'Wallet','You can absolutely use this one!',799.00,6,'2014-12-04 21:12:03','2014-12-03 16:42:03'),(31,'Amanda Waller Shirt','New awesome shirt!',333.00,1,'2014-12-13 00:52:54','2014-12-11 20:22:54'),(42,'Nike Shoes for Men','Nike Shoes',12999.00,3,'2015-12-12 06:47:08','2015-12-12 00:17:08'),(61,'Amazing Pillow Test 3.9','This is ytest.',280.00,2,'2019-01-02 13:43:52','2019-01-02 08:13:52'),(62,'Cotton Pillow','The best pillow for amazing programmers.',20.00,2,'2019-01-03 13:08:23','2019-01-03 07:38:23'),(64,'Bose Wireless','Good one for campers',24.50,2,'2019-01-03 13:31:51','2019-01-03 08:01:51');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-03 16:17:51
