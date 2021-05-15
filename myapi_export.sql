-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: myapi
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coffee_cups`
--

DROP TABLE IF EXISTS `coffee_cups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coffee_cups` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `amount_cups` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffee_cups`
--

LOCK TABLES `coffee_cups` WRITE;
/*!40000 ALTER TABLE `coffee_cups` DISABLE KEYS */;
INSERT INTO `coffee_cups` VALUES (0,2020,3,1500),(1,2020,4,1800),(2,2020,5,1950),(3,2020,5,6330),(4,2020,7,7221),(5,2020,8,8320),(6,2020,9,7435),(7,2020,10,7382),(8,2020,11,5342),(9,2020,12,9823);
/*!40000 ALTER TABLE `coffee_cups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistic`
--

DROP TABLE IF EXISTS `statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `month` int NOT NULL,
  `value1` int NOT NULL,
  `value2` int NOT NULL,
  `value3` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistic`
--

LOCK TABLES `statistic` WRITE;
/*!40000 ALTER TABLE `statistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_all`
--

DROP TABLE IF EXISTS `statistics_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_all` (
  `id` int NOT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `value1` int DEFAULT NULL,
  `value2` int DEFAULT NULL,
  `value3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_all`
--

LOCK TABLES `statistics_all` WRITE;
/*!40000 ALTER TABLE `statistics_all` DISABLE KEYS */;
INSERT INTO `statistics_all` VALUES (0,2020,1,8320,8,'16'),(1,2020,2,7435,7,'14'),(2,2020,3,6382,6,'12'),(3,2020,4,5342,5,'10'),(4,2020,5,9823,9,'18'),(5,2020,6,8320,8,'16'),(6,2020,7,7435,7,'14'),(7,2020,8,6382,6,'12'),(8,2020,9,5342,5,'10'),(9,2020,10,9823,9,'18'),(10,2020,11,5342,5,'10'),(11,2020,12,9823,9,'18'),(12,2021,1,8320,8,'16'),(13,2021,2,7435,7,'14'),(14,2021,3,6382,6,'12'),(15,2021,4,5342,5,'10'),(16,2021,5,9823,9,'18'),(17,2021,6,8320,8,'16'),(18,2021,7,7435,7,'14'),(19,2021,8,6382,6,'12'),(20,2021,9,5342,5,'10'),(21,2021,10,9823,9,'18'),(22,2021,11,5342,5,'10'),(23,2021,12,9823,9,'18');
/*!40000 ALTER TABLE `statistics_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count_month` int NOT NULL,
  `sum_value1` int NOT NULL,
  `sum_value2` int NOT NULL,
  `sum_value3` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `roles` varchar(45) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `iduser_UNIQUE` (`iduser`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user','pass','ROLE_USER,ROLE_ADMIN',1);
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

-- Dump completed on 2021-05-15 23:43:11
