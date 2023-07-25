-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gpa
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `credits` int(11) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `marks_distribution` varchar(255) NOT NULL,
  `seniors_advice` text DEFAULT NULL,
  `friends_advice` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `coursecode` varchar(50) DEFAULT NULL,
  `username` varchar(75) DEFAULT NULL,
  `course_type` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `grades` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Theory of Computation',4,'Dr. Jibi Abrahim','{\"mark1\": \"12\", \"mark2\": \"15\", \"mark3\": \"20.0\", \"mark4\": \"0\"}','95','97','100',NULL,'BSC-14002','avdhut.kamble776@gmail.com','BSC','Semester 4',2,100,9),(2,'Multivariate Calculus and Ordinary Differential Equations',5,'Dr. Aman Jhinga','{\"mark1\": \"18.5\", \"mark2\": \"11.5\", \"mark3\": \"34.5\", \"mark4\": \"0\"}','85','74','81',NULL,'MLC-14002','avdhut.kamble776@gmail.com','MLC','Semester 4',1,100,9),(3,'Data Communication',4,'Mr. Vinit Tribhuvan','{\"mark1\": \"17\", \"mark2\": \"18.0\", \"mark3\": \"45.0\", \"mark4\": \"0\"}','80','88','75',NULL,'BSC-12309','avdhut.kamble776@gmail.com','BSC','Semester 4',1,100,9),(5,'Biology for Engineers',2,'Dr. Ketaki Kamble','{\"mark1\": \"17\", \"mark2\": \"16\", \"mark3\": \"35\", \"mark4\": \"0\"}','81','81','62',NULL,'HSMC-14002','avdhut.kamble776@gmail.com','HSMC','Semester 4',0,100,8),(6,'Rapid Prototyping Practice Using Object  Oriented Programming ',3,'Mrs. Trishna Ugale','{\"mark1\": \"20\", \"mark2\": \"20\", \"mark3\": \"60\", \"mark4\": \"0\"}','89','71','50',NULL,'BSC-2141','avdhut.kamble776@gmail.com','BSC','Semester 4',0,100,9),(7,'Microprocessor Techniques',3,'Dr. Pravin Revantkar','{\"mark1\": \"20\", \"mark2\": \"20\", \"mark3\": \"60\", \"mark4\": \"0\"}','80','55','66',NULL,'MLC-14042','avdhut.kamble776@gmail.com','MLC','Semester 4',1,100,9);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_course`
--

DROP TABLE IF EXISTS `old_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `old_course` (
  `course_name` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `semname` varchar(55) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_course`
--

LOCK TABLES `old_course` WRITE;
/*!40000 ALTER TABLE `old_course` DISABLE KEYS */;
INSERT INTO `old_course` VALUES ('LAUC',5,10,'Semester 3','avdhut.kamble776@gmail.com'),('DSA',2,7,'Semester 3','avdhut.kamble776@gmail.com'),('DSGT',3,8,'Semester 3','avdhut.kamble776@gmail.com'),('Physics',4,7,'Semester 3','avdhut.kamble776@gmail.com');
/*!40000 ALTER TABLE `old_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semesters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_credits_enrolled` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'Semester 4','2023-02-09=2023-06-29',27,'avdhut.kamble776@gmail.com'),(3,'Semester 5','2023-03-15=2023-06-23',29,'bhargavi.kam@gmail.com'),(5,'Semester 3',NULL,14,'avdhut.kamble776@gmail.com');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `current_year` int(11) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `MIS` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `login_method` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `clgname` varchar(100) DEFAULT NULL,
  `currentsem` varchar(55) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Avdhut Kamble',NULL,'Computer Engineering','142203010',NULL,'email','avdhut.kamble776@gmail.com','Avdhut@123456e','College of Engineering, Pune.','Semester 4',NULL),(2,'Bhargavi Kamble',NULL,'Computer Engineering','14203020',NULL,'email','bhargavi.kam@gmail.com','bhargavi.kam@gmail.com','IIIT Vadodara','Semester 4',NULL),(3,'Justafolk',NULL,'Comp','12321',NULL,'email','avdhut.kamble40@gmail.com','Avdhut@123456e','COEP','Semester 4',NULL),(4,'avdhut.kamble776@gmail.com',NULL,'','',NULL,'email','','Avdhut@123456e','',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-06 20:39:54
