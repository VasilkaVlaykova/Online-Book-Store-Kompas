CREATE DATABASE  IF NOT EXISTS `onlinebookstorekompas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinebookstorekompas`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebookstorekompas
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ID_Admin` varchar(30) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  PRIMARY KEY (`ID_Admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--
-- ORDER BY:  `ID_Admin`

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`ID_Admin`, `Full_Name`, `Address`, `Email`, `Phone`) VALUES ('A1','Mark Ken','London, 4 Dalston Road, E11 7HZ','mark@yahoo.com','075001371');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `ISBN_BOOKS` int NOT NULL AUTO_INCREMENT,
  `Name_Book` varchar(100) NOT NULL,
  `Auther` varchar(100) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `ID_BooksReview` int DEFAULT NULL,
  PRIMARY KEY (`ISBN_BOOKS`),
  KEY `ID_BooksReview` (`ID_BooksReview`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`ID_BooksReview`) REFERENCES `booksreview` (`ID_BooksReview`)
) ENGINE=InnoDB AUTO_INCREMENT=1355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--
-- ORDER BY:  `ISBN_BOOKS`

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`ISBN_BOOKS`, `Name_Book`, `Auther`, `Price`, `ID_BooksReview`) VALUES (1350,'The History of Tom Jones','Andrew Miller',4.50,100),(1351,'Petter Pan','J.M.Barrie',6.00,101),(1352,'Harry Potter and Chamber of Secrets','J.K.Rowling',13.60,102),(1353,'The Jungle','Upton Siclair',10.50,103),(1354,'The Da Vinche Code','Dan Brown',7.80,104);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booksreview`
--

DROP TABLE IF EXISTS `booksreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booksreview` (
  `ID_BooksReview` int NOT NULL AUTO_INCREMENT,
  `Rating` enum('1 STARS','2 STARS','3 STARS','4 STARS','5 STARS') DEFAULT NULL,
  `Text_Review` mediumtext,
  `ID_Customer` int DEFAULT NULL,
  PRIMARY KEY (`ID_BooksReview`),
  KEY `ID_Customer` (`ID_Customer`),
  CONSTRAINT `booksreview_ibfk_1` FOREIGN KEY (`ID_Customer`) REFERENCES `customers` (`ID_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booksreview`
--
-- ORDER BY:  `ID_BooksReview`

LOCK TABLES `booksreview` WRITE;
/*!40000 ALTER TABLE `booksreview` DISABLE KEYS */;
INSERT INTO `booksreview` (`ID_BooksReview`, `Rating`, `Text_Review`, `ID_Customer`) VALUES (100,'5 STARS','Amazing book',2),(101,'4 STARS','Very Interesting book',4),(102,'5 STARS','Super interesting book',5),(103,'3 STARS',' Not too bad book',3),(104,'5 STARS','Good book',1);
/*!40000 ALTER TABLE `booksreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `ID_Branches` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `ID_Manager` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Branches`),
  KEY `ID_Manager` (`ID_Manager`),
  CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`ID_Manager`) REFERENCES `managers` (`ID_Manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--
-- ORDER BY:  `ID_Branches`

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`ID_Branches`, `Name`, `Address`, `Phone`, `ID_Manager`) VALUES ('B1','Stratford','London, 16 Jubilly Road, 7GP 1AD','075334556','M1'),('B2','Barking','London, 7 Red Road, E17 4SB','075229223','M2');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID_Category` int NOT NULL AUTO_INCREMENT,
  `Category_Name` set('Romance','Fantasy','Adventure','Mystery','Thriller') DEFAULT NULL,
  `Publisher` varchar(100) NOT NULL,
  `Year` year DEFAULT NULL,
  `Age_Group` enum('kids','adults','teens') DEFAULT NULL,
  `ISBN_Books` int DEFAULT NULL,
  PRIMARY KEY (`ID_Category`),
  KEY `ISBN_Books` (`ISBN_Books`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`ISBN_Books`) REFERENCES `books` (`ISBN_BOOKS`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--
-- ORDER BY:  `ID_Category`

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ID_Category`, `Category_Name`, `Publisher`, `Year`, `Age_Group`, `ISBN_Books`) VALUES (225,'Romance','New York',2002,'adults',1350),(226,'Adventure','Onells',1991,'kids',1351),(227,'Adventure,Mystery','Levine Books',1995,'teens',1352),(228,'Adventure,Thriller','Penguin',1985,'adults',1353),(229,'Adventure,Mystery','Doubleday',2003,'adults',1354);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerbooksrating`
--

DROP TABLE IF EXISTS `customerbooksrating`;
/*!50001 DROP VIEW IF EXISTS `customerbooksrating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerbooksrating` AS SELECT 
 1 AS `Full_Name`,
 1 AS `Rating`,
 1 AS `Text_Review`,
 1 AS `Name_Book`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customerlog`
