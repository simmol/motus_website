-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: motus
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add tagged item',10,'add_taggeditem'),(29,'Can change tagged item',10,'change_taggeditem'),(30,'Can delete tagged item',10,'delete_taggeditem'),(31,'Can add kv store',11,'add_kvstore'),(32,'Can change kv store',11,'change_kvstore'),(33,'Can delete kv store',11,'delete_kvstore'),(34,'Can add gallery',12,'add_gallery'),(35,'Can change gallery',12,'change_gallery'),(36,'Can delete gallery',12,'delete_gallery'),(37,'Can add gallery upload',13,'add_galleryupload'),(38,'Can change gallery upload',13,'change_galleryupload'),(39,'Can delete gallery upload',13,'delete_galleryupload'),(40,'Can add photo',14,'add_photo'),(41,'Can change photo',14,'change_photo'),(42,'Can delete photo',14,'delete_photo'),(43,'Can add photo effect',15,'add_photoeffect'),(44,'Can change photo effect',15,'change_photoeffect'),(45,'Can delete photo effect',15,'delete_photoeffect'),(46,'Can add watermark',16,'add_watermark'),(47,'Can change watermark',16,'change_watermark'),(48,'Can delete watermark',16,'delete_watermark'),(49,'Can add photo size',17,'add_photosize'),(50,'Can change photo size',17,'change_photosize'),(51,'Can delete photo size',17,'delete_photosize'),(52,'Can add Site Block',18,'add_block'),(53,'Can change Site Block',18,'change_block'),(54,'Can delete Site Block',18,'delete_block'),(55,'Can add Category',19,'add_category'),(56,'Can change Category',19,'change_category'),(57,'Can delete Category',19,'delete_category'),(58,'Can add page',20,'add_page'),(59,'Can change page',20,'change_page'),(60,'Can delete page',20,'delete_page'),(61,'Can add Library',20,'add_library'),(62,'Can change Library',20,'change_library'),(63,'Can delete Library',20,'delete_library'),(64,'Can add Armory',20,'add_armory'),(65,'Can change Armory',20,'change_armory'),(66,'Can delete Armory',20,'delete_armory'),(67,'Can add Event',20,'add_event'),(68,'Can change Event',20,'change_event'),(69,'Can delete Event',20,'delete_event'),(70,'Can add Blog',20,'add_blog'),(71,'Can change Blog',20,'change_blog'),(72,'Can delete Blog',20,'delete_blog'),(73,'Can add user profile',25,'add_userprofile'),(74,'Can change user profile',25,'change_userprofile'),(75,'Can delete user profile',25,'delete_userprofile'),(76,'Can add menu item',26,'add_menuitem'),(77,'Can change menu item',26,'change_menuitem'),(78,'Can delete menu item',26,'delete_menuitem'),(79,'Can add menu',27,'add_menu'),(80,'Can change menu',27,'change_menu'),(81,'Can delete menu',27,'delete_menu'),(82,'Can add video',28,'add_video'),(83,'Can change video',28,'change_video'),(84,'Can delete video',28,'delete_video'),(85,'Can add gallery',29,'add_videogallery'),(86,'Can change gallery',29,'change_videogallery'),(87,'Can delete gallery',29,'delete_videogallery'),(88,'Can add source',30,'add_source'),(89,'Can change source',30,'change_source'),(90,'Can delete source',30,'delete_source'),(91,'Can add thumbnail',31,'add_thumbnail'),(92,'Can change thumbnail',31,'change_thumbnail'),(93,'Can delete thumbnail',31,'delete_thumbnail');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'simmol','Pavlin','Angelov','fonix.simmol@gmail.com','pbkdf2_sha256$10000$Dfl21iP3LXlU$9OfA0MGLThpvaed7a67vFklGlZ+XvU9pHphpb2+pd+o=',1,1,1,'2012-11-17 13:55:34','2012-10-02 01:07:44'),(4,'selene','','','','pbkdf2_sha256$10000$Xw1fKqiEvfCg$R5+76OmhYJiEUE73a5wxQ9gYTCDipGZ23qXIcnrHpi4=',1,1,1,'2013-03-29 21:52:59','2012-10-15 15:19:34'),(5,'effie','','','','pbkdf2_sha256$10000$I2mO4D6qzePH$sbuoOXL5pbKYfhLOC64bH66NCKbwGcHtUXXK+oAhvJw=',1,1,1,'2012-11-08 23:56:27','2012-10-24 22:10:57'),(6,'bobo','','','','pbkdf2_sha256$10000$1H0zi5aleJcB$xd1hKM0vBS4MaZpHHFIX89705EnimGJB1IpdSyoKhMo=',1,1,1,'2012-11-12 20:59:53','2012-10-24 23:08:07');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-10-02 01:31:35',1,27,'1','Main Navigation',1,''),(2,'2012-10-02 01:31:59',1,26,'2','Motus',1,''),(3,'2012-10-14 16:00:45',1,3,'2','selene',1,''),(4,'2012-10-14 16:02:16',1,3,'2','selene',2,'Changed is_staff and is_superuser.'),(5,'2012-10-14 16:05:04',1,3,'2','selene',2,'Changed email.'),(6,'2012-10-14 16:09:18',1,26,'2','MOTUS',2,'Changed caption_en and caption_bg.'),(7,'2012-10-14 16:16:19',1,3,'2','selene',3,''),(8,'2012-10-14 16:17:04',1,3,'3','selene',1,''),(9,'2012-10-14 16:18:15',1,20,'1','test page',1,''),(10,'2012-10-14 16:19:37',1,20,'2','About',1,''),(11,'2012-10-14 16:27:52',1,20,'3','Instructors',1,''),(12,'2012-10-14 16:29:38',1,20,'4','Contacts',1,''),(13,'2012-10-14 16:29:47',1,20,'4','Contacts',2,'Changed is_active.'),(14,'2012-10-14 16:35:02',1,20,'5','Trainings',1,''),(15,'2012-10-14 16:36:12',1,26,'3','About',1,''),(16,'2012-10-14 16:36:40',1,26,'4','About',1,''),(17,'2012-10-14 16:37:06',1,26,'3','About',3,''),(18,'2012-10-14 16:37:53',1,26,'5','Instructors',1,''),(19,'2012-10-14 16:38:35',1,26,'6','ACTIVITIES',1,''),(20,'2012-10-14 16:39:02',1,26,'7','Trainings',1,''),(21,'2012-10-14 16:39:32',1,26,'8','Camps',1,''),(22,'2012-10-14 16:40:01',1,26,'9','Seminars',1,''),(23,'2012-10-14 16:40:35',1,26,'10','Demonstrations',1,''),(24,'2012-10-14 16:40:57',1,26,'11','Consulting',1,''),(25,'2012-10-14 16:41:13',1,26,'10','Demonstrations',2,'Changed parent.'),(26,'2012-10-14 16:41:19',1,26,'11','Consulting',2,'Changed parent.'),(27,'2012-10-14 16:44:18',1,26,'12','Gallery',1,''),(28,'2012-10-14 16:45:00',1,26,'13','Photo',1,''),(29,'2012-10-14 16:48:30',1,26,'14','Video',1,''),(30,'2012-10-14 16:48:41',1,26,'14','Video',2,'Changed parent.'),(31,'2012-10-14 16:49:37',1,26,'15','SPRECHFENSTER',1,''),(32,'2012-10-14 16:49:49',1,26,'12','GALLERY',2,'Changed caption_en and caption_bg.'),(33,'2012-10-14 16:50:41',1,26,'16','Library',1,''),(34,'2012-10-14 16:50:59',1,26,'17','Armory',1,''),(35,'2012-10-14 16:51:24',1,26,'18','Links',1,''),(36,'2012-10-14 16:51:45',1,26,'19','Blog',1,''),(37,'2012-10-14 16:52:21',1,26,'20','Contacts',1,''),(38,'2012-10-14 16:55:01',1,26,'20','CONTACTS',2,'Changed caption_en and caption_bg.'),(39,'2012-10-15 14:43:06',1,20,'5','Trainings',2,'Changed body_en.'),(40,'2012-10-15 14:43:25',1,20,'5','Trainings',2,'Changed body_en.'),(41,'2012-10-15 14:53:35',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(42,'2012-10-15 14:57:44',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(43,'2012-10-15 15:00:31',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(44,'2012-10-15 15:01:22',1,20,'5','Trainings',2,'Changed body_en.'),(45,'2012-10-15 15:01:49',1,20,'5','Trainings',2,'Changed body_bg.'),(46,'2012-10-15 15:09:45',1,20,'4','Contacts',2,'Changed body_en.'),(47,'2012-10-15 15:14:52',1,20,'4','Contacts',2,'Changed body_en and body_bg.'),(48,'2012-10-15 15:16:49',1,20,'4','Contacts',2,'Changed body_en.'),(49,'2012-10-15 15:17:19',1,20,'4','Contacts',2,'No fields changed.'),(50,'2012-10-15 15:19:12',1,3,'3','selene',3,''),(51,'2012-10-15 15:19:34',1,3,'4','selene',1,''),(52,'2012-10-15 15:19:47',1,3,'4','selene',2,'Changed password, is_staff and is_superuser.'),(53,'2012-10-15 15:25:32',4,18,'1','motus_info',1,''),(54,'2012-10-15 22:24:14',4,26,'17','Armoury',2,'Changed caption_en.'),(55,'2012-10-17 01:22:28',1,18,'1','motus_info',2,'Changed contents_en.'),(56,'2012-10-17 01:22:49',1,18,'1','motus_info',2,'Changed contents_en.'),(57,'2012-10-17 01:23:24',1,18,'1','motus_info',2,'Changed contents_en.'),(58,'2012-10-24 22:10:57',1,3,'5','effie',1,''),(59,'2012-10-24 22:11:24',1,3,'5','effie',2,'Changed password, is_staff and is_superuser.'),(60,'2012-10-24 23:08:07',5,3,'6','bobo',1,''),(61,'2012-10-24 23:23:11',1,3,'6','bobo',2,'Changed password, is_staff and is_superuser.'),(62,'2012-10-25 00:03:05',5,18,'1','motus_info',2,'Changed contents_bg.'),(63,'2012-10-25 00:15:20',5,20,'2','About',2,'Changed body_en and body_bg.'),(64,'2012-10-25 00:52:19',5,20,'3','Instructors',2,'Changed body_en.'),(65,'2012-10-25 00:53:40',5,20,'3','Instructors',2,'No fields changed.'),(66,'2012-10-25 00:54:38',5,20,'3','Instructors',2,'Changed body_en and body_bg.'),(67,'2012-10-27 16:41:37',5,12,'1','Swords',1,''),(68,'2012-11-03 14:54:36',1,14,'1','тететасте',1,''),(69,'2012-11-03 14:54:50',1,12,'1','Swords',2,'Changed photos.'),(70,'2012-11-03 15:04:57',1,17,'4','event_thumb',1,''),(71,'2012-11-03 15:05:24',1,17,'5','shadowbox',1,''),(72,'2012-11-03 15:06:07',1,14,'1','тететасте',2,'Changed caption_en.'),(73,'2012-11-03 15:06:50',1,14,'1','тететасте',2,'Changed caption_en.'),(74,'2012-11-03 15:09:14',1,17,'3','display',2,'No fields changed.'),(75,'2012-11-03 15:16:22',1,14,'1','тететасте',2,'No fields changed.'),(76,'2012-11-03 15:16:45',1,14,'1','тететасте',2,'No fields changed.'),(77,'2012-11-03 15:17:00',1,14,'1','тететасте',2,'Changed caption_en.'),(78,'2012-11-03 15:21:49',1,14,'1','тететасте',2,'No fields changed.'),(79,'2012-11-03 15:23:25',1,20,'6','Test blog post',1,''),(80,'2012-11-03 15:24:30',1,26,'19','Blog',2,'Changed url and named_url.'),(81,'2012-11-03 15:24:48',1,26,'19','Blog',2,'Changed url.'),(82,'2012-11-03 15:25:31',1,3,'1','simmol',2,'Changed first_name, last_name and password. Added user profile \"simmol\".'),(83,'2012-11-03 15:26:08',1,20,'6','Test blog post',2,'Changed body_en.'),(84,'2012-11-07 17:27:00',4,19,'1','camps',1,''),(85,'2012-11-07 17:27:25',4,19,'2','seminars',1,''),(86,'2012-11-07 17:27:51',4,19,'3','demonstrations',1,''),(87,'2012-11-07 17:28:11',4,19,'4','consulting',1,''),(88,'2012-11-07 17:29:37',4,20,'7','ogajph',1,''),(89,'2012-11-07 17:30:36',4,20,'8','gtlanhgn',1,''),(90,'2012-11-08 00:51:25',4,26,'8','Camps',2,'Changed url.'),(91,'2012-11-08 00:51:43',4,26,'8','Camps',2,'Changed url and named_url.'),(92,'2012-11-08 00:52:00',4,26,'9','Seminars',2,'Changed url and named_url.'),(93,'2012-11-08 00:52:21',4,26,'10','Demonstrations',2,'Changed url and named_url.'),(94,'2012-11-08 00:52:34',4,26,'11','Consulting',2,'Changed url and named_url.'),(95,'2012-11-08 22:53:44',1,19,'5','Armory',1,''),(96,'2012-11-08 22:54:05',1,19,'5','Armory',2,'Changed content_type.'),(97,'2012-11-08 22:54:47',1,20,'9','Library article',1,''),(98,'2012-11-08 23:16:01',4,20,'10','qfwe',1,''),(99,'2012-11-08 23:16:16',4,20,'10','qfwe',3,''),(100,'2012-11-08 23:25:23',5,20,'3','Instructors',2,'Changed body_en.'),(101,'2012-11-08 23:27:26',5,20,'3','Instructors',2,'Changed body_en.'),(102,'2012-11-08 23:29:02',5,20,'3','Instructors',2,'Changed body_en.'),(103,'2012-11-08 23:30:43',5,20,'3','Instructors',2,'Changed body_en.'),(104,'2012-11-08 23:37:56',4,19,'4','consulting',3,''),(105,'2012-11-08 23:38:43',4,20,'11','Consulting',1,''),(106,'2012-11-08 23:39:07',4,26,'11','Consulting',2,'Changed url.'),(107,'2012-11-08 23:42:09',1,26,'17','Armoury',2,'Changed url and named_url.'),(108,'2012-11-08 23:42:36',1,26,'16','Library',2,'Changed url and named_url.'),(109,'2012-11-08 23:43:10',4,20,'7','ogajph',3,''),(110,'2012-11-08 23:43:10',4,20,'8','gtlanhgn',3,''),(111,'2012-11-08 23:45:48',4,20,'12','None',1,''),(112,'2012-11-08 23:46:44',4,20,'12','',2,'Changed body_en and body_bg.'),(113,'2012-11-08 23:49:22',4,20,'13','None',1,''),(114,'2012-11-08 23:49:30',5,20,'5','Trainings',2,'Changed body_en.'),(115,'2012-11-08 23:50:04',4,20,'14','None',1,''),(116,'2012-11-08 23:51:05',4,20,'15','Links',1,''),(117,'2012-11-08 23:51:43',4,26,'18','Links',2,'Changed url and named_url.'),(118,'2012-11-08 23:51:55',5,20,'5','Trainings',2,'Changed body_en.'),(119,'2012-11-08 23:57:08',1,20,'1','test page',2,'Changed body_en.'),(120,'2012-11-09 00:01:26',4,20,'5','Trainings',3,''),(121,'2012-11-09 00:03:52',4,20,'16','Trainings',1,''),(122,'2012-11-09 00:05:38',4,20,'16','Trainings',2,'Changed body_bg.'),(123,'2012-11-09 00:05:56',4,20,'16','Trainings',2,'Changed body_bg.'),(124,'2012-11-09 00:07:05',4,20,'16','Trainings',2,'Changed body_bg.'),(125,'2012-11-09 00:08:36',4,20,'16','Trainings',2,'Changed body_bg.'),(126,'2012-11-09 00:09:01',4,20,'16','Trainings',2,'Changed body_bg.'),(127,'2012-11-09 00:10:11',4,20,'16','Trainings',2,'Changed body_bg.'),(128,'2012-11-09 00:11:55',4,20,'16','Trainings',2,'Changed body_en.'),(129,'2012-11-09 00:14:41',4,20,'16','Trainings',2,'Changed body_bg.'),(130,'2012-11-09 00:15:16',4,20,'16','Trainings',2,'Changed body_en.'),(131,'2012-11-09 00:23:29',5,20,'4','Contacts',2,'Changed body_en and body_bg.'),(132,'2012-11-09 00:24:52',5,20,'4','Contacts',2,'Changed body_en.'),(133,'2012-11-09 00:25:28',5,20,'4','Contacts',2,'Changed body_en.'),(134,'2012-11-09 00:25:53',5,20,'4','Contacts',2,'No fields changed.'),(135,'2012-11-09 00:28:22',5,20,'4','Contacts',2,'Changed body_en.'),(136,'2012-11-09 00:28:45',4,20,'3','Instructors',2,'Changed body_bg.'),(137,'2012-11-09 00:28:47',5,20,'4','Contacts',2,'Changed body_en.'),(138,'2012-11-09 00:29:30',4,20,'3','Instructors',2,'Changed body_bg.'),(139,'2012-11-09 00:29:51',5,20,'4','Contacts',2,'No fields changed.'),(140,'2012-11-09 00:30:20',4,20,'3','Instructors',2,'Changed body_bg.'),(141,'2012-11-09 00:31:00',5,20,'4','Contacts',2,'Changed body_bg.'),(142,'2012-11-09 00:31:57',5,20,'4','Contacts',2,'No fields changed.'),(143,'2012-11-09 00:32:18',4,20,'3','Instructors',2,'Changed body_bg.'),(144,'2012-11-09 00:33:15',4,20,'3','Instructors',2,'Changed body_bg.'),(145,'2012-11-09 00:35:35',4,20,'3','Instructors',2,'Changed body_bg.'),(146,'2012-11-09 00:38:49',5,20,'15','Links',2,'Changed body_en and body_bg.'),(147,'2012-11-09 00:40:00',4,20,'3','Instructors',2,'Changed body_en and body_bg.'),(148,'2012-11-09 00:41:20',5,20,'15','Links',2,'Changed body_en and body_bg.'),(149,'2012-11-09 00:41:55',5,20,'15','Links',2,'Changed body_en and body_bg.'),(150,'2012-11-09 00:42:13',5,20,'15','Links',2,'Changed body_en.'),(151,'2012-11-09 00:42:41',5,20,'15','Links',2,'No fields changed.'),(152,'2012-11-09 01:01:22',4,20,'16','Trainings',2,'Changed body_en.'),(153,'2012-11-09 01:02:17',4,20,'16','Trainings',2,'Changed body_bg.'),(154,'2012-11-09 01:02:53',4,20,'16','Trainings',2,'Changed body_en.'),(155,'2012-11-09 01:03:20',4,20,'16','Trainings',2,'Changed body_bg.'),(156,'2012-11-09 01:03:37',4,20,'16','Trainings',2,'Changed body_bg.'),(157,'2012-11-09 01:04:39',4,20,'16','Trainings',2,'Changed body_en.'),(158,'2012-11-09 01:06:21',5,20,'11','Consulting',2,'Changed body_en and body_bg.'),(159,'2012-11-09 01:10:58',5,20,'2','About',2,'Changed body_en and body_bg.'),(160,'2012-11-09 01:11:23',5,20,'2','About',2,'Changed body_en.'),(161,'2012-11-09 01:13:52',5,20,'11','Consulting',2,'Changed body_en and body_bg.'),(162,'2012-11-09 01:15:55',4,18,'2','events_camps',1,''),(163,'2012-11-09 01:16:50',5,20,'3','Instructors',2,'Changed body_en and body_bg.'),(164,'2012-11-09 01:19:24',4,14,'6','The swords',1,''),(165,'2012-11-09 01:20:33',4,14,'7','The school',1,''),(166,'2012-11-09 01:21:08',4,14,'8',' ',1,''),(167,'2012-11-09 01:22:01',4,14,'9','4',1,''),(168,'2012-11-09 01:22:18',4,14,'10','5',1,''),(169,'2012-11-09 01:22:21',5,20,'3','Instructors',2,'Changed body_en and body_bg.'),(170,'2012-11-09 01:22:32',4,14,'11','6',1,''),(171,'2012-11-09 01:22:44',5,20,'3','Instructors',2,'Changed body_en.'),(172,'2012-11-09 01:22:46',4,14,'12','7',1,''),(173,'2012-11-09 01:23:11',4,14,'13','8',1,''),(174,'2012-11-09 01:23:27',4,14,'14','9',1,''),(175,'2012-11-09 01:23:46',4,14,'15','10',1,''),(176,'2012-11-09 01:24:00',4,14,'16','11',1,''),(177,'2012-11-09 01:24:10',4,14,'17','12',1,''),(178,'2012-11-09 01:24:30',4,14,'18','13',1,''),(179,'2012-11-09 01:24:40',4,14,'19','14',1,''),(180,'2012-11-09 01:24:52',4,14,'20','15',1,''),(181,'2012-11-09 01:25:00',4,12,'3','Summer camp 2012',1,''),(182,'2012-11-09 01:29:03',5,20,'16','Trainings',2,'Changed body_en and body_bg.'),(183,'2012-11-09 01:29:51',5,20,'16','Trainings',2,'Changed body_en and body_bg.'),(184,'2012-11-09 01:30:34',5,20,'16','Trainings',2,'Changed body_bg.'),(185,'2012-11-09 01:38:48',5,28,'1','Demonstration 06.12.2010',1,''),(186,'2012-11-09 01:39:33',5,28,'1','Demonstration 06.12.2010',2,'No fields changed.'),(187,'2012-11-09 01:39:42',5,28,'1','Demonstration 06.12.2010',2,'Changed is_active.'),(188,'2012-11-09 01:41:28',4,29,'1','Videos',1,''),(189,'2012-11-09 02:12:41',1,18,'2','events_camps',2,'Changed url.'),(190,'2012-11-09 02:13:20',1,18,'2','events_camps',2,'Changed url.'),(191,'2012-11-09 02:31:54',5,20,'4','Contacts',2,'Changed body_en and body_bg.'),(192,'2012-11-09 02:31:56',1,20,'12','No Event',2,'Changed title_en and page_image.'),(193,'2012-11-09 02:32:37',5,20,'4','Contacts',2,'Changed body_en and body_bg.'),(194,'2012-11-09 02:32:38',1,20,'12','No Event',2,'Changed page_image.'),(195,'2012-11-09 02:32:52',1,20,'12','No Event',2,'Changed page_image.'),(196,'2012-11-09 02:35:11',5,20,'2','About',2,'Changed body_en.'),(197,'2012-11-09 02:39:48',5,20,'2','About',2,'Changed body_en.'),(198,'2012-11-09 02:41:59',5,20,'2','About',2,'Changed body_en.'),(199,'2012-11-09 02:42:26',5,20,'2','About',2,'Changed body_en.'),(200,'2012-11-09 02:42:50',5,20,'2','About',2,'Changed body_en.'),(201,'2012-11-09 02:43:54',5,20,'2','About',2,'Changed body_en.'),(202,'2012-11-09 02:44:39',5,20,'2','About',2,'Changed body_en.'),(203,'2012-11-09 02:46:15',5,20,'2','About',2,'Changed body_en.'),(204,'2012-11-09 02:46:45',5,20,'2','About',2,'Changed body_en.'),(205,'2012-11-09 02:47:56',5,20,'2','About',2,'Changed body_en.'),(206,'2012-11-09 02:48:31',5,20,'2','About',2,'Changed body_en.'),(207,'2012-11-09 02:48:33',1,14,'21','tet',1,''),(208,'2012-11-09 02:49:20',5,20,'2','About',2,'Changed body_en.'),(209,'2012-11-09 02:49:51',5,20,'2','About',2,'Changed body_en.'),(210,'2012-11-09 02:51:27',5,20,'2','About',2,'Changed body_en.'),(211,'2012-11-09 02:52:55',5,20,'2','About',2,'Changed body_en.'),(212,'2012-11-09 02:55:00',5,20,'2','About',2,'Changed body_en and body_bg.'),(213,'2012-11-09 03:02:25',5,20,'15','Links',2,'Changed body_en and body_bg.'),(214,'2012-11-09 03:02:32',1,14,'22','fsfs',1,''),(215,'2012-11-09 03:03:42',4,18,'3','events_demonstrations',1,''),(216,'2012-11-09 03:04:02',4,18,'4','events_seminars',1,''),(217,'2012-11-09 03:13:14',5,18,'2','events_camps',2,'Changed contents_en and contents_bg.'),(218,'2012-11-09 03:15:43',5,18,'2','events_camps',2,'Changed contents_en.'),(219,'2012-11-09 03:20:06',5,18,'3','events_demonstrations',2,'Changed contents_en and contents_bg.'),(220,'2012-11-09 03:20:21',5,18,'3','events_demonstrations',2,'No fields changed.'),(221,'2012-11-09 03:22:13',5,18,'3','events_demonstrations',2,'Changed contents_en and contents_bg.'),(222,'2012-11-09 03:22:38',5,18,'3','events_demonstrations',2,'No fields changed.'),(223,'2012-11-09 03:23:31',5,19,'5','Armory',2,'Changed title_bg.'),(224,'2012-11-09 03:25:20',5,20,'9','Library article',2,'Changed body_en and body_bg.'),(225,'2012-11-09 03:26:01',5,20,'9','Library article',2,'Changed title_bg and body_bg.'),(226,'2012-11-09 03:27:04',5,19,'5','Armory',2,'Changed title_bg.'),(227,'2012-11-09 03:27:31',5,20,'11','Consulting',2,'Changed body_bg.'),(228,'2012-11-09 03:27:44',4,20,'12','No Event',3,''),(229,'2012-11-09 03:27:44',4,20,'13','None',3,''),(230,'2012-11-09 03:27:44',4,20,'14','None',3,''),(231,'2012-11-09 03:28:29',5,20,'4','Contacts',2,'Changed body_en and body_bg.'),(232,'2012-11-09 03:33:22',4,20,'17','awge',1,''),(233,'2012-11-09 03:33:51',4,20,'18','gae',1,''),(234,'2012-11-09 03:34:15',4,20,'19','gsrg',1,''),(235,'2012-11-09 03:35:07',4,20,'19','gsrg',3,''),(236,'2012-11-09 16:52:24',6,20,'4','Contacts',2,'Changed body_en and body_bg.'),(237,'2012-11-09 16:53:37',6,20,'16','Trainings',2,'Changed body_en and body_bg.'),(238,'2012-11-09 16:55:40',6,20,'2','About',2,'Changed body_bg.'),(239,'2012-11-09 16:58:17',6,28,'1','Demonstration 06.12.2010',2,'Changed description_en.'),(240,'2012-11-09 17:03:32',6,20,'15','Links',2,'Changed body_bg.'),(241,'2012-11-09 17:04:07',6,9,'1','меч',1,''),(242,'2012-11-09 17:04:12',6,9,'2','история',1,''),(243,'2012-11-09 17:04:21',6,9,'3','историческа',1,''),(244,'2012-11-09 17:04:27',6,9,'4','среднивековен',1,''),(245,'2012-11-09 17:04:33',6,9,'5','фехтовка',1,''),(246,'2012-11-09 17:04:36',6,9,'6','бой',1,''),(247,'2012-11-09 17:04:46',6,9,'7','изкуства',1,''),(248,'2012-11-09 17:04:50',6,9,'8','бойни',1,''),(249,'2012-11-09 17:05:03',6,9,'9','експериментална',1,''),(250,'2012-11-09 17:05:06',6,9,'10','археология',1,''),(251,'2012-11-09 17:05:16',6,9,'11','мечове',1,''),(252,'2012-11-09 17:05:20',6,9,'12','дълъг',1,''),(253,'2012-11-09 17:05:29',6,9,'13','Европа',1,''),(254,'2012-11-09 17:05:34',6,9,'14','Европейски',1,''),(255,'2012-11-09 17:05:39',6,9,'15','България',1,''),(256,'2012-11-09 17:05:43',6,9,'16','Школа',1,''),(257,'2012-11-09 17:09:35',6,9,'17','medieval',1,''),(258,'2012-11-09 17:09:41',6,9,'18','fencing',1,''),(259,'2012-11-09 17:09:46',6,9,'19','kunst',1,''),(260,'2012-11-09 17:09:48',6,9,'20','des',1,''),(261,'2012-11-09 17:09:52',6,9,'21','fechtens',1,''),(262,'2012-11-09 17:10:07',6,9,'22','спорт',1,''),(263,'2012-11-09 17:10:22',6,9,'23','традиционни',1,''),(264,'2012-11-09 17:10:25',6,9,'24','София',1,''),(265,'2012-11-09 17:10:37',6,9,'25','Мотус',1,''),(266,'2012-11-09 17:10:39',6,9,'25','Мотус',2,'No fields changed.'),(267,'2012-11-09 17:10:43',6,9,'25','клуб',2,'Changed name.'),(268,'2012-11-09 17:10:53',6,9,'26','спортна',1,''),(269,'2012-11-09 17:11:28',6,9,'26','бъклър',2,'Changed name.'),(270,'2012-11-09 17:11:30',6,9,'26','бъклър',2,'No fields changed.'),(271,'2012-11-09 17:11:33',6,9,'26','бъклър',2,'No fields changed.'),(272,'2012-11-09 17:11:38',6,9,'27','щит',1,''),(273,'2012-11-09 17:11:47',6,9,'28','тренировки',1,''),(274,'2012-11-09 17:11:54',6,9,'29','тренировка',1,''),(275,'2012-11-09 17:12:05',6,9,'30','копие',1,''),(276,'2012-11-09 17:12:12',6,9,'31','ризар',1,''),(277,'2012-11-09 17:12:17',6,9,'26','бъклър',2,'No fields changed.'),(278,'2012-11-09 17:12:21',6,9,'32','оръжия',1,''),(279,'2012-11-09 17:12:25',6,9,'33','хладно',1,''),(280,'2012-11-09 17:12:27',6,9,'34','хладни',1,''),(281,'2012-11-09 17:12:29',6,9,'35','ор',1,''),(282,'2012-11-09 17:12:35',6,9,'36','оръжие',1,''),(283,'2012-11-09 17:12:48',6,9,'37','нож',1,''),(284,'2012-11-09 17:14:27',6,9,'38','sword',1,''),(285,'2012-11-09 17:14:32',6,9,'39','swordsmanship',1,''),(286,'2012-11-09 17:14:36',6,9,'40','buckler',1,''),(287,'2012-11-09 17:14:40',6,9,'41','manuscript',1,''),(288,'2012-11-09 17:14:45',6,9,'42','manuscripts',1,''),(289,'2012-11-09 17:14:53',6,9,'43','swords',1,''),(290,'2012-11-09 17:14:57',6,9,'44','knight',1,''),(291,'2012-11-09 17:15:08',6,9,'45','cut',1,''),(292,'2012-11-09 17:15:11',6,9,'46','stab',1,''),(293,'2012-11-09 17:15:19',6,9,'47','Europe',1,''),(294,'2012-11-09 17:15:23',6,9,'48','european',1,''),(295,'2012-11-09 17:15:37',6,9,'49','martial=',1,''),(296,'2012-11-09 17:15:42',6,9,'50','ARTS',1,''),(297,'2012-11-09 17:16:01',6,9,'49','martial=',3,''),(298,'2012-11-09 17:16:07',6,9,'51','martial',1,''),(299,'2012-11-09 17:16:11',6,9,'52','Fiore',1,''),(300,'2012-11-09 17:16:15',6,9,'53','Liechtenauer',1,''),(301,'2012-11-09 17:16:18',6,9,'54','Talhoffer',1,''),(302,'2012-11-09 17:16:23',6,9,'55','longsword',1,''),(303,'2012-11-09 17:16:27',6,9,'56','arming',1,''),(304,'2012-11-09 17:16:30',6,9,'57','messer',1,''),(305,'2012-11-09 17:16:33',6,9,'58','месер',1,''),(306,'2012-11-09 17:16:36',6,9,'59','мессер',1,''),(307,'2012-11-09 17:16:49',6,9,'60','два',1,''),(308,'2012-11-09 17:17:20',6,9,'61','фехтовален',1,''),(309,'2012-11-09 17:17:23',6,9,'62','ръкопис',1,''),(310,'2012-11-09 17:17:38',6,9,'63','манускрипт',1,''),(311,'2012-11-09 17:18:15',6,9,'64','Фиоре',1,''),(312,'2012-11-09 17:18:23',6,9,'65','Лихтенауер',1,''),(313,'2012-11-09 17:18:42',6,9,'66','Дьобрингер',1,''),(314,'2012-11-09 17:18:47',6,9,'67','Майер',1,''),(315,'2012-11-09 17:18:54',6,9,'68','Вади',1,''),(316,'2012-11-09 17:18:56',6,9,'69','Рингек',1,''),(317,'2012-11-09 17:19:00',6,9,'70','Ringeck',1,''),(318,'2012-11-09 17:19:03',6,9,'71','Dobringer',1,''),(319,'2012-11-09 17:19:06',6,9,'72','Hanko',1,''),(320,'2012-11-09 17:19:07',6,9,'73','Hans',1,''),(321,'2012-11-12 15:39:40',4,29,'1','Demonstrations',2,'Changed title_en and title_bg.'),(322,'2012-11-12 20:52:54',1,17,'6','lattest_photos',1,''),(323,'2012-11-12 21:01:12',6,20,'3','Instructors',2,'Changed body_en and body_bg.'),(324,'2012-11-12 21:20:04',4,12,'1','Swords',3,''),(325,'2012-11-12 21:53:45',4,19,'1','Camps',2,'Changed title_en and title_bg.'),(326,'2012-11-12 21:53:55',4,19,'2','Seminars',2,'Changed title_en and title_bg.'),(327,'2012-11-12 21:54:06',4,19,'3','Demonstrations',2,'Changed title_en and title_bg.'),(328,'2012-11-12 21:55:14',4,20,'16','Trainings',2,'Changed body_en and body_bg.'),(329,'2012-11-12 21:55:47',4,20,'16','Trainings',2,'Changed body_en.'),(330,'2012-11-12 21:56:11',4,20,'16','Trainings',2,'Changed body_bg.'),(331,'2012-11-12 21:57:42',4,18,'2','events_camps',2,'Changed contents_en and contents_bg.'),(332,'2012-11-12 21:59:24',4,18,'2','events_camps',2,'Changed contents_en and contents_bg.'),(333,'2012-11-12 22:05:51',4,18,'2','events_camps',2,'Changed contents_en.'),(334,'2012-11-12 22:06:43',4,20,'16','Training',2,'Changed title_en, slug and body_en.'),(335,'2012-11-12 22:07:23',4,26,'7','Training',2,'Changed caption_en, url and named_url.'),(336,'2012-11-12 22:08:59',4,20,'11','Consulting',2,'Changed body_en.'),(337,'2012-11-12 22:13:55',4,20,'2','About',2,'Changed body_en.'),(338,'2012-11-12 22:17:53',6,20,'2','About',2,'Changed body_en.'),(339,'2012-11-12 22:18:51',4,20,'2','About',2,'Changed body_en and published.'),(340,'2012-11-12 22:19:12',4,20,'4','Contacts',2,'Changed body_en.'),(341,'2012-11-12 22:20:07',4,20,'2','About',2,'Changed body_en.'),(342,'2012-11-12 22:22:46',4,26,'15','SPREHFENSTER',2,'Changed caption_en.'),(343,'2012-11-12 22:24:45',4,20,'16','Training',2,'Changed body_en.'),(344,'2012-11-12 22:29:34',4,18,'4','events_seminars',2,'Changed contents_en and contents_bg.'),(345,'2012-11-12 22:30:05',4,18,'4','events_seminars',2,'Changed contents_en and contents_bg.'),(346,'2012-11-12 22:30:23',4,20,'17','awge',3,''),(347,'2012-11-12 22:30:23',4,20,'18','gae',3,''),(348,'2012-11-12 22:31:30',4,20,'6','Test blog post',3,''),(349,'2012-11-12 22:31:59',4,20,'9','Library article',3,''),(350,'2012-11-13 18:35:08',6,20,'3','Instructors',2,'Changed body_en and body_bg.'),(351,'2013-03-29 23:02:14',4,20,'3','Instructors',2,'Changed body_bg.'),(352,'2013-03-29 23:03:00',4,20,'3','Instructors',2,'Changed body_bg.'),(353,'2013-03-29 23:04:42',4,20,'4','Contacts',2,'Changed body_en and body_bg.'),(354,'2013-03-29 23:05:09',4,20,'4','Contacts',2,'Changed body_bg.'),(355,'2013-03-29 23:07:38',4,20,'16','Training',2,'Changed body_en and body_bg.'),(356,'2013-03-29 23:09:38',4,20,'16','Training',2,'Changed body_bg.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'tag','tagging','tag'),(10,'tagged item','tagging','taggeditem'),(11,'kv store','thumbnail','kvstore'),(12,'gallery','photologue','gallery'),(13,'gallery upload','photologue','galleryupload'),(14,'photo','photologue','photo'),(15,'photo effect','photologue','photoeffect'),(16,'watermark','photologue','watermark'),(17,'photo size','photologue','photosize'),(18,'Site Block','siteblocks','block'),(19,'Category','pages','category'),(20,'page','pages','page'),(21,'Library','pages','library'),(22,'Event','pages','event'),(23,'Blog','pages','blog'),(24,'Armory','pages','armory'),(25,'user profile','profiles','userprofile'),(26,'menu item','treemenus','menuitem'),(27,'menu','treemenus','menu'),(28,'video','video','video'),(29,'gallery','video','videogallery'),(30,'source','easy_thumbnails','source'),(31,'thumbnail','easy_thumbnails','thumbnail');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('58afa34b4d28a4b4163cbb742165e14a','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-10-16 01:33:32'),('b23935f93cb1689b9b7d91f6d50cabbb','NzIyOTg0M2M4YzExMmIwODIxOGUyZWExNGIzMDBiOWJhNGZjNTMyMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGVuVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-29 15:04:00'),('a5818acdba7089bdfe0cd3bd4f504e77','NGE4MjQ0M2Q3ZDQ4YjMyZDRkNGQzY2I3MjJiNTJmZTA2M2EzYzdjYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQVVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-11-08 00:54:50'),('de82a9e4219f021f37c5c465a309a00b','MTFmNGJkM2IyNmY1YTAzN2Q1YzM1MWM3NmQwZDQxOWJiMDYzODIyMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-11-07 22:12:47'),('da03629ac4142bfd2326a2c2f0132ba6','Y2IwZTM1MjZlOWY0Y2MxMjgxMTAxYWE2NTI4NGU2NzM2ZDViZjM2YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQRVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-10-29 22:27:25'),('34ba95feb5b576826060d8cb0be39ffc','MTIxNzZkNjVmNzhiZjA0MGQyZmIwN2I0ZjVhY2M5Y2ViMThlNmQ4OTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGJnVQ1fYXV0aF91c2VyX2lkcQSKAQZ1Lg==\n','2012-11-07 23:26:28'),('77f997b6749e40720658adfe0eb27748','ZjMxYzc5ZGIxZWMyM2JkMzljNTJmYjUyZTE3YWM3NjlmNjEwNWYxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQV1Lg==\n','2012-11-10 16:40:21'),('a296469bad11dd7379e6ebcd8e6db723','NjljZWVjMzg5ODEyZDdlODIyMDM2MGM5MGFmN2ZkMGMwZTk0Yjg2NjqAAn1xAShVIHJvc2V0dGFf\nY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4VShmODgzNWU2MTk1MzVlMWVkZTU0MGUzMzliOWQwOGMy\nODYyN2ZkNmVmVQ1fYXV0aF91c2VyX2lkigEEVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5j\nb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGVu\ncQJ1Lg==\n','2012-11-26 22:00:36'),('ce737445d2e9594dc2cbc319687ea386','ODllZTI0ZDM5Zjg0MWMwODY1OThlYmJhNmQ1MTE2OGUyY2M0YjdmYzqAAn1xAShVIHJvc2V0dGFf\nY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4VSgyNjM2MTAwM2U0M2U2ZDBlOGIyNzMxY2NjOWQ2ZDc0\nYzM5OWMzNWQ0VRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2Vu\nZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigEBVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGJn\ncQJ1Lg==\n','2012-11-23 03:21:17'),('eac3b8c39e50fa01375a29a0f8b03993','ZTYyMDlkZThlMTRmZmQ5OWQyYmU3NjU4NDUzMjNiNTkwNGFhMTJlMzqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQVVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRVD2RqYW5nb19sYW5ndWFnZXECWAIAAABlbnEDdS4=\n','2012-11-22 23:25:49'),('ce005ee293c9240cbd6469558d9850b7','NGE4MjQ0M2Q3ZDQ4YjMyZDRkNGQzY2I3MjJiNTJmZTA2M2EzYzdjYzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQVVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-11-23 02:55:11'),('bf9de81c9ce9b5920d12139e84da2e33','ZjMxYzc5ZGIxZWMyM2JkMzljNTJmYjUyZTE3YWM3NjlmNjEwNWYxYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQV1Lg==\n','2012-11-22 23:56:27'),('b14d4a8e153dcc263638f41eb475e552','MTAxZGQ5ODAxMzg0YTU5N2VmNDdhODI3MDU4OTc4ZmI4YThiMzg5MjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQRVIHJvc2V0dGFfY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4VSg5YmNlYzNk\nYWRmMDU1NDM4ZjUxNDE2MzQyZDk3MmYxZmE1MWIwZjc1VQ9kamFuZ29fbGFuZ3VhZ2VxAlgCAAAA\nYmdxA3Uu\n','2012-11-23 02:48:01'),('abc3ce9ce3ca23a3328200d2a24ad240','YjJjOGU4OWIyZWMzMTUyYzVlZDc0NWQ4NjE2OGY2OTBjY2JjNTJkZjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGVuVQ1fYXV0aF91c2VyX2lkcQSKAQZ1Lg==\n','2012-11-23 09:05:48'),('f4d4fe62f401ebf4d13711ab8bb40dd8','YTgyNjYyNTIyNTliODg5YjliZjM0NDU2NzdlMjMyMWNjNDU1ODkyMjqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQZVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-11-23 18:07:25'),('c15f65c22ace342228fc5494342bb5c3','ZGQ3ZTlhY2NlOTc5ZGQxMTc2ZmQ5NTRiMTM5OTU1OWY5Y2QxOTVlNDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGVucQNzLg==\n','2012-12-14 12:22:04'),('3db305a4768c7071acfb323b78807c38','MjUzMDcxMTk4NzliZDc0YzBhNzc1ZjBlNzM0YThmZmFjNTAxNjE4MDqAAn1xAShVIHJvc2V0dGFf\nY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4cQJVKGJjOWJhNjAxMGMxMjVjODlmYjc0NDczNDBiODc0\nYjgxOTQ1OWYyZWRVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNr\nZW5kcy5Nb2RlbEJhY2tlbmRVDV9hdXRoX3VzZXJfaWSKAQFVD2RqYW5nb19sYW5ndWFnZVgCAAAA\nYmd1Lg==\n','2012-12-01 13:47:07'),('c1a09507323e72b95b34c9296f5b9a1e','ZTdjZTgwZGE0YzJlNzkwN2IzMTM5ZmViNmJkMWYxMjA2ZDY4YTIzNjqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABlbnECcy4=\n','2012-11-26 22:23:56'),('748bef6876ad2ad236dde1986c3f70b7','Y2UwOGRhYzA2ZTViMzFjYTFmMjUwYzk5ZjY4YTljYWJhMzM3ODA4YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQZVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-11-29 11:24:17'),('51efed8e6c11fecd16977b63b80d4a73','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2012-11-26 22:34:16'),('aca6c30eab361a498ec6c7af94181020','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-11-27 23:22:54'),('2095aa515476f88129c34fc629d64661','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2012-11-28 17:26:09'),('bd284a5de0fdf43743b457f8fd925370','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-11-27 09:54:02'),('3573f2419eadfa912322af9a24c52a06','YWI4ODQ4NWZlNDUwMmI1ZTRlMjA5ZWJjMTZlODNjODU4NTRjOGE3NTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVD2Rq\nYW5nb19sYW5ndWFnZVgCAAAAZW5xAlUNX2F1dGhfdXNlcl9pZIoBBHUu\n','2012-12-01 21:36:19'),('7be1d1618f328f9830ec74f0266f9c48','ZGQ3ZTlhY2NlOTc5ZGQxMTc2ZmQ5NTRiMTM5OTU1OWY5Y2QxOTVlNDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGVucQNzLg==\n','2012-11-28 19:57:02'),('74010fe543649dfa3c69eb5660f070f7','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2012-11-29 12:08:04'),('4419fd17084586421d77d118a4294d2a','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-11-30 19:52:46'),('35c0a0d173fe25abfd65c4c080e29b6c','ZGQ3ZTlhY2NlOTc5ZGQxMTc2ZmQ5NTRiMTM5OTU1OWY5Y2QxOTVlNDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGVucQNzLg==\n','2012-12-01 13:48:10'),('e0634e07e3f4e8b97dd9dc33f44c1f4c','OGJkYzY2ZWQ0NDlkMDgyZDYyOTVkNWY4MTUzMmMzODg2YWZmMTgzYjqAAn1xAShVIHJvc2V0dGFf\nY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4VSg3YWE0MTcyYTQwOTZkYjdjZjg3YjU4OWZiN2M3Yjc1\nYWE5ODAyNGE4VQ1fYXV0aF91c2VyX2lkigEBVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5j\nb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGJn\ncQJ1Lg==\n','2012-12-01 14:01:24'),('488aa2a42eef3fd968111b744b40acfd','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-19 12:21:45'),('7ce480c2d578917fa4b588999ac594b5','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-19 12:21:45'),('f680a6580926845b042dcb676bc505ab','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-12-19 12:21:47'),('cd3f65a50eaa3833f0cfc55c42dfb15b','MmNiMDJlZTU1MTE3ZDZkYmRmZmVlNTNmMWViMzkxOWU1NDBiNThjYzqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2013-02-04 08:58:20'),('e13fffeba9d04536bdb46622eb6a8883','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-12-21 23:31:27'),('a477f1f754885ce4d607c13a71045d8b','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-12-28 13:49:11'),('e26e3d5e02c802abdc770343063bb648','ZGQ3ZTlhY2NlOTc5ZGQxMTc2ZmQ5NTRiMTM5OTU1OWY5Y2QxOTVlNDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGVucQNzLg==\n','2012-12-29 19:05:13'),('3edd0f63847616a92b797aec1effe2a4','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2013-01-08 00:32:13'),('d83594c395370080f998b18a75676e5d','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2013-01-23 22:35:58'),('3b3a4a837f3d44d3029b1cff3bbe235a','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-01-29 17:41:18'),('d49efc7511215f99835269602479bdbd','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2013-02-07 01:21:55'),('be74bf860202c2ba1ffb9e98e235ce84','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-02-09 00:05:19'),('d9b7c65e4e4993120988f51ab061e409','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2013-02-11 22:25:54'),('eaa9b5a10f74a2a17057d1ec16cc9d0a','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2013-02-14 17:05:52'),('77bed481fc3412c4bc7e0057ba855ecf','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2013-02-15 00:51:18'),('60ce31bd78d0a193eb53027a5dd278d1','MmNiMDJlZTU1MTE3ZDZkYmRmZmVlNTNmMWViMzkxOWU1NDBiNThjYzqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2013-03-21 23:00:05'),('ea63a9dc4c9c1e6485f2a00b78e4ccf7','NjA4NTQ2NmJlYmI2ZTZkYzNlZmEyOTM5ODcyYzg2MjA2N2JlYmQ1YTqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-03-10 15:01:41'),('c1a2b09d6da3e1875f1593d76ff72fb0','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2013-04-12 10:17:00'),('b304f9e22b0f989bc9a1732aed776d88','OWU2NDM2YjMzMmNkODdmODU5ODZkZDE4OTIxNjU5NDkwYjQ2NWZhNTqAAn1xAShVDV9hdXRoX3Vz\nZXJfaWSKAQRVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRVD2RqYW5nb19sYW5ndWFnZXECWAIAAABiZ3EDdS4=\n','2013-04-12 23:02:35');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '2009-11-22 21:16:23',
  `storage_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_name_7549c98cc6dd6969_uniq` (`name`,`storage_hash`),
  KEY `easy_thumbnails_source_52094d6e` (`name`),
  KEY `easy_thumbnails_source_3a997c55` (`storage_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '2009-11-22 21:16:23',
  `source_id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq` (`source_id`,`name`,`storage_hash`),
  KEY `easy_thumbnails_thumbnail_89f89e85` (`source_id`),
  KEY `easy_thumbnails_thumbnail_52094d6e` (`name`),
  KEY `easy_thumbnails_thumbnail_3a997c55` (`storage_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_category`
--

DROP TABLE IF EXISTS `pages_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type` varchar(3) NOT NULL DEFAULT 'SYS',
  `title` varchar(60) DEFAULT NULL,
  `title_bg` varchar(60) DEFAULT NULL,
  `title_en` varchar(60) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_category_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_category`
--

LOCK TABLES `pages_category` WRITE;
/*!40000 ALTER TABLE `pages_category` DISABLE KEYS */;
INSERT INTO `pages_category` VALUES (1,'EVE','Camps','Лагери','Camps','camps'),(2,'EVE','Seminars','Семинари','Seminars','seminars'),(3,'EVE','Demonstrations','Демонстрации','Demonstrations','demonstrations'),(5,'LIB','Armory','Оръжейна','Armory','armory');
/*!40000 ALTER TABLE `pages_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `title_bg` varchar(60) DEFAULT NULL,
  `title_en` varchar(60) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `body` longtext NOT NULL,
  `body_bg` longtext,
  `body_en` longtext,
  `created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `content_type` varchar(3) NOT NULL,
  `created_by_id` int(11),
  `edited_by_id` int(11),
  `edited` datetime,
  `category_id` int(11),
  `event_start` datetime,
  `event_end` datetime,
  `published` datetime,
  `page_image` varchar(100),
  PRIMARY KEY (`id`),
  KEY `pages_page_a951d5d6` (`slug`),
  KEY `pages_page_b5de30be` (`created_by_id`),
  KEY `pages_page_9c2bb034` (`edited_by_id`),
  KEY `pages_page_42dc49bc` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'test page','тест страница','test page','test-page','<table id=\"table84558\" class=\"current\">\r\n\r\n<thead>\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n</thead>\r\n\r\n<tbody>\r\n	<tr>\r\n		<td>&nbsp;test</td>\r\n\r\n		<td>tree&nbsp;</td>\r\n\r\n		<td class=\"current\">&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n</tbody>\r\n</table>','тест страница','<table id=\"table84558\" class=\"current\">\r\n\r\n<thead>\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n</thead>\r\n\r\n<tbody>\r\n	<tr>\r\n		<td>&nbsp;test</td>\r\n\r\n		<td>tree&nbsp;</td>\r\n\r\n		<td class=\"current\">&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n</tbody>\r\n</table>','2012-10-14 16:18:15',1,'SYS',1,1,'2012-11-08 23:57:08',NULL,NULL,NULL,'2012-11-08 23:57:08',''),(2,'About','За школата','About','about','<div><b>SCHOOL OF MEDIEVAL SWORDSMANSHIP MOTUS</b></div>\r\n<br>\r\n<div style=\"float:left; \" 300px;\"=\"\">The purpose of the School of Medieval Swordsmanship&nbsp;MOTUS is to study the Medieval European fencing traditions&nbsp;from the period of the 13th to 16th centuries.&nbsp;</div>\r\n<div style=\"float: right;\"><img src=\"http://91.230.195.221:8080/media/photologue/photos/cache/378193_10151211843291913_1976424725_n_shadowbox.jpg\" style=\"cursor: default; height: 274px; width: 366.47499999999997px; \"></div>\r\n<br>\r\n<div>The school was founded in 2003, when an experimental “Group for Research and Study of Medieval Martial Arts” was created. In 2006 the group evolved into a fencing club and in 2010 into School of Medieval Swordsmanship MOTUS</div>\r\n<br>\r\n<div>The art of Medieval European Swordsmanship was preserved in many manuscripts from the 13th to 16th centuries.&nbsp;</div>\r\n<br>\r\n<div>The training methods used in the fencing school MOTUS come as a direct result of:</div>\r\n<div>- Studying fencing treatises<span rel=\"pastemarkerend\" id=\"pastemarkerend15759\"></span> from the period of 1275-1599.</div>\r\n<div>- Experimental and practical approaches, incorporating the study of historical patterns and working with precision replicas of different types of medieval weapons.</div>\r\n<div>- Working with research and literature.</div>\r\n<div><br>\r\n The training program of fencing school MOTUS includes working with the following types of weapons: </div>\r\n<div>- Short sword</div>\r\n<div>- Short sword and buckler</div>\r\n<div>- Long sword</div>\r\n<br>\r\n','<div><b>За Школата</b></div>\r\n<div style=\"float:left;\"><div>Школа за средновековна фехтовка МОТУС се занимава с изучаване на средновековната европейска фехтовална традиция от периода XIII-XVI в.</div>\r\n</div>\r\n<div style=\"float: right;\"><img src=\"http://91.230.195.221:8080/media/photologue/photos/cache/378193_10151211843291913_1976424725_n_shadowbox.jpg\" style=\"cursor: default; height: 274px; width: 366.47499999999997px; \"></div>\r\n<br>\r\n<div>Основите на школата са положени през 2003г., когато е създадена експериментална \"Група за изследване и изучаване на средновековни бойни изкуства\". През 2006г. групата се трансформира във фехтовален клуб, а след летния тренировъчен лагер през 2010г. в школа.</div>\r\n<br>\r\n<div>Европейскoто средновековнo фехтовалнo изкуство се е съхранилo в множество ръкописни и печатни документи от периода XIII-XVI в. Методиката на обучение е пряк резултат от:</div>\r\n<br>\r\n<div>- Работа с фехтовални трактати от периода 1275-1599 г.</div>\r\n<div>- Експериментално-практически подход, включващ изучаване на исторически образци на различни типове средновековно оръжие и работа с прецизни реплики.</div>\r\n<div>- Работа с изследвания и интерпретативна литература.</div>\r\n<br>\r\n<div>Във школата се изучават:</div>\r\n<div>- Едноръчен меч</div>\r\n<div>- Едноръчен меч и малък щит</div>\r\n<div>- Дълъг меч<br>\r\n<br>\r\nПовече за това къде тренираме - в Дейност, Тренировки.<br>\r\nПовече за това какво е европейска средновеквона фехтовка - в Sprechfenster, Библиотеката.<span rel=\"pastemarkerend\" id=\"pastemarkerend12407\"></span></div>\r\n','<div><b>SCHOOL OF MEDIEVAL SWORDSMANSHIP MOTUS</b></div>\r\n<br>\r\n<div style=\"float:left; \" 300px;\"=\"\">The purpose of the School of Medieval Swordsmanship&nbsp;MOTUS is to study the Medieval European fencing traditions&nbsp;from the period of the 13th to 16th centuries.&nbsp;</div>\r\n<div style=\"float: right;\"><img src=\"http://91.230.195.221:8080/media/photologue/photos/cache/378193_10151211843291913_1976424725_n_shadowbox.jpg\" style=\"cursor: default; height: 274px; width: 366.47499999999997px; \"></div>\r\n<br>\r\n<div>The school was founded in 2003, when an experimental “Group for Research and Study of Medieval Martial Arts” was created. In 2006 the group evolved into a fencing club and in 2010 into School of Medieval Swordsmanship MOTUS</div>\r\n<br>\r\n<div>The art of Medieval European Swordsmanship was preserved in many manuscripts from the 13th to 16th centuries.&nbsp;</div>\r\n<br>\r\n<div>The training methods used in the fencing school MOTUS come as a direct result of:</div>\r\n<div>- Studying fencing treatises<span rel=\"pastemarkerend\" id=\"pastemarkerend15759\"></span> from the period of 1275-1599.</div>\r\n<div>- Experimental and practical approaches, incorporating the study of historical patterns and working with precision replicas of different types of medieval weapons.</div>\r\n<div>- Working with research and literature.</div>\r\n<div><br>\r\n The training program of fencing school MOTUS includes working with the following types of weapons: </div>\r\n<div>- Short sword</div>\r\n<div>- Short sword and buckler</div>\r\n<div>- Long sword</div>\r\n<br>\r\n','2012-10-14 16:19:37',1,'SYS',1,4,'2012-11-12 22:20:07',NULL,NULL,NULL,'2012-11-12 22:20:07',''),(11,'Consulting','Консултации','Consulting','consulting','The MOTUS Fencing School can offer demonstrations, seminars, private lessons, consulting and choreography of battle scenes for the movie and television industry, theatrical productions, advertising and musical video clips, and participation in educational and entertainment programs and events.<span rel=\"pastemarkerend\" id=\"pastemarkerend65086\"></span><br>\r\n','Школата по фехтовка \"МОТУС\" предлага демонстрации, семинари, частни уроци, консултации и хореография на бойни сцени за филмовата и телевизионна индустрия, театрални продукции, реклами и музикални клипове, и участие в образователни и забавни програми и събития.<br>\r\n','The MOTUS Fencing School can offer demonstrations, seminars, private lessons, consulting and choreography of battle scenes for the movie and television industry, theatrical productions, advertising and musical video clips, and participation in educational and entertainment programs and events.<span rel=\"pastemarkerend\" id=\"pastemarkerend65086\"></span><br>\r\n','2012-11-08 23:38:43',1,'SYS',4,4,'2012-11-12 22:08:59',NULL,NULL,NULL,'2012-11-12 22:08:59',''),(3,'Instructors','Инструктори','Instructors','instructors','<p style=\"text-align: justify;\"></p>\r\n\r\n<table id=\"table28773\" style=\"text-align: start;\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\">\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><b>Miroslav Lesichkov</b></p>\r\n\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i class=\"current\">Instructor</i></p>\r\n\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i>Founder of \"MOTUS\"</i></p>\r\n&nbsp; <br>\r\n</td>\r\n\r\n		<td class=\"\"><br>\r\n</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\"><span style=\"background-color: rgb(193, 195, 204); color: rgb(24, 24, 25);\"><b>Zdravko Peev</b></span>\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\" class=\"current\"><i>Junior-instructor</i></p>\r\n<br>\r\n\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\" class=\"current\"><br>\r\n</p>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;<img src=\"http://91.230.195.221:8080/media/photologue/photos/cache/Zdravko_display.jpg\" class=\"current\" style=\"cursor: nw-resize; height: 96px; width: 120.358px;\"></td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n','\r\n<table id=\"table28773\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\">\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204); \" class=\"current\"><b>Мирослав Лесичков</b></p>\r\n\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i>Инструктор</i></p>\r\n\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i>Основател на „Мотус”</i></p>\r\n\r\n<p class=\"current\"><br>\r\n</p>\r\n\r\n<p class=\"current\">Занимава се със спорт и бойни изкуствa от ранна възраст - бокс, спортна фехтовка (сабя) с треньори Жеко Маринов и Ивайло Воденов в клуб Славия, карате, айкидо, Катори шинто рю (под ръководството на Нагасе Сенсей). Започва занимания с европейската фехтовална традиция през 1998г.<br>\r\n През 2003 г. създава експериментална „Група за изследване и изучаване на средновековни бойни изкуства” . През 2006 г. групата се трансформира във фехтовален клуб, а след летния тренировъчен лагер през 2010 г. - в „Школа за средновековна фехтовка - Мотус”.</p>\r\n &nbsp; <br>\r\n</td>\r\n\r\n		<td class=\"\"><br>\r\n</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\"><b><span style=\"background-color: rgb(193, 195, 204); color: rgb(24, 24, 25);\">Здравко Пеев</span></b>\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i>Помощник-инструктор</i></p>\r\n<br>\r\n\r\n<p class=\"current\">Здравко Пеев започва занимания с историческа фехтовка през 2006 г. След летния тренировъчен лагер през август 2010 г.&nbsp;става помощник<b>-</b>инструктор.</p>\r\n\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><br>\r\n</p>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;<br>\r\n</td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n','<p style=\"text-align: justify;\"></p>\r\n\r\n<table id=\"table28773\" style=\"text-align: start;\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\">\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><b>Miroslav Lesichkov</b></p>\r\n\r\n<p class=\"current\" style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i class=\"current\">Instructor</i></p>\r\n\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\"><i>Founder of \"MOTUS\"</i></p>\r\n&nbsp; <br>\r\n</td>\r\n\r\n		<td class=\"\"><br>\r\n</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\"><span style=\"background-color: rgb(193, 195, 204); color: rgb(24, 24, 25);\"><b>Zdravko Peev</b></span>\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\" class=\"current\"><i>Junior-instructor</i></p>\r\n<br>\r\n\r\n<p style=\"margin: 0px; color: rgb(24, 24, 25); background-color: rgb(193, 195, 204);\" class=\"current\"><br>\r\n</p>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;<img src=\"http://91.230.195.221:8080/media/photologue/photos/cache/Zdravko_display.jpg\" class=\"current\" style=\"cursor: nw-resize; height: 96px; width: 120.358px;\"></td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n','2012-10-14 16:27:52',1,'SYS',1,4,'2013-03-29 23:03:00',NULL,NULL,NULL,'2013-03-29 23:03:00',''),(4,'Contacts','Контакти','Contacts','contacts','<p>email:&nbsp;<span style=\"color: rgb(51, 51, 51);\">motus_freifechter@abv.bg</span></p>\r\n\r\n<p>phone:&nbsp; 0888969645; 0886238298<span rel=\"pastemarkerend\" id=\"pastemarkerend29634\">&nbsp;</span><span rel=\"pastemarkerend\" id=\"pastemarkerend2808\"></span></p>\r\n<br>\r\n\r\n<p>Our training hall is in \"Chitalishte Hristo Botev - 1917\", at the corner of Tzar Simeon &nbsp;str. and Bregalnitza str. You can find us there during training hours, Everyone is welcome.</p>\r\n<br>\r\n\r\n<p><iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe></p>\r\n','<div>\r\n<p><span style=\"line-height: 1.5em;\">Залата ни се намира в Читалище \"Христо Ботев - 1917\", на ъгъла на улица \"Цар Симеон\" и улица \"Брегалница\".&nbsp;</span><br>\r\n</p>\r\n\r\n<p><span style=\"line-height: 1.5em;\"><br>\r\n</span></p>\r\n</div>\r\n<iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe>&nbsp; \r\n<p>При проявен интерес към работата на школата външни посетители могат да присъстват на вечерните тренировки (19:30 - 22:00 ч.), след предварително известяване. </p>\r\n\r\n<p>За контакти:</p>\r\n\r\n<p>тел. 0886 238&nbsp;298</p>\r\n\r\n<p>тел. 0888 969&nbsp;645</p>\r\n\r\n<p>info@motus-swordsmanship.eu</p>\r\n\r\n<p><a href=\"mailto:zdr_peev@abv.bg\">zdr_peev@abv.bg</a></p>\r\n\r\n<p><a href=\"mailto:b-krustev@hotmail.com\">b-krustev@hotmail.com</a></p>\r\n\r\n<p><a href=\"mailto:motus_freifechter@abv.bg\">motus_freifechter@abv.bg</a></p>\r\n','<p>email:&nbsp;<span style=\"color: rgb(51, 51, 51);\">motus_freifechter@abv.bg</span></p>\r\n\r\n<p>phone:&nbsp; 0888969645; 0886238298<span rel=\"pastemarkerend\" id=\"pastemarkerend29634\">&nbsp;</span><span rel=\"pastemarkerend\" id=\"pastemarkerend2808\"></span></p>\r\n<br>\r\n\r\n<p>Our training hall is in \"Chitalishte Hristo Botev - 1917\", at the corner of Tzar Simeon &nbsp;str. and Bregalnitza str. You can find us there during training hours, Everyone is welcome.</p>\r\n<br>\r\n\r\n<p><iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe></p>\r\n','2012-10-14 16:29:38',1,'SYS',1,4,'2013-03-29 23:05:09',NULL,NULL,NULL,'2013-03-29 23:05:09',''),(16,'Training','Тренировки','Training','training','<p>Training is five times a week, you may come to any number you want. The basic equipment you need is comfortable clothing, training shoes (if you prefer to train with shoes) and simple working gloves. For the equipment you\'ll need later one, check the Armoury, in Sprechfentser.</p>\r\n<br>\r\n\r\n<p>Students under 16 need permission from their parents. A form will be provided soon.</p>\r\n<h2>Trainings schedule:</h2>\r\n<br>\r\n\r\n<table id=\"table95343\" border=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\" style=\"text-align: center;\"><b>Monday&nbsp;</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Tuesday</b></td>\r\n\r\n		<td style=\"text-align: center; \" class=\"\"><b>Wednesday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Thirsday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Friday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Saturday</b></td>\r\n\r\n		<td style=\"text-align: center;\" class=\"\"><b>Sunday</b></td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 22:00</td>\r\n\r\n		<td><br>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;19:30 - 22:00</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 21:30</td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<p><iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe></p>\r\n','<p>Тренировките са 5 пъти в седмицата, като можете да идвате на тези които са ви удобни. В началото се нуждаете от удобни дрехи, и допълнителни обувки за тренировка (гуменки, например). За екипировката, нужна по-нататък. вижте в Sprechfenster, Оръжейната.</p>\r\n<br>\r\n\r\n<p>Желаещите да тренират под 16 се нуждаят от позволение от родител. Форма за такова ще бъде пусната скоро.</p>\r\n\r\n<p>Тренировки се провеждат в следните дни и часове <i>в Читалище „Христо Ботев 1917”:</i></p>\r\n\r\n<p><i><br>\r\n</i></p>\r\n<h2>График на тренировките:</h2>\r\n\r\n<table id=\"table95343\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\" style=\"text-align: center;\"><b>Понеделник&nbsp;</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Вторник&nbsp;</b></td>\r\n\r\n		<td style=\"text-align: center;\"><b>Сряда&nbsp;</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Четвъртък&nbsp;</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Петък</b></td>\r\n\r\n		<td style=\"text-align: center; \" class=\"\"><b>Събота</b></td>\r\n\r\n		<td style=\"text-align: center;\"><b>Неделя&nbsp;</b></td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\"><br>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;19:30 - 22:00</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 22:00</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 21:30</td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<br>\r\n\r\n<p><iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe></p>\r\n\r\n<p>При проявен интерес към работата на школата външни посетители могат да присъстват на вечерните тренировки (19:30 - 22:00 ч.), след предварително известяване. </p>\r\n\r\n<p>За контакти:</p>\r\n\r\n<p>тел. 0886 238&nbsp;298</p>\r\n\r\n<p>тел. 0888 969&nbsp;645</p>\r\n\r\n<p>info@motus-swordsmanship.eu</p>\r\n\r\n<p><a href=\"mailto:zdr_peev@abv.bg\">zdr_peev@abv.bg</a></p>\r\n\r\n<p><a href=\"mailto:b-krustev@hotmail.com\">b-krustev@hotmail.com</a></p>\r\n\r\n<p><a href=\"mailto:motus_freifechter@abv.bg\">motus_freifechter@abv.bg</a></p>\r\n\r\n<p><b><br>\r\n</b></p>\r\n\r\n<p><b>При първото посещение тренировката само се </b><i><b>наблюдава</b></i><b>. Ако прецените, че желаете да тренирате, можете да започнете от следващата тренировка.</b></p>\r\n\r\n<p><b><br>\r\n</b></p>\r\n\r\n<p><b>Желаещите да практикуват трябва да имат навършени 16 г.</b></p>\r\n\r\n<p><b><br>\r\n</b></p>\r\n\r\n<p><b>1. Екипировка</b></p>\r\n\r\n<p>За да започнете обучението си ще ви е необходима следната екипировка:</p>\r\n\r\n<ul>\r\n	<li>\r\n<p><i>Едноръчен дървен меч*</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Фехтовални ръкавици </i></p>\r\n</li>\r\n	<li>\r\n<p><i>Униформен екип</i> - тениска със знака на школата (пролет-есен), суичер (есен-зима), спортно долнище (тъмносиньо/черно), спортни обувки.</p>\r\n</li>\r\n</ul>\r\n<p>В<i> зависимост от отделеното време за обучение</i> ще ви бъде нужна допълнителна екипировка:</p>\r\n\r\n<p>След 1-3 месеца:</p>\r\n\r\n<p><i>Фехтовална маска</i></p>\r\n\r\n<ul>\r\n	<li>\r\n<p><i>Протектор за предмишници и лакти</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Протектори за колене</i></p>\r\n</li>\r\n</ul>\r\n<p>След 12-18 месеца:</p>\r\n\r\n<p><i>Дървен бъклър (кръгъл щит с диаметър около 30 см.) </i></p>\r\n\r\n<ul>\r\n	<li>\r\n<p><i>Дървен дълъг меч</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Гамбезон (ватирана защитна дреха, ватенка.)</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Метален едноръчен меч</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Метален бъклър</i></p>\r\n</li>\r\n	<li>\r\n<p><i>Метален дълъг меч</i></p>\r\n</li>\r\n</ul>\r\n<p><b>*С цел постигане на максимална </b><b>безопасност</b><b> и </b><b>ефективност</b><b> при тренировките, </b><b>тренировъчните оръжия</b><b> и </b><b>екипировката</b><b> в Школата са </b><b>стандартизирани</b><b>. </b><b>За всички подробности, свързани с набавянето им се консултирайте с инструкторите.</b></p>\r\n\r\n<p><span rel=\"pastemarkerend\" id=\"pastemarkerend43743\"></span><br>\r\n</p>','<p>Training is five times a week, you may come to any number you want. The basic equipment you need is comfortable clothing, training shoes (if you prefer to train with shoes) and simple working gloves. For the equipment you\'ll need later one, check the Armoury, in Sprechfentser.</p>\r\n<br>\r\n\r\n<p>Students under 16 need permission from their parents. A form will be provided soon.</p>\r\n<h2>Trainings schedule:</h2>\r\n<br>\r\n\r\n<table id=\"table95343\" border=\"1\" cellpadding=\"5\">\r\n<tbody>\r\n	<tr>\r\n		<td class=\"\" style=\"text-align: center;\"><b>Monday&nbsp;</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Tuesday</b></td>\r\n\r\n		<td style=\"text-align: center; \" class=\"\"><b>Wednesday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Thirsday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Friday</b></td>\r\n\r\n		<td class=\"\" style=\"text-align: center;\"><b>Saturday</b></td>\r\n\r\n		<td style=\"text-align: center;\" class=\"\"><b>Sunday</b></td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td class=\"\">10:30 - 13:00</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n	</tr>\r\n\r\n	<tr>\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 22:00</td>\r\n\r\n		<td><br>\r\n</td>\r\n\r\n		<td class=\"\">&nbsp;19:30 - 22:00</td>\r\n\r\n		<td class=\"\">&nbsp;</td>\r\n\r\n		<td>&nbsp;</td>\r\n\r\n		<td class=\"\">19:30 - 21:30</td>\r\n	</tr>\r\n</tbody>\r\n</table>\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<p><iframe src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\" frameborder=\"0\" height=\"500\" width=\"600\"></iframe></p>\r\n','2012-11-09 00:03:52',1,'SYS',4,4,'2013-03-29 23:09:38',NULL,NULL,NULL,'2013-03-29 23:09:38',''),(15,'Links','Връзки','Links','links','<div><a href=\"http://www.albion-europe.com\"><b>Albion Swords</b></a>&nbsp;- producers of the best replicas of medieval swords. Their catalog includes training weapons, sharp modern swords, and exact reproductions of museum swords.</div>\r\n<br>\r\n<div><a href=\"http://pbthistoricalfencing.com\"><b>PBT Historical Fencing</b></a>&nbsp;- the website on medieval equipment of the worlds leading sports fencing manufacturer - they offer fencing masks, gloves, hand and neck protectors, etc.</div>\r\n<br>','<div><a href=\"http://www.albion-europe.com/\"><b>Albion Swords</b></a>&nbsp;- производители на най-добрите реплики на средновековни европейски мечове. В каталога им има тренировъчни затъпени мечове, заточени екземпляри, базирани на множество експонати, и точни копия на музейни мечове.</div>\r\n<br>\r\n<div><a href=\"http://pbthistoricalfencing.com/\"><b>PBT Historical Fencing</b></a>&nbsp;- сайта на историческа фехтовка на един от най-големите производители на екипировка по спортна фехтовка – предлагат защитни средства, като маски, ръкавици, протектори за тяло и др.<br>\r\n<br>\r\n<b><a href=\"http://medievalfencing.blog.bg/\">Блог за Средновековна фехтовка</a></b>- блогът на Здравко Пеев, в който се публикуват информативни и люботни статии.<br>\r\n<br>\r\n<b><a href=\"http://www.militarymuseum.bg/\">Национален Военноисторически Музей</a></b><br>\r\n<br>\r\n<b><a href=\"http://www.historymuseum.org/\">Национален Исторически Музей</a></b><br>\r\n<br>\r\n<br>\r\n<br>\r\n</div>\r\n','<div><a href=\"http://www.albion-europe.com\"><b>Albion Swords</b></a>&nbsp;- producers of the best replicas of medieval swords. Their catalog includes training weapons, sharp modern swords, and exact reproductions of museum swords.</div>\r\n<br>\r\n<div><a href=\"http://pbthistoricalfencing.com\"><b>PBT Historical Fencing</b></a>&nbsp;- the website on medieval equipment of the worlds leading sports fencing manufacturer - they offer fencing masks, gloves, hand and neck protectors, etc.</div>\r\n<br>','2012-11-08 23:51:05',1,'SYS',4,6,'2012-11-09 17:03:32',NULL,NULL,NULL,'2012-11-09 17:03:32','');
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_gallery`
--

DROP TABLE IF EXISTS `photologue_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL DEFAULT '2012-10-02 01:08:48',
  `title` varchar(100) NOT NULL,
  `title_bg` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `title_slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `tags` varchar(255) NOT NULL,
  `description_bg` longtext,
  `description_en` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_slug` (`title_slug`),
  UNIQUE KEY `title_bg` (`title_bg`),
  UNIQUE KEY `title_en` (`title_en`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery`
--

LOCK TABLES `photologue_gallery` WRITE;
/*!40000 ALTER TABLE `photologue_gallery` DISABLE KEYS */;
INSERT INTO `photologue_gallery` VALUES (2,'2012-11-03 15:25:57','Site Pages Photos',NULL,NULL,'pages_photos','System album for holding images added directly to the pages',0,'',NULL,NULL),(3,'2012-11-09 01:16:20','Summer camp 2012','Летен лагер 2012','Summer camp 2012','summer-camp-2012','',1,'',NULL,NULL);
/*!40000 ALTER TABLE `photologue_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_gallery_photos`
--

DROP TABLE IF EXISTS `photologue_gallery_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_gallery_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `photologue_gallery_photos_gallery_id_66baa6b5cca2390_uniq` (`gallery_id`,`photo_id`),
  KEY `photologue_gallery_photos_cb7c733d` (`gallery_id`),
  KEY `photologue_gallery_photos_7c6c8bb1` (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery_photos`
--

LOCK TABLES `photologue_gallery_photos` WRITE;
/*!40000 ALTER TABLE `photologue_gallery_photos` DISABLE KEYS */;
INSERT INTO `photologue_gallery_photos` VALUES (2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,3,6),(7,3,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,3,19),(20,3,20);
/*!40000 ALTER TABLE `photologue_gallery_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_galleryupload`
--

DROP TABLE IF EXISTS `photologue_galleryupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_galleryupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_file` varchar(100) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `title` varchar(75) NOT NULL,
  `caption` longtext NOT NULL,
  `description` longtext NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photologue_galleryupload_cb7c733d` (`gallery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_galleryupload`
--

LOCK TABLES `photologue_galleryupload` WRITE;
/*!40000 ALTER TABLE `photologue_galleryupload` DISABLE KEYS */;
/*!40000 ALTER TABLE `photologue_galleryupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photo`
--

DROP TABLE IF EXISTS `photologue_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `date_taken` datetime DEFAULT NULL,
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `crop_from` varchar(10) NOT NULL DEFAULT 'center',
  `effect_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `title_slug` varchar(50) NOT NULL,
  `caption` longtext NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '2012-10-02 01:08:48',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `tags` varchar(255) NOT NULL,
  `title_bg` varchar(100),
  `title_en` varchar(100),
  `caption_bg` longtext,
  `caption_en` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_slug` (`title_slug`),
  UNIQUE KEY `title_bg` (`title_bg`),
  UNIQUE KEY `title_en` (`title_en`),
  KEY `photologue_photo_eb185d3f` (`effect_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photo`
--

LOCK TABLES `photologue_photo` WRITE;
/*!40000 ALTER TABLE `photologue_photo` DISABLE KEYS */;
INSERT INTO `photologue_photo` VALUES (1,'photologue/photos/PIC_0009.JPG','2012-11-03 14:54:36',94,'center',NULL,'тетет','tetetaste',' ','2012-11-03 14:54:35',1,'','тетет','тететасте',NULL,' '),(2,'photologue/photos/PIC_0004.JPG','2012-11-03 15:25:57',17,'center',NULL,'d48bf6bce5db672e9c5d45d684111628.JPG','d48bf6bce5db672e9c5d45d684111628jpg','','2012-11-03 15:25:57',1,'',NULL,NULL,NULL,NULL),(3,'photologue/photos/Miro.jpg','2012-11-08 23:24:33',16,'center',NULL,'902970ad35f67070d4a8d72f018856a5.jpg','902970ad35f67070d4a8d72f018856a5jpg','','2012-11-08 23:24:33',1,'',NULL,NULL,NULL,NULL),(4,'photologue/photos/Zdravko.jpg','2012-11-08 23:25:09',15,'center',NULL,'8055536c0187e312f50c707c4858ab38.jpg','8055536c0187e312f50c707c4858ab38jpg','','2012-11-08 23:25:09',1,'',NULL,NULL,NULL,NULL),(5,'photologue/photos/PIC_0003.JPG','2012-11-08 23:45:40',10,'center',NULL,'c8504620b9d33e129ad0d22558666431.JPG','c8504620b9d33e129ad0d22558666431jpg','','2012-11-08 23:45:40',1,'',NULL,NULL,NULL,NULL),(6,'photologue/photos/185416_10151211860076913_506949799_n.jpg','2012-11-09 01:19:24',60,'center',NULL,'The swords','swords',' ','2012-11-09 01:19:24',1,'','Мечовете','The swords',NULL,' '),(7,'photologue/photos/205939_10151211828586913_1313474639_n.jpg','2012-11-09 01:20:32',72,'center',NULL,'The school','school',' ','2012-11-09 01:20:32',1,'',NULL,'The school',NULL,' '),(8,'photologue/photos/293218_10151211856196913_133551117_n.jpg','2012-11-09 01:21:08',28,'center',NULL,' ','frei1',' ','2012-11-09 01:21:08',1,'',NULL,' ',NULL,' '),(9,'photologue/photos/309275_10151211836176913_1081777674_n.jpg','2012-11-09 01:22:00',36,'center',NULL,'4','lesson1',' ','2012-11-09 01:22:00',1,'',NULL,'4',NULL,' '),(10,'photologue/photos/375897_10151211839276913_45639236_n.jpg','2012-11-09 01:22:18',44,'center',NULL,'5','5',' ','2012-11-09 01:22:18',1,'',NULL,'5',NULL,' '),(11,'photologue/photos/378193_10151211843291913_1976424725_n.jpg','2012-11-09 01:22:31',56,'center',NULL,'6','6',' ','2012-11-09 01:22:31',1,'',NULL,'6',NULL,' '),(12,'photologue/photos/430186_10151211829291913_1807304009_n.jpg','2012-11-09 01:22:46',60,'center',NULL,'7','7',' ','2012-11-09 01:22:46',1,'',NULL,'7',NULL,' '),(13,'photologue/photos/480996_10151211822901913_1992787883_n.jpg','2012-11-09 01:23:11',72,'center',NULL,'8','8',' ','2012-11-09 01:23:11',1,'',NULL,'8',NULL,' '),(14,'photologue/photos/523103_10151211839546913_495776843_n.jpg','2012-11-09 01:23:26',52,'center',NULL,'9','9',' ','2012-11-09 01:23:26',1,'',NULL,'9',NULL,' '),(15,'photologue/photos/526339_10151211862326913_652731782_n.jpg','2012-11-09 01:23:46',48,'center',NULL,'10','10',' ','2012-11-09 01:23:46',1,'',NULL,'10',NULL,' '),(16,'photologue/photos/530921_10151211857896913_988506589_n.jpg','2012-11-09 01:23:59',40,'center',NULL,'11','11',' ','2012-11-09 01:23:59',1,'',NULL,'11',NULL,' '),(17,'photologue/photos/551654_10151211838631913_880227959_n.jpg','2012-11-09 01:24:10',52,'center',NULL,'12','12',' ','2012-11-09 01:24:10',1,'',NULL,'12',NULL,' '),(18,'photologue/photos/562867_10151211839851913_9189806_n.jpg','2012-11-09 01:24:30',40,'center',NULL,'13','13',' ','2012-11-09 01:24:30',1,'',NULL,'13',NULL,' '),(19,'photologue/photos/574559_10151211835201913_817106377_n.jpg','2012-11-09 01:24:40',128,'center',NULL,'14','14',' ','2012-11-09 01:24:40',1,'',NULL,'14',NULL,' '),(20,'photologue/photos/578901_10151211855881913_1154183100_n.jpg','2012-11-09 01:24:51',48,'center',NULL,'15','15',' ','2012-11-09 01:24:51',1,'',NULL,'15',NULL,' '),(21,'photologue/photos/PIC_0002.JPG','2012-11-09 02:48:30',0,'center',NULL,'tet','tet','tete','2012-11-09 02:48:30',1,'',NULL,'tet','tetet','tete'),(22,'photologue/photos/PIC_0019.JPG','2012-11-09 03:02:29',0,'center',NULL,'fsfs','fsfs','fsfsfs','2012-11-09 03:02:29',1,'','fsfsf','fsfs','fsfsfs','fsfsfs');
/*!40000 ALTER TABLE `photologue_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photoeffect`
--

DROP TABLE IF EXISTS `photologue_photoeffect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photoeffect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `transpose_method` varchar(15) NOT NULL,
  `color` double NOT NULL DEFAULT '1',
  `brightness` double NOT NULL DEFAULT '1',
  `contrast` double NOT NULL DEFAULT '1',
  `sharpness` double NOT NULL DEFAULT '1',
  `filters` varchar(200) NOT NULL,
  `reflection_size` double NOT NULL DEFAULT '0',
  `reflection_strength` double NOT NULL DEFAULT '0.6',
  `background_color` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photoeffect`
--

LOCK TABLES `photologue_photoeffect` WRITE;
/*!40000 ALTER TABLE `photologue_photoeffect` DISABLE KEYS */;
/*!40000 ALTER TABLE `photologue_photoeffect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_photosize`
--

DROP TABLE IF EXISTS `photologue_photosize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_photosize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `quality` int(10) unsigned NOT NULL DEFAULT '70',
  `upscale` tinyint(1) NOT NULL DEFAULT '0',
  `crop` tinyint(1) NOT NULL DEFAULT '0',
  `pre_cache` tinyint(1) NOT NULL DEFAULT '0',
  `increment_count` tinyint(1) NOT NULL DEFAULT '0',
  `effect_id` int(11) DEFAULT NULL,
  `watermark_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `photologue_photosize_eb185d3f` (`effect_id`),
  KEY `photologue_photosize_8036ac11` (`watermark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photosize`
--

LOCK TABLES `photologue_photosize` WRITE;
/*!40000 ALTER TABLE `photologue_photosize` DISABLE KEYS */;
INSERT INTO `photologue_photosize` VALUES (1,'admin_thumbnail',100,60,70,0,1,1,0,NULL,NULL),(2,'thumbnail',100,60,70,0,0,1,0,NULL,NULL),(3,'display',450,360,70,0,1,0,1,NULL,NULL),(4,'event_thumb',150,150,70,0,1,1,0,NULL,NULL),(5,'shadowbox',700,0,70,0,0,1,1,NULL,NULL),(6,'lattest_photos',240,180,70,0,1,1,0,NULL,NULL);
/*!40000 ALTER TABLE `photologue_photosize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photologue_watermark`
--

DROP TABLE IF EXISTS `photologue_watermark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photologue_watermark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `style` varchar(5) NOT NULL DEFAULT 'scale',
  `opacity` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_watermark`
--

LOCK TABLES `photologue_watermark` WRITE;
/*!40000 ALTER TABLE `photologue_watermark` DISABLE KEYS */;
/*!40000 ALTER TABLE `photologue_watermark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_userprofile`
--

DROP TABLE IF EXISTS `profiles_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `showname` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(100) NOT NULL,
  `skype` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `showemail` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_userprofile`
--

LOCK TABLES `profiles_userprofile` WRITE;
/*!40000 ALTER TABLE `profiles_userprofile` DISABLE KEYS */;
INSERT INTO `profiles_userprofile` VALUES (1,6,1,'','','',0,''),(2,1,1,'','','359887942911',0,'');
/*!40000 ALTER TABLE `profiles_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteblocks_block`
--

DROP TABLE IF EXISTS `siteblocks_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siteblocks_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(80) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `contents` longtext NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `contents_bg` longtext,
  `contents_en` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siteblocks_block_url_1a2e11ff77254d68_uniq` (`url`,`alias`),
  KEY `siteblocks_block_5df4c82a` (`alias`),
  KEY `siteblocks_block_d8e328e` (`description`),
  KEY `siteblocks_block_a4b49ab` (`url`),
  KEY `siteblocks_block_c91f1bf` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteblocks_block`
--

LOCK TABLES `siteblocks_block` WRITE;
/*!40000 ALTER TABLE `siteblocks_block` DISABLE KEYS */;
INSERT INTO `siteblocks_block` VALUES (1,'motus_info','','*','<p>The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.</p>',0,'\r\n<p>Школа по европейска средновековна фехтовка „Мотус” се занимава с изучаването и развиването на европейските бойни традиции от периода XIII-XVI в. На базата на ръкописи от периода и работа с автентични оръжия ние възстановяваме бойните изкуства, ползвани в Европа в зрялото Средновековие и ранния Ренесанс. На сайта ни можете да намерите повече информация за дейността на школата, график на тренировките, събитията, които организираме, ежегодните летни лагери и друга информация за средновековните европейски бойни изкуства.<span rel=\"pastemarkerend\" id=\"pastemarkerend1429\"></span></p>\r\n','<p>The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.</p>'),(2,'events_camps','','*','For 4 years now School \"MOTUS\" organizes a summer training camp. The camps are open to both people from the school and outsiders. For the last three years the location has been \"Verila\"&nbsp;camping site<span rel=\"pastemarkerend\" id=\"pastemarkerend75655\"></span>, Sapareva Banya. The programme includes two daily training sessions, together more than 5 hours a day.&nbsp;',0,'Вече 4 години школа \" МОТУС\" организира веднъж в годината летни лагери. Лагерите са отворени както за хора от школата, така и за външни гости. Вече три години мястото на събитието е къмпинг Верила в Сапарева Баня.&nbsp;Програмата включва по две тренировки на ден - сутрин и вечер. или общо около 5 часа дневно.<div><br>\r\n<div><div>За нови членове и гостите, които за пръв път имат досег със средновековната фехтовка, това означава преминаване през базовия материал под формата на интензивен курс, който вече е доказал своята ефективност. По-опитните могат да усъвършенстват наученото през годината, да допълнят знанията си и да работят свободно под надзора на инструктора на школата - Мирослав Лесичков.</div>\r\n<br>\r\n<div>Провеждат тренировки по дисциплините едноръчен меч, меч и бъклър, дълъг меч и копие.&nbsp;</div>\r\n<div>Изключително важно за пълноценната работа е разпределянето на времето между тренировките, когато участниците в лагера ще могат да използват разположения на 500м басейн с лековита минерална вода, да се разхождат в живописната местност и други приятни занимания, осигуряващи нужния релакс след тежките тренировки.</div>\r\n<br>\r\n<div>Къмпингът разполага с просторен двор, поляни, трапезария, спортна площадка и други удобства, осигуряващи изграждането на сплотен колектив. Участниците се настаняват в спретнати бунгала, всяко от които със собствен санитарен възел. Нощувките включват закуска, обяд и вечеря. Вилното селище предлага и нощуване на палатки на обособени за целта места с осигурен санитарен възел.</div>\r\n<br>\r\n<div>Условията за участие в лагера са заплащане на нощувките, инструкторска такса (за ден) и навършени 16 години. Допуска се участие и в определени предварително обявени дни!</div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n','For 4 years now School \"MOTUS\" organizes a summer training camp. The camps are open to both people from the school and outsiders. For the last three years the location has been \"Verila\"&nbsp;camping site<span rel=\"pastemarkerend\" id=\"pastemarkerend75655\"></span>, Sapareva Banya. The programme includes two daily training sessions, together more than 5 hours a day.&nbsp;'),(3,'events_demonstrations','','*','School of medieval fencing \"MOTUS\" organizes demonstrations of both historical and martial value. Traditionally each year we do a demonstration on May 19th, in the Military Museum in Sofia, during the Night of Museums. Over the years, we\'ve done many similar events across the country.\r\n<br>\r\n<br>\r\n<br>\r\n<br>',0,'Фехтовална школа \"МОТУС\" организира демонстрации на работа със средновековни оръжия, и на дейността на самата организация. Традиционно всяка година на 19-ти май, Нощта на Музеите, се прави демонстрация във Военния музей. През годините сме участвали в демонстрации в цяла България.\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n','School of medieval fencing \"MOTUS\" organizes demonstrations of both historical and martial value. Traditionally each year we do a demonstration on May 19th, in the Military Museum in Sofia, during the Night of Museums. Over the years, we\'ve done many similar events across the country.\r\n<br>\r\n<br>\r\n<br>\r\n<br>'),(4,'events_seminars','','*','<br>\r\n',0,'<br>\r\n','<br>\r\n');
/*!40000 ALTER TABLE `siteblocks_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'thumbnail','0001_initial','2012-10-02 01:08:36'),(2,'photologue','0001_initial','2012-10-02 01:08:48'),(3,'photologue','0002_auto__add_field_photo_title_bg__add_field_photo_title_en','2012-10-02 01:08:48'),(4,'photologue','0003_auto__add_field_gallery_description_bg__add_field_gallery_description_','2012-10-02 01:08:48'),(5,'siteblocks','0001_initial','2012-10-02 01:09:00'),(6,'siteblocks','0002_auto__add_field_block_contents_bg__add_field_block_contents_en','2012-10-02 01:09:00'),(7,'pages','0001_initial','2012-10-02 01:09:10'),(8,'pages','0002_auto__add_field_page_content_type','2012-10-02 01:09:10'),(9,'pages','0003_permissions','2012-10-02 01:09:10'),(10,'pages','0004_auto__add_field_page_author','2012-10-02 01:09:10'),(11,'pages','0005_auto__del_field_page_author__add_field_page_created_by__add_field_page','2012-10-02 01:09:10'),(12,'pages','0006_auto__add_category','2012-10-02 01:09:10'),(13,'pages','0007_auto__add_field_page_category','2012-10-02 01:09:10'),(14,'pages','0008_auto__add_field_page_event_start__add_field_page_event_end','2012-10-02 01:09:10'),(15,'pages','0009_auto__chg_field_page_event_end__chg_field_page_event_start','2012-10-02 01:09:10'),(16,'pages','0010_auto__add_field_page_published','2012-10-02 01:09:10'),(17,'pages','0011_auto__add_field_page_page_image','2012-10-02 01:09:10'),(18,'profiles','0001_initial','2012-10-02 01:09:19'),(19,'profiles','0002_auto__del_field_userprofile_contacts__add_field_userprofile_skype__add','2012-10-02 01:09:20'),(20,'profiles','0003_auto__add_field_userprofile_showemail','2012-10-02 01:09:20'),(21,'profiles','0004_auto__del_field_userprofile_name','2012-10-02 01:09:20'),(22,'profiles','0005_auto__del_field_userprofile_desc__add_field_userprofile_description__c','2012-10-02 01:09:20'),(23,'treemenus','0001_initial','2012-10-02 01:09:32'),(24,'video','0001_initial','2012-10-02 01:09:43'),(25,'video','0002_auto__add_field_video_title_en__add_field_video_title_bg__add_field_vi','2012-10-02 01:09:43'),(26,'video','0003_auto__add_field_video_embedUrl','2012-10-02 01:09:43'),(27,'video','0004_auto__add_videogallery','2012-10-02 01:09:43'),(28,'video','0005_auto__add_field_videogallery_video_count','2012-10-02 01:09:43'),(29,'easy_thumbnails','0001_initial','2012-11-09 03:14:53'),(30,'easy_thumbnails','0002_filename_indexes','2012-11-09 03:14:53'),(31,'easy_thumbnails','0003_auto__add_storagenew','2012-11-09 03:14:53'),(32,'easy_thumbnails','0004_auto__add_field_source_storage_new__add_field_thumbnail_storage_new','2012-11-09 03:14:53'),(33,'easy_thumbnails','0005_storage_fks_null','2012-11-09 03:14:53'),(34,'easy_thumbnails','0006_copy_storage','2012-11-09 03:14:53'),(35,'easy_thumbnails','0007_storagenew_fks_not_null','2012-11-09 03:14:53'),(36,'easy_thumbnails','0008_auto__del_field_source_storage__del_field_thumbnail_storage','2012-11-09 03:14:53'),(37,'easy_thumbnails','0009_auto__del_storage','2012-11-09 03:14:53'),(38,'easy_thumbnails','0010_rename_storage','2012-11-09 03:14:53'),(39,'easy_thumbnails','0011_auto__add_field_source_storage_hash__add_field_thumbnail_storage_hash','2012-11-09 03:14:53'),(40,'easy_thumbnails','0012_build_storage_hashes','2012-11-09 03:14:53'),(41,'easy_thumbnails','0013_auto__del_storage__del_field_source_storage__del_field_thumbnail_stora','2012-11-09 03:14:53'),(42,'easy_thumbnails','0014_auto__add_unique_source_name_storage_hash__add_unique_thumbnail_name_s','2012-11-09 03:14:53'),(43,'easy_thumbnails','0015_auto__del_unique_thumbnail_name_storage_hash__add_unique_thumbnail_sou','2012-11-09 03:14:53');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tag`
--

DROP TABLE IF EXISTS `tagging_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
INSERT INTO `tagging_tag` VALUES (1,'меч'),(2,'история'),(3,'историческа'),(4,'среднивековен'),(5,'фехтовка'),(6,'бой'),(7,'изкуства'),(8,'бойни'),(9,'експериментална'),(10,'археология'),(11,'мечове'),(12,'дълъг'),(13,'Европа'),(14,'Европейски'),(15,'България'),(16,'Школа'),(17,'medieval'),(18,'fencing'),(19,'kunst'),(20,'des'),(21,'fechtens'),(22,'спорт'),(23,'традиционни'),(24,'София'),(25,'клуб'),(26,'бъклър'),(27,'щит'),(28,'тренировки'),(29,'тренировка'),(30,'копие'),(31,'ризар'),(32,'оръжия'),(33,'хладно'),(34,'хладни'),(35,'ор'),(36,'оръжие'),(37,'нож'),(38,'sword'),(39,'swordsmanship'),(40,'buckler'),(41,'manuscript'),(42,'manuscripts'),(43,'swords'),(44,'knight'),(45,'cut'),(46,'stab'),(47,'Europe'),(48,'european'),(51,'martial'),(50,'ARTS'),(52,'Fiore'),(53,'Liechtenauer'),(54,'Talhoffer'),(55,'longsword'),(56,'arming'),(57,'messer'),(58,'месер'),(59,'мессер'),(60,'два'),(61,'фехтовален'),(62,'ръкопис'),(63,'манускрипт'),(64,'Фиоре'),(65,'Лихтенауер'),(66,'Дьобрингер'),(67,'Майер'),(68,'Вади'),(69,'Рингек'),(70,'Ringeck'),(71,'Dobringer'),(72,'Hanko'),(73,'Hans');
/*!40000 ALTER TABLE `tagging_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_taggeditem`
--

DROP TABLE IF EXISTS `tagging_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_e4470c6e` (`content_type_id`),
  KEY `tagging_taggeditem_829e37fd` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_taggeditem`
--

LOCK TABLES `tagging_taggeditem` WRITE;
/*!40000 ALTER TABLE `tagging_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treemenus_menu`
--

DROP TABLE IF EXISTS `treemenus_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treemenus_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `root_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `treemenus_menu_aa86d993` (`root_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treemenus_menu`
--

LOCK TABLES `treemenus_menu` WRITE;
/*!40000 ALTER TABLE `treemenus_menu` DISABLE KEYS */;
INSERT INTO `treemenus_menu` VALUES (1,'Main Navigation',1);
/*!40000 ALTER TABLE `treemenus_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treemenus_menuitem`
--

DROP TABLE IF EXISTS `treemenus_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treemenus_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `caption` varchar(50) NOT NULL,
  `caption_bg` varchar(50) DEFAULT NULL,
  `caption_en` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `named_url` varchar(200) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `treemenus_menuitem_63f17a16` (`parent_id`),
  KEY `treemenus_menuitem_143efa3` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treemenus_menuitem`
--

LOCK TABLES `treemenus_menuitem` WRITE;
/*!40000 ALTER TABLE `treemenus_menuitem` DISABLE KEYS */;
INSERT INTO `treemenus_menuitem` VALUES (1,NULL,'root',NULL,'root','','',0,0,1),(2,1,'MOTUS','МОТУС','MOTUS','/','motus',1,0,1),(5,2,'Instructors','Инструктори','Instructors','/page/instructors','instructors',2,1,1),(4,2,'About','За школата','About','/page/about','about',2,0,1),(6,1,'ACTIVITIES','ДЕЙНОСТ','ACTIVITIES','','',1,1,1),(7,6,'Training','Тренировки','Training','/page/training','training',2,0,1),(8,6,'Camps','Лагери','Camps','/events/category/camps','camps',2,1,1),(9,6,'Seminars','Семинари','Seminars','/events/category/seminars','seminars',2,2,1),(10,6,'Demonstrations','Демонстрации','Demonstrations','/events/category/demonstrations','demonstrations',2,3,1),(11,6,'Consulting','Консултации','Consulting','/page/consulting','consulting',2,4,1),(12,1,'GALLERY','ГАЛЕРИЯ','GALLERY','','',1,2,1),(13,12,'Photo','Снимки','Photo','/photologue/gallery','photo',2,0,1),(14,12,'Video','Видео','Video','/video','video',2,1,1),(15,1,'SPREHFENSTER','SPRECHFENSTER','SPREHFENSTER','','',1,3,1),(16,15,'Library','Библиотека','Library','/library','library',2,0,1),(17,15,'Armoury','Оръжейна','Armoury','/armory','armory',2,1,1),(18,15,'Links','Линкове','Links','/page/links','links',2,2,1),(19,15,'Blog','Блог','Blog','/blog','blog',2,3,1),(20,1,'CONTACTS','КОНТАКТИ','CONTACTS','/page/contacts','contacts',1,4,1);
/*!40000 ALTER TABLE `treemenus_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_video`
--

DROP TABLE IF EXISTS `video_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `edited_by_id` int(11) DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `title_en` varchar(100),
  `title_bg` varchar(100),
  `description_en` longtext,
  `description_bg` longtext,
  `embedUrl` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_video_a951d5d6` (`slug`),
  KEY `video_video_b5de30be` (`created_by_id`),
  KEY `video_video_9c2bb034` (`edited_by_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_video`
--

LOCK TABLES `video_video` WRITE;
/*!40000 ALTER TABLE `video_video` DISABLE KEYS */;
INSERT INTO `video_video` VALUES (1,'Demonstration 06.12.2010','demonstration-06122010','http://www.youtube.com/watch?v=BnaNuTVCD6k&feature=plcp','Демонстрация на школата на събитие в Националния Дворец на Културата, по повод експанжън за World of Warcraft. Благодарим на оператора за качествения суров материал.',6,6,'2012-11-09 16:58:17','2012-11-09 01:38:48',1,'Demonstration 06.12.2010','Демонстрация на 06.12.2010','Демонстрация на школата на събитие в Националния Дворец на Културата, по повод експанжън за World of Warcraft. Благодарим на оператора за качествения суров материал.',NULL,'BnaNuTVCD6k');
/*!40000 ALTER TABLE `video_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_videogallery`
--

DROP TABLE IF EXISTS `video_videogallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_videogallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime NOT NULL DEFAULT '2012-10-02 01:09:43',
  `title` varchar(100) NOT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `title_bg` varchar(100) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `description_en` longtext,
  `description_bg` longtext,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `video_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `title_en` (`title_en`),
  UNIQUE KEY `title_bg` (`title_bg`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_videogallery`
--

LOCK TABLES `video_videogallery` WRITE;
/*!40000 ALTER TABLE `video_videogallery` DISABLE KEYS */;
INSERT INTO `video_videogallery` VALUES (1,'2012-11-09 01:40:58','Demonstrations','Demonstrations','Демонстрации','videos','',NULL,NULL,1,0);
/*!40000 ALTER TABLE `video_videogallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_videogallery_videos`
--

DROP TABLE IF EXISTS `video_videogallery_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_videogallery_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videogallery_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `video_videogallery_videos_videogallery_id_32036e8ab984aeac_uniq` (`videogallery_id`,`video_id`),
  KEY `video_videogallery_videos_9c968d53` (`videogallery_id`),
  KEY `video_videogallery_videos_fa26288c` (`video_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_videogallery_videos`
--

LOCK TABLES `video_videogallery_videos` WRITE;
/*!40000 ALTER TABLE `video_videogallery_videos` DISABLE KEYS */;
INSERT INTO `video_videogallery_videos` VALUES (2,1,1);
/*!40000 ALTER TABLE `video_videogallery_videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-29 23:10:00
