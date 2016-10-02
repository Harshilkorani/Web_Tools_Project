-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: sports
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Cricket'),(2,'Tennis'),(6,'Baseball'),(7,'Soccer'),(8,'Basketball'),(9,'Volleyball');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  CONSTRAINT `FK_pfmbgp1qy1etgdmnfbkivgcet` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1),(21),(22),(23),(24),(25),(26);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_Date` varchar(45) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'26081989',1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,100,2,1);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_img` tinyblob,
  PRIMARY KEY (`product_id`),
  KEY `FK_6oweamgjibmex1v06bgk59asd` (`category_id`),
  KEY `FK_eqysyfplsnj6h1xecn2ewy0jp` (`user_id`),
  CONSTRAINT `FK_6oweamgjibmex1v06bgk59asd` FOREIGN KEY (`category_id`) REFERENCES `category` (`CATEGORY_ID`),
  CONSTRAINT `FK_eqysyfplsnj6h1xecn2ewy0jp` FOREIGN KEY (`user_id`) REFERENCES `supplier` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Willow','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\c2.jpg','Reebok Bat',30,1,NULL,NULL),(2,'Lawn Tennis Ball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\tb1.jpg','Tennis Ball',5,2,NULL,NULL),(3,'Bat is very Awesome. Light weighted.','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\c13.jpg','Mangoose Cricket Bat',50,1,NULL,NULL),(5,'This ball is made such that it is more visible during night','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\cb6.jpg','Pink Season Ball',10,1,3,NULL),(6,'This Ball is used in the US Open','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\tb3.jpg','Tennis Ball',10,2,20,NULL),(7,'Complete Baseball Kit','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bb3.jpg','Baseball Kit',200,6,20,NULL),(8,'Awesome Nike Red Color Bat','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bb8.jpg','Nike Baseball Bat',80,6,20,NULL),(9,'Professional Baseball ball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bb1.jpg','Baseball Ball',10,6,20,NULL),(10,'Easton Baseball bat','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bb9.jpg','Baseball Bat',60,6,20,NULL),(11,'Cristiano Soccer Studs','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s12.jpg','Soccer Studs',250,7,20,NULL),(12,'Official Barclays Premier League Football','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s4.jpg','Football',25,7,20,NULL),(13,'Awesome Champions League Ball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s8.jpg','Adidas Soccer Ball',50,7,20,NULL),(14,'Shiny Blue Soccer Studs','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s10.jpg','Soccer Studs',100,7,20,NULL),(15,'Amazing Adidas Indoor Soccer Shoes','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s9.jpg','Soccer Shoes Indoor',85,7,20,NULL),(16,'Lionel Messi Soccer Studs','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s11.jpg','Soccer Studs',150,7,20,NULL),(17,'Spalding Professional Basketball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bk1.jpg','Basketball',35,8,20,NULL),(19,'Nike Blue Color Shoes for Men','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bk8.jpg','Basketball Shoes',125,8,20,NULL),(20,'Professional NCAA Basketball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bk2.jpg','Wilson NCAA Basketball',45,8,20,NULL),(21,'Professional Black Basketball Shoes for Men','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bk6.jpg','Basketball Shoes',95,8,20,NULL),(22,'Professional Volleyball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\vo1.jpg','Volleyball',25,9,20,NULL),(23,'Professional Tachikara Coloured Volleyball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\vo3.jpg','Tachikara Volleyball',35,9,20,NULL),(24,'Amazing Volleyball to play on Beach','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\vo7.jpg','Molten Beach Vollyeball',20,9,20,NULL),(25,'Amazing Volleyball to play on Beach','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\vo8.jpg','Colourful Beach Vollyeball',25,9,20,NULL),(26,'Amazing Tennis Professional Racket','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\tr5.jpg','Tennis Racket',50,2,20,NULL),(27,'Ferrari Tennis Racket Signed By Michael Schumacher','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\tr7.jpg','Ferrari Tennis Racket',75,2,20,NULL),(28,'Molten Professional Basketball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\bk3.jpg','Basketball',20,8,20,NULL),(29,'Nike Mercurial Venom Green Soccer Studs','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\s1.jpg','Soccer Studs',80,7,20,NULL),(30,'White Cricket Ball','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\cb5.jpg','Cricket Ball',20,1,20,NULL),(31,'Nice Bat','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\c6.jpg','Cricket Bat',50,1,20,NULL),(32,'Sachins autographed Bat','C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages\\c15.jpg','Adidas Cricket Bat',50,1,20,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  CONSTRAINT `FK_ft62t9y6turw0f5mryksas0rw` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (2),(3),(4),(5),(18),(19),(20),(27);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'korani.v@husky.neu.edu','Vivek','Korani','vivek','Customer','vivek'),(2,'korani.b@husky.neu.edu','Bhavesh','Korani','bhavesh','Supplier','bhavesh'),(3,'harshil.korani@gmail.com','Harshil','Korani','Korani',NULL,'Harshil'),(4,'amit.tanwade@gmail.com','Amit','Tanawade','Tanawade@Amit',NULL,'Amit'),(5,'Vivek.korani@gmail.com','Vivek','Korani','harshil','Supplier','Vivek'),(18,'karan.mehta@gmail.com','Karan','Mehta','Karan','Supplier','Karan'),(19,'karan.mehta@gmail.com','Karan','Mehta','karan','Supplier','Karan'),(20,'amit.tanawade@gmail.com','Amit','Tanawade','Amit','Supplier','Amit'),(21,'yash.shah@gmail.com','Yash','Shah','Yash@123','Customer','Yash'),(22,'ankit@gmail.com','Ankit','Kothari','ankit','Customer','ankit'),(23,'','','','','Customer',''),(24,'svkorani@gmail.com','Shashikant','Korani','Shashikant','Customer','Shashikant'),(25,'anna@gmail.com','Anna','Su','Anna','Customer','Anna'),(26,'abc@gmail.com','abc','abc','abc','Customer','abc'),(27,'h@gmail.com','h','h','h','Supplier','h');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-24 16:49:45
