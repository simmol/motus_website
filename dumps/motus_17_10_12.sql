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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add tagged item',10,'add_taggeditem'),(29,'Can change tagged item',10,'change_taggeditem'),(30,'Can delete tagged item',10,'delete_taggeditem'),(31,'Can add kv store',11,'add_kvstore'),(32,'Can change kv store',11,'change_kvstore'),(33,'Can delete kv store',11,'delete_kvstore'),(34,'Can add gallery',12,'add_gallery'),(35,'Can change gallery',12,'change_gallery'),(36,'Can delete gallery',12,'delete_gallery'),(37,'Can add gallery upload',13,'add_galleryupload'),(38,'Can change gallery upload',13,'change_galleryupload'),(39,'Can delete gallery upload',13,'delete_galleryupload'),(40,'Can add photo',14,'add_photo'),(41,'Can change photo',14,'change_photo'),(42,'Can delete photo',14,'delete_photo'),(43,'Can add photo effect',15,'add_photoeffect'),(44,'Can change photo effect',15,'change_photoeffect'),(45,'Can delete photo effect',15,'delete_photoeffect'),(46,'Can add watermark',16,'add_watermark'),(47,'Can change watermark',16,'change_watermark'),(48,'Can delete watermark',16,'delete_watermark'),(49,'Can add photo size',17,'add_photosize'),(50,'Can change photo size',17,'change_photosize'),(51,'Can delete photo size',17,'delete_photosize'),(52,'Can add Site Block',18,'add_block'),(53,'Can change Site Block',18,'change_block'),(54,'Can delete Site Block',18,'delete_block'),(55,'Can add Category',19,'add_category'),(56,'Can change Category',19,'change_category'),(57,'Can delete Category',19,'delete_category'),(58,'Can add page',20,'add_page'),(59,'Can change page',20,'change_page'),(60,'Can delete page',20,'delete_page'),(61,'Can add Library',20,'add_library'),(62,'Can change Library',20,'change_library'),(63,'Can delete Library',20,'delete_library'),(64,'Can add Armory',20,'add_armory'),(65,'Can change Armory',20,'change_armory'),(66,'Can delete Armory',20,'delete_armory'),(67,'Can add Event',20,'add_event'),(68,'Can change Event',20,'change_event'),(69,'Can delete Event',20,'delete_event'),(70,'Can add Blog',20,'add_blog'),(71,'Can change Blog',20,'change_blog'),(72,'Can delete Blog',20,'delete_blog'),(73,'Can add user profile',25,'add_userprofile'),(74,'Can change user profile',25,'change_userprofile'),(75,'Can delete user profile',25,'delete_userprofile'),(76,'Can add menu item',26,'add_menuitem'),(77,'Can change menu item',26,'change_menuitem'),(78,'Can delete menu item',26,'delete_menuitem'),(79,'Can add menu',27,'add_menu'),(80,'Can change menu',27,'change_menu'),(81,'Can delete menu',27,'delete_menu'),(82,'Can add video',28,'add_video'),(83,'Can change video',28,'change_video'),(84,'Can delete video',28,'delete_video'),(85,'Can add gallery',29,'add_videogallery'),(86,'Can change gallery',29,'change_videogallery'),(87,'Can delete gallery',29,'delete_videogallery');
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'simmol','','','fonix.simmol@gmail.com','pbkdf2_sha256$10000$Dfl21iP3LXlU$9OfA0MGLThpvaed7a67vFklGlZ+XvU9pHphpb2+pd+o=',1,1,1,'2012-10-15 15:04:00','2012-10-02 01:07:44'),(4,'selene','','','','pbkdf2_sha256$10000$Xw1fKqiEvfCg$R5+76OmhYJiEUE73a5wxQ9gYTCDipGZ23qXIcnrHpi4=',1,1,1,'2012-10-15 15:19:56','2012-10-15 15:19:34');
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
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-10-02 01:31:35',1,27,'1','Main Navigation',1,''),(2,'2012-10-02 01:31:59',1,26,'2','Motus',1,''),(3,'2012-10-14 16:00:45',1,3,'2','selene',1,''),(4,'2012-10-14 16:02:16',1,3,'2','selene',2,'Changed is_staff and is_superuser.'),(5,'2012-10-14 16:05:04',1,3,'2','selene',2,'Changed email.'),(6,'2012-10-14 16:09:18',1,26,'2','MOTUS',2,'Changed caption_en and caption_bg.'),(7,'2012-10-14 16:16:19',1,3,'2','selene',3,''),(8,'2012-10-14 16:17:04',1,3,'3','selene',1,''),(9,'2012-10-14 16:18:15',1,20,'1','test page',1,''),(10,'2012-10-14 16:19:37',1,20,'2','About',1,''),(11,'2012-10-14 16:27:52',1,20,'3','Instructors',1,''),(12,'2012-10-14 16:29:38',1,20,'4','Contacts',1,''),(13,'2012-10-14 16:29:47',1,20,'4','Contacts',2,'Changed is_active.'),(14,'2012-10-14 16:35:02',1,20,'5','Trainings',1,''),(15,'2012-10-14 16:36:12',1,26,'3','About',1,''),(16,'2012-10-14 16:36:40',1,26,'4','About',1,''),(17,'2012-10-14 16:37:06',1,26,'3','About',3,''),(18,'2012-10-14 16:37:53',1,26,'5','Instructors',1,''),(19,'2012-10-14 16:38:35',1,26,'6','ACTIVITIES',1,''),(20,'2012-10-14 16:39:02',1,26,'7','Trainings',1,''),(21,'2012-10-14 16:39:32',1,26,'8','Camps',1,''),(22,'2012-10-14 16:40:01',1,26,'9','Seminars',1,''),(23,'2012-10-14 16:40:35',1,26,'10','Demonstrations',1,''),(24,'2012-10-14 16:40:57',1,26,'11','Consulting',1,''),(25,'2012-10-14 16:41:13',1,26,'10','Demonstrations',2,'Changed parent.'),(26,'2012-10-14 16:41:19',1,26,'11','Consulting',2,'Changed parent.'),(27,'2012-10-14 16:44:18',1,26,'12','Gallery',1,''),(28,'2012-10-14 16:45:00',1,26,'13','Photo',1,''),(29,'2012-10-14 16:48:30',1,26,'14','Video',1,''),(30,'2012-10-14 16:48:41',1,26,'14','Video',2,'Changed parent.'),(31,'2012-10-14 16:49:37',1,26,'15','SPRECHFENSTER',1,''),(32,'2012-10-14 16:49:49',1,26,'12','GALLERY',2,'Changed caption_en and caption_bg.'),(33,'2012-10-14 16:50:41',1,26,'16','Library',1,''),(34,'2012-10-14 16:50:59',1,26,'17','Armory',1,''),(35,'2012-10-14 16:51:24',1,26,'18','Links',1,''),(36,'2012-10-14 16:51:45',1,26,'19','Blog',1,''),(37,'2012-10-14 16:52:21',1,26,'20','Contacts',1,''),(38,'2012-10-14 16:55:01',1,26,'20','CONTACTS',2,'Changed caption_en and caption_bg.'),(39,'2012-10-15 14:43:06',1,20,'5','Trainings',2,'Changed body_en.'),(40,'2012-10-15 14:43:25',1,20,'5','Trainings',2,'Changed body_en.'),(41,'2012-10-15 14:53:35',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(42,'2012-10-15 14:57:44',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(43,'2012-10-15 15:00:31',1,20,'5','Trainings',2,'Changed body_en and body_bg.'),(44,'2012-10-15 15:01:22',1,20,'5','Trainings',2,'Changed body_en.'),(45,'2012-10-15 15:01:49',1,20,'5','Trainings',2,'Changed body_bg.'),(46,'2012-10-15 15:09:45',1,20,'4','Contacts',2,'Changed body_en.'),(47,'2012-10-15 15:14:52',1,20,'4','Contacts',2,'Changed body_en and body_bg.'),(48,'2012-10-15 15:16:49',1,20,'4','Contacts',2,'Changed body_en.'),(49,'2012-10-15 15:17:19',1,20,'4','Contacts',2,'No fields changed.'),(50,'2012-10-15 15:19:12',1,3,'3','selene',3,''),(51,'2012-10-15 15:19:34',1,3,'4','selene',1,''),(52,'2012-10-15 15:19:47',1,3,'4','selene',2,'Changed password, is_staff and is_superuser.'),(53,'2012-10-15 15:25:32',4,18,'1','motus_info',1,''),(54,'2012-10-15 22:24:14',4,26,'17','Armoury',2,'Changed caption_en.');
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'tag','tagging','tag'),(10,'tagged item','tagging','taggeditem'),(11,'kv store','thumbnail','kvstore'),(12,'gallery','photologue','gallery'),(13,'gallery upload','photologue','galleryupload'),(14,'photo','photologue','photo'),(15,'photo effect','photologue','photoeffect'),(16,'watermark','photologue','watermark'),(17,'photo size','photologue','photosize'),(18,'Site Block','siteblocks','block'),(19,'Category','pages','category'),(20,'page','pages','page'),(21,'Library','pages','library'),(22,'Event','pages','event'),(23,'Blog','pages','blog'),(24,'Armory','pages','armory'),(25,'user profile','profiles','userprofile'),(26,'menu item','treemenus','menuitem'),(27,'menu','treemenus','menu'),(28,'video','video','video'),(29,'gallery','video','videogallery');
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
INSERT INTO `django_session` VALUES ('58afa34b4d28a4b4163cbb742165e14a','ZDRmYTM5NTZlZDkwN2E2MDE5Y2U5Yjg3NTI1ZjFkYThmMjJkMThhYTqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlcQJYAgAAAGJncQNzLg==\n','2012-10-16 01:33:32'),('b23935f93cb1689b9b7d91f6d50cabbb','NzIyOTg0M2M4YzExMmIwODIxOGUyZWExNGIzMDBiOWJhNGZjNTMyMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAGVuVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-29 15:04:00'),('285f0b93e6fd23e5aff51f70bbeda7bb','MTFmNGJkM2IyNmY1YTAzN2Q1YzM1MWM3NmQwZDQxOWJiMDYzODIyMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-28 15:59:52'),('a1b253c19c35c904564c3c483c984554','ZmFhZjliMDQyZDRkMDFlYTJjMmZkZDYxYTUzOWU4Yjc5OTEyYTc1NDqAAn1xAVUPZGphbmdvX2xh\nbmd1YWdlWAIAAABiZ3ECcy4=\n','2012-10-29 22:25:12'),('da03629ac4142bfd2326a2c2f0132ba6','Y2IwZTM1MjZlOWY0Y2MxMjgxMTAxYWE2NTI4NGU2NzM2ZDViZjM2YzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVDV9h\ndXRoX3VzZXJfaWSKAQRVD2RqYW5nb19sYW5ndWFnZVgCAAAAYmdxAnUu\n','2012-10-29 22:27:25');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_category`
--

LOCK TABLES `pages_category` WRITE;
/*!40000 ALTER TABLE `pages_category` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'test page','тест страница','test page','test-page','Test page','тест страница','Test page','2012-10-14 16:18:15',1,'SYS',1,1,'2012-10-14 16:18:15',NULL,NULL,NULL,'2012-10-14 16:18:15',''),(2,'About','За школата','About','about','<span style=\"color: rgb(51, 51, 51);\">SCHOOL OF MEDIEVAL SWORDSMANSHIP MOTUS</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The school was founded in 2003, when an experimental “Group for Research and Study of Medieval Martial Arts” was created. In 2006 the group evolved into an fencing club and in 2010 in School of Medieval Swordsmanship MOTUS</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The art of Medieval European Swordsmanship was preserved in many manuscripts from the 13th to 16th centuries. The training methods used in the fencing school MOTUS come as a direct result of:</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Studying fencing tractates from the period of 1275-1599.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Experimental and practical approaches, incorporating the study of historical patterns and working with precision replicas of different types of medieval weapons.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Working with research and literature.</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The training program of fencing school MOTUS includes working with the following types of weapons:</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Short sword</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Short sword and buckler</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Long sword</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The fencing school MOTUS can offer demonstrations, seminars, private lessons, consulting and choreography of battle scenes for the movie and television industry, theatrical productions, advertising and musical video clips, and participation in educational and entertaining programs and events.<span rel=\"pastemarkerend\" id=\"pastemarkerend65862\"></span></span>','<span style=\"color: rgb(51, 51, 51);\">ШКОЛА ЗА СРЕДНОВЕКОВНА ФЕХТОВКА МОТУС</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><div class=\"text_exposed_show;color: rgb(51, 51, 51);\">Школа за средновековна фехтовка МОТУС се занимава с изучаване на средновековната европейска фехтовална традиция от периода XIII-XVI в.<br>\r\n<br>\r\n Основите на школата са положени през 2003г., когато е създадена експериментална \"Група за изследване и изучаване на средновековни бойни изкуства\". През 2006г. групата се трансформира във фехтовален клуб, а след летния тренировъчен лагер през 2010г. в школа.<br>\r\n<br>\r\n Европейскoто средновековнo фехтовалнo изкуство се е съхранилo в множество ръкописни и печатни документи от периода XIII-XVI в. Методиката на обучение е пряк резултат от:<br>\r\n - Работа с фехтовални трактати от периода 1275-1599 г.<br>\r\n - Експериментално-практически подход, включващ изучаване на исторически образци на различни типове средновековно оръжие и работа с прецизни реплики.<br>\r\n - Работа с изследвания и интерпретативна литература.<br>\r\n<br>\r\n Във школата се изучават:<br>\r\n - Едноръчен меч<br>\r\n - Едноръчен меч и малък щит<br>\r\n - Дълъг меч&nbsp;<span rel=\"pastemarkerend\" id=\"pastemarkerend98552\"></span></div>\r\n','<span style=\"color: rgb(51, 51, 51);\">SCHOOL OF MEDIEVAL SWORDSMANSHIP MOTUS</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The school was founded in 2003, when an experimental “Group for Research and Study of Medieval Martial Arts” was created. In 2006 the group evolved into an fencing club and in 2010 in School of Medieval Swordsmanship MOTUS</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The art of Medieval European Swordsmanship was preserved in many manuscripts from the 13th to 16th centuries. The training methods used in the fencing school MOTUS come as a direct result of:</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Studying fencing tractates from the period of 1275-1599.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Experimental and practical approaches, incorporating the study of historical patterns and working with precision replicas of different types of medieval weapons.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Working with research and literature.</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The training program of fencing school MOTUS includes working with the following types of weapons:</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Short sword</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Short sword and buckler</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">- Long sword</span><br style=\"color: rgb(51, 51, 51);\"><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">The fencing school MOTUS can offer demonstrations, seminars, private lessons, consulting and choreography of battle scenes for the movie and television industry, theatrical productions, advertising and musical video clips, and participation in educational and entertaining programs and events.<span rel=\"pastemarkerend\" id=\"pastemarkerend65862\"></span></span>','2012-10-14 16:19:37',1,'SYS',1,1,'2012-10-14 16:19:37',NULL,NULL,NULL,'2012-10-14 16:19:37',''),(3,'Instructors','Инструктори','Instructors','instructors','Comming soon...','Очаквайте скоро....','Comming soon...','2012-10-14 16:27:52',1,'SYS',1,1,'2012-10-14 16:27:52',NULL,NULL,NULL,'2012-10-14 16:27:52',''),(4,'Contacts','Контакти','Contacts','contacts','\r\n<p>Читалище \"Христо Ботев - 1917\", на ъгъла на улица \"Цар Симеон\" и улица \"Брегалница\"</p>\r\n\r\n<p><iframe width=\"600\" height=\"500\" frameborder=\"0\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe></p>\r\n\r\n<p><span style=\"color: rgb(51, 51, 51);\">e-mail: motus_freifechter@abv.bg</span><br>\r\n</p>\r\n','<div>Читалище \"Христо Ботев - 1917\", на ъгъла на улица \"Цар Симеон\" и улица \"Брегалница\"</div>\r\n<iframe width=\"600\" height=\"500\" frameborder=\"0\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe>\r\n<p><span style=\"color: rgb(51, 51, 51);\">e-mail: motus_freifechter@abv.bg</span></p>\r\n','\r\n<p>Читалище \"Христо Ботев - 1917\", на ъгъла на улица \"Цар Симеон\" и улица \"Брегалница\"</p>\r\n\r\n<p><iframe width=\"600\" height=\"500\" frameborder=\"0\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe></p>\r\n\r\n<p><span style=\"color: rgb(51, 51, 51);\">e-mail: motus_freifechter@abv.bg</span><br>\r\n</p>\r\n','2012-10-14 16:29:38',1,'SYS',1,1,'2012-10-15 15:17:19',NULL,NULL,NULL,'2012-10-15 15:17:19',''),(5,'Trainings','Тренировки','Trainings','trainings','<span style=\"color: rgb(51, 51, 51);\">Вторник - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Четвъртък - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Неделя - - от 19:30 до 21:30 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.<span rel=\"pastemarkerend\" id=\"pastemarkerend85429\"></span></span>&nbsp;<div><div style=\"text-align: center;\"><br><br><iframe width=\"600\" height=\"500\" frameborder=\"0\" scrolling=\"no\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe></div>\r\n</div>','<span style=\"color: rgb(51, 51, 51);\">Вторник - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Четвъртък - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Неделя - - от 19:30 до 21:30 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><div style=\"text-align: center;\"><br><br><iframe width=\"600\" height=\"500\" frameborder=\"0\" scrolling=\"no\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe><br>\r\n</div>','<span style=\"color: rgb(51, 51, 51);\">Вторник - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Четвъртък - от 19:30 до 22:00 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.</span><br style=\"color: rgb(51, 51, 51);\"><span style=\"color: rgb(51, 51, 51);\">Неделя - - от 19:30 до 21:30 - Читалище Хр. Ботев, на ъгъла на ул. Цар Симеон и ул. Брегалница.<span rel=\"pastemarkerend\" id=\"pastemarkerend85429\"></span></span>&nbsp;<div><div style=\"text-align: center;\"><br><br><iframe width=\"600\" height=\"500\" frameborder=\"0\" scrolling=\"no\" src=\"http://www.bgmaps.com/link/map/5343DCC4278B660A9AEB1D37ED6C7481\"></iframe></div>\r\n</div>','2012-10-14 16:35:02',1,'SYS',1,1,'2012-10-15 15:01:49',NULL,NULL,NULL,'2012-10-15 15:01:49','');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery`
--