--

DROP TABLE IF EXISTS `customerlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerlog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(100) DEFAULT NULL,
  `update_Date` datetime DEFAULT NULL,
  `type_OfAction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerlog`
--
-- ORDER BY:  `ID`

LOCK TABLES `customerlog` WRITE;
/*!40000 ALTER TABLE `customerlog` DISABLE KEYS */;
INSERT INTO `customerlog` (`ID`, `Customer_Name`, `update_Date`, `type_OfAction`) VALUES (1,'Maickel Dash','2024-04-20 14:36:56','Insert new Customer');
/*!40000 ALTER TABLE `customerlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `ID_Customer` int NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  PRIMARY KEY (`ID_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--
-- ORDER BY:  `ID_Customer`

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`ID_Customer`, `Full_Name`, `Address`, `Email`, `Phone`) VALUES (1,'Peter Oen','London, 12 Seven Road, 4S 6Z','peter@yahoo.com','075357453'),(2,'Vasilka Vlaykova','London, 13 Down Road, E17 46Z','vasilka@yahoo.com','074385451'),(3,'Salama Husein','Kent, 3 Sister Road, E8 54Z','salama@yahoo.com','073785385'),(4,'Daniela May','London, 3 Coner Road, 7ZP 45H','daniela@yahoo.com','075889789'),(5,'Zara Olsen','London, 4 Tomas Court, E10 34L','zara@yahoo.com','074445345'),(6,'Gary Oneil','london 12 Fresh Road, E13 7GD','gary@yahoo.com','074291329'),(10,'Maickel Dash','London,12 Darsen Road, E11 7GS','maickel@yahoo.com','213765');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterCustomerInsert` AFTER INSERT ON `customers` FOR EACH ROW INSERT INTO CustomerLog
SET Customer_Name=New.Full_Name,
update_Date =NOW(),
type_OfAction = 'Insert new Customer' */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `ID_Manager` varchar(30) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  PRIMARY KEY (`ID_Manager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--
-- ORDER BY:  `ID_Manager`

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` (`ID_Manager`, `Full_Name`, `Address`, `Email`, `Phone`) VALUES ('M1','Janaet Bar','London,35 Cooper Road, E5 3GS','janet@yahoo.com','075777679'),('M2','Sam Smit','London, 17 Tolsan Street, E8 7GR','sam@yahoo.com','075888352');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlinebookstore`
--

DROP TABLE IF EXISTS `onlinebookstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlinebookstore` (
  `ID_Bookstore` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `ID_Admin` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Bookstore`),
  KEY `ID_Admin` (`ID_Admin`),
  CONSTRAINT `onlinebookstore_ibfk_1` FOREIGN KEY (`ID_Admin`) REFERENCES `admin` (`ID_Admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlinebookstore`
--
-- ORDER BY:  `ID_Bookstore`

LOCK TABLES `onlinebookstore` WRITE;
/*!40000 ALTER TABLE `onlinebookstore` DISABLE KEYS */;
INSERT INTO `onlinebookstore` (`ID_Bookstore`, `Email`, `Phone`, `ID_Admin`) VALUES ('OB','onlinebookstore@yahoo.com','073221005','A1');
/*!40000 ALTER TABLE `onlinebookstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID_Order` int NOT NULL AUTO_INCREMENT,
  `Items` varchar(100) NOT NULL,
  `Quantities` int NOT NULL,
  `Amount` decimal(8,2) NOT NULL,
  `Date` date DEFAULT NULL,
  `ISBN_Books` int DEFAULT NULL,
  `ID_Customer` int DEFAULT NULL,
  PRIMARY KEY (`ID_Order`),
  KEY `ISBN_Books` (`ISBN_Books`),
  KEY `ID_Customer` (`ID_Customer`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ISBN_Books`) REFERENCES `books` (`ISBN_BOOKS`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ID_Customer`) REFERENCES `customers` (`ID_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--
-- ORDER BY:  `ID_Order`

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`ID_Order`, `Items`, `Quantities`, `Amount`, `Date`, `ISBN_Books`, `ID_Customer`) VALUES (1000,'book',1,4.50,'2023-05-17',1350,2),(1001,'book',1,6.00,'2024-06-23',1351,4),(1002,'book',1,13.60,'2024-07-28',1352,5),(1003,'book',1,10.50,'2024-09-20',1353,3),(1004,'book',1,7.80,'2024-09-25',1354,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID_Payment` int NOT NULL AUTO_INCREMENT,
  `Method_Payment` enum('debit card','credit card','paypal') DEFAULT NULL,
  `Complete_Price` decimal(8,2) NOT NULL,
  `ID_Order` int DEFAULT NULL,
  `ID_Customer` int DEFAULT NULL,
  PRIMARY KEY (`ID_Payment`),
  KEY `ID_Order` (`ID_Order`),
  KEY `ID_Customer` (`ID_Customer`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ID_Order`) REFERENCES `orders` (`ID_Order`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`ID_Customer`) REFERENCES `customers` (`ID_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=4010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--
-- ORDER BY:  `ID_Payment`

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`ID_Payment`, `Method_Payment`, `Complete_Price`, `ID_Order`, `ID_Customer`) VALUES (4005,'debit card',4.50,1000,2),(4006,'credit card',6.00,1001,4),(4007,'paypal',13.60,1002,5),(4008,'debit card',10.50,1003,3),(4009,'paypal',7.80,1004,1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `ID_Shipping` int NOT NULL AUTO_INCREMENT,
  `Method_Shipping` enum('free delivery','courier','click-colect') DEFAULT NULL,
  `ID_Payment` int DEFAULT NULL,
  `ID_Customer` int DEFAULT NULL,
  PRIMARY KEY (`ID_Shipping`),
  KEY `ID_Payment` (`ID_Payment`),
  KEY `ID_Customer` (`ID_Customer`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`ID_Payment`) REFERENCES `payment` (`ID_Payment`),
  CONSTRAINT `shipping_ibfk_2` FOREIGN KEY (`ID_Customer`) REFERENCES `customers` (`ID_Customer`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--
-- ORDER BY:  `ID_Shipping`

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
INSERT INTO `shipping` (`ID_Shipping`, `Method_Shipping`, `ID_Payment`, `ID_Customer`) VALUES (505,'free delivery',4005,2),(506,'click-colect',4006,4),(507,'courier',4007,5),(508,'free delivery',4008,3),(509,'courier',4009,1);
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `ID_Staff` varchar(30) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `ID_Manager` varchar(30) DEFAULT NULL,
  `ID_Branches` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Staff`),
  KEY `ID_Manager` (`ID_Manager`),
  KEY `ID_Branches` (`ID_Branches`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`ID_Manager`) REFERENCES `managers` (`ID_Manager`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`ID_Branches`) REFERENCES `branches` (`ID_Branches`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--
-- ORDER BY:  `ID_Staff`

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`ID_Staff`, `Full_Name`, `Address`, `Email`, `Phone`, `ID_Manager`, `ID_Branches`) VALUES ('S1','Maria Tom','Loondon, 1 Clifton Road, 7PH 1AO','maria@yahoo.com','075225325','M1','B2'),('S2','Samanta Pierson','London, 4 Can Court, E15 7GA','samanta@yahoo.com','073115611','M2','B1'),('S3','Katrin Colan','London, 8 Jan Road, E7 8GP','katrin@yahoo.com','075313414','M1','B2'),('S4','Omar  Dell','London, 17 Tan Road, E15 4ZP','omar@yahoo.com','072773756','M2','B1');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'onlinebookstorekompas'
--

--
-- Dumping routines for database 'onlinebookstorekompas'
--
/*!50003 DROP FUNCTION IF EXISTS `LineTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `LineTotal`(Amount DECIMAL,Quantities INT) RETURNS decimal(8,2)
    DETERMINISTIC
BEGIN
DECLARE LineTotal DECIMAL(8,2);
SET LineTotal = Amount*Quantities;
RETURN LineTotal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_customers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_customers`()
BEGIN
SELECT * FROM Customers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customerbooksrating`
--

/*!50001 DROP VIEW IF EXISTS `customerbooksrating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerbooksrating` AS select `c`.`Full_Name` AS `Full_Name`,`r`.`Rating` AS `Rating`,`r`.`Text_Review` AS `Text_Review`,`b`.`Name_Book` AS `Name_Book`,`b`.`Price` AS `Price` from ((`customers` `c` join `booksreview` `r` on((`c`.`ID_Customer` = `r`.`ID_Customer`))) join `books` `b` on((`r`.`ID_BooksReview` = `b`.`ID_BooksReview`))) */;
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

-- Dump completed on 2024-05-04  8:11:03
