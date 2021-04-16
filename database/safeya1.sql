-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: safeya_dbms
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `assignments`
--

create database safeya_dbms;
use safeya_dbms;

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `ID` mediumint NOT NULL,
  `Complaint_ID` mediumint NOT NULL,
  PRIMARY KEY (`Complaint_ID`),
  KEY `fk1_assignments_idx` (`ID`),
  CONSTRAINT `fk1_assignments` FOREIGN KEY (`ID`) REFERENCES `workers` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (51,88),(53,19),(54,12),(54,28),(54,81),(55,9),(57,15),(58,90),(59,25),(61,13),(65,22),(67,84),(70,7),(70,91),(71,21),(73,14),(73,82),(74,8),(75,92),(76,27),(76,98),(78,10),(82,29),(90,30),(91,3),(92,24),(96,89),(105,95),(114,96),(117,17),(118,86),(120,1),(122,5),(123,20),(125,2),(125,11),(125,87),(130,83),(131,18),(131,85),(132,26),(133,94),(134,6),(135,23),(136,4),(136,93),(137,97),(138,100),(140,16),(147,99);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigns`
--

DROP TABLE IF EXISTS `assigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigns` (
  `Worker_ID` mediumint NOT NULL,
  `FMS_ID` mediumint NOT NULL,
  `Complaint_ID` mediumint NOT NULL,
  PRIMARY KEY (`Complaint_ID`),
  KEY `fk1_idx` (`Worker_ID`),
  KEY `fk2_idx` (`FMS_ID`),
  CONSTRAINT `fk1` FOREIGN KEY (`Worker_ID`) REFERENCES `workers` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk2` FOREIGN KEY (`FMS_ID`) REFERENCES `fms_admin` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk3` FOREIGN KEY (`Complaint_ID`) REFERENCES `complaints` (`Complaint_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigns`
--

LOCK TABLES `assigns` WRITE;
/*!40000 ALTER TABLE `assigns` DISABLE KEYS */;
INSERT INTO `assigns` VALUES (142,9,1),(105,1,2),(142,10,3),(107,10,4),(55,9,5),(146,1,6),(77,10,7),(93,4,8),(94,10,9),(51,4,10),(60,4,11),(92,1,12),(52,10,13),(68,3,14),(109,4,15),(80,10,16),(147,8,17),(128,1,18),(148,2,19),(56,10,20),(64,4,21),(72,8,22),(96,6,23),(79,1,24),(65,5,25),(119,8,26),(131,2,27),(86,3,28),(72,10,29),(96,9,30),(56,8,31),(142,6,32),(105,8,33),(135,7,34),(71,7,35),(69,7,36),(90,1,37),(70,4,38),(137,5,39),(54,10,40),(103,2,41),(104,8,42),(118,1,43),(100,7,44),(126,9,45),(124,10,46),(140,9,47),(127,4,48),(117,3,49),(114,1,50),(96,1,51),(145,6,52),(69,5,53),(51,1,54),(130,9,55),(104,6,56),(75,8,57),(132,4,58),(56,7,59),(108,1,60),(74,7,61),(94,2,62),(63,7,63),(100,4,64),(61,3,65),(124,10,66),(140,10,67),(128,2,68),(149,4,69),(77,6,70),(71,7,81),(84,5,82),(51,8,83),(86,9,84),(135,2,85),(144,3,86),(136,9,87),(64,10,88),(115,1,89),(75,3,90),(99,9,91),(76,2,92),(107,5,93),(111,4,94),(91,7,95),(120,1,96),(89,7,97),(108,10,98),(102,10,99),(85,4,100);
/*!40000 ALTER TABLE `assigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkin`
--

DROP TABLE IF EXISTS `checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkin` (
  `Security_ID` mediumint NOT NULL,
  `visitor_id` mediumint NOT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `Security_ID` (`Security_ID`),
  CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`Security_ID`) REFERENCES `security` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkin`
--