LOCK TABLES `photologue_gallery` WRITE;
/*!40000 ALTER TABLE `photologue_gallery` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_gallery_photos`
--

LOCK TABLES `photologue_gallery_photos` WRITE;
/*!40000 ALTER TABLE `photologue_gallery_photos` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photo`
--

LOCK TABLES `photologue_photo` WRITE;
/*!40000 ALTER TABLE `photologue_photo` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photologue_photosize`
--

LOCK TABLES `photologue_photosize` WRITE;
/*!40000 ALTER TABLE `photologue_photosize` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_userprofile`
--

LOCK TABLES `profiles_userprofile` WRITE;
/*!40000 ALTER TABLE `profiles_userprofile` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteblocks_block`
--

LOCK TABLES `siteblocks_block` WRITE;
/*!40000 ALTER TABLE `siteblocks_block` DISABLE KEYS */;
INSERT INTO `siteblocks_block` VALUES (1,'motus_info','','*','<span style=\"color: rgb(51, 51, 51);\">The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.<span rel=\"pastemarkerend\" id=\"pastemarkerend68273\"></span></span>',0,'<span style=\"color: rgb(51, 51, 51);\">Школа за средновековна фехтовка МОТУС се занимава с изучаване на средновековната европейска фехтовална традиция от периода XIII-XVI в.</span><br style=\"color: rgb(51, 51, 51);\">','<span style=\"color: rgb(51, 51, 51);\">The purpose of the School of Medieval Swordsmanship MOTUS is to study the Medieval European fencing traditions from the period of the 13th to 16th centuries.<span rel=\"pastemarkerend\" id=\"pastemarkerend68273\"></span></span>');
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'thumbnail','0001_initial','2012-10-02 01:08:36'),(2,'photologue','0001_initial','2012-10-02 01:08:48'),(3,'photologue','0002_auto__add_field_photo_title_bg__add_field_photo_title_en','2012-10-02 01:08:48'),(4,'photologue','0003_auto__add_field_gallery_description_bg__add_field_gallery_description_','2012-10-02 01:08:48'),(5,'siteblocks','0001_initial','2012-10-02 01:09:00'),(6,'siteblocks','0002_auto__add_field_block_contents_bg__add_field_block_contents_en','2012-10-02 01:09:00'),(7,'pages','0001_initial','2012-10-02 01:09:10'),(8,'pages','0002_auto__add_field_page_content_type','2012-10-02 01:09:10'),(9,'pages','0003_permissions','2012-10-02 01:09:10'),(10,'pages','0004_auto__add_field_page_author','2012-10-02 01:09:10'),(11,'pages','0005_auto__del_field_page_author__add_field_page_created_by__add_field_page','2012-10-02 01:09:10'),(12,'pages','0006_auto__add_category','2012-10-02 01:09:10'),(13,'pages','0007_auto__add_field_page_category','2012-10-02 01:09:10'),(14,'pages','0008_auto__add_field_page_event_start__add_field_page_event_end','2012-10-02 01:09:10'),(15,'pages','0009_auto__chg_field_page_event_end__chg_field_page_event_start','2012-10-02 01:09:10'),(16,'pages','0010_auto__add_field_page_published','2012-10-02 01:09:10'),(17,'pages','0011_auto__add_field_page_page_image','2012-10-02 01:09:10'),(18,'profiles','0001_initial','2012-10-02 01:09:19'),(19,'profiles','0002_auto__del_field_userprofile_contacts__add_field_userprofile_skype__add','2012-10-02 01:09:20'),(20,'profiles','0003_auto__add_field_userprofile_showemail','2012-10-02 01:09:20'),(21,'profiles','0004_auto__del_field_userprofile_name','2012-10-02 01:09:20'),(22,'profiles','0005_auto__del_field_userprofile_desc__add_field_userprofile_description__c','2012-10-02 01:09:20'),(23,'treemenus','0001_initial','2012-10-02 01:09:32'),(24,'video','0001_initial','2012-10-02 01:09:43'),(25,'video','0002_auto__add_field_video_title_en__add_field_video_title_bg__add_field_vi','2012-10-02 01:09:43'),(26,'video','0003_auto__add_field_video_embedUrl','2012-10-02 01:09:43'),(27,'video','0004_auto__add_videogallery','2012-10-02 01:09:43'),(28,'video','0005_auto__add_field_videogallery_video_count','2012-10-02 01:09:43');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
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
INSERT INTO `treemenus_menuitem` VALUES (1,NULL,'root',NULL,'root','','',0,0,1),(2,1,'MOTUS','МОТУС','MOTUS','/','motus',1,0,1),(5,2,'Instructors','Инструктори','Instructors','/page/instructors','instructors',2,1,1),(4,2,'About','За школата','About','/page/about','about',2,0,1),(6,1,'ACTIVITIES','ДЕЙНОСТ','ACTIVITIES','','',1,1,1),(7,6,'Trainings','Тренировки','Trainings','/page/trainings','trainings',2,0,1),(8,6,'Camps','Лагери','Camps','','',2,1,1),(9,6,'Seminars','Семинари','Seminars','','',2,2,1),(10,6,'Demonstrations','Демонстрации','Demonstrations','','',2,3,1),(11,6,'Consulting','Консултации','Consulting','','',2,4,1),(12,1,'GALLERY','ГАЛЕРИЯ','GALLERY','','',1,2,1),(13,12,'Photo','Снимки','Photo','/photologue/gallery','photo',2,0,1),(14,12,'Video','Видео','Video','/video','video',2,1,1),(15,1,'SPRECHFENSTER','SPRECHFENSTER','SPRECHFENSTER','','',1,3,1),(16,15,'Library','Библиотека','Library','','',2,0,1),(17,15,'Armoury','Оръжейна','Armoury','','',2,1,1),(18,15,'Links','Линкове','Links','','',2,2,1),(19,15,'Blog','Блог','Blog','','',2,3,1),(20,1,'CONTACTS','КОНТАКТИ','CONTACTS','/page/contacts','contacts',1,4,1);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_video`
--

LOCK TABLES `video_video` WRITE;
/*!40000 ALTER TABLE `video_video` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_videogallery`
--

LOCK TABLES `video_videogallery` WRITE;
/*!40000 ALTER TABLE `video_videogallery` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_videogallery_videos`
--

LOCK TABLES `video_videogallery_videos` WRITE;
/*!40000 ALTER TABLE `video_videogallery_videos` DISABLE KEYS */;
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

-- Dump completed on 2012-10-17  1:12:04
