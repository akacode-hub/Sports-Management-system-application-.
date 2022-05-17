CREATE DATABASE  IF NOT EXISTS `discover_athlete` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `discover_athlete`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: discover_athlete
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athlete` (
  `athlete_id` int NOT NULL AUTO_INCREMENT,
  `athlete_team_id` int DEFAULT NULL,
  `athlete_sports_id` int NOT NULL,
  `athlete_first_name` varchar(50) NOT NULL,
  `athlete_last_name` varchar(50) NOT NULL,
  `athlete_mail_id` varchar(50) DEFAULT NULL,
  `athlete_contact_no` varchar(10) DEFAULT NULL,
  `athlete_nationality` varchar(15) NOT NULL,
  `athlete_age` int NOT NULL,
  `athlete_gender` varchar(20) NOT NULL,
  `athlete_net_worth` int NOT NULL,
  `athlete_address` varchar(100) DEFAULT NULL,
  `athlete_turned_pro` date DEFAULT NULL,
  `athlete_health_score` int NOT NULL,
  `athlete_perf_score` int NOT NULL,
  `athlete_position` varchar(50) NOT NULL,
  PRIMARY KEY (`athlete_id`),
  KEY `athlete_team_id` (`athlete_team_id`),
  KEY `athlete_sports_id` (`athlete_sports_id`),
  CONSTRAINT `athlete_ibfk_1` FOREIGN KEY (`athlete_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `athlete_ibfk_2` FOREIGN KEY (`athlete_sports_id`) REFERENCES `sports` (`sports_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athlete`
--

LOCK TABLES `athlete` WRITE;
/*!40000 ALTER TABLE `athlete` DISABLE KEYS */;
INSERT INTO `athlete` VALUES (1,1,1,'Grant','Williams','g_williams@gmail.com','6578129804','American',24,'Male',250000,'Tennessee','2019-03-01',7,7,'Forward'),(3,4,1,'Jason','Strong','j_str@gmail.com','1212341254','American',23,'Male',100000,'American','2018-03-01',8,9,'Forward'),(4,2,1,'Alec','Burks','ab@reddit.com','6578129807','American',30,'Male',2500000,'Colorado','2011-03-01',7,10,'Guard'),(5,2,1,'Jerico','Sims','j_sims@gmail.com','6578129201','American',23,'Male',80000,'Texas','2021-03-01',6,4,'Center'),(6,2,1,'Evan','Fournier','ev_f@gmail.com','5781257125','France',29,'Male',80000,'Texas','2012-03-01',8,10,'Guard-Forward'),(7,3,1,'Stephen','Curry','curry.s@gmail.com','6578129333','American',34,'Male',25000000,'California','2009-03-01',8,10,'Guard'),(8,3,1,'Jonathan','Kuminga','jk@gmail.com','8178129333','DR',19,'Male',25000,'Arizona','2021-03-01',5,3,'Forward'),(9,3,1,'Klay','Thompson',NULL,'8178569333','American',30,'Male',300000,'Washington','2011-03-01',8,10,'Guard'),(11,6,3,'Rohit','Sharma',NULL,'9823109836','Indian',30,'Male',2500000,'Aamchi Mumbai','2006-04-07',7,8,'Batsman'),(12,12,5,'Ron','Stanley',NULL,'8150972761','American',25,'Male',2500000,'Boston','2006-04-07',4,9,'Goalie'),(13,6,3,'ABD','Villiers',NULL,NULL,'South Africa',35,'Male',4500000,'South Africa','2002-02-21',8,9,'Batsman'),(14,7,3,'Hardik','Pandya',NULL,'9824567834','Indian',28,'Male',1500000,'Aamchi Mumbai','2006-04-07',9,9,'All-rounder'),(16,7,3,'MS','Dhoni',NULL,'9824713894','Indian',34,'Male',4900000,'Ranchi','1995-04-07',7,10,'Wicketkeeper-Batsman'),(17,7,3,'Dwayne','Bravo','bravo@gmail.com',NULL,'West Indies',38,'Male',3000000,'Santa Clara','2006-04-07',8,8,'Bowler'),(19,8,4,'Ryan','Giggs','rayan@gmail.com',NULL,'Wales ',29,'Male',4500000,'England','2006-04-07',7,8,'Mid-fielder'),(20,9,4,'Andrew','Robertson','andrew@gmail.com','1234567891','Scottish',40,'Male',4000000,'Italy','2001-04-01',9,8,'Goal-keeper'),(21,10,4,'Andreas','Christensen',NULL,NULL,'united states',35,'Male',2000000,'Itlay','2011-04-01',9,10,'Defender'),(22,11,5,'Martin','Biron',NULL,NULL,'Canadian',28,'Male',1800000,'new York','2018-04-01',10,7,'Defense'),(23,11,5,'Yann','Danis','yann@gmail.com',NULL,'Canadian',25,'Male',2000000,'Raleigh','2016-04-01',10,5,'Goalie'),(24,12,5,'Abbott','George','abbott@gmail.com','2345678345','Canadian',30,'Male',2500000,'Boston','2006-04-01',9,7,'Forward'),(25,13,5,'Rickard','Rakell',NULL,'9860096084','united states',30,'Male',3000000,'Pittsburgh','2005-04-01',7,9,'Goalie'),(26,14,2,'Cael','Hodge','c_hodge@gmail.com','6579029804','American',26,'Male',2500000,'Arizona','2015-03-01',7,9,'Center Wing'),(27,14,2,'Bryan','Bower','ryan_b@yahoo.com','8028910841','American',30,'Male',100000,'United Kingdom','2012-03-01',5,9,'Prop'),(28,6,3,'raksha','ramkumar','rr@gmail.com','1872096782','india',25,'female',20000,'boston','2012-08-04',8,10,'bowler');
/*!40000 ALTER TABLE `athlete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_end`
--

DROP TABLE IF EXISTS `brand_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_end` (
  `be_adv_id` int NOT NULL AUTO_INCREMENT,
  `be_athlete_id` int NOT NULL,
  `be_brand_name` varchar(100) NOT NULL,
  `be_ad_prize` int NOT NULL,
  PRIMARY KEY (`be_adv_id`),
  KEY `be_athlete_id` (`be_athlete_id`),
  CONSTRAINT `brand_end_ibfk_1` FOREIGN KEY (`be_athlete_id`) REFERENCES `athlete` (`athlete_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_end`
--

LOCK TABLES `brand_end` WRITE;
/*!40000 ALTER TABLE `brand_end` DISABLE KEYS */;
INSERT INTO `brand_end` VALUES (1,27,'Nike',5000),(2,27,'Nike',5000),(3,13,'BMW Cars',300000),(4,14,'Old Navy',3500000),(5,16,'Adidas',300000),(6,17,'Google',3200000),(8,19,'Nike',2100000),(9,20,'BlackDog',180000),(10,21,'Hollister',150000),(11,22,'Puma',16000000),(12,23,'Dior',24000),(13,24,'Google',34000),(14,25,'Dunkin Donuts',27000),(15,13,'BMW Cars',300000),(16,14,'Old Navy',3500000),(17,16,'Adidas',300000),(18,17,'Google',3200000),(20,19,'Nike',2100000),(21,20,'BlackDog',180000),(22,21,'Hollister',150000),(23,22,'Puma',16000000),(24,23,'Dior',24000),(25,24,'Google',34000),(26,25,'Dunkin Donuts',27000),(27,28,'adidas',20000000);
/*!40000 ALTER TABLE `brand_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` int NOT NULL AUTO_INCREMENT,
  `coach_team_id` int NOT NULL,
  `coach_first_name` varchar(50) NOT NULL,
  `coach_last_name` varchar(50) DEFAULT NULL,
  `coach_nationality` varchar(50) DEFAULT NULL,
  `coach_contact_no` varchar(10) DEFAULT NULL,
  `coach_email_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`coach_id`),
  KEY `coach_team_id` (`coach_team_id`),
  CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`coach_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,1,'Ime','Udoka',NULL,'9973609153','coach@bceltics.com'),(2,2,'Tom','Thibodeau',NULL,'9973609159','coach@nyk.com'),(3,3,'Steve','Kerr',NULL,'9973600159','coach@gsw.com'),(4,4,'Bill','Coen',NULL,'8273600159','coach@hh.com'),(5,6,'Ravi','Shastry',NULL,'7489279876',NULL),(6,8,'Pep','Guerardo',NULL,'8569267836','pep@gmail.com'),(7,13,'Mike','Sullivan',NULL,NULL,'mik@gmail.com'),(8,5,'Trent','Woodhill',NULL,'8270652489','tre@gmail.com'),(9,7,'Stephen','Fleming',NULL,'9658257638','ste@gmail.com'),(10,9,'John','Achterberg',NULL,NULL,'john@gmail.com'),(11,10,'Maurizio','Sarri',NULL,NULL,'sarri@gmail.com'),(12,11,'Jim','Hiller',NULL,NULL,'jim@gmail.com'),(13,12,'Bruce','Cassidy',NULL,NULL,'bru@gmail.com');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet` (
  `diet_id` int NOT NULL AUTO_INCREMENT,
  `diet_athlete_id` int DEFAULT NULL,
  `diet_calorie_count` int DEFAULT NULL,
  `diet_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`diet_id`),
  KEY `diet_athlete_id` (`diet_athlete_id`),
  CONSTRAINT `diet_ibfk_1` FOREIGN KEY (`diet_athlete_id`) REFERENCES `athlete` (`athlete_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES (1,7,100,'Vegan'),(2,7,190,'Protien'),(4,26,100,'Vegan'),(7,13,4500,'Vegetarian'),(8,14,3500,'Gluten-free'),(9,16,4800,'Protien-Rich'),(10,17,3678,'Normal'),(12,19,4200,'Low Fat'),(13,20,3700,'Organic'),(14,21,3456,'Normal'),(15,22,3298,'Vegetarian'),(16,23,4567,'Meat-based'),(17,24,3456,'No-Sugar'),(18,25,3500,'Organic'),(19,28,1000,'vegan');
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `manager_team_id` int DEFAULT NULL,
  `manager_first_name` varchar(50) NOT NULL,
  `manager_last_name` varchar(50) DEFAULT NULL,
  `manager_nationality` varchar(50) DEFAULT NULL,
  `manager_contact_no` varchar(10) DEFAULT NULL,
  `manager_email_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `manager_team_id` (`manager_team_id`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`manager_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,1,'Brad','Stevens',NULL,'1234567891','manager@bc.com'),(2,2,'Leon','Rose',NULL,'1234567801','manager@nyk.com'),(3,3,'Ron','Adams',NULL,'1234987801','manager@gsw.com'),(4,4,'Tom','Murphy',NULL,'0934987801','manager@hh.com'),(5,6,'Bob','Biswas','Indian','90178','bb@yahoo.com'),(6,8,'Lisa','Wolff','Dutch','1234567891','lisa@yahoo.com'),(7,9,'Jürgen','Klopp','German','167309533','klopp@gmail.com'),(8,10,'Thomas','Tuchel','German','420840982','thomas@gmail.com'),(9,5,' Sanjay','Bangar','Indian','2635487615','rcbcoach@gmail.com'),(10,7,'Russell','Radhakrishnan','Indian','2345678645','rusi@gmail.com'),(11,11,'Barry','Trotz','Canadian','4567342569','trotz@gmail.com'),(12,12,'Don','Sweeney','Canadian','2345678913','don@gmail.com'),(13,13,'Ron','Hextall','Canadian','6783536842','ron@gmail.com');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `sports_id` int NOT NULL AUTO_INCREMENT,
  `sports_name` varchar(20) NOT NULL,
  `sports_description` text NOT NULL,
  `sports_arena` varchar(50) NOT NULL,
  `sports_athlete_count` int NOT NULL,
  PRIMARY KEY (`sports_id`),
  UNIQUE KEY `sports_name` (`sports_name`),
  UNIQUE KEY `sports_arena` (`sports_arena`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Basketball','The primary objective of shooting a ball into the basket','Basketball Court',5),(2,'Rugby','It is a close-contact team sport that originated in England in the first half of the 19th century.','Pitch',15),(3,'Cricket','Cricket is a Sport played with bat and ball. It is very famous in India','Cricket Field',11),(4,'Soccer','It is played by approximately 250 million players in over 200 countries and dependencies, making it the most popular sport','Soccer field',11),(5,'Ice Hockey','It is a contact winter team sport played on ice skates','Ice Skating Rink',6);
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_sports_id` int NOT NULL,
  `team_name` varchar(60) NOT NULL,
  `team_mascot` varchar(30) DEFAULT NULL,
  `team_homeground` varchar(30) NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_name` (`team_name`),
  KEY `team_sports_id` (`team_sports_id`),
  CONSTRAINT `team_ibfk_1` FOREIGN KEY (`team_sports_id`) REFERENCES `sports` (`sports_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,1,'Boston Celtics','Lucky the Leprechaun','TD Garden'),(2,1,'New York Knicks','None','Madison Square Garden'),(3,1,'Golden State Warriors','None','Chase Center'),(4,1,'Husky Hoopers','Husky','TD Garden'),(5,3,'Royal Challengers Bangalore','Kingfisher Lion','Chinnaswamy Stadium'),(6,3,'Mumbai Indians','Ambani Ads','Wankhade Stadium'),(7,3,'Chennai Super Kings','Super Singham','M.A.Chidambaram Stadium'),(8,4,'Manchester United',' Fred the Red','Old Trafford'),(9,4,'Liverpool','Mighty Red ','Anfield '),(10,4,'Chelsea','Stamford the Lion','Stamford Bridge '),(11,5,'New York Islanders','Sparky the Dragon','UBS arena '),(12,5,'Boston Bruin','Blades the Bruin','TD Garden'),(13,5,'Pittsburgh Penguins','Iceburgh','PPG Paints Arena'),(14,2,'Dallas Jackals','Jax The Jackal','Choctaw Stadium'),(15,2,'Rugby New York','None','JFK Stadium'),(16,2,'Rugby ATL','The Atlanta Rattlers','Silverbacks Park');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'discover_athlete'
--

--
-- Dumping routines for database 'discover_athlete'
--
/*!50003 DROP FUNCTION IF EXISTS `HighestBE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `HighestBE`(brandname VARCHAR(30)) RETURNS varchar(30) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE readchar varchar(30);
select concat(athlete_first_name,' ', athlete_last_name) as HighestPaidBE into readchar from athlete join brand_end
on(athlete.athlete_id=brand_end.be_athlete_id and be_brand_name=brandname) order by brand_end.be_ad_prize desc limit 1;
return readchar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_athlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_athlete`(a_fname VARCHAR(100), a_lname VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE athlete_count INT;
select count(*) into athlete_count from athlete 
	where athlete_first_name=a_fname and athlete_last_name=a_lname;
    
if athlete_count > 0 then return true;
else return false;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_manager` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_manager`(m_fname VARCHAR(100), m_lname VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE manager_count INT;
select count(*) into manager_count from manager 
	where manager_first_name=m_fname and manager_last_name=m_lname;
    
if manager_count > 0 then return true;
else return false;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_sport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_sport`(s_name VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE sport_count INT;
select count(*) into sport_count from sports 
	where sports_name=s_name;
    
if sport_count = 0 then return false;
else return true;
end if;        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `verify_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `verify_team`(t_name VARCHAR(100)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE team_count INT;
select count(*) into team_count from team 
	where team_name=t_name;
    
if team_count = 0 then return false;
else return true;
end if;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cpm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cpm`()
begin
select concat(coach_first_name,' ',coach_last_name) as coachname , team_name , count(c.coach_id) as no_of_athletes_produced 
from coach c  
join athlete a on a.athlete_team_id = c.coach_team_id 
join team t on a.athlete_team_id=t.team_id 
where  c.coach_team_id  = ( select a.athlete_team_id where (
select count(a.athlete_id) as counts from athlete  where a.athlete_perf_score>=9 group by a.athlete_team_id))
group by c.coach_team_id  order by no_of_athletes_produced desc limit 1;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletebrandinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletebrandinfo`( in fname varchar(30) , in lname varchar(30))
begin
DELETE FROM brand_end where be_athlete_id = (select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteonebrand` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteonebrand`(in fname varchar(30) , in lname varchar(30), in b_name varchar(10))
begin
DELETE FROM brand_end where be_athlete_id = (select athlete_id from athlete where 
athlete_first_name=fname and athlete_last_name=lname) and be_brand_name=b_name;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_athlete_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_athlete_detail`(IN a_fname VARCHAR(100), IN a_lname VARCHAR(100))
BEGIN
select athlete_id, concat(athlete_first_name,' ', athlete_last_name) as Athlete_Name,
	sports_name, team_name, athlete_nationality, athlete_position, athlete_perf_score, athlete_net_worth,
    athlete_health_score, diet_description
 from athlete as a join sports as s on 
	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id 
    and a.athlete_first_name = a_fname and a.athlete_last_name = a_lname)
    join team t on (a.athlete_team_id=t.team_id)
    join diet d on (d.diet_athlete_id=a.athlete_id);    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_sports_athletes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_sports_athletes`(IN sports_name VARCHAR(100))
BEGIN
select athlete_id, concat(athlete_first_name,' ', athlete_last_name) as Athlete_Name,
	sports_name, team_name, athlete_nationality, athlete_position, athlete_perf_score, athlete_net_worth,
    athlete_health_score, diet_description
 from athlete as a join sports as s on 
	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id and s.sports_name=sports_name)
    join team t on (a.athlete_team_id=t.team_id)
    join diet d on (d.diet_athlete_id=a.athlete_id);
-- select a.* from athlete as a join sports as s on 
-- 	(s.sports_name=sports_name and s.sports_id=a.athlete_sports_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_athlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_athlete`(in teamname varchar(40),in sportname varchar(40),
in athlete_first_name varchar(40),in athlete_last_name varchar(40),
 in athlete_mail_id varchar(40), in athlete_contact_no int ,
 in athlete_nationality varchar(20), in athlete_age int,
 in athlete_gender varchar(20) , in athlete_net_worth int,
 in athlete_perf_score int, in athlete_address varchar(40),
 in athlete_turned_pro date , in athlete_health_score int, in athlete_position varchar(40))
BEGIN
insert into athlete(athlete_team_id,athlete_sports_id,athlete_first_name,athlete_last_name,athlete_mail_id,
			athlete_contact_no,athlete_nationality,athlete_age,athlete_gender,athlete_net_worth,
            athlete_perf_score,athlete_address,athlete_turned_pro,athlete_health_score, athlete_position) 
            values ((select team_id from team where team_name=teamname), 
		(select sports_id from sports where sports_name=sportname),athlete_first_name,athlete_last_name,athlete_mail_id,
			athlete_contact_no,athlete_nationality,athlete_age,athlete_gender,athlete_net_worth,
            athlete_perf_score,athlete_address,athlete_turned_pro,athlete_health_score, athlete_position);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_brand_endorsements` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_brand_endorsements`(in be_brand_name varchar(20), in be_ad_prize varchar(20),in fname varchar(40), in lname varchar(40))
begin
insert into brand_end( be_brand_name, be_ad_prize,be_athlete_id) values
(be_brand_name, be_ad_prize,(select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname));
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_diet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_diet`(in diet_calorie_count int, in fname varchar(30) , in lname varchar(30), in diet_desc varchar(50))
begin
insert into diet(diet_calorie_count,diet_athlete_id,diet_description) values
(diet_calorie_count, (select athlete_id from athlete where athlete_first_name=fname and athlete_last_name=lname), diet_desc);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostend` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostend`()
begin
select be_brand_name, count(be_brand_name) as no_of_athletes_endorsing
 from brand_end group by be_brand_name order by count(be_brand_name) desc limit 1;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `M_TEAM_TRNSFER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `M_TEAM_TRNSFER`(in m_first_name varchar(30), in m_last_name varchar(30), in m_current_team varchar(30))
begin
select team_name from team t join
	(select team_id,team_sports_id from team t join manager m on(m.manager_team_id=t.team_id and 
	m.manager_first_name=m_first_name and m.manager_last_name=m_last_name and t.team_name=m_current_team)) as abc on
	(t.team_sports_id=abc.team_sports_id and t.team_id!=abc.team_id);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `oldest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `oldest`()
begin
select concat(athlete_first_name,' ', athlete_last_name) as Oldest_Athlete, athlete_age
 from athlete order by athlete_age desc limit 1;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeoperation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeoperation`(in fname varchar(30) , in lname varchar(30))
begin
delete from athlete where athlete_first_name=fname and athlete_last_name=lname; 
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `retireathlete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `retireathlete`()
begin
delete from athlete where athlete_health_score< 7 and athlete_turned_pro <'1995-05-31'  ;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `richest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `richest`()
begin
select concat(athlete_first_name,' ', athlete_last_name) as Rich_Athletes , max(athlete_net_worth) as Worth from athlete ;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `upcoming_athletes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `upcoming_athletes`()
begin
select concat(athlete_first_name,' ', athlete_last_name) as Upcoming_Athletes, 
be_brand_name as Endorsed_Brand, be_ad_prize as Brand_Earnings  
	from athlete as a join brand_end as be 
    on (a.athlete_turned_pro > '2015-01-01' and be.be_athlete_id=a.athlete_id);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateathleteinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateathleteinfo`( in fname varchar(30) , in lname varchar(30),in teamname varchar(20))
begin
update athlete 
set athlete_team_id = (select team_id from team where team_name= teamname)
where athlete_first_name=fname and athlete_last_name=lname;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatemanagerinfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatemanagerinfo`(in teamname varchar(40), in teamname1 varchar(40))
BEGIN
DELETE FROM manager WHERE manager_team_id=(select team_id from team where team_name= teamname1);
UPDATE manager 
SET manager_team_id=(select team_id from team where team_name= teamname1) WHERE
manager_team_id=(select team_id from team where team_name= teamname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 19:00:33