LOCK TABLES `checkin` WRITE;
/*!40000 ALTER TABLE `checkin` DISABLE KEYS */;
INSERT INTO `checkin` VALUES (600,500),(601,501),(602,502),(603,503),(604,504),(605,505),(606,506),(607,507),(608,508),(609,509),(610,510),(611,511),(612,512),(613,513),(614,514),(615,515),(616,516),(617,517),(618,518),(619,519),(620,520),(621,521),(622,522),(623,523),(624,524),(625,525),(626,526),(627,527),(628,528),(629,529),(630,530),(631,531),(632,532),(633,533),(634,534),(635,535),(636,536),(637,537),(638,538),(639,539),(670,570),(671,571),(672,572),(673,573),(674,574),(675,575),(676,576),(677,577),(678,578),(679,579),(680,580),(681,581),(682,582),(683,583),(684,584),(685,585),(686,586),(687,587),(688,588),(689,589),(690,590),(691,591),(692,592),(693,593),(694,594),(695,595),(696,596),(697,597),(698,598),(699,599);
/*!40000 ALTER TABLE `checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `Complaint_ID` mediumint NOT NULL,
  `Category` mediumint NOT NULL,
  `Rating` mediumint DEFAULT NULL,
  `Remarks` text,
  `Start_time` datetime NOT NULL,
  `End_time` datetime DEFAULT NULL,
  `Resolved` mediumint NOT NULL,
  `Location_ID` mediumint NOT NULL,
  `ID` mediumint NOT NULL,
  PRIMARY KEY (`Complaint_ID`),
  KEY `Complaints_ibfk_1` (`Location_ID`),
  CONSTRAINT `Complaints_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (1,3,3,'Lorem ipsum dolor','2021-01-03 02:21:14',NULL,0,189,2015001),(2,4,1,'Lorem ipsum','2021-01-22 12:39:40',NULL,0,241,2015002),(3,3,2,'Lorem','2021-01-14 03:38:05',NULL,2,67,2015003),(4,5,2,'Lorem ipsum dolor','2021-01-26 23:10:41',NULL,0,270,2015004),(5,2,2,'Lorem ipsum dolor','2021-01-19 04:02:51',NULL,0,239,2015005),(6,4,4,'Lorem ipsum','2021-01-04 11:23:42',NULL,0,139,2015006),(7,1,1,'Lorem ipsum','2021-01-12 07:41:25',NULL,0,1,2015007),(8,1,2,'Lorem ipsum','2021-01-25 03:34:46',NULL,0,6,2015008),(9,3,1,'Lorem','2021-01-30 12:26:14',NULL,0,276,2015009),(10,1,1,'Lorem','2021-01-26 02:52:15',NULL,2,237,2015010),(11,1,5,'Lorem ipsum dolor','2021-01-10 12:00:03',NULL,0,67,2015011),(12,1,3,'Lorem ipsum dolor','2021-01-10 04:51:03',NULL,0,39,2015012),(13,2,5,'Lorem ipsum','2021-01-01 12:54:27',NULL,0,90,2015013),(14,4,1,'Lorem','2021-01-14 02:06:48',NULL,0,276,2015014),(15,2,5,'Lorem ipsum dolor','2021-01-02 14:49:27',NULL,0,109,2015015),(16,1,2,'Lorem','2021-01-29 16:28:58',NULL,0,2,2015016),(17,2,4,'Lorem ipsum','2021-01-14 12:12:56',NULL,2,82,2015017),(18,4,2,'Lorem ipsum','2021-01-19 17:18:35',NULL,0,265,2015018),(19,5,4,'Lorem ipsum dolor','2021-01-29 16:04:17',NULL,0,116,2015019),(20,5,3,'Lorem','2021-01-15 04:03:38',NULL,0,214,2015020),(21,4,5,'Lorem ipsum','2021-01-18 20:30:41',NULL,0,29,2015021),(22,5,5,'Lorem ipsum','2021-01-16 13:41:35',NULL,0,198,2015022),(23,2,4,'Lorem','2021-01-02 16:33:59',NULL,0,163,2015023),(24,3,3,'Lorem ipsum dolor','2021-01-16 10:47:58',NULL,0,86,2015024),(25,4,2,'Lorem ipsum','2021-01-01 19:08:28',NULL,2,293,2015025),(26,1,2,'Lorem ipsum dolor','2021-01-24 02:45:09',NULL,0,271,2015026),(27,4,2,'Lorem ipsum','2021-01-05 17:01:49',NULL,0,45,2015027),(28,2,4,'Lorem ipsum dolor','2021-01-01 03:32:49',NULL,0,195,2015028),(29,4,2,'Lorem ipsum','2021-01-14 01:36:24',NULL,0,69,2015029),(30,5,3,'Lorem ipsum dolor','2021-01-05 02:40:35',NULL,0,251,2015030),(31,3,3,'Lorem ipsum','2021-01-06 16:41:54','2021-02-15 10:20:23',1,220,2015031),(32,1,1,'Lorem ipsum','2021-01-23 05:02:49','2021-02-13 14:04:18',1,179,2015032),(33,2,2,'Lorem','2021-01-19 16:09:43',NULL,0,12,2015033),(34,1,4,'Lorem','2021-01-24 02:54:23','2021-02-05 08:26:38',1,217,2015034),(35,3,1,'Lorem','2021-01-02 18:03:45','2021-02-10 02:10:42',1,261,2015035),(36,3,3,'Lorem ipsum dolor','2021-01-07 23:36:17',NULL,0,30,2015036),(37,2,2,'Lorem ipsum','2021-01-02 04:30:19','2021-02-15 16:30:24',1,189,2015037),(38,4,2,'Lorem','2021-01-22 04:23:39','2021-02-10 16:06:28',1,127,2015038),(39,2,5,'Lorem','2021-01-26 20:35:44','2021-02-08 19:41:40',1,289,2015039),(40,1,2,'Lorem ipsum','2021-01-15 17:13:34',NULL,2,219,2015040),(41,1,2,'Lorem','2021-01-22 08:11:06','2021-02-05 00:29:54',1,60,2015041),(42,3,3,'Lorem ipsum','2021-01-02 09:16:06',NULL,0,108,2015042),(43,1,5,'Lorem ipsum','2021-01-22 03:21:05',NULL,0,24,2015043),(44,2,4,'Lorem','2021-01-22 13:08:26','2021-02-03 19:30:42',1,52,2015044),(45,5,1,'Lorem','2021-01-26 10:50:16','2021-02-19 14:48:09',1,226,2015045),(46,4,5,'Lorem ipsum dolor','2021-01-10 11:19:00',NULL,0,54,2015046),(47,4,2,'Lorem','2021-01-23 04:13:32','2021-02-11 13:01:10',1,212,2015047),(48,4,3,'Lorem ipsum dolor','2021-01-18 07:19:38',NULL,0,278,2015048),(49,1,4,'Lorem','2021-01-06 00:16:37','2021-02-02 22:45:03',1,12,2015049),(50,3,3,'Lorem','2021-01-04 16:45:40','2021-02-05 08:36:18',1,82,2015050),(51,3,5,'Lorem ipsum dolor','2021-01-28 20:24:18','2021-02-03 14:42:57',1,187,2015051),(52,5,5,'Lorem ipsum dolor','2021-01-28 05:28:27',NULL,0,35,2015052),(53,4,2,'Lorem ipsum','2021-01-29 23:22:15',NULL,0,249,2015053),(54,2,2,'Lorem ipsum dolor','2021-01-16 05:06:24','2021-02-07 23:34:06',1,147,2015054),(55,1,1,'Lorem ipsum','2021-01-29 02:35:07','2021-02-17 09:11:58',1,13,2015055),(56,5,4,'Lorem ipsum dolor','2021-01-01 10:37:00','2021-02-19 02:32:57',1,211,2015056),(57,1,3,'Lorem ipsum dolor','2021-01-05 04:34:46','2021-02-15 04:45:20',1,91,2015057),(58,5,1,'Lorem ipsum dolor','2021-01-19 08:12:29',NULL,0,252,2015058),(59,5,1,'Lorem','2021-01-15 19:14:03','2021-02-15 20:58:18',1,32,2015059),(60,2,1,'Lorem ipsum dolor','2021-01-08 12:28:33','2021-02-14 15:51:48',1,100,2015060),(61,4,5,'Lorem','2021-01-22 10:07:59','2021-02-09 00:44:28',1,235,2015061),(62,3,5,'Lorem ipsum dolor','2021-01-28 20:26:54',NULL,0,161,2015062),(63,2,2,'Lorem ipsum','2021-01-22 08:15:07','2021-02-11 00:08:19',1,21,2015063),(64,3,4,'Lorem','2021-01-06 20:08:48','2021-02-05 09:55:06',1,114,2015064),(65,1,1,'Lorem ipsum dolor','2021-01-29 15:44:50','2021-02-12 06:13:29',1,144,2015065),(66,5,4,'Lorem ipsum dolor','2021-01-08 07:32:07','2021-02-19 11:19:55',1,189,2015066),(67,2,3,'Lorem ipsum','2021-01-14 00:24:31',NULL,0,32,2015067),(68,5,5,'Lorem ipsum dolor','2021-01-12 14:39:09',NULL,0,113,2015068),(69,2,2,'Lorem ipsum dolor','2021-01-13 01:38:27','2021-02-11 17:50:55',1,230,2015069),(70,3,1,'Lorem ipsum dolor','2021-01-31 07:39:43',NULL,0,284,2015070),(71,5,5,'Lorem','2021-01-10 16:13:34','2021-02-14 07:40:35',1,268,2015071),(72,1,1,'Lorem ipsum','2021-01-31 09:57:14',NULL,0,24,2015072),(73,2,2,'Lorem ipsum','2021-01-15 21:23:35','2021-02-17 15:51:07',1,269,2015073),(74,5,5,'Lorem ipsum dolor','2021-01-29 04:38:40','2021-02-13 01:49:35',1,100,2015074),(75,2,5,'Lorem ipsum','2021-01-09 03:33:14',NULL,0,70,2015075),(76,5,3,'Lorem','2021-01-27 05:32:31','2021-02-10 02:48:42',1,211,2015076),(77,5,1,'Lorem ipsum','2021-01-12 07:32:08','2021-02-02 17:58:02',1,60,2015077),(78,1,4,'Lorem ipsum dolor','2021-01-22 21:18:48','2021-02-18 23:38:13',1,293,2015078),(79,3,4,'Lorem','2021-01-25 01:27:46',NULL,0,102,2015079),(80,5,1,'Lorem','2021-01-29 18:05:52','2021-02-18 05:10:01',1,268,2015080),(81,4,2,'Lorem','2021-01-04 07:13:05',NULL,0,166,2015081),(82,3,4,'Lorem','2021-01-01 12:10:33',NULL,0,209,2015082),(83,5,3,'Lorem ipsum','2021-01-14 00:13:11',NULL,0,5,2015083),(84,5,4,'Lorem ipsum','2021-01-26 03:44:07',NULL,0,8,2015084),(85,3,5,'Lorem ipsum','2021-01-19 15:37:09',NULL,0,3,2015085),(86,5,1,'Lorem ipsum','2021-01-16 19:01:08',NULL,0,214,2015086),(87,2,2,'Lorem','2021-01-01 23:34:35',NULL,0,90,2015087),(88,3,5,'Lorem ipsum dolor','2021-01-28 02:41:42',NULL,0,36,2015088),(89,5,1,'Lorem ipsum','2021-01-29 23:14:59',NULL,0,196,2015089),(90,2,5,'Lorem','2021-01-18 06:43:12',NULL,0,274,2015090),(91,2,5,'Lorem','2021-01-06 23:04:44',NULL,0,256,5),(92,2,5,'Lorem','2021-01-04 12:38:55',NULL,0,5,2015092),(93,4,3,'Lorem','2021-01-28 11:05:11',NULL,0,24,2015093),(94,5,3,'Lorem ipsum dolor','2021-01-12 11:26:19',NULL,0,279,2015094),(95,3,1,'Lorem','2021-01-13 10:25:48',NULL,0,42,2015095),(96,2,1,'Lorem ipsum dolor','2021-01-21 11:59:46',NULL,0,147,2015096),(97,3,2,'Lorem ipsum dolor','2021-01-08 12:52:56',NULL,0,177,2015097),(98,5,4,'Lorem ipsum dolor','2021-01-26 21:11:51',NULL,0,2,2015098),(99,2,2,'Lorem','2021-01-21 21:17:14',NULL,0,162,2015099),(100,3,1,'Lorem ipsum dolor','2021-01-21 22:13:07',NULL,0,44,2015100);
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fms_admin`
--

DROP TABLE IF EXISTS `fms_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fms_admin` (
  `ID` mediumint NOT NULL,
  `last_checked` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_institute` FOREIGN KEY (`ID`) REFERENCES `institute_admins` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fms_admin`
--

LOCK TABLES `fms_admin` WRITE;
/*!40000 ALTER TABLE `fms_admin` DISABLE KEYS */;
INSERT INTO `fms_admin` VALUES (1,'2021-02-02 11:09:47'),(2,'2021-02-02 19:24:53'),(3,'2021-02-12 18:38:38'),(4,'2021-02-02 16:00:39'),(5,'2021-02-13 03:07:44'),(6,'2021-02-13 01:55:04'),(7,'2021-02-02 05:28:40'),(8,'2021-02-13 08:08:09'),(9,'2021-02-02 09:54:08'),(10,'2021-02-05 02:59:15');
/*!40000 ALTER TABLE `fms_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_room`
--

DROP TABLE IF EXISTS `hostel_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel_room` (
  `Location_ID` mediumint NOT NULL,
  `Request_Active` mediumint NOT NULL,
  `Description` text,
  `Last_Cleaned` datetime DEFAULT NULL,
  PRIMARY KEY (`Location_ID`),
  CONSTRAINT `fk_location` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_room`
--

LOCK TABLES `hostel_room` WRITE;
/*!40000 ALTER TABLE `hostel_room` DISABLE KEYS */;
INSERT INTO `hostel_room` VALUES (1,1,'Lorem','2020-11-10 20:59:44'),(2,1,'Lorem ipsum','2020-06-03 05:50:48'),(3,1,'Lorem ipsum dolor sit amet,','2020-10-01 01:31:49'),(4,1,'Lorem ipsum','2020-10-21 07:45:44'),(5,0,'Lorem ipsum dolor sit','2020-06-22 03:59:36'),(6,1,'Lorem ipsum','2020-11-28 04:57:01'),(7,0,'Lorem ipsum dolor sit','2021-01-04 14:55:02'),(8,0,'Lorem ipsum','2021-01-13 15:30:42'),(9,0,'Lorem ipsum dolor','2020-07-09 16:00:47'),(10,0,'Lorem','2020-04-23 21:10:08'),(11,0,'Lorem ipsum dolor sit','2020-09-14 07:55:21'),(12,0,'Lorem ipsum','2020-06-19 13:34:42'),(13,1,'Lorem ipsum dolor sit amet,','2021-01-02 17:54:07'),(14,0,'Lorem ipsum dolor sit','2020-08-01 23:51:28'),(15,1,'Lorem ipsum dolor','2020-12-24 11:39:24'),(16,0,'Lorem','2020-08-01 14:56:17'),(17,0,'Lorem ipsum dolor sit','2020-08-06 09:50:27'),(18,1,'Lorem ipsum dolor','2020-07-26 03:15:58'),(19,1,'Lorem ipsum dolor sit','2020-10-10 17:37:13'),(20,0,'Lorem ipsum dolor sit','2020-09-09 15:45:56'),(21,0,'Lorem ipsum dolor','2020-06-30 20:57:13'),(22,0,'Lorem','2020-10-18 15:24:49'),(23,0,'Lorem ipsum dolor sit','2020-05-14 16:49:28'),(24,0,'Lorem','2020-03-12 21:16:47'),(25,0,'Lorem ipsum dolor sit','2020-12-09 18:04:26'),(26,1,'Lorem ipsum','2021-01-11 02:41:37'),(27,1,'Lorem ipsum','2020-11-03 02:14:32'),(28,1,'Lorem ipsum dolor sit','2020-12-19 15:04:07'),(29,1,'Lorem ipsum dolor sit amet,','2020-12-02 10:43:37'),(30,1,'Lorem ipsum dolor sit amet,','2020-02-25 00:37:00'),(31,0,'Lorem ipsum dolor','2020-05-29 09:10:07'),(32,0,'Lorem ipsum','2020-08-23 06:10:13'),(33,0,'Lorem','2020-03-06 03:07:15'),(34,1,'Lorem ipsum dolor','2020-09-10 15:53:20'),(35,0,'Lorem ipsum','2020-12-17 06:39:27'),(36,0,'Lorem ipsum dolor sit amet,','2020-10-10 04:13:01'),(37,1,'Lorem ipsum dolor','2021-02-09 05:24:13'),(38,1,'Lorem ipsum dolor sit','2020-03-28 03:26:15'),(39,1,'Lorem','2020-08-24 07:41:51'),(40,0,'Lorem ipsum','2020-03-26 02:24:26'),(41,0,'Lorem ipsum dolor sit amet,','2020-12-01 21:26:39'),(42,1,'Lorem','2021-01-23 10:45:56'),(43,0,'Lorem ipsum dolor sit','2020-04-25 02:15:28'),(44,1,'Lorem ipsum dolor sit amet,','2021-02-04 07:41:24'),(45,0,'Lorem','2020-11-19 16:05:22'),(46,0,'Lorem ipsum dolor','2020-04-25 17:52:50'),(47,0,'Lorem ipsum dolor sit amet,','2021-01-17 12:44:10'),(48,1,'Lorem ipsum dolor sit','2020-11-02 16:59:56'),(49,1,'Lorem ipsum dolor sit','2020-06-13 23:28:48'),(50,1,'Lorem','2020-05-27 16:50:13'),(51,0,'Lorem ipsum dolor sit amet,','2021-01-17 12:54:12'),(52,0,'Lorem ipsum dolor sit amet,','2021-01-26 10:17:22'),(53,0,'Lorem ipsum dolor sit','2020-07-02 06:23:13'),(54,1,'Lorem ipsum dolor sit','2021-02-15 00:09:09'),(55,1,'Lorem ipsum','2020-05-25 14:48:34'),(56,0,'Lorem ipsum dolor sit','2020-04-05 04:11:36'),(57,0,'Lorem ipsum dolor sit','2021-02-18 01:17:19'),(58,1,'Lorem ipsum dolor','2020-08-17 13:10:38'),(59,1,'Lorem ipsum dolor sit amet,','2020-10-09 19:45:21'),(60,1,'Lorem ipsum','2020-10-28 10:44:22'),(61,1,'Lorem','2020-09-15 04:39:28'),(62,0,'Lorem ipsum dolor sit amet,','2020-05-23 03:52:54'),(63,1,'Lorem ipsum dolor sit','2020-06-04 15:45:30'),(64,1,'Lorem ipsum','2020-10-02 23:18:03'),(65,0,'Lorem ipsum dolor sit','2020-09-18 07:53:14'),(66,1,'Lorem ipsum','2020-09-30 15:16:30'),(67,1,'Lorem ipsum','2020-12-16 22:47:56'),(68,0,'Lorem','2020-12-12 12:22:15'),(69,0,'Lorem ipsum dolor sit','2020-11-23 11:04:58'),(70,1,'Lorem ipsum dolor','2020-10-21 03:55:19'),(71,0,'Lorem ipsum dolor sit amet,','2021-01-09 10:03:25'),(72,0,'Lorem ipsum dolor sit amet,','2021-02-06 05:33:40'),(73,0,'Lorem ipsum dolor sit','2020-04-14 21:17:59'),(74,0,'Lorem','2020-10-28 09:41:21'),(75,0,'Lorem ipsum dolor','2020-09-10 02:11:24'),(76,0,'Lorem ipsum dolor sit','2020-12-08 04:34:52'),(77,0,'Lorem ipsum dolor sit','2020-07-28 13:01:16'),(78,0,'Lorem ipsum dolor','2020-09-22 19:45:50'),(79,1,'Lorem ipsum dolor sit amet,','2020-06-11 20:23:40'),(80,1,'Lorem ipsum dolor','2020-09-05 14:34:21'),(81,1,'Lorem ipsum dolor sit amet,','2020-09-14 02:53:30'),(82,1,'Lorem ipsum dolor','2021-02-14 11:08:14'),(83,1,'Lorem ipsum dolor','2020-08-16 00:23:29'),(84,0,'Lorem ipsum dolor','2020-06-17 23:17:24'),(85,0,'Lorem','2020-08-19 18:13:25'),(86,0,'Lorem ipsum dolor sit amet,','2020-07-10 04:44:21'),(87,0,'Lorem ipsum dolor sit','2020-04-21 14:25:10'),(88,1,'Lorem ipsum','2020-04-29 16:59:58'),(89,0,'Lorem','2021-01-19 07:17:27'),(90,1,'Lorem','2020-10-12 15:43:46'),(91,1,'Lorem ipsum','2020-05-20 09:24:47'),(92,1,'Lorem ipsum','2020-07-17 08:01:04'),(93,1,'Lorem ipsum dolor','2020-10-05 23:39:14'),(94,1,'Lorem ipsum dolor sit amet,','2020-08-31 18:08:47'),(95,0,'Lorem ipsum dolor','2020-03-21 22:26:52'),(96,1,'Lorem ipsum dolor','2020-11-18 00:33:11'),(97,0,'Lorem ipsum dolor','2021-01-09 02:00:24'),(98,1,'Lorem ipsum dolor sit amet,','2020-06-14 16:36:00'),(99,0,'Lorem ipsum dolor sit amet,','2020-09-12 04:43:08'),(100,0,'Lorem ipsum dolor sit','2020-04-15 20:40:00');
/*!40000 ALTER TABLE `hostel_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institute_admins`
--

DROP TABLE IF EXISTS `institute_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institute_admins` (
  `ID` mediumint NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Age` mediumint NOT NULL,
  `Gender` mediumint NOT NULL,
  `Contact_number` varchar(100) NOT NULL,
  `Designation` mediumint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institute_admins`
--

LOCK TABLES `institute_admins` WRITE;
/*!40000 ALTER TABLE `institute_admins` DISABLE KEYS */;
INSERT INTO `institute_admins` VALUES (1,'Shalaka','Khan',45,1,'+91 7618288150',3),(2,'Arvinda','Ismail',42,2,'+91 0379340202',4),(3,'Atreya','Jain',25,1,'+91 2566658607',3),(4,'Sanchaya','Khan',44,1,'+91 3316411217',2),(5,'Neepa','Khan',50,2,'+91 1950750069',1),(6,'Iraiyavan','Jain',49,0,'+91 9983578294',3),(7,'Parantapa','Patel',44,0,'+91 9746396653',3),(8,'Omanand','Singh',33,0,'+91 5190611154',0),(9,'Prakash','Raj',38,2,'+91 1420846959',1),(10,'Suhrid','Khan',28,2,'+91 4886054287',4),(11,'Abhilasha','Jain',31,1,'+91 2858295209',3),(12,'Sujit','Kumar',36,2,'+91 8368834840',4),(13,'Katyayani','Ismail',50,1,'+91 0649267687',1),(14,'Chellamuthu','Raj',43,2,'+91 8008898112',1),(15,'Mugdha','Ismail',45,0,'+91 0303571625',4),(16,'Edhas','Patel',36,2,'+91 1709603723',0),(17,'Bhagirath','Singh',35,1,'+91 1532723350',4),(18,'Shivangi','Raj',32,1,'+91 9350030011',0),(19,'Talat','Khan',38,0,'+91 9578189942',4),(20,'Vibhuti','Khan',38,2,'+91 9952389071',3),(21,'Chandrodaya','Khan',41,0,'+91 9311452070',4),(22,'Kanchana','Raj',30,2,'+91 7179152504',3),(23,'Shantipriya','Ismail',43,2,'+91 0532561856',2),(24,'Indukanta','Patel',37,1,'+91 7664595361',4),(25,'Nivrutti','Kumar',46,0,'+91 5014762600',0),(26,'Tariq','Singh',40,0,'+91 9529431886',4),(27,'Rupashi','Ismail',44,0,'+91 5237215103',2),(28,'Gaurang','Ismail',43,0,'+91 3805064219',3),(29,'Akhilesh','Ismail',26,1,'+91 7675837067',4),(30,'Quamar','Patel',28,1,'+91 5028437385',3),(31,'Abhyudita','Raj',45,0,'+91 5301606443',2),(32,'Samarendra','Jain',33,1,'+91 5357039012',0),(33,'Vani','Kumar',43,1,'+91 0310884105',3),(34,'Madhukar','Ismail',33,2,'+91 2410467117',0),(35,'Edhas','Kumar',35,2,'+91 9153167996',4),(36,'Chitta','Khan',45,2,'+91 9669377848',3),(37,'Nilima','Ismail',49,1,'+91 6148110884',3),(38,'Kamalnayan','Patel',29,0,'+91 4809759455',3),(39,'Qudamah','Singh',39,1,'+91 0453372416',1),(40,'Ajeeta','Patel',44,2,'+91 3183666188',4),(41,'Gagana','Khan',38,0,'+91 9229046734',3),(42,'Punyabrata','Ismail',45,0,'+91 4578546452',4),(43,'Chinthanaichelvan','Patel',48,2,'+91 5153100219',4),(44,'Sultana','Patel',49,1,'+91 8426335424',0),(45,'Tanima','Ismail',39,2,'+91 9953855599',3),(46,'Dakshakanya','Raj',39,1,'+91 3366897796',3),(47,'Phoolan','Khan',39,0,'+91 9612881264',3),(48,'Shamita','Kumar',45,2,'+91 1575668124',4),(49,'Dharmendra','Kumar',27,2,'+91 9174914782',2),(50,'Nagendra','Raj',34,1,'+91 2001786471',2);
/*!40000 ALTER TABLE `institute_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_ID` mediumint NOT NULL,
  `Request_Active` mediumint NOT NULL,
  `Description` text,
  `Last_Cleaned` datetime DEFAULT NULL,
  PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,1,'Lorem','2020-11-10 20:59:44'),(2,1,'Lorem ipsum','2020-06-03 05:50:48'),(3,1,'Lorem ipsum dolor sit amet,','2020-10-01 01:31:49'),(4,1,'Lorem ipsum','2020-10-21 07:45:44'),(5,0,'Lorem ipsum dolor sit','2020-06-22 03:59:36'),(6,1,'Lorem ipsum','2020-11-28 04:57:01'),(7,0,'Lorem ipsum dolor sit','2021-01-04 14:55:02'),(8,0,'Lorem ipsum','2021-01-13 15:30:42'),(9,0,'Lorem ipsum dolor','2020-07-09 16:00:47'),(10,0,'Lorem','2020-04-23 21:10:08'),(11,0,'Lorem ipsum dolor sit','2020-09-14 07:55:21'),(12,0,'Lorem ipsum','2020-06-19 13:34:42'),(13,1,'Lorem ipsum dolor sit amet,','2021-01-02 17:54:07'),(14,0,'Lorem ipsum dolor sit','2020-08-01 23:51:28'),(15,1,'Lorem ipsum dolor','2020-12-24 11:39:24'),(16,0,'Lorem','2020-08-01 14:56:17'),(17,0,'Lorem ipsum dolor sit','2020-08-06 09:50:27'),(18,1,'Lorem ipsum dolor','2020-07-26 03:15:58'),(19,1,'Lorem ipsum dolor sit','2020-10-10 17:37:13'),(20,0,'Lorem ipsum dolor sit','2020-09-09 15:45:56'),(21,0,'Lorem ipsum dolor','2020-06-30 20:57:13'),(22,0,'Lorem','2020-10-18 15:24:49'),(23,0,'Lorem ipsum dolor sit','2020-05-14 16:49:28'),(24,0,'Lorem','2020-03-12 21:16:47'),(25,0,'Lorem ipsum dolor sit','2020-12-09 18:04:26'),(26,1,'Lorem ipsum','2021-01-11 02:41:37'),(27,1,'Lorem ipsum','2020-11-03 02:14:32'),(28,1,'Lorem ipsum dolor sit','2020-12-19 15:04:07'),(29,1,'Lorem ipsum dolor sit amet,','2020-12-02 10:43:37'),(30,1,'Lorem ipsum dolor sit amet,','2020-02-25 00:37:00'),(31,0,'Lorem ipsum dolor','2020-05-29 09:10:07'),(32,0,'Lorem ipsum','2020-08-23 06:10:13'),(33,0,'Lorem','2020-03-06 03:07:15'),(34,1,'Lorem ipsum dolor','2020-09-10 15:53:20'),(35,0,'Lorem ipsum','2020-12-17 06:39:27'),(36,0,'Lorem ipsum dolor sit amet,','2020-10-10 04:13:01'),(37,1,'Lorem ipsum dolor','2021-02-09 05:24:13'),(38,1,'Lorem ipsum dolor sit','2020-03-28 03:26:15'),(39,1,'Lorem','2020-08-24 07:41:51'),(40,0,'Lorem ipsum','2020-03-26 02:24:26'),(41,0,'Lorem ipsum dolor sit amet,','2020-12-01 21:26:39'),(42,1,'Lorem','2021-01-23 10:45:56'),(43,0,'Lorem ipsum dolor sit','2020-04-25 02:15:28'),(44,1,'Lorem ipsum dolor sit amet,','2021-02-04 07:41:24'),(45,0,'Lorem','2020-11-19 16:05:22'),(46,0,'Lorem ipsum dolor','2020-04-25 17:52:50'),(47,0,'Lorem ipsum dolor sit amet,','2021-01-17 12:44:10'),(48,1,'Lorem ipsum dolor sit','2020-11-02 16:59:56'),(49,1,'Lorem ipsum dolor sit','2020-06-13 23:28:48'),(50,1,'Lorem','2020-05-27 16:50:13'),(51,0,'Lorem ipsum dolor sit amet,','2021-01-17 12:54:12'),(52,0,'Lorem ipsum dolor sit amet,','2021-01-26 10:17:22'),(53,0,'Lorem ipsum dolor sit','2020-07-02 06:23:13'),(54,1,'Lorem ipsum dolor sit','2021-02-15 00:09:09'),(55,1,'Lorem ipsum','2020-05-25 14:48:34'),(56,0,'Lorem ipsum dolor sit','2020-04-05 04:11:36'),(57,0,'Lorem ipsum dolor sit','2021-02-18 01:17:19'),(58,1,'Lorem ipsum dolor','2020-08-17 13:10:38'),(59,1,'Lorem ipsum dolor sit amet,','2020-10-09 19:45:21'),(60,1,'Lorem ipsum','2020-10-28 10:44:22'),(61,1,'Lorem','2020-09-15 04:39:28'),(62,0,'Lorem ipsum dolor sit amet,','2020-05-23 03:52:54'),(63,1,'Lorem ipsum dolor sit','2020-06-04 15:45:30'),(64,1,'Lorem ipsum','2020-10-02 23:18:03'),(65,0,'Lorem ipsum dolor sit','2020-09-18 07:53:14'),(66,1,'Lorem ipsum','2020-09-30 15:16:30'),(67,1,'Lorem ipsum','2020-12-16 22:47:56'),(68,0,'Lorem','2020-12-12 12:22:15'),(69,0,'Lorem ipsum dolor sit','2020-11-23 11:04:58'),(70,1,'Lorem ipsum dolor','2020-10-21 03:55:19'),(71,0,'Lorem ipsum dolor sit amet,','2021-01-09 10:03:25'),(72,0,'Lorem ipsum dolor sit amet,','2021-02-06 05:33:40'),(73,0,'Lorem ipsum dolor sit','2020-04-14 21:17:59'),(74,0,'Lorem','2020-10-28 09:41:21'),(75,0,'Lorem ipsum dolor','2020-09-10 02:11:24'),(76,0,'Lorem ipsum dolor sit','2020-12-08 04:34:52'),(77,0,'Lorem ipsum dolor sit','2020-07-28 13:01:16'),(78,0,'Lorem ipsum dolor','2020-09-22 19:45:50'),(79,1,'Lorem ipsum dolor sit amet,','2020-06-11 20:23:40'),(80,1,'Lorem ipsum dolor','2020-09-05 14:34:21'),(81,1,'Lorem ipsum dolor sit amet,','2020-09-14 02:53:30'),(82,1,'Lorem ipsum dolor','2021-02-14 11:08:14'),(83,1,'Lorem ipsum dolor','2020-08-16 00:23:29'),(84,0,'Lorem ipsum dolor','2020-06-17 23:17:24'),(85,0,'Lorem','2020-08-19 18:13:25'),(86,0,'Lorem ipsum dolor sit amet,','2020-07-10 04:44:21'),(87,0,'Lorem ipsum dolor sit','2020-04-21 14:25:10'),(88,1,'Lorem ipsum','2020-04-29 16:59:58'),(89,0,'Lorem','2021-01-19 07:17:27'),(90,1,'Lorem','2020-10-12 15:43:46'),(91,1,'Lorem ipsum','2020-05-20 09:24:47'),(92,1,'Lorem ipsum','2020-07-17 08:01:04'),(93,1,'Lorem ipsum dolor','2020-10-05 23:39:14'),(94,1,'Lorem ipsum dolor sit amet,','2020-08-31 18:08:47'),(95,0,'Lorem ipsum dolor','2020-03-21 22:26:52'),(96,1,'Lorem ipsum dolor','2020-11-18 00:33:11'),(97,0,'Lorem ipsum dolor','2021-01-09 02:00:24'),(98,1,'Lorem ipsum dolor sit amet,','2020-06-14 16:36:00'),(99,0,'Lorem ipsum dolor sit amet,','2020-09-12 04:43:08'),(100,0,'Lorem ipsum dolor sit','2020-04-15 20:40:00'),(101,0,'non nisi. Aenean eget','2021-02-19 09:12:05'),(102,0,'nulla','2021-02-07 10:51:47'),(103,0,'nulla. Integer vulputate, risus','2021-01-06 21:48:48'),(104,1,'tincidunt dui augue eu tellus.','2021-01-22 18:30:58'),(105,0,'tincidunt congue','2021-01-27 09:19:03'),(106,0,'eu arcu. Morbi','2021-01-28 05:46:39'),(107,0,'ipsum porta','2021-02-04 09:02:41'),(108,1,'non arcu. Vivamus','2021-01-25 01:06:20'),(109,0,'vel est tempor','2021-01-09 06:27:42'),(110,0,'mauris ut','2021-01-17 09:54:58'),(111,1,'mauris ut mi. Duis risus','2021-02-03 04:52:03'),(112,0,'non, vestibulum nec,','2021-02-06 04:57:30'),(113,0,'tempus','2021-02-17 17:42:27'),(114,0,'lacus. Cras interdum.','2021-01-28 20:17:31'),(115,1,'consectetuer','2021-01-31 09:30:56'),(116,1,'Proin sed turpis','2021-01-29 09:23:45'),(117,1,'arcu vel quam','2021-01-16 19:26:05'),(118,1,'elit pede, malesuada','2021-01-07 06:22:23'),(119,1,'non massa non ante','2021-02-19 06:23:49'),(120,0,'velit','2021-01-11 00:32:29'),(121,0,'sed, sapien. Nunc pulvinar arcu','2021-02-12 07:30:32'),(122,0,'orci. Ut','2021-01-12 13:46:53'),(123,0,'eu','2021-01-26 19:30:43'),(124,1,'nec luctus felis purus ac','2021-01-31 04:25:15'),(125,0,'libero at auctor','2021-01-14 23:33:42'),(126,1,'sagittis.','2021-01-05 20:32:28'),(127,0,'Aliquam rutrum lorem ac','2021-02-07 23:13:07'),(128,0,'auctor','2021-02-08 22:58:35'),(129,0,'Nam nulla','2021-02-07 02:56:28'),(130,0,'scelerisque neque sed sem egestas','2021-02-08 20:14:37'),(131,1,'Proin velit. Sed','2021-01-28 13:35:41'),(132,1,'et, rutrum eu, ultrices sit','2021-02-12 00:04:35'),(133,1,'rutrum non, hendrerit','2021-01-23 11:31:23'),(134,0,'libero. Donec consectetuer mauris id','2021-02-04 21:03:58'),(135,0,'in, hendrerit consectetuer, cursus et,','2021-01-09 18:38:34'),(136,0,'netus et malesuada fames','2021-01-15 04:06:13'),(137,1,'ligula consectetuer rhoncus.','2021-01-04 10:48:29'),(138,1,'semper auctor.','2021-02-15 13:16:27'),(139,1,'euismod urna. Nullam lobortis','2021-01-17 15:56:19'),(140,0,'rutrum. Fusce dolor','2021-01-25 22:27:37'),(141,0,'nec orci. Donec nibh.','2021-01-13 08:53:25'),(142,0,'sit amet metus.','2021-01-01 16:58:26'),(143,1,'Vivamus rhoncus. Donec','2021-02-03 07:14:59'),(144,0,'dui quis accumsan convallis,','2021-02-14 19:55:02'),(145,0,'vitae, erat. Vivamus','2021-02-09 13:59:19'),(146,1,'tempor bibendum.','2021-01-02 16:29:19'),(147,1,'a sollicitudin orci sem','2021-01-05 17:58:45'),(148,0,'libero est,','2021-02-04 05:59:18'),(149,0,'Vestibulum ante','2021-01-08 01:52:22'),(150,0,'mi fringilla mi lacinia mattis.','2021-01-06 07:27:08'),(151,0,'sed sem','2021-02-05 07:10:20'),(152,0,'libero. Proin mi. Aliquam','2021-01-11 21:05:42'),(153,1,'Aliquam tincidunt, nunc ac','2021-01-23 13:43:53'),(154,1,'scelerisque, lorem ipsum','2021-01-18 21:33:55'),(155,0,'neque.','2021-01-08 11:45:50'),(156,0,'torquent per conubia','2021-02-18 05:12:16'),(157,1,'penatibus et magnis dis','2021-01-21 20:10:16'),(158,1,'a, enim. Suspendisse aliquet, sem','2021-01-19 00:21:33'),(159,0,'Nunc mauris','2021-01-22 05:46:33'),(160,0,'aliquet.','2021-02-18 00:19:09'),(161,1,'tellus sem mollis dui,','2021-02-08 13:23:21'),(162,0,'mauris, aliquam eu, accumsan sed,','2021-01-01 19:01:11'),(163,1,'luctus,','2021-01-26 04:18:11'),(164,0,'nec, malesuada ut, sem. Nulla','2021-01-24 09:36:19'),(165,1,'mattis. Cras eget','2021-02-03 07:21:19'),(166,0,'sed dui. Fusce aliquam, enim','2021-02-13 16:14:28'),(167,0,'accumsan laoreet ipsum. Curabitur consequat,','2021-02-11 00:28:19'),(168,1,'interdum ligula','2021-02-01 00:37:35'),(169,1,'senectus et netus et malesuada','2021-01-30 16:03:32'),(170,1,'ipsum','2021-02-10 17:59:10'),(171,0,'est arcu ac','2021-02-13 11:35:39'),(172,1,'lobortis risus.','2021-02-15 12:58:01'),(173,0,'malesuada. Integer id magna','2021-01-26 19:05:20'),(174,1,'Nulla tempor augue ac ipsum.','2021-01-08 13:18:12'),(175,1,'egestas. Duis','2021-01-31 11:37:32'),(176,0,'sed','2021-02-13 04:54:06'),(177,0,'nibh dolor, nonummy','2021-01-23 19:26:27'),(178,0,'sed, hendrerit a, arcu. Sed','2021-01-05 19:54:37'),(179,0,'vitae aliquam','2021-02-05 21:36:41'),(180,1,'fringilla','2021-01-26 08:28:12'),(181,1,'elementum,','2021-02-04 07:19:45'),(182,0,'rutrum, justo.','2021-01-10 03:31:07'),(183,0,'justo. Proin non massa non','2021-01-09 13:13:54'),(184,1,'ligula elit, pretium et, rutrum','2021-02-18 07:01:34'),(185,0,'semper, dui lectus rutrum urna,','2021-01-23 16:07:37'),(186,0,'elit erat vitae risus.','2021-01-18 06:37:16'),(187,0,'vitae risus. Duis','2021-01-14 21:55:44'),(188,0,'velit eget laoreet posuere,','2021-01-20 02:27:24'),(189,0,'tempor lorem, eget','2021-02-16 03:58:38'),(190,0,'metus sit','2021-01-17 17:34:57'),(191,0,'convallis, ante lectus','2021-01-01 03:37:26'),(192,0,'sit','2021-02-03 12:58:59'),(193,0,'bibendum. Donec','2021-02-04 17:30:44'),(194,0,'dolor. Nulla semper tellus','2021-01-12 07:58:25'),(195,0,'dolor elit, pellentesque','2021-02-09 20:52:04'),(196,0,'mauris. Suspendisse','2021-01-09 19:11:46'),(197,0,'sit amet','2021-01-31 18:54:34'),(198,1,'diam','2021-01-29 05:45:12'),(199,1,'Donec consectetuer','2021-01-20 02:48:01'),(200,1,'pretium aliquet, metus urna','2021-01-02 17:19:52'),(201,0,'varius','2021-01-06 21:55:32'),(202,1,'amet risus. Donec','2021-01-06 06:19:23'),(203,1,'et, eros.','2021-02-15 19:56:48'),(204,1,'eu, accumsan sed, facilisis','2021-01-18 12:02:35'),(205,0,'auctor, velit eget','2021-01-11 01:46:49'),(206,0,'ac, feugiat','2021-01-01 19:02:19'),(207,0,'facilisi. Sed neque. Sed eget','2021-01-30 08:14:05'),(208,0,'neque','2021-01-31 01:01:06'),(209,1,'eleifend non, dapibus rutrum, justo.','2021-02-05 02:40:43'),(210,0,'Cras vulputate velit','2021-01-14 06:16:25'),(211,0,'Ut tincidunt vehicula risus.','2021-01-31 17:42:28'),(212,1,'tellus id','2021-01-10 20:44:42'),(213,1,'Phasellus in felis.','2021-02-17 20:25:38'),(214,0,'aliquam adipiscing lacus.','2021-02-09 13:52:25'),(215,1,'nulla.','2021-01-28 02:58:51'),(216,0,'pellentesque. Sed','2021-02-19 19:30:48'),(217,1,'sed, facilisis vitae, orci. Phasellus','2021-02-14 15:26:08'),(218,1,'dolor quam, elementum at,','2021-01-24 01:04:16'),(219,1,'tristique','2021-01-02 07:35:54'),(220,1,'eleifend nec,','2021-02-07 14:28:04'),(221,1,'vel, faucibus id, libero. Donec','2021-01-01 17:26:01'),(222,1,'tristique aliquet.','2021-01-03 04:06:55'),(223,0,'tellus. Nunc lectus','2021-01-05 18:40:47'),(224,1,'iaculis quis, pede. Praesent','2021-02-18 22:12:09'),(225,0,'fringilla. Donec feugiat metus','2021-01-22 20:13:39'),(226,1,'justo. Praesent luctus.','2021-01-24 01:02:41'),(227,0,'gravida nunc sed pede. Cum','2021-01-31 00:53:25'),(228,0,'tristique aliquet. Phasellus fermentum','2021-01-24 21:08:16'),(229,1,'ipsum dolor','2021-01-06 18:32:13'),(230,0,'semper, dui lectus rutrum','2021-02-09 02:30:45'),(231,0,'nibh','2021-02-10 15:00:03'),(232,1,'dapibus gravida. Aliquam tincidunt,','2021-02-11 23:53:25'),(233,0,'arcu et pede.','2021-02-05 12:42:20'),(234,0,'eget, volutpat ornare, facilisis eget,','2021-02-17 14:24:04'),(235,0,'pharetra nibh.','2021-01-17 04:48:13'),(236,1,'nec mauris blandit mattis. Cras','2021-02-02 07:01:11'),(237,0,'congue,','2021-02-09 22:04:35'),(238,0,'Integer aliquam','2021-01-20 13:01:25'),(239,0,'ipsum non arcu.','2021-02-06 23:46:15'),(240,0,'risus','2021-02-01 10:57:17'),(241,0,'porttitor','2021-02-06 08:23:40'),(242,0,'mollis non, cursus non, egestas','2021-01-01 13:37:02'),(243,1,'auctor non, feugiat nec,','2021-01-29 08:18:08'),(244,0,'iaculis nec, eleifend non,','2021-01-20 05:37:50'),(245,0,'eu, ultrices','2021-01-03 17:24:08'),(246,1,'faucibus','2021-02-18 19:12:45'),(247,1,'feugiat tellus lorem','2021-01-20 04:13:15'),(248,1,'accumsan neque','2021-01-05 00:39:27'),(249,1,'ornare placerat, orci lacus','2021-01-31 18:33:47'),(250,1,'orci luctus et ultrices posuere','2021-01-06 19:16:48'),(251,1,'sem egestas blandit. Nam nulla','2021-01-15 18:20:45'),(252,1,'egestas. Aliquam fringilla','2021-02-06 11:50:56'),(253,1,'ipsum','2021-02-10 17:42:30'),(254,0,'semper. Nam tempor diam','2021-01-01 04:49:53'),(255,0,'lorem ut','2021-01-17 07:19:41'),(256,0,'Donec felis orci, adipiscing non,','2021-01-06 03:11:09'),(257,0,'dictum eu,','2021-02-08 01:51:44'),(258,0,'Duis elementum, dui quis','2021-02-09 11:01:35'),(259,1,'risus,','2021-01-27 23:53:51'),(260,0,'malesuada','2021-01-27 04:10:54'),(261,1,'vel','2021-02-12 22:24:22'),(262,0,'lorem semper','2021-01-08 11:43:04'),(263,1,'ullamcorper magna.','2021-02-07 16:41:18'),(264,1,'Integer aliquam adipiscing lacus.','2021-01-18 06:29:20'),(265,1,'auctor vitae, aliquet nec,','2021-01-30 10:22:52'),(266,1,'Cras','2021-02-13 00:41:42'),(267,0,'euismod in, dolor. Fusce','2021-01-09 19:05:13'),(268,1,'lacinia mattis. Integer eu lacus.','2021-01-29 20:10:07'),(269,0,'est','2021-02-02 19:00:34'),(270,0,'quis, pede. Suspendisse dui.','2021-02-10 06:46:07'),(271,1,'sodales nisi magna sed','2021-02-07 12:18:36'),(272,0,'non lorem vitae odio','2021-02-19 12:36:41'),(273,0,'mauris. Integer sem elit, pharetra','2021-01-24 20:00:28'),(274,0,'orci tincidunt adipiscing. Mauris molestie','2021-01-06 00:12:11'),(275,1,'arcu. Vestibulum ut','2021-01-07 02:57:28'),(276,1,'odio, auctor vitae, aliquet nec,','2021-01-25 05:42:37'),(277,1,'malesuada id, erat. Etiam','2021-01-30 20:51:38'),(278,1,'sapien,','2021-01-27 04:50:32'),(279,0,'Nulla facilisi. Sed neque.','2021-01-22 11:03:38'),(280,0,'ultrices. Vivamus rhoncus. Donec est.','2021-01-31 07:05:04'),(281,1,'dui quis accumsan','2021-01-29 20:16:11'),(282,1,'luctus. Curabitur egestas nunc sed','2021-02-19 21:19:51'),(283,1,'elit, a','2021-02-15 11:13:19'),(284,1,'magna. Nam ligula elit,','2021-01-02 16:23:24'),(285,0,'scelerisque neque. Nullam','2021-01-29 07:42:12'),(286,1,'justo eu arcu. Morbi sit','2021-02-11 14:01:19'),(287,1,'magna tellus faucibus leo, in','2021-01-15 16:34:32'),(288,0,'id','2021-02-10 04:05:56'),(289,1,'adipiscing. Mauris molestie pharetra nibh.','2021-01-18 19:04:42'),(290,1,'semper','2021-01-15 17:54:39'),(291,0,'a, enim. Suspendisse aliquet,','2021-01-04 12:25:04'),(292,1,'Donec est. Nunc ullamcorper, velit','2021-01-31 16:09:27'),(293,1,'consectetuer rhoncus. Nullam velit','2021-02-16 16:19:22'),(294,1,'fringilla cursus purus. Nullam','2021-01-25 06:16:32'),(295,0,'justo sit','2021-02-08 19:54:30'),(296,1,'vulputate dui, nec tempus','2021-02-19 04:32:20'),(297,1,'in consectetuer ipsum','2021-02-08 13:45:28'),(298,1,'aliquet vel, vulputate eu,','2021-01-25 17:40:16'),(299,1,'dui.','2021-01-09 06:54:36'),(300,0,'vehicula','2021-02-08 06:53:05');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` int NOT NULL,
  `passkey` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'tbgezoksjjakc'),(2,'dtoqtdcyhkwi'),(3,'yuttdueligf'),(4,'tggbbimsqdb'),(5,'dkbecohqhnorkygh'),(6,'wvrgdaihsphntqnmna'),(7,'yfzddgevrcbwp'),(8,'oysjqcrxd'),(9,'aquqypnqwvcvvfzdhgh'),(10,'kvivdekjawocdoj'),(11,'ykcfuiwdkt'),(12,'usjlvuekjybwyfgw'),(13,'jnzwbsnsrzddtzpu'),(14,'ccctsjxqe'),(15,'jtuoxkjjzuudne'),(16,'ositxodbcg'),(17,'vbuwtnvwpxqluixa'),(18,'pwhfxsk'),(19,'jeiomoqkiuj'),(20,'fxkhnkyrldgfgfygv'),(21,'pgzuqolblujl'),(22,'qsqoztipfjf'),(23,'uydafzhstmovog'),(24,'ycsfvecuotyen'),(25,'sxhmvxbevz'),(26,'mgfitlalb'),(27,'kcedbpbcrbzbbzi'),(28,'gngnsh'),(29,'iavpgv'),(30,'brlepimwog'),(31,'miluoinrjjzjvyt'),(32,'rieugic'),(33,'cgwscpxal'),(34,'ttwbpbwaolwkuixysig'),(35,'yphyontwkydplzlcobb'),(36,'cfdqjq'),(37,'bpuryygtieph'),(38,'vdznvvhhnildt'),(39,'tzbutgkvkvccrobs'),(40,'nqujomwtwegkbywfy'),(41,'axqvbqeopvacatiwk'),(42,'vzkuvbuqpdhuytsbogh'),(43,'nvtsgouzee'),(44,'yulqpfwbdpaxitm'),(45,'mahwufesnmwcksbcehq'),(46,'jlznjylmmoirxyr'),(47,'vwbapdcjxobvsmbo'),(48,'xurmbastjdfwl'),(49,'dkfcnezczmcnk'),(50,'ajvbphb'),(51,'wytyufhoz'),(52,'klaikknzldkulrucbf'),(53,'wszrmswqlq'),(54,'vmmrqqxb'),(55,'zwqabqsmdait'),(56,'vsnvcye'),(57,'pkddvpmavhmbwb'),(58,'axzxqsspyuooloyexri'),(59,'zvxcdywmgrlbxw'),(60,'jdkzgnybzgwdqczj'),(61,'wamfhlvzj'),(62,'huhucufupbbgjbelq'),(63,'dvybipcxkjdhyvp'),(64,'crwcbzjuoyxfdw'),(65,'unroxsba'),(66,'dntmtzamrykuozlcg'),(67,'lhyxjofnshkiy'),(68,'lzacdphyafe'),(69,'svwdylvze'),(70,'qrzmxsbzfejzi'),(71,'meuhifsqx'),(72,'mcrvwbcsnzfjpizpiy'),(73,'wzuupumo'),(74,'dluuhieqgmrhpgl'),(75,'gxejcf'),(76,'eymowrexfxvwxdnw'),(77,'yrpywl'),(78,'ojuqzevmwkayqknng'),(79,'lqlqnzohidjruatom'),(80,'azdyduvlcufmcp'),(81,'dywugqdqmf'),(82,'umsmnimeigmslfnwhpu'),(83,'iheicwj'),(84,'xyyfkoixuvttommb'),(85,'mcwtenjgebywitjy'),(86,'wgwmoffaehaiyjear'),(87,'xhxdussk'),(88,'jqahmdexoa'),(89,'rbotodwvverr'),(90,'dzerbwrhnajhjstvga'),(91,'rrczokvkawteo'),(92,'diedjtgzyaqsoc'),(93,'cjkwyfmgbzc'),(94,'dgiowlfjacw'),(95,'gshpninxpbprkepmm'),(96,'zmjphyrhc'),(97,'fbeovnqoqvzyx'),(98,'jhgdhzdlobmgewwnt'),(99,'orypaqhtnoghzyju'),(100,'ocsczrgwpzgohtkxy'),(101,'euxszttktxtzl'),(102,'dfuodtj'),(103,'xybavabbsfobbtcj'),(104,'ksvslkozag'),(105,'fytomyarruvblgnhjqj'),(106,'errrzwkxleu'),(107,'gybuvfmupx'),(108,'oxqjatudui'),(109,'kwmchrxlrjtocgll'),(110,'gckivdgboldjioebojs'),(111,'qcvhan'),(112,'qrluuirgukb'),(113,'krmkkwjnzymomnye'),(114,'tfusslxaibadcbvczxs'),(115,'vigfyxvgdkzi'),(116,'ddqwohgbbsua'),(117,'asibzizwmifeprcsvv'),(118,'oupwxuphwdgbgj'),(119,'nuugiamnsl'),(120,'zlqfjp'),(121,'kuvwdy'),(122,'cjbccgq'),(123,'eplbwzpgsbryg'),(124,'yuugvkgihxapxfg'),(125,'zppmtk'),(126,'yqppbdmh'),(127,'lzaaeevue'),(128,'kioleb'),(129,'urbmsyogblpunmjfh'),(130,'qjowouioalimd'),(131,'dhpvxjnvshxro'),(132,'divrocdej'),(133,'dewrsefxvuuqkk'),(134,'fqihkqazuplwdx'),(135,'jolrpgpmyladjizlyrz'),(136,'sarvbqzonseruc'),(137,'shuhocgwjdiplsyzim'),(138,'atcdvdiroyvtzmqhzx'),(139,'zneldjibwmvkesvppp'),(140,'kaaxexdnplkqpmhmy'),(141,'vuyhiveddswxd'),(142,'mkwkokipf'),(143,'yvikxsb'),(144,'vtjbybpkwh'),(145,'zzmwccizwevms'),(146,'voakusaet'),(147,'sfiexesxa'),(148,'kfapefpq'),(149,'kiixmazkronatm'),(150,'siapeputmqy'),(600,'ndejembcrlahof'),(601,'lgrvvw'),(602,'swzopovzxvyrvz'),(603,'lttghvirrhetzlm'),(604,'bjtnzzpwhttowlxudsn'),(605,'wosuqfofbfykzzgn'),(606,'jhkupofiswrzwikx'),(607,'ecajlhhgnfvmz'),(608,'dcodbilwuktzygjhi'),(609,'svbarb'),(610,'hlcdvucyzygdgaeyl'),(611,'svfqtysdd'),(612,'exggcmnr'),(613,'djenguiaqzztttlmsq'),(614,'srhtpu'),(615,'ajbbafldlayqnpam'),(616,'nesdpttvfvb'),(617,'jptjvkaqi'),(618,'lcohzvfksmgikt'),(619,'dvguxnwanbksh'),(620,'rytkvohbcfd'),(621,'gwpdrgbehjbh'),(622,'qnujugsfvyprkdiw'),(623,'hsvycrjrubcxkxe'),(624,'ymfbewvyemjhbqnmmq'),(625,'emwrtzvbgdgt'),(626,'sqprflmyewtrxqm'),(627,'ckxefdhawhqzmye'),(628,'ofwyzucamrskpjltj'),(629,'fvtrqcolguagxorxnwy'),(630,'tzlfptiklqqh'),(631,'gpqcdcryzp'),(632,'fbyunefwpildogdx'),(633,'xektosbfm'),(634,'zcacjuancqmnov'),(635,'oyjbvhamd'),(636,'kolzrnwy'),(637,'atmgyywwyqabbq'),(638,'kvxmnv'),(639,'isyqpjqnny'),(640,'fjehczzwgihjy'),(641,'dambmr'),(642,'vhynuefftwwgm'),(643,'ycbcphebkwwsn'),(644,'lhhtumqbieulu'),(645,'yhlqgdyjgyiw'),(646,'dgumbrjzggcqr'),(647,'hbfhppe'),(648,'rzjondv'),(649,'nqpsxxhlnasmlghgcxl'),(650,'vyixfvckfylxrguz'),(651,'ilarsxdjhp'),(652,'vyshsapkawcz'),(653,'tctdcvi'),(654,'rcgvzcvlmdauhvnlsz'),(655,'ixtixorkr'),(656,'zymnddw'),(657,'tzjpif'),(658,'uporbzfh'),(659,'dprpotujvqclybb'),(660,'edgijeliquikacrdwp'),(661,'tsjvuoivxyzvydwq'),(662,'poahcmzrjsbtndlqytk'),(663,'hxckdlqrw'),(664,'luqztluu'),(665,'zmxuqapupkbuke'),(666,'mjwktwmyeqh'),(667,'snayhmckiq'),(668,'hwodwmv'),(669,'zyamlcgvdvqyaveimrn'),(670,'aphlaqncv'),(671,'iptjwkfmousdbkjdcn'),(672,'oxejsxwellqben'),(673,'hdcfpar'),(674,'deinwyy'),(675,'vuksvpyucj'),(676,'xdztsnqzwwtvholmf'),(677,'qbxyflkv'),(678,'jitiqviguxnr'),(679,'bnkzqwk'),(680,'hqxoidmy'),(681,'tydoanqsf'),(682,'zpmmlifz'),(683,'wvgixkkhem'),(684,'tfdwlyhb'),(685,'qdsndky'),(686,'jpitnaz'),(687,'wzudnfwjv'),(688,'dvxwtjgrfibkiujtf'),(689,'cahadmrpgfqsnfp'),(690,'wgviukkcdvuegenbz'),(691,'qbwfkqpw'),(692,'nozdmygfjjykwwlrk'),(693,'qagvyurmag'),(694,'lmedxwptpgtxtipl'),(695,'vsseswxmsfzdcl'),(696,'misgstpjtksqurrcy'),(697,'iphuhy'),(698,'ftnneysehgoblyhoun'),(699,'ehgljaxrzblt'),(2015001,'tunyeawkm'),(2015002,'rhgyqxxpcdjurikjbsd'),(2015003,'bpuppcpriqsmtwop'),(2015004,'ykzsxeknw'),(2015005,'jreacvrltxngo'),(2015006,'rfpikm'),(2015007,'tgcbhald'),(2015008,'mmwgfpivtjshcjjifu'),(2015009,'azoevjwsr'),(2015010,'bevamtphhypmdk'),(2015011,'wfovjmuckckupsjk'),(2015012,'oghsukajexheiwby'),(2015013,'zhqkprhesxqzqpf'),(2015014,'dkhwjwb'),(2015015,'onygatwtwsbgvelr'),(2015016,'fdoqzajsfscrnnmtymd'),(2015017,'vwqklcseyrsjdkgvdd'),(2015018,'apleckztlwrtrc'),(2015019,'bittsnaqrtsqkjqesa'),(2015020,'nzqiur'),(2015021,'ftipvufgbwtxa'),(2015022,'hadghdz'),(2015023,'qdldumlvg'),(2015024,'lyjzmacodsmetzxznrj'),(2015025,'yzhwenkateokd'),(2015026,'ibxunzsrvtzeyfk'),(2015027,'veauixqf'),(2015028,'ugqtsjqef'),(2015029,'bnxrogfuwqilxn'),(2015030,'cxmyrzcriz'),(2015031,'nafrdtzbmgkxqja'),(2015032,'ldrkrqjpguutfjzos'),(2015033,'wnkwpnvlknjteyto'),(2015034,'wqrldqz'),(2015035,'kyzwsqrbegit'),(2015036,'zqzkjxfvrmbtjw'),(2015037,'npaoncwokpxidz'),(2015038,'zljusczg'),(2015039,'dozsvdglsrkibdyi'),(2015040,'bzrdtyqcytojderw'),(2015041,'dpusridce'),(2015042,'ndmbwyg'),(2015043,'rkpjrltenu'),(2015044,'txrhzfjjpqtgjlhtpw'),(2015045,'edrqkkidq'),(2015046,'ueqrohxl'),(2015047,'yxqqtxdbprmuwiqyu'),(2015048,'zqphgqbqqmwvelij'),(2015049,'afvnalkanevecxu'),(2015050,'pxxtyq'),(2015051,'tcicscixtym'),(2015052,'vjehydx'),(2015053,'oeinglyb'),(2015054,'hoycjcpxampypds'),(2015055,'dpgpiqsmtqnftt'),(2015056,'cttczonqlrtx'),(2015057,'hcjzpkovydfhhmfo'),(2015058,'vnuqnooncgqbohayvm'),(2015059,'kqqvimoedimwoggux'),(2015060,'qzcbzvwzcwut'),(2015061,'ctbmiomzjgsoqqg'),(2015062,'iejsibnkfperi'),(2015063,'nhpotcoltrqfvaqrgxe'),(2015064,'squykcguwc'),(2015065,'lcixpdmv'),(2015066,'xvuwdzlggkra'),(2015067,'ldafmbrwwlskmbipu'),(2015068,'ojneaneyof'),(2015069,'hakdxrmhhorsd'),(2015070,'dcqfdabugcy'),(2015071,'nbzzcgod'),(2015072,'kahbgddbusloz'),(2015073,'ivxuak'),(2015074,'gakhokqjynznsse'),(2015075,'bbwfkwulw'),(2015076,'sgxjvlxxoetdvwttw'),(2015077,'dllqpwedsdonmpgd'),(2015078,'mqncnhokvvetpkjltpn'),(2015079,'pchrvolkxhthiptx'),(2015080,'smmvyvurobxx'),(2015081,'kptsqk'),(2015082,'wnsivevn'),(2015083,'xxwlsxbsxsfzdmiru'),(2015084,'lusgoylk'),(2015085,'lwmdjkyxuna'),(2015086,'irwyieuc'),(2015087,'mrmgodwbwpaanux'),(2015088,'zjxutgwd'),(2015089,'xszmmjuztchujf'),(2015090,'xvxexzfwtvpmi'),(2015091,'ogruskysvvmgqhladm'),(2015092,'wuidnp'),(2015093,'mfejeh'),(2015094,'zdjofdifhos'),(2015095,'xgkslagn'),(2015096,'ncwtuwnjlkitbu'),(2015097,'wpctqjel'),(2015098,'ppqnxefmmzcas'),(2015099,'sjblojojenfx'),(2015100,'mfowqpwmfydngnx');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security` (
  `ID` mediumint NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Age` mediumint NOT NULL,
  `Gender` mediumint NOT NULL,
  `Contact_number` varchar(100) NOT NULL,
  `Temperature` mediumint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
INSERT INTO `security` VALUES (600,'Jayad','Kumar',24,0,'+91 2652538562',91),(601,'Poojan','Khan',25,0,'+91 7151263259',101),(602,'Hansa','Raj',24,1,'+91 6717900978',105),(603,'Anchal','Jain',22,1,'+91 6616570201',94),(604,'Rohanlal','Kumar',20,0,'+91 0996419800',99),(605,'Sejal','Jain',37,0,'+91 1747436695',90),(606,'Kaushalya','Singh',30,0,'+91 5224406042',100),(607,'Nandana','Patel',32,1,'+91 7023786354',104),(608,'Gyan','Ismail',34,0,'+91 1475617013',94),(609,'Ajamil','Raj',23,1,'+91 1642934091',103),(610,'Madhulekha','Ismail',39,2,'+91 4491540461',95),(611,'Nayan','Jain',34,1,'+91 9437022779',98),(612,'Ushakiran','Jain',36,2,'+91 9017473033',99),(613,'Mohak','Patel',40,0,'+91 3549162826',98),(614,'Rohitasva','Patel',29,0,'+91 2016280598',92),(615,'Hanima','Khan',25,0,'+91 1937267559',103),(616,'Shakuntala','Khan',21,1,'+91 2877966136',98),(617,'Tapas','Kumar',22,0,'+91 8003314115',97),(618,'Sachit','Ismail',35,2,'+91 1535469279',104),(619,'Fidaa','Raj',22,1,'+91 3103600303',93),(620,'Pushpanjali','Singh',32,0,'+91 1627637997',99),(621,'Saquib','Singh',37,0,'+91 6035314376',92),(622,'Sadhya','Raj',25,0,'+91 1531033564',93),(623,'Chitrarathi','Raj',22,2,'+91 5364074656',99),(624,'Shobhita','Singh',25,2,'+91 9596883383',96),(625,'Swayambhu','Jain',32,0,'+91 2875358117',99),(626,'Omanand','Singh',20,1,'+91 8187327290',91),(627,'Qatadah','Raj',26,2,'+91 4111833810',90),(628,'Rajata','Khan',31,1,'+91 4239185226',103),(629,'Mirium','Khan',29,2,'+91 0523576828',94),(630,'Adya','Raj',26,0,'+91 1921903509',98),(631,'Ori','Patel',20,1,'+91 7452216792',97),(632,'Sumit','Jain',36,2,'+91 9073082011',101),(633,'Hemendra','Singh',37,1,'+91 4976328147',94),(634,'Dakshina','Singh',28,2,'+91 1608156349',95),(635,'Nityanand','Raj',33,1,'+91 1622086588',93),(636,'Eshanya','Patel',21,0,'+91 7350155672',95),(637,'Shweta','Jain',28,1,'+91 5810993971',92),(638,'Shaistakhan','Ismail',37,0,'+91 6877757092',91),(639,'Kalaimagal','Khan',26,2,'+91 3929866275',91),(640,'Pritam','Jain',37,1,'+91 9230333060',96),(641,'Resham','Khan',30,2,'+91 6571569080',102),(642,'Anjushri','Patel',29,2,'+91 4114179438',105),(643,'Anuha','Ismail',22,0,'+91 1174059977',105),(644,'Mitali','Jain',28,2,'+91 8771334710',91),(645,'Savitendra','Khan',37,2,'+91 0739300982',95),(646,'Abhayananda','Raj',28,0,'+91 1214227695',90),(647,'Mangala','Singh',37,0,'+91 0423241240',104),(648,'Etash','Khan',23,0,'+91 5888233930',97),(649,'Premila','Jain',33,1,'+91 2910739759',99),(650,'Uttiya','Raj',32,1,'+91 4330030051',93),(651,'Jagachandra','Patel',31,2,'+91 3875094695',105),(652,'Ira','Patel',30,2,'+91 0820532291',91),(653,'Ravi','Ismail',37,1,'+91 1972428392',100),(654,'Kripal','Jain',25,0,'+91 9618554964',105),(655,'Nihal','Patel',24,1,'+91 5903338874',93),(656,'Hurditya','Ismail',24,2,'+91 6316016734',101),(657,'Kantimoy','Khan',25,0,'+91 1670938389',95),(658,'Neeraf','Patel',31,1,'+91 2198326587',104),(659,'Kanal','Jain',34,1,'+91 3711922644',96),(660,'Rajiv','Khan',31,1,'+91 1314056676',94),(661,'Magan','Singh',28,0,'+91 2378056591',99),(662,'Yukta','Ismail',27,1,'+91 3256548173',93),(663,'Sabita','Singh',25,0,'+91 9458910138',99),(664,'Uttiya','Kumar',24,0,'+91 8914297924',102),(665,'Anuprabha','Khan',35,0,'+91 3550677719',92),(666,'Arivarasu','Singh',24,0,'+91 0871977556',98),(667,'Vipan','Jain',28,1,'+91 1796787255',101),(668,'Nadal','Jain',39,2,'+91 8050255263',95),(669,'Yoganand','Jain',21,0,'+91 1515131696',94),(670,'Sananda','Raj',28,1,'+91 5594859392',103),(671,'Deeptiman','Khan',33,1,'+91 1022971773',96),(672,'Niyati','Khan',21,2,'+91 2174061037',96),(673,'Dinapati','Kumar',21,1,'+91 3767441626',105),(674,'Hemanga','Jain',40,2,'+91 1970189000',98),(675,'Mahua','Jain',27,0,'+91 4370230522',105),(676,'Samika','Ismail',34,1,'+91 8631898707',104),(677,'Tulsidas','Raj',28,0,'+91 9634381982',101),(678,'Pakshi','Singh',34,2,'+91 8206257073',98),(679,'Mrigendra','Raj',24,1,'+91 1310248453',104),(680,'Maharath','Singh',21,0,'+91 1698706005',105),(681,'Hafiz','Raj',39,0,'+91 7869353512',103),(682,'Girish','Khan',32,0,'+91 8576212526',93),(683,'Pranjivan','Khan',37,1,'+91 9677957875',94),(684,'Balamurugan','Patel',25,2,'+91 0116999835',105),(685,'Ariktha','Singh',31,1,'+91 6184909170',93),(686,'Urmila','Khan',24,2,'+91 7158652209',105),(687,'Premendra','Jain',25,1,'+91 8694375299',95),(688,'Randhir','Ismail',31,2,'+91 3450623007',92),(689,'Jaidayal','Patel',37,0,'+91 2461849834',103),(690,'Shahid','Kumar',22,1,'+91 1282677476',93),(691,'Selvakumaran','Khan',29,2,'+91 5289691685',99),(692,'Nagarin','Patel',37,1,'+91 7480329104',93),(693,'Manayi','Kumar',20,2,'+91 3094593352',100),(694,'Evyavan','Singh',39,2,'+91 0947119309',98),(695,'Kaushal','Jain',40,1,'+91 7738073996',100),(696,'Mirza','Raj',34,1,'+91 7996468393',105),(697,'Aditha','Khan',35,1,'+91 1062079709',95),(698,'Kalanidhi','Raj',25,2,'+91 3700435198',105),(699,'Kumud','Khan',34,2,'+91 4712739695',105);
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `ID` mediumint NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Age` mediumint NOT NULL,
  `Gender` mediumint NOT NULL,
  `Contact_number` varchar(100) NOT NULL,
  `Last_Health_Check` datetime DEFAULT NULL,
  `Year` mediumint NOT NULL,
  `Location_ID` mediumint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Students_ibfk_1` (`Location_ID`),
  CONSTRAINT `Students_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2015001,'Geeta','Ismail',30,1,'+91 5249034726','2021-02-07 20:46:05',2017,NULL),(2015002,'Jasraj','Kumar',24,0,'+91 4652909669','2021-02-15 00:57:17',2019,2),(2015003,'Mohul','Patel',34,1,'+91 2080839342','2021-02-15 09:12:19',2018,3),(2015004,'Sohana','Jain',31,0,'+91 6617673420','2021-02-18 16:35:40',2016,4),(2015005,'Dhanesh','Kumar',30,0,'+91 1264637266','2021-02-04 03:11:26',2018,5),(2015006,'Nishok','Ismail',33,1,'+91 8105595828','2021-02-14 22:26:50',2019,6),(2015007,'Dayita','Ismail',23,2,'+91 2794206948','2021-02-18 17:06:31',2019,7),(2015008,'Tarakini','Jain',34,0,'+91 4380690996','2021-02-17 02:41:38',2015,8),(2015009,'Subrata','Raj',31,2,'+91 8336412758','2021-02-13 03:17:33',2017,9),(2015010,'Thenappan','Jain',31,0,'+91 0188466556','2021-02-18 06:48:44',2019,10),(2015011,'Maitra','Kumar',28,2,'+91 3383173786','2021-02-08 03:37:57',2020,11),(2015012,'Jyotiranjan','Ismail',28,0,'+91 2357518903','2021-02-13 09:22:38',2019,12),(2015013,'Basavaraj','Khan',30,0,'+91 0855706438','2021-02-19 05:23:10',2016,13),(2015014,'Nikhilesh','Kumar',35,1,'+91 4857353105','2021-02-01 22:12:36',2015,14),(2015015,'Indivar','Patel',17,1,'+91 7752762633','2021-02-06 19:51:03',2017,15),(2015016,'Viplab','Patel',17,0,'+91 4738906836','2021-02-11 12:40:34',2015,16),(2015017,'Dhaval','Jain',16,2,'+91 1230428772','2021-02-06 02:15:45',2018,17),(2015018,'Ekachandra','Ismail',20,0,'+91 7275555942','2021-02-04 03:01:45',2016,18),(2015019,'Sudeep','Khan',34,1,'+91 0280905593','2021-02-07 17:33:06',2018,19),(2015020,'Gautam','Raj',23,0,'+91 1132201919','2021-02-06 12:46:01',2020,20),(2015021,'Salarjung','Ismail',22,1,'+91 9168253637','2021-02-02 10:28:21',2016,21),(2015022,'Balanath','Khan',31,0,'+91 9021574488','2021-02-05 22:19:45',2019,22),(2015023,'Nairit','Singh',34,0,'+91 6166357795','2021-02-13 08:57:06',2017,23),(2015024,'Parinita','Patel',28,2,'+91 8370710373','2021-02-03 13:30:17',2018,24),(2015025,'Manda','Raj',19,0,'+91 0233244535','2021-02-01 02:07:10',2019,25),(2015026,'Omar','Patel',32,0,'+91 6399299393','2021-02-19 20:42:09',2015,26),(2015027,'Indukanta','Khan',22,0,'+91 7603680445','2021-02-16 09:22:19',2020,27),(2015028,'Almas','Ismail',17,2,'+91 7145194193','2021-02-19 19:52:55',2017,28),(2015029,'Ekana','Singh',27,0,'+91 8049045173','2021-02-19 03:18:26',2016,29),(2015030,'Chevatkodiyon','Raj',33,1,'+91 5680266448','2021-02-05 21:27:05',2016,30),(2015031,'Naviya','Khan',16,0,'+91 7782276721','2021-02-12 19:57:17',2017,31),(2015032,'Sarup','Jain',28,1,'+91 5477470201','2021-02-07 00:00:45',2015,32),(2015033,'Etash','Jain',27,0,'+91 6398908013','2021-02-18 05:17:22',2016,33),(2015034,'Pathin','Ismail',34,1,'+91 8465650609','2021-02-18 22:02:29',2018,34),(2015035,'Aakar','Ismail',30,1,'+91 5898524513','2021-02-05 15:56:25',2020,35),(2015036,'Akram','Jain',26,1,'+91 9719902454','2021-02-12 01:13:04',2020,36),(2015037,'Manisha','Jain',25,2,'+91 2673559351','2021-02-16 02:10:26',2015,37),(2015038,'Charusila','Kumar',34,0,'+91 4591725172','2021-02-06 09:55:29',2019,38),(2015039,'Kausar','Raj',35,1,'+91 1692229478','2021-02-10 21:21:46',2019,39),(2015040,'Suchira','Khan',28,0,'+91 6234678960','2021-02-13 13:40:02',2020,40),(2015041,'Prabhakar','Raj',16,1,'+91 9224304067','2021-02-02 07:07:35',2018,41),(2015042,'Jenya','Patel',34,2,'+91 4316152430','2021-02-08 05:32:01',2020,42),(2015043,'Boudhayan','Jain',33,1,'+91 8824460004','2021-02-06 01:40:49',2017,43),(2015044,'Shaili','Ismail',24,0,'+91 3596559551','2021-02-13 08:04:55',2018,44),(2015045,'Yosana','Khan',25,0,'+91 7670106318','2021-02-14 09:27:03',2017,45),(2015046,'Madhav','Khan',29,2,'+91 4630369650','2021-02-18 05:31:27',2015,46),(2015047,'Jalanhili','Patel',34,0,'+91 9648144586','2021-02-09 06:41:45',2019,47),(2015048,'Shripati','Jain',23,2,'+91 5544848883','2021-02-05 21:14:16',2019,48),(2015049,'Mrigankamouli','Ismail',27,1,'+91 4047059014','2021-02-11 19:24:13',2015,49),(2015050,'Bhairavi','Kumar',23,0,'+91 3260117681','2021-02-06 07:10:41',2019,50),(2015051,'Sibani','Ismail',19,1,'+91 2768035394','2021-02-01 19:26:25',2016,51),(2015052,'Agrata','Ismail',23,0,'+91 7449314348','2021-02-04 00:41:07',2017,52),(2015053,'Ashritha','Kumar',26,2,'+91 0932821513','2021-02-19 06:02:33',2018,53),(2015054,'Manasyu','Ismail',35,2,'+91 1507805149','2021-02-06 16:43:43',2015,54),(2015055,'Kiranmala','Raj',25,0,'+91 9745915603','2021-02-04 16:18:08',2018,55),(2015056,'Nanak','Ismail',20,1,'+91 2391365208','2021-02-14 01:27:42',2019,56),(2015057,'Kusuma','Ismail',27,1,'+91 7791737743','2021-02-19 04:53:06',2017,57),(2015058,'Nityanand','Raj',27,1,'+91 7884965162','2021-02-06 06:33:50',2017,58),(2015059,'Tapas','Khan',18,0,'+91 6307659223','2021-02-16 01:05:48',2017,59),(2015060,'Phalguni','Singh',26,0,'+91 3010841136','2021-02-12 01:05:04',2017,60),(2015061,'Nidra','Jain',19,0,'+91 0680618620','2021-02-13 07:24:08',2015,61),(2015062,'Japan','Patel',24,0,'+91 1067333770','2021-02-15 14:29:46',2019,62),(2015063,'Naresh','Patel',19,2,'+91 7401996625','2021-02-01 19:34:52',2017,63),(2015064,'Anwesha','Ismail',23,2,'+91 5266717410','2021-02-08 01:38:25',2017,64),(2015065,'Dhaval','Patel',16,1,'+91 1945338515','2021-02-12 07:58:55',2020,65),(2015066,'Jnyandeep','Khan',27,2,'+91 8472469986','2021-02-15 03:16:52',2017,66),(2015067,'Bhairavi','Ismail',34,2,'+91 2729499384','2021-02-14 17:04:36',2015,67),(2015068,'Khazana','Jain',17,0,'+91 7106201207','2021-02-07 05:55:22',2020,68),(2015069,'Parvatinandan','Khan',23,1,'+91 2386902350','2021-02-13 17:57:34',2017,69),(2015070,'Faarooq','Kumar',18,0,'+91 9784298226','2021-02-06 11:28:36',2019,70),(2015071,'Vaishali','Raj',30,1,'+91 5114394687','2021-02-10 03:00:22',2017,71),(2015072,'Pachai','Raj',20,2,'+91 9216105371','2021-02-04 05:03:47',2020,72),(2015073,'Raksha','Ismail',20,0,'+91 5739800838','2021-02-16 03:25:08',2015,73),(2015074,'Bina','Raj',28,1,'+91 2850697314','2021-02-08 09:23:20',2018,74),(2015075,'Antara','Singh',18,0,'+91 7584870046','2021-02-16 23:45:18',2019,75),(2015076,'Jinendra','Singh',28,2,'+91 8145830015','2021-02-08 09:39:18',2020,76),(2015077,'Pandhari','Patel',25,0,'+91 2510998145','2021-02-15 06:31:27',2015,77),(2015078,'Mekhal','Patel',32,1,'+91 1740428172','2021-02-13 15:48:40',2019,78),(2015079,'Sheil','Ismail',21,0,'+91 1192939633','2021-02-16 14:51:37',2015,79),(2015080,'Magan','Khan',22,0,'+91 8043725299','2021-02-18 22:51:59',2018,80),(2015081,'Manyu','Ismail',17,1,'+91 1410901390','2021-02-19 04:18:09',2018,81),(2015082,'Devadas','Patel',17,1,'+91 8390324086','2021-02-17 18:08:47',2016,82),(2015083,'Shivlal','Kumar',22,0,'+91 0398234002','2021-02-11 07:08:34',2015,83),(2015084,'Jeeval','Jain',20,1,'+91 3519187707','2021-02-06 06:45:40',2019,84),(2015085,'Triguni','Jain',21,0,'+91 1001657681','2021-02-12 09:55:14',2017,85),(2015086,'Menmoli','Singh',26,0,'+91 0808158331','2021-02-06 07:41:32',2015,86),(2015087,'Niral','Ismail',21,2,'+91 4100167108','2021-02-01 12:18:47',2018,87),(2015088,'Fullara','Khan',34,0,'+91 8634808652','2021-02-01 10:04:14',2019,88),(2015089,'Acalesvara','Jain',34,0,'+91 1304962792','2021-02-19 06:47:23',2018,89),(2015090,'Sutanuka','Patel',34,1,'+91 0095159287','2021-02-05 18:15:19',2015,90),(2015091,'Jaisudha','Jain',25,1,'+91 4017905216','2021-02-14 00:46:16',2018,91),(2015092,'Arivumadhi','Kumar',19,0,'+91 4107075280','2021-02-13 07:36:50',2018,92),(2015093,'Shrimayi','Kumar',25,1,'+91 2479090009','2021-02-09 00:24:36',2020,93),(2015094,'Bilva','Raj',17,0,'+91 0632728838','2021-02-05 21:53:08',2020,94),(2015095,'Haridas','Ismail',23,1,'+91 2581600211','2021-02-08 22:52:14',2020,95),(2015096,'Sarasi','Kumar',24,0,'+91 6369392067','2021-02-01 22:27:39',2017,96),(2015097,'Giriraj','Kumar',33,1,'+91 0538317622','2021-02-09 01:58:29',2016,97),(2015098,'Abhinava','Khan',20,1,'+91 4763920863','2021-02-02 04:38:57',2019,98),(2015099,'Gunaratna','Jain',29,2,'+91 1713773153','2021-02-10 02:52:07',2017,99),(2015100,'Sapan','Patel',23,0,'+91 3060829164','2021-02-03 09:54:38',2020,100);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `visitor_id` mediumint NOT NULL,
  `name` varchar(255) NOT NULL,
  `entry_time` datetime NOT NULL,
  `declaration` text NOT NULL,
  `exit_time` datetime DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (500,'Sudhi Khan','2021-02-03 10:01:55','amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing','2021-02-19 04:39:13'),(501,'Jaisukh Singh','2021-02-03 17:07:46','magnis dis parturient montes, nascetur','2021-02-16 00:50:52'),(502,'Shravankumar Jain','2021-02-13 22:28:07','turpis. Aliquam adipiscing lobortis risus. In mi','2021-02-17 00:21:50'),(503,'Sabarinathan Raj','2021-02-15 10:37:46','Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.','2021-02-17 03:22:32'),(504,'Maitreya Patel','2021-02-08 15:28:10','natoque penatibus et magnis dis','2021-02-19 00:33:13'),(505,'Nirbhay Singh','2021-02-13 17:13:22','sit amet risus. Donec egestas. Aliquam nec','2021-02-17 18:50:35'),(506,'Himnish Ismail','2021-02-10 17:32:22','lectus ante dictum mi, ac mattis','2021-02-19 11:26:29'),(507,'Thirumani Kumar','2021-02-06 16:13:07','ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor','2021-02-16 06:36:54'),(508,'Yagna Khan','2021-02-03 08:13:50','eu, placerat eget, venenatis a, magna. Lorem ipsum','2021-02-18 05:47:34'),(509,'Mukut Singh','2021-02-07 14:40:38','Proin velit. Sed malesuada augue ut lacus.','2021-02-16 11:49:08'),(510,'Naishadh Raj','2021-02-12 21:35:12','dignissim lacus. Aliquam rutrum lorem ac risus. Morbi','2021-02-18 13:41:47'),(511,'Atal Patel','2021-02-06 01:33:08','posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse','2021-02-18 18:29:28'),(512,'Geet Raj','2021-02-15 16:04:40','urna justo faucibus lectus, a sollicitudin orci sem eget','2021-02-17 18:10:49'),(513,'Ishwar Kumar','2021-02-09 12:21:10','dis parturient montes, nascetur ridiculus mus. Aenean','2021-02-16 11:08:13'),(514,'Shekhar Patel','2021-02-09 12:24:07','aliquet, sem ut cursus luctus, ipsum leo elementum sem,','2021-02-19 19:50:18'),(515,'Devaraj Kumar','2021-02-10 23:33:22','convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc','2021-02-16 13:02:45'),(516,'Dayanidhi Ismail','2021-02-03 07:45:24','Cras eget nisi dictum augue','2021-02-16 16:30:08'),(517,'Shashank Jain','2021-02-11 05:40:01','tempor arcu. Vestibulum ut eros','2021-02-17 20:44:57'),(518,'Puru Ismail','2021-02-13 12:23:27','blandit. Nam nulla magna, malesuada vel, convallis in,','2021-02-16 13:57:53'),(519,'Pushkar Jain','2021-02-12 11:52:14','amet ante. Vivamus non lorem vitae odio sagittis semper.','2021-02-19 16:52:34'),(520,'Ekalinga Raj','2021-02-13 22:25:33','eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.','2021-02-19 03:38:39'),(521,'Razak Khan','2021-02-04 15:00:38','dignissim lacus. Aliquam rutrum lorem','2021-02-18 20:52:44'),(522,'Bhanuprasad Singh','2021-02-11 09:19:31','ac, feugiat non, lobortis quis, pede. Suspendisse dui.','2021-02-18 15:21:49'),(523,'Loknath Jain','2021-02-11 17:48:04','nunc est, mollis non, cursus','2021-02-17 07:25:02'),(524,'Indra Ismail','2021-02-04 14:31:08','rutrum lorem ac risus. Morbi metus.','2021-02-17 22:11:56'),(525,'Prachetas Raj','2021-02-10 15:50:28','vitae erat vel pede blandit congue. In scelerisque scelerisque','2021-02-17 04:06:10'),(526,'Kalidas Patel','2021-02-10 05:50:14','Cras eu tellus eu augue porttitor interdum.','2021-02-16 07:03:04'),(527,'Himaghna Kumar','2021-02-08 02:18:48','ut, sem. Nulla interdum. Curabitur dictum. Phasellus in','2021-02-16 09:28:30'),(528,'Shravan Khan','2021-02-08 16:24:26','Cum sociis natoque penatibus et magnis dis parturient montes,','2021-02-16 20:38:17'),(529,'Parashar Kumar','2021-02-14 02:51:31','egestas nunc sed libero. Proin sed turpis nec mauris blandit','2021-02-16 23:42:46'),(530,'Nakshatra Singh','2021-02-13 00:33:17','vulputate ullamcorper magna. Sed eu eros.','2021-02-16 14:24:13'),(531,'Dhiraj Khan','2021-02-07 20:56:41','aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,','2021-02-18 14:24:44'),(532,'Sarfaraz Jain','2021-02-12 05:12:46','sodales purus, in molestie tortor nibh sit','2021-02-16 00:53:21'),(533,'Sudhish Jain','2021-02-15 17:48:40','consectetuer adipiscing elit. Etiam laoreet, libero','2021-02-16 11:11:14'),(534,'Neelmani Kumar','2021-02-14 21:43:35','ultricies ligula. Nullam enim. Sed nulla ante,','2021-02-18 02:09:09'),(535,'Durjaya Jain','2021-02-08 14:03:31','enim, condimentum eget, volutpat ornare, facilisis','2021-02-18 11:28:53'),(536,'Amil Kumar','2021-02-12 07:52:31','neque. Sed eget lacus. Mauris','2021-02-16 00:05:40'),(537,'Trishanku Khan','2021-02-15 09:29:00','et, magna. Praesent interdum ligula eu enim. Etiam imperdiet','2021-02-18 20:05:35'),(538,'Jatin Jain','2021-02-09 05:48:11','Suspendisse aliquet molestie tellus. Aenean','2021-02-19 14:34:28'),(539,'Farhat Ismail','2021-02-07 12:17:22','convallis est, vitae sodales nisi magna sed dui.','2021-02-18 09:29:11'),(540,'Chirtrang Singh','2021-02-11 04:11:01','Nunc sed orci lobortis augue scelerisque mollis. Phasellus','2021-02-17 01:05:41'),(541,'Maheepati Singh','2021-02-06 07:47:24','lectus quis massa. Mauris vestibulum, neque','2021-02-19 14:25:56'),(542,'Fahad Jain','2021-02-15 07:28:11','ipsum sodales purus, in molestie tortor nibh sit amet','2021-02-16 12:56:42'),(543,'Aijaz Jain','2021-02-06 19:40:54','tristique senectus et netus et malesuada fames ac turpis','2021-02-16 08:55:44'),(544,'Aftab Kumar','2021-02-07 14:57:17','elit sed consequat auctor, nunc nulla vulputate dui, nec','2021-02-18 14:13:31'),(545,'Sahil Kumar','2021-02-06 15:41:51','egestas rhoncus. Proin nisl sem,','2021-02-18 09:38:04'),(546,'Pinaki Patel','2021-02-09 14:30:31','semper et, lacinia vitae, sodales at, velit.','2021-02-18 18:14:53'),(547,'Sanatan Ismail','2021-02-03 05:00:46','lobortis quis, pede. Suspendisse dui.','2021-02-19 15:33:31'),(548,'Avkash Kumar','2021-02-05 04:07:16','odio vel est tempor bibendum. Donec felis orci, adipiscing','2021-02-16 00:54:15'),(549,'Kantilal Singh','2021-02-05 08:15:07','volutpat nunc sit amet metus.','2021-02-18 07:19:31'),(550,'Anadi Raj','2021-02-11 17:36:54','tellus lorem eu metus. In','2021-02-17 06:19:41'),(551,'Rajatshubhra Khan','2021-02-06 12:41:01','pede. Nunc sed orci lobortis augue scelerisque','2021-02-17 18:29:20'),(552,'Arivarasu Patel','2021-02-07 21:36:00','mus. Proin vel arcu eu odio tristique pharetra. Quisque ac','2021-02-16 02:28:04'),(553,'Charu Khan','2021-02-06 18:03:40','hendrerit. Donec porttitor tellus non magna. Nam','2021-02-16 01:23:29'),(554,'Neelmadhav Patel','2021-02-07 17:34:41','dapibus rutrum, justo. Praesent luctus. Curabitur egestas','2021-02-16 22:33:45'),(555,'Arivuchelvan Singh','2021-02-13 20:32:18','nec ligula consectetuer rhoncus. Nullam velit','2021-02-16 00:42:07'),(556,'Sanchit Jain','2021-02-10 13:09:07','sit amet nulla. Donec non justo. Proin non','2021-02-19 02:50:46'),(557,'Maitreya Jain','2021-02-13 02:41:30','in faucibus orci luctus et ultrices posuere','2021-02-17 02:28:54'),(558,'Danvir Ismail','2021-02-04 13:36:06','Donec vitae erat vel pede blandit','2021-02-16 15:04:06'),(559,'Arijit Raj','2021-02-04 15:24:43','mollis lectus pede et risus. Quisque','2021-02-19 17:01:39'),(560,'Ashis Singh','2021-02-13 19:06:53','diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer','2021-02-17 12:44:45'),(561,'Jalendra Jain','2021-02-10 04:49:55','aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet','2021-02-16 07:20:23'),(562,'Upendra Singh','2021-02-05 04:38:48','Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum','2021-02-19 01:30:44'),(563,'Mohal Kumar','2021-02-03 17:21:29','In nec orci. Donec nibh. Quisque nonummy ipsum','2021-02-19 00:50:26'),(564,'Kantimoy Raj','2021-02-06 12:21:03','sodales purus, in molestie tortor nibh sit amet','2021-02-19 04:05:42'),(565,'Rameshwar Ismail','2021-02-04 08:10:55','pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer','2021-02-17 03:28:12'),(566,'Dheemant Ismail','2021-02-15 14:59:29','adipiscing elit. Etiam laoreet, libero et tristique','2021-02-16 03:47:38'),(567,'Dinar Khan','2021-02-04 08:00:33','eleifend, nunc risus varius orci, in consequat enim diam','2021-02-16 02:23:23'),(568,'Bahumanya Patel','2021-02-14 09:36:58','auctor, nunc nulla vulputate dui,','2021-02-19 14:43:14'),(569,'Nadin Singh','2021-02-04 04:14:59','nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis','2021-02-19 20:18:21'),(570,'Nabhanyu Jain','2021-02-07 15:38:41','facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.','2021-02-18 08:54:03'),(571,'Niket Ismail','2021-02-07 10:13:02','justo. Praesent luctus. Curabitur egestas nunc sed','2021-02-17 19:45:05'),(572,'Natesh Singh','2021-02-03 05:51:42','lacus pede sagittis augue, eu tempor erat','2021-02-18 05:22:49'),(573,'Yadunath Patel','2021-02-14 09:04:49','enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin','2021-02-16 05:36:33'),(574,'Smarajit Patel','2021-02-12 15:06:45','arcu. Vestibulum ante ipsum primis in faucibus orci','2021-02-16 03:10:07'),(575,'Shekhar Ismail','2021-02-12 22:43:49','a sollicitudin orci sem eget massa.','2021-02-19 17:58:38'),(576,'Indivar Raj','2021-02-14 16:58:30','primis in faucibus orci luctus et','2021-02-18 18:40:31'),(577,'Atiya Jain','2021-02-13 19:52:53','nonummy ut, molestie in, tempus','2021-02-17 08:38:59'),(578,'Vishnu Raj','2021-02-12 19:36:36','dui, nec tempus mauris erat eget','2021-02-16 14:29:57'),(579,'Prajesh Patel','2021-02-08 03:45:21','nunc risus varius orci, in consequat enim','2021-02-19 09:11:34'),(580,'Vaninath Ismail','2021-02-08 08:02:09','in consectetuer ipsum nunc id enim. Curabitur','2021-02-19 04:02:57'),(581,'Lambodar Raj','2021-02-13 19:49:31','imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt','2021-02-17 08:00:28'),(582,'Sudarshan Singh','2021-02-11 20:45:26','est. Mauris eu turpis. Nulla','2021-02-18 21:04:51'),(583,'DuraiMurugan Patel','2021-02-09 03:11:51','dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante','2021-02-18 09:40:59'),(584,'Samudrasen Patel','2021-02-15 05:25:24','Morbi sit amet massa. Quisque porttitor eros','2021-02-18 19:40:17'),(585,'Santosh Jain','2021-02-05 04:08:28','Mauris molestie pharetra nibh. Aliquam ornare,','2021-02-18 19:29:56'),(586,'Balanath Kumar','2021-02-06 22:49:16','pellentesque. Sed dictum. Proin eget odio. Aliquam','2021-02-17 10:01:10'),(587,'Vasuman Khan','2021-02-15 03:11:42','nulla at sem molestie sodales. Mauris blandit enim consequat purus.','2021-02-17 18:52:48'),(588,'Shishupal Jain','2021-02-09 00:09:27','iaculis odio. Nam interdum enim non nisi. Aenean eget metus.','2021-02-17 13:01:45'),(589,'Yajnesh Ismail','2021-02-13 18:51:29','a, magna. Lorem ipsum dolor sit','2021-02-18 05:57:37'),(590,'Mohin Patel','2021-02-13 22:47:41','Phasellus dolor elit, pellentesque a, facilisis','2021-02-17 01:36:54'),(591,'Parimal Raj','2021-02-13 16:51:54','netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus','2021-02-18 22:03:18'),(592,'Subbarao Ismail','2021-02-05 17:49:19','vehicula et, rutrum eu, ultrices','2021-02-19 19:23:13'),(593,'Chakradev Raj','2021-02-13 10:13:22','laoreet lectus quis massa. Mauris vestibulum, neque sed dictum','2021-02-19 18:07:19'),(594,'Fadl Singh','2021-02-03 20:44:02','lacus, varius et, euismod et, commodo at,','2021-02-16 22:34:33'),(595,'Archit Khan','2021-02-13 06:29:13','Fusce aliquet magna a neque. Nullam ut nisi a odio','2021-02-16 00:10:15'),(596,'Thirumani Khan','2021-02-10 10:23:22','auctor odio a purus. Duis elementum, dui quis accumsan convallis,','2021-02-16 14:13:53'),(597,'Nabhya Ismail','2021-02-06 22:44:31','Phasellus fermentum convallis ligula. Donec','2021-02-17 00:22:17'),(598,'Vasava Singh','2021-02-04 00:05:52','euismod in, dolor. Fusce feugiat. Lorem','2021-02-18 03:20:29'),(599,'Deepesh Raj','2021-02-11 07:48:41','eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin','2021-02-17 06:18:25');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden`
--

DROP TABLE IF EXISTS `warden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warden` (
  `ID` mediumint NOT NULL,
  `last_checked` datetime NOT NULL,
  `hostel_no` mediumint NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `fk_warden` FOREIGN KEY (`ID`) REFERENCES `institute_admins` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden`
--

LOCK TABLES `warden` WRITE;
/*!40000 ALTER TABLE `warden` DISABLE KEYS */;
INSERT INTO `warden` VALUES (11,'2021-02-07 15:37:15',3),(12,'2021-02-03 01:16:29',2),(13,'2021-02-15 20:46:47',3),(14,'2021-02-02 05:06:52',4),(15,'2021-02-01 03:21:10',2),(16,'2021-02-18 14:54:04',2),(17,'2021-02-02 10:13:03',1),(18,'2021-02-09 19:52:33',2),(19,'2021-02-11 11:07:35',1),(20,'2021-02-11 08:27:55',4);
/*!40000 ALTER TABLE `warden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `washroom`
--

DROP TABLE IF EXISTS `washroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `washroom` (
  `Location_ID` mediumint NOT NULL,
  `Image` blob,
  PRIMARY KEY (`Location_ID`),
  CONSTRAINT `fk_location1` FOREIGN KEY (`Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `washroom`
--

LOCK TABLES `washroom` WRITE;
/*!40000 ALTER TABLE `washroom` DISABLE KEYS */;
INSERT INTO `washroom` VALUES (200,NULL),(201,NULL),(202,NULL),(203,NULL),(204,NULL),(205,NULL),(206,NULL),(207,NULL),(208,NULL),(209,NULL),(210,NULL),(211,NULL),(212,NULL),(213,NULL),(214,NULL),(215,NULL),(216,NULL),(217,NULL),(218,NULL),(219,NULL),(220,NULL),(221,NULL),(222,NULL),(223,NULL),(224,NULL),(225,NULL),(226,NULL),(227,NULL),(228,NULL),(229,NULL),(230,NULL),(231,NULL),(232,NULL),(233,NULL),(234,NULL),(235,NULL),(236,NULL),(237,NULL),(238,NULL),(239,NULL),(240,NULL),(241,NULL),(242,NULL),(243,NULL),(244,NULL),(245,NULL),(246,NULL),(247,NULL),(248,NULL),(249,NULL),(250,NULL),(251,NULL),(252,NULL),(253,NULL),(254,NULL),(255,NULL),(256,NULL),(257,NULL),(258,NULL),(259,NULL),(260,NULL),(261,NULL),(262,NULL),(263,NULL),(264,NULL),(265,NULL),(266,NULL),(267,NULL),(268,NULL),(269,NULL),(270,NULL),(271,NULL),(272,NULL),(273,NULL),(274,NULL),(275,NULL),(276,NULL),(277,NULL),(278,NULL),(279,NULL),(280,NULL),(281,NULL),(282,NULL),(283,NULL),(284,NULL),(285,NULL),(286,NULL),(287,NULL),(288,NULL),(289,NULL),(290,NULL),(291,NULL),(292,NULL),(293,NULL),(294,NULL),(295,NULL),(296,NULL),(297,NULL),(298,NULL),(299,NULL);
/*!40000 ALTER TABLE `washroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `ID` mediumint NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Age` mediumint NOT NULL,
  `Gender` mediumint NOT NULL,
  `Contact_number` varchar(100) NOT NULL,
  `Salary` mediumint NOT NULL,
  `Duty` mediumint NOT NULL,
  `Temperature` mediumint NOT NULL,
  `Avg_Rating` mediumint DEFAULT NULL,
  `Last_Assigned` datetime DEFAULT NULL,
  `num_complaints` mediumint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (51,'Mrinmayi','Ismail',39,0,'+91 3402449810',23665,0,101,1,'2021-01-20 03:15:17',3),(52,'Lokajit','Patel',38,0,'+91 7097562993',23089,0,100,4,'2021-01-25 13:03:51',5),(53,'Anuga','Ismail',39,0,'+91 8394331165',31255,0,97,1,'2021-01-11 03:40:21',5),(54,'Shamshu','Singh',22,1,'+91 3049934629',22027,0,101,3,'2021-01-28 22:13:16',4),(55,'Dhanalakshmi','Singh',35,0,'+91 3530850575',21225,1,92,3,'2021-01-17 23:10:50',3),(56,'Ehimaya','Patel',28,1,'+91 4248571956',25798,0,100,3,'2021-01-27 14:01:48',4),(57,'Fahad','Singh',35,2,'+91 5060507601',25744,0,99,4,'2021-01-29 02:41:28',5),(58,'Kriday','Ismail',34,0,'+91 9619925372',23790,0,97,5,'2021-01-14 04:26:24',5),(59,'Valli','Singh',35,0,'+91 7310273903',30317,0,95,5,'2021-01-03 19:01:43',3),(60,'Monisha','Raj',31,0,'+91 7322758896',27267,0,95,2,'2021-01-13 04:36:52',5),(61,'Rajeev','Ismail',40,0,'+91 0200671729',28792,1,95,5,'2021-01-27 17:37:33',4),(62,'Kamali','Kumar',27,1,'+91 8122787319',20985,1,91,5,'2021-01-13 10:42:40',2),(63,'Chitramaya','Jain',29,1,'+91 2655131189',29843,1,92,3,'2021-01-26 20:25:05',3),(64,'Selma','Kumar',20,2,'+91 3390483408',31867,1,101,4,'2021-01-18 10:26:49',3),(65,'Vasuman','Ismail',36,0,'+91 2709633494',25672,1,91,1,'2021-01-11 12:48:56',2),(66,'Kulik','Singh',35,2,'+91 1485145164',23411,1,99,3,'2021-01-30 00:49:03',4),(67,'Waman','Kumar',39,2,'+91 7048370216',25980,0,98,4,'2021-01-04 12:43:41',3),(68,'Jayanti','Jain',34,1,'+91 5636748925',24520,0,97,1,'2021-01-30 21:31:59',4),(69,'Sapna','Raj',37,0,'+91 6854431622',33419,1,96,1,'2021-01-27 18:48:58',2),(70,'Hiral','Jain',32,0,'+91 0072996747',22185,0,101,2,'2021-01-21 21:41:07',5),(71,'Anjalika','Raj',37,1,'+91 3581114567',27709,1,91,5,'2021-01-01 18:47:40',2),(72,'Ananta','Singh',26,1,'+91 6403370412',32244,1,94,3,'2021-01-17 07:32:58',2),(73,'Mainak','Ismail',37,0,'+91 5135144267',23180,0,99,5,'2021-01-02 05:38:21',2),(74,'Virata','Patel',40,1,'+91 5689449859',23576,0,104,3,'2021-01-27 04:57:39',3),(75,'Anuprabha','Kumar',28,1,'+91 3504367219',24033,0,90,5,'2021-01-11 19:31:48',5),(76,'Mitali','Singh',34,0,'+91 1313814571',25107,0,96,1,'2021-01-08 00:30:01',3),(77,'Sudhir','Ismail',28,2,'+91 4466639577',31643,1,94,5,'2021-01-18 00:55:31',4),(78,'Mandara','Patel',31,0,'+91 2921221209',30851,0,99,4,'2021-01-26 18:01:37',5),(79,'Deeptiman','Khan',22,1,'+91 3288473757',22613,1,102,2,'2021-01-02 23:03:16',2),(80,'Nityananda','Jain',39,2,'+91 1611966667',21970,1,98,3,'2021-01-11 11:59:39',3),(81,'Faria','Singh',22,2,'+91 3625855830',31467,0,99,5,'2021-01-22 16:08:24',4),(82,'Sudhir','Ismail',26,1,'+91 7264715371',25709,0,97,5,'2021-01-25 08:42:24',2),(83,'Jagadeep','Kumar',31,2,'+91 2004378803',29366,1,99,2,'2021-01-16 06:28:44',4),(84,'Hans','Kumar',40,2,'+91 6975759166',27965,0,91,1,'2021-01-13 20:38:03',5),(85,'Kaliranjan','Ismail',34,0,'+91 6917901109',30250,1,90,1,'2021-01-29 03:29:16',4),(86,'Sharad','Raj',21,1,'+91 7018940424',25043,1,92,1,'2021-01-14 15:04:03',3),(87,'Shashank','Patel',37,1,'+91 7644152891',34572,0,90,5,'2021-01-28 23:35:23',4),(88,'Swetha','Raj',35,0,'+91 8496948578',30218,1,96,5,'2021-01-29 12:31:30',3),(89,'Adhik','Patel',23,1,'+91 4360944251',24029,1,95,4,'2021-01-20 15:06:45',4),(90,'Sahas','Kumar',35,1,'+91 2046289450',28966,0,103,5,'2021-01-03 20:02:38',2),(91,'Mukul','Ismail',37,2,'+91 2817758960',29480,1,103,1,'2021-01-23 03:58:56',5),(92,'Dayamayee','Patel',24,0,'+91 2161569874',26897,1,98,1,'2021-01-09 18:59:00',2),(93,'Ronak','Khan',34,1,'+91 6674066752',30201,0,100,3,'2021-01-04 14:41:29',4),(94,'Jhinuk','Khan',23,2,'+91 3930894820',21833,0,102,1,'2021-01-19 09:08:01',2),(95,'Rasaraj','Khan',23,0,'+91 1585051883',24405,1,97,2,'2021-01-09 15:52:16',3),(96,'Kishorekumar','Kumar',26,2,'+91 4872236068',28443,0,92,2,'2021-01-04 09:55:03',3),(97,'Kulbhushan','Kumar',23,1,'+91 9259736242',23721,1,99,1,'2021-01-12 20:01:35',3),(98,'Nityapriya','Singh',27,0,'+91 8246687762',25738,0,93,1,'2021-01-14 15:54:49',4),(99,'Hamir','Kumar',20,1,'+91 3769849517',24712,0,99,5,'2021-01-23 20:44:40',5),(100,'Suneeti','Jain',21,1,'+91 4465582752',33864,1,92,2,'2021-01-17 12:10:15',2),(101,'Bhanuprasad','Jain',36,2,'+91 3015835349',22678,1,98,4,'2021-01-05 01:18:16',2),(102,'Suhasini','Patel',38,2,'+91 5791303062',27816,1,104,3,'2021-01-07 21:13:39',4),(103,'Druthi','Raj',30,2,'+91 8763340811',34021,1,96,2,'2021-01-07 02:29:18',2),(104,'Rohini','Singh',20,1,'+91 5782795625',23011,1,94,5,'2021-01-11 18:22:12',4),(105,'Baridbaran','Jain',30,0,'+91 6447564250',27678,1,98,3,'2021-01-01 19:40:04',4),(106,'Mandhatri','Kumar',32,2,'+91 4573953221',25049,0,104,5,'2021-01-27 07:16:15',3),(107,'Kalindi','Ismail',37,0,'+91 4339533957',30125,1,98,3,'2021-01-05 02:56:00',5),(108,'Adalarasu','Raj',27,1,'+91 8136658701',31568,0,96,5,'2021-01-02 10:11:47',5),(109,'Mudra','Kumar',29,2,'+91 4176226895',26056,1,92,4,'2021-01-21 17:03:51',5),(110,'Anandi','Khan',21,1,'+91 9435259021',33401,1,104,3,'2021-01-31 13:02:26',4),(111,'Sibani','Patel',30,2,'+91 0870306614',32266,1,97,2,'2021-01-03 05:09:56',4),(112,'Sugita','Singh',36,2,'+91 5944862748',29414,1,98,2,'2021-01-10 16:09:36',5),(113,'Neelesh','Ismail',32,1,'+91 3405842377',31353,0,103,4,'2021-01-14 23:58:54',5),(114,'Jalil','Singh',28,0,'+91 3253007787',22860,1,99,3,'2021-01-27 12:07:55',5),(115,'Pulakesh','Khan',26,1,'+91 6796351270',21496,0,99,4,'2021-01-20 05:38:16',5),(116,'Malika','Khan',39,2,'+91 9287999606',32238,0,103,3,'2021-01-02 13:59:57',2),(117,'Kamalesh','Ismail',36,1,'+91 3533344992',25604,0,102,5,'2021-01-26 17:23:04',3),(118,'Vishwamitra','Khan',38,1,'+91 1690077146',29614,0,102,5,'2021-01-26 09:13:06',2),(119,'Gangika','Patel',23,2,'+91 8053882579',28522,1,94,4,'2021-01-04 23:08:27',2),(120,'Rambha','Khan',30,1,'+91 4513258685',28878,1,97,1,'2021-01-02 12:52:38',2),(121,'Suhrit','Singh',28,1,'+91 2617786851',20991,0,98,5,'2021-01-17 08:25:53',2),(122,'Paramananda','Patel',25,0,'+91 6339298578',32794,1,94,1,'2021-01-31 13:36:04',3),(123,'Pransukh','Patel',36,2,'+91 3952095837',26554,0,98,1,'2021-01-22 09:28:56',4),(124,'Kotijit','Patel',27,1,'+91 0952817388',32810,0,98,4,'2021-01-04 03:22:04',5),(125,'Amitabha','Singh',39,0,'+91 9611656195',33175,1,95,3,'2021-01-24 03:01:06',3),(126,'Rishabh','Kumar',23,0,'+91 0148608884',30149,1,95,3,'2021-01-24 22:56:42',3),(127,'Aishani','Patel',36,0,'+91 2600239578',23288,0,101,5,'2021-01-07 20:52:33',3),(128,'Ihitha','Jain',32,1,'+91 2328634255',24947,1,90,5,'2021-01-31 13:16:50',5),(129,'Ramani','Jain',34,0,'+91 7846086039',29121,1,95,2,'2021-01-13 06:13:20',5),(130,'Sultan','Singh',31,1,'+91 7360531858',20068,0,90,5,'2021-01-01 00:23:24',4),(131,'Induma','Kumar',22,0,'+91 4800992130',31451,0,93,4,'2021-01-22 03:13:09',3),(132,'Rajanigandha','Ismail',21,0,'+91 0311429774',26672,1,95,3,'2021-01-18 10:02:17',5),(133,'Jamuna','Patel',35,2,'+91 6353816669',21718,0,93,2,'2021-01-17 06:48:13',5),(134,'Tarakini','Kumar',39,2,'+91 9317543832',25703,0,94,4,'2021-01-01 06:08:33',2),(135,'Bhavesh','Jain',31,0,'+91 1663824836',23892,1,100,5,'2021-01-06 16:42:47',5),(136,'Vanajit','Ismail',35,0,'+91 0026509604',33794,1,102,2,'2021-01-29 17:20:22',5),(137,'Muniya','Kumar',26,1,'+91 9126745175',21730,1,92,3,'2021-01-26 13:27:52',5),(138,'Pasupati','Ismail',23,0,'+91 9644236787',22634,0,90,1,'2021-01-15 11:50:05',5),(139,'Vedika','Patel',33,1,'+91 9643749880',28104,1,102,3,'2021-01-11 19:14:54',2),(140,'Sunila','Patel',22,1,'+91 6055084742',32211,0,99,5,'2021-01-18 13:03:31',3),(141,'Raksha','Singh',29,0,'+91 9958675981',25524,0,99,5,'2021-01-16 06:02:23',3),(142,'Parantapa','Ismail',29,1,'+91 9670116698',26481,1,101,4,'2021-01-11 23:46:44',3),(143,'Swaha','Patel',20,1,'+91 9195736316',29133,0,94,5,'2021-01-08 17:11:25',4),(144,'Karishma','Ismail',31,0,'+91 5410694879',25595,1,94,1,'2021-01-08 16:44:42',5),(145,'Sushanta','Patel',34,2,'+91 1681988320',31404,0,102,4,'2021-01-29 13:27:54',4),(146,'Rishika','Kumar',35,0,'+91 4063206968',26821,1,101,4,'2021-01-19 05:39:22',4),(147,'Ratnabala','Kumar',38,1,'+91 1445662330',27967,1,104,1,'2021-01-11 15:06:14',5),(148,'Latif','Singh',20,0,'+91 8698666730',34911,1,102,5,'2021-01-10 13:50:27',2),(149,'Iraiyavan','Ismail',34,0,'+91 4090684048',20692,1,95,4,'2021-01-04 14:53:15',3),(150,'Nandan','Kumar',30,2,'+91 9099151297',24718,0,103,5,'2021-01-19 17:40:31',3);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'safeya_dbms'
--

--
-- Dumping routines for database 'safeya_dbms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 22:39:31
