-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sdg9
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `CountryName` varchar(100) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `IncomeLevel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','Asia','Low'),(2,'Albania','Europe','Upper Middle'),(3,'Algeria','Africa','Upper Middle'),(4,'Andorra','Europe','High'),(5,'Angola','Africa','Low'),(6,'Argentina','South America','Upper Middle'),(7,'Armenia','Asia','Upper Middle'),(8,'Australia','Oceania','High'),(9,'Austria','Europe','High'),(10,'Azerbaijan','Asia','Upper Middle'),(11,'Bahamas','North America','High'),(12,'Bahrain','Asia','High'),(13,'Bangladesh','Asia','Low'),(14,'Barbados','North America','High'),(15,'Belarus','Europe','Upper Middle'),(16,'Belgium','Europe','High'),(17,'Belize','North America','Upper Middle'),(18,'Benin','Africa','Low'),(19,'Bhutan','Asia','Lower Middle'),(20,'Bolivia','South America','Lower Middle'),(21,'Bosnia and Herzegovina','Europe','Upper Middle'),(22,'Botswana','Africa','Upper Middle'),(23,'Brazil','South America','Upper Middle'),(24,'Brunei','Asia','High'),(25,'Bulgaria','Europe','Upper Middle'),(26,'Burkina Faso','Africa','Low'),(27,'Burundi','Africa','Low'),(28,'Cabo Verde','Africa','Upper Middle'),(29,'Cambodia','Asia','Lower Middle'),(30,'Cameroon','Africa','Lower Middle'),(31,'Canada','North America','High'),(32,'Central African Republic','Africa','Low'),(33,'Chad','Africa','Low'),(34,'Chile','South America','High'),(35,'China','Asia','Upper Middle'),(36,'Colombia','South America','Upper Middle'),(37,'Costa Rica','North America','Upper Middle'),(38,'Croatia','Europe','High'),(39,'Cuba','North America','Upper Middle'),(40,'Cyprus','Europe','High'),(41,'Czech Republic','Europe','High'),(42,'Democratic Republic of the Congo','Africa','Low'),(43,'Denmark','Europe','High'),(44,'Djibouti','Africa','Lower Middle'),(45,'Dominican Republic','North America','Upper Middle'),(46,'Ecuador','South America','Upper Middle'),(47,'Egypt','Africa','Lower Middle'),(48,'El Salvador','North America','Upper Middle'),(49,'Equatorial Guinea','Africa','Upper Middle'),(50,'Eritrea','Africa','Low'),(51,'Estonia','Europe','High'),(52,'Eswatini','Africa','Upper Middle'),(53,'Ethiopia','Africa','Low'),(54,'Fiji','Oceania','Upper Middle'),(55,'Finland','Europe','High'),(56,'France','Europe','High'),(57,'Gabon','Africa','Upper Middle'),(58,'Georgia','Asia','Upper Middle'),(59,'Germany','Europe','High'),(60,'Ghana','Africa','Lower Middle'),(61,'Greece','Europe','High'),(62,'Guatemala','North America','Lower Middle'),(63,'Guinea','Africa','Low'),(64,'Guyana','South America','Upper Middle'),(65,'Haiti','North America','Low'),(66,'Honduras','North America','Lower Middle'),(67,'Hungary','Europe','High'),(68,'Iceland','Europe','High'),(69,'India','Asia','Lower Middle'),(70,'Indonesia','Asia','Lower Middle'),(71,'Iran','Asia','Upper Middle'),(72,'Iraq','Asia','Upper Middle'),(73,'Ireland','Europe','High'),(74,'Israel','Asia','High'),(75,'Italy','Europe','High'),(76,'Jamaica','North America','Upper Middle'),(77,'Japan','Asia','High'),(78,'Jordan','Asia','Upper Middle'),(79,'Kazakhstan','Asia','Upper Middle'),(80,'Kenya','Africa','Lower Middle'),(81,'Kuwait','Asia','High'),(82,'Kyrgyzstan','Asia','Lower Middle'),(83,'Laos','Asia','Lower Middle'),(84,'Latvia','Europe','High'),(85,'Lebanon','Asia','Upper Middle'),(86,'Lesotho','Africa','Lower Middle'),(87,'Liberia','Africa','Low'),(88,'Libya','Africa','Upper Middle'),(89,'Lithuania','Europe','High'),(90,'Luxembourg','Europe','High'),(91,'Madagascar','Africa','Low'),(92,'Malawi','Africa','Low'),(93,'Malaysia','Asia','Upper Middle'),(94,'Maldives','Asia','Upper Middle'),(95,'Mali','Africa','Low'),(96,'Malta','Europe','High'),(97,'Mauritania','Africa','Lower Middle'),(98,'Mexico','North America','Upper Middle'),(99,'Moldova','Europe','Lower Middle'),(100,'Monaco','Europe','High'),(101,'Mongolia','Asia','Lower Middle'),(102,'Montenegro','Europe','Upper Middle'),(103,'Morocco','Africa','Upper Middle'),(104,'Mozambique','Africa','Low'),(105,'Myanmar','Asia','Lower Middle'),(106,'Namibia','Africa','Upper Middle'),(107,'Nepal','Asia','Lower Middle'),(108,'Netherlands','Europe','High'),(109,'New Zealand','Oceania','High'),(110,'Nicaragua','North America','Lower Middle'),(111,'Niger','Africa','Low'),(112,'Nigeria','Africa','Lower Middle'),(113,'North Macedonia','Europe','Upper Middle'),(114,'Norway','Europe','High'),(115,'Oman','Asia','High'),(116,'Pakistan','Asia','Lower Middle'),(117,'Panama','North America','Upper Middle'),(118,'Papua New Guinea','Oceania','Lower Middle'),(119,'Paraguay','South America','Upper Middle'),(120,'Peru','South America','Upper Middle'),(121,'Philippines','Asia','Lower Middle'),(122,'Poland','Europe','High'),(123,'Portugal','Europe','High'),(124,'Qatar','Asia','High'),(125,'Romania','Europe','Upper Middle'),(126,'Rwanda','Africa','Lower Middle'),(127,'Saudi Arabia','Asia','High'),(128,'Senegal','Africa','Lower Middle'),(129,'Serbia','Europe','Upper Middle'),(130,'Sierra Leone','Africa','Low'),(131,'Singapore','Asia','High'),(132,'Slovakia','Europe','High'),(133,'Slovenia','Europe','High'),(134,'Solomon Islands','Oceania','Upper Middle'),(135,'Somalia','Africa','Low'),(136,'South Africa','Africa','Upper Middle'),(137,'South Korea','Asia','High'),(138,'South Sudan','Africa','Low'),(139,'Spain','Europe','High'),(140,'Sri Lanka','Asia','Upper Middle'),(141,'Sudan','Africa','Lower Middle'),(142,'Sweden','Europe','High'),(143,'Switzerland','Europe','High'),(144,'Tajikistan','Asia','Lower Middle'),(145,'Tanzania','Africa','Lower Middle'),(146,'Thailand','Asia','Upper Middle'),(147,'Togo','Africa','Low'),(148,'Trinidad and Tobago','North America','High'),(149,'Tunisia','Africa','Upper Middle'),(150,'Turkey','Asia','Upper Middle'),(151,'Turkmenistan','Asia','Upper Middle'),(152,'Uganda','Africa','Lower Middle'),(153,'Ukraine','Europe','Upper Middle'),(154,'United Arab Emirates','Asia','High'),(155,'United Kingdom','Europe','High'),(156,'United States','North America','High'),(157,'Uruguay','South America','Upper Middle'),(158,'Uzbekistan','Asia','Lower Middle'),(159,'Vanuatu','Oceania','Upper Middle'),(160,'Venezuela','South America','Upper Middle'),(161,'Vietnam','Asia','Lower Middle'),(162,'Yemen','Asia','Low'),(163,'Zambia','Africa','Lower Middle'),(164,'Zimbabwe','Africa','Lower Middle');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 22:38:18
