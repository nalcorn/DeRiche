-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: deriche
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `NoteID` int(255) NOT NULL AUTO_INCREMENT,
  `Text` text NOT NULL,
  `Time_Started` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Last_Updated` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `Time_Submitted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Time_Accepted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Comment` varchar(45) DEFAULT NULL,
  `Submitted` int(10) DEFAULT NULL,
  `TimeReviewer_Accepted` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `NoteReviewer_Accepted` int(10) DEFAULT NULL,
  `ParticipantID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`NoteID`),
  KEY `ParticipantID` (`ParticipantID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `note_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf16le;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (478,'Walking\n\nWalk walk and walk','2016-11-30 03:22:25','0000-00-00 00:00:00','2016-11-30 03:22:01','2016-11-30 03:22:25','',1,'0000-00-00 00:00:00',1,13,73),(479,' Learn alphabet.\n\nA to Z\n\nAlso learn numbers\n\n1 to 100','2016-11-30 04:06:11','0000-00-00 00:00:00','2016-11-30 03:22:41','2016-11-30 04:06:11','',1,'0000-00-00 00:00:00',1,14,73),(480,' Shopping.\n\nWe might need to delete new note','2016-11-30 03:24:44','0000-00-00 00:00:00','2016-11-30 03:24:45','0000-00-00 00:00:00','new note after editing the saved draft',1,'0000-00-00 00:00:00',NULL,15,73),(481,' Walking','2016-12-01 22:03:23','0000-00-00 00:00:00','2016-12-01 22:03:24','0000-00-00 00:00:00','',1,'0000-00-00 00:00:00',NULL,13,73);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-30 13:17:58
