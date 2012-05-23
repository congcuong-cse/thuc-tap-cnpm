-- MySQL dump 10.13  Distrib 5.5.23, for Win64 (x86)
--
-- Host: localhost    Database: projdb
-- ------------------------------------------------------
-- Server version	5.5.23

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
  `name` varchar(80) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
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
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
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
  `name` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add giang vien',8,'add_giangvien'),(23,'Can change giang vien',8,'change_giangvien'),(24,'Can delete giang vien',8,'delete_giangvien'),(25,'Can add sinh vien',9,'add_sinhvien'),(26,'Can change sinh vien',9,'change_sinhvien'),(27,'Can delete sinh vien',9,'delete_sinhvien'),(28,'Can add mon hoc',10,'add_monhoc'),(29,'Can change mon hoc',10,'change_monhoc'),(30,'Can delete mon hoc',10,'delete_monhoc'),(31,'Can add hoc ky',11,'add_hocky'),(32,'Can change hoc ky',11,'change_hocky'),(33,'Can delete hoc ky',11,'delete_hocky'),(34,'Can add lop mon hoc',12,'add_lopmonhoc'),(35,'Can change lop mon hoc',12,'change_lopmonhoc'),(36,'Can delete lop mon hoc',12,'delete_lopmonhoc'),(37,'Can add danh sach diem',13,'add_danhsachdiem'),(38,'Can change danh sach diem',13,'change_danhsachdiem'),(39,'Can delete danh sach diem',13,'delete_danhsachdiem'),(40,'Can add forum',14,'add_forum'),(41,'Can change forum',14,'change_forum'),(42,'Can delete forum',14,'delete_forum'),(43,'Can add thread',15,'add_thread'),(44,'Can change thread',15,'change_thread'),(45,'Can delete thread',15,'delete_thread'),(46,'Can add post',16,'add_post'),(47,'Can change post',16,'change_post'),(48,'Can delete post',16,'delete_post'),(49,'Can add user profile',17,'add_userprofile'),(50,'Can change user profile',17,'change_userprofile'),(51,'Can delete user profile',17,'delete_userprofile'),(52,'Can add registration profile',18,'add_registrationprofile'),(53,'Can change registration profile',18,'change_registrationprofile'),(54,'Can delete registration profile',18,'delete_registrationprofile');
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
  `username` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf16_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@admin.admin','pbkdf2_sha256$10000$S0XgufZ6tEg4$si89yGwlITYwBJKj026FVpY/iBfPE/A8FPhSqjMMMJI=',1,1,1,'2012-05-23 11:45:12','2012-05-22 16:27:06'),(2,'cuong','','','','pbkdf2_sha256$10000$cNxA35RgSjA8$2vfXagh61d2b2XaGbujiZXu91XJLx7olHQ/e5FEhBW8=',0,1,0,'2012-05-23 11:12:52','2012-05-23 11:05:08'),(4,'huyetctu','','','congcuong.cse@gmail.com','pbkdf2_sha256$10000$6xCznJXdmzFP$L0MH9XxWNyXJxim6Hos2+eBezs0XfRbICjqRI9X706c=',0,0,0,'2012-05-23 11:08:41','2012-05-23 11:08:41');
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
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
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
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
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
  `object_id` longtext COLLATE utf16_unicode_ci,
  `object_repr` varchar(200) COLLATE utf16_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-05-22 16:29:49',1,12,'1','111 - 001001 - A',1,''),(2,'2012-05-22 16:30:06',1,12,'2','111 - 001004 - A',1,''),(3,'2012-05-22 16:30:15',1,12,'3','111 - 006002 - A3',1,''),(4,'2012-05-22 16:30:25',1,12,'4','112 - 006023 - A3',1,''),(5,'2012-05-22 16:30:33',1,12,'5','112 - 001001 - B',1,''),(6,'2012-05-22 16:30:42',1,12,'6','112 - 007001 - A',1,''),(7,'2012-05-22 16:31:17',1,13,'1','DanhSachDiem object',1,''),(8,'2012-05-22 16:31:32',1,13,'2','DanhSachDiem object',1,''),(9,'2012-05-22 16:31:44',1,13,'3','DanhSachDiem object',1,''),(10,'2012-05-22 16:31:51',1,13,'4','DanhSachDiem object',1,''),(11,'2012-05-22 16:31:59',1,13,'5','DanhSachDiem object',1,''),(12,'2012-05-22 16:32:05',1,13,'6','DanhSachDiem object',1,''),(13,'2012-05-22 16:32:09',1,13,'7','DanhSachDiem object',1,''),(14,'2012-05-22 16:32:13',1,13,'8','DanhSachDiem object',1,''),(15,'2012-05-22 16:32:22',1,13,'9','DanhSachDiem object',1,''),(16,'2012-05-22 16:32:27',1,13,'10','DanhSachDiem object',1,''),(17,'2012-05-22 17:54:07',1,13,'11','DanhSachDiem object',1,''),(18,'2012-05-23 11:05:08',1,3,'2','cuong',1,''),(19,'2012-05-23 11:13:29',1,14,'1','Học tập',1,'');
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
  `name` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'giang vien','projapp','giangvien'),(9,'sinh vien','projapp','sinhvien'),(10,'mon hoc','projapp','monhoc'),(11,'hoc ky','projapp','hocky'),(12,'lop mon hoc','projapp','lopmonhoc'),(13,'danh sach diem','projapp','danhsachdiem'),(14,'forum','forum','forum'),(15,'thread','forum','thread'),(16,'post','forum','post'),(17,'user profile','forum','userprofile'),(18,'registration profile','registration','registrationprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf16_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('56d44bbc639b3015d3dbd649e9cb394d','ZTM1ODEwMjAwYzRjYjE1YzUxYTFiMmI4MmVkYTljYTYxOTkzNDQxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-06 11:09:29'),('71f84e53f69295b8e41a777b64f59783','ZTM1ODEwMjAwYzRjYjE1YzUxYTFiMmI4MmVkYTljYTYxOTkzNDQxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-06 03:36:13'),('b5a1f80653eccab59f37bd1a24d8d1e1','ZTM1ODEwMjAwYzRjYjE1YzUxYTFiMmI4MmVkYTljYTYxOTkzNDQxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-06 11:45:12'),('bf9eb3dc6f60aed4b10e812f8f716fb3','ZTM1ODEwMjAwYzRjYjE1YzUxYTFiMmI4MmVkYTljYTYxOTkzNDQxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-05 16:29:12');
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
  `domain` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
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
-- Table structure for table `forum_forum`
--

DROP TABLE IF EXISTS `forum_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_forum`
--

LOCK TABLES `forum_forum` WRITE;
/*!40000 ALTER TABLE `forum_forum` DISABLE KEYS */;
INSERT INTO `forum_forum` VALUES (1,'Học tập');
/*!40000 ALTER TABLE `forum_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `thread_id` int(11) NOT NULL,
  `body` longtext COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_post_685aee7` (`creator_id`),
  KEY `forum_post_65912a8a` (`thread_id`),
  CONSTRAINT `creator_id_refs_id_2b14eec2` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `thread_id_refs_id_519c68af` FOREIGN KEY (`thread_id`) REFERENCES `forum_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_thread`
--

DROP TABLE IF EXISTS `forum_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_thread_685aee7` (`creator_id`),
  KEY `forum_thread_499a185a` (`forum_id`),
  CONSTRAINT `creator_id_refs_id_4508e076` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `forum_id_refs_id_2feab8bd` FOREIGN KEY (`forum_id`) REFERENCES `forum_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_thread`
--

LOCK TABLES `forum_thread` WRITE;
/*!40000 ALTER TABLE `forum_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_userprofile`
--

DROP TABLE IF EXISTS `forum_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) COLLATE utf16_unicode_ci DEFAULT NULL,
  `posts` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_393cef2b` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_userprofile`
--

LOCK TABLES `forum_userprofile` WRITE;
/*!40000 ALTER TABLE `forum_userprofile` DISABLE KEYS */;
INSERT INTO `forum_userprofile` VALUES (1,'',0,1),(2,'',0,2),(4,'',0,4);
/*!40000 ALTER TABLE `forum_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_danhsachdiem`
--

DROP TABLE IF EXISTS `projapp_danhsachdiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_danhsachdiem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mlmh_id` int(11) NOT NULL,
  `mssv_id` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
  `diem_giua_ky` double DEFAULT NULL,
  `diem_cuoi_ky` double DEFAULT NULL,
  `diem_tong_ket` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mlmh_id` (`mlmh_id`,`mssv_id`),
  KEY `projapp_danhsachdiem_61409b2c` (`mlmh_id`),
  KEY `projapp_danhsachdiem_7b9768af` (`mssv_id`),
  CONSTRAINT `mlmh_id_refs_id_174650f6` FOREIGN KEY (`mlmh_id`) REFERENCES `projapp_lopmonhoc` (`id`),
  CONSTRAINT `mssv_id_refs_mssv_6d09d40` FOREIGN KEY (`mssv_id`) REFERENCES `projapp_sinhvien` (`mssv`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_danhsachdiem`
--

LOCK TABLES `projapp_danhsachdiem` WRITE;
/*!40000 ALTER TABLE `projapp_danhsachdiem` DISABLE KEYS */;
INSERT INTO `projapp_danhsachdiem` VALUES (1,1,'20108018',5,6,7),(2,2,'20108018',6,6,6),(3,3,'20108018',8,8,8),(4,4,'20108018',NULL,NULL,NULL),(5,2,'20508264',NULL,NULL,NULL),(6,2,'21008262',NULL,NULL,NULL),(7,1,'21008262',NULL,NULL,NULL),(8,1,'21108033',NULL,NULL,NULL),(9,1,'80908252',NULL,NULL,NULL),(10,2,'30908237',NULL,NULL,NULL),(11,5,'20508264',NULL,NULL,NULL);
/*!40000 ALTER TABLE `projapp_danhsachdiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_giangvien`
--

DROP TABLE IF EXISTS `projapp_giangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_giangvien` (
  `mgv` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
  `ten_gv` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `email` varchar(75) COLLATE utf16_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mgv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_giangvien`
--

LOCK TABLES `projapp_giangvien` WRITE;
/*!40000 ALTER TABLE `projapp_giangvien` DISABLE KEYS */;
INSERT INTO `projapp_giangvien` VALUES ('GV0001','ĐINH BÁC ÁI','1989-01-10','GV0001@giangvien.com'),('GV0002','TRẦN HOÀI ANH','1990-09-18','GV0002@giangvien.com'),('GV0003','TRẦN CÔNG ĐỨC','1987-09-28','GV0003@giangvien.com'),('GV0004','NGUYỄN TẤN DUY','1989-10-25','GV0004@giangvien.com'),('GV0005','PHAN THỊ THÚY HẰNG','1987-04-08','GV0005@giangvien.com'),('GV0006','NGUYỄN THỊ MINH HOA','1989-10-01','GV0006@giangvien.com'),('GV0007','TRẦN NGỌC KIÊN','1988-02-24','GV0007@giangvien.com'),('GV0008','HỨA KHÁNH LINH','1990-06-23','GV0008@giangvien.com'),('GV0009','TRẦN CHÂN MÂY','1990-01-16','GV0009@giangvien.com'),('GV0010','LÊ THỊ BÍCH NGỌC','1989-09-23','GV0010@giangvien.com'),('GV0011','NGUYỄN THỊ SƠN','1990-05-14','GV0011@giangvien.com');
/*!40000 ALTER TABLE `projapp_giangvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_hocky`
--

DROP TABLE IF EXISTS `projapp_hocky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_hocky` (
  `mhk` int(11) NOT NULL,
  `ten_hk` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`mhk`),
  UNIQUE KEY `ten_hk` (`ten_hk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_hocky`
--

LOCK TABLES `projapp_hocky` WRITE;
/*!40000 ALTER TABLE `projapp_hocky` DISABLE KEYS */;
INSERT INTO `projapp_hocky` VALUES (111,'Học kỳ 1, Năm học 2011 2012'),(112,'Học kỳ 2, Năm học 2011 2012');
/*!40000 ALTER TABLE `projapp_hocky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_lopmonhoc`
--

DROP TABLE IF EXISTS `projapp_lopmonhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_lopmonhoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoc_ky_id` int(11) NOT NULL,
  `mon_hoc_id` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
  `nhom_to` varchar(5) COLLATE utf16_unicode_ci NOT NULL,
  `giang_vien_id` varchar(10) COLLATE utf16_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hoc_ky_id` (`hoc_ky_id`,`mon_hoc_id`,`nhom_to`),
  KEY `projapp_lopmonhoc_288e666d` (`hoc_ky_id`),
  KEY `projapp_lopmonhoc_6acfa662` (`mon_hoc_id`),
  KEY `projapp_lopmonhoc_667ae4d7` (`giang_vien_id`),
  CONSTRAINT `giang_vien_id_refs_mgv_27f0130` FOREIGN KEY (`giang_vien_id`) REFERENCES `projapp_giangvien` (`mgv`),
  CONSTRAINT `hoc_ky_id_refs_mhk_132e5338` FOREIGN KEY (`hoc_ky_id`) REFERENCES `projapp_hocky` (`mhk`),
  CONSTRAINT `mon_hoc_id_refs_mmh_926eaab` FOREIGN KEY (`mon_hoc_id`) REFERENCES `projapp_monhoc` (`mmh`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_lopmonhoc`
--

LOCK TABLES `projapp_lopmonhoc` WRITE;
/*!40000 ALTER TABLE `projapp_lopmonhoc` DISABLE KEYS */;
INSERT INTO `projapp_lopmonhoc` VALUES (1,111,'001001','A','GV0001'),(2,111,'001004','A','GV0002'),(3,111,'006002','A3','GV0007'),(4,112,'006023','A3','GV0010'),(5,112,'001001','B',NULL),(6,112,'007001','A','GV0005');
/*!40000 ALTER TABLE `projapp_lopmonhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_monhoc`
--

DROP TABLE IF EXISTS `projapp_monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_monhoc` (
  `mmh` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
  `ten_mh` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`mmh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_monhoc`
--

LOCK TABLES `projapp_monhoc` WRITE;
/*!40000 ALTER TABLE `projapp_monhoc` DISABLE KEYS */;
INSERT INTO `projapp_monhoc` VALUES ('001001','Nguyên lý cơ bản CN Mac Lênin'),('001004','Đường lối CM ĐCSVN '),('001025','Tư tưởng HCM '),('003001','Anh văn 1 '),('003002','Anh văn 2 '),('003003','Anh văn 3 '),('003004','Anh văn 4 '),('005001','GDTC 1'),('005002','GDTC 2'),('005003','GDTC 3 '),('006001','Giải tích 1 '),('006002','Giải tích 2 '),('006004','Đại số'),('006018','Xác suất thống kê '),('006023','Phương pháp tính '),('007001','Vật lý 1 '),('007002','Vật lý 2 '),('007005','TN Vật lý '),('008001','Pháp luật VN đại cương '),('201010','Cơ ứng dụng '),('201011','Cơ Lý thuyết '),('210014','Nhiệt động lực học kỹ thuật ... '),('402024','Kỹ thuật điện tử ... '),('406009','Kỹ thuật điện ... '),('501001','Tin học đại cương '),('604001','Hóa học đại cương A '),('604002','Hóa học đại cương B '),('604003','Thí nghiệm hóa học ĐC'),('610001','Môi trường & Con người'),('802012','TN Cơ lưu chất ... '),('802015','Cơ lưu chất ... '),('806001','Vẽ kỹ  thuật 1A '),('806002','Vẽ kỹ  thuật 1B '),('806003','Vẽ kỹ  thuật 2A '),('806004','Vẽ kỹ  thuật 2B '),('806010','Vẽ kỹ thuật'),('809026','Sức bền vật liệu 1 ... '),('KKK300','Kỹ năng Giao tiếp - Ngành nghề');
/*!40000 ALTER TABLE `projapp_monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_sinhvien`
--

DROP TABLE IF EXISTS `projapp_sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_sinhvien` (
  `mssv` varchar(10) COLLATE utf16_unicode_ci NOT NULL,
  `ten_sv` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` varchar(1) COLLATE utf16_unicode_ci NOT NULL,
  `khoa` int(11) NOT NULL,
  `nganh` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf16_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mssv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_sinhvien`
--

LOCK TABLES `projapp_sinhvien` WRITE;
/*!40000 ALTER TABLE `projapp_sinhvien` DISABLE KEYS */;
INSERT INTO `projapp_sinhvien` VALUES ('20108018','TẠ VĂN HUYNH','1989-12-25','M',2001,'CK','20108018@sinhvien.com'),('20508264','TRỊNH THỊ MAI TRANG','1989-01-04','M',2005,'CK','20508264@sinhvien.com'),('20608019','NGUYỄN LÊ TOÀN  KHOA','1987-10-26','F',2006,'CK','20608019@sinhvien.com'),('20708230','NGUYỄN TRỌNG  DUY','1987-04-30','M',2007,'CK','20708230@sinhvien.com'),('20708232','HỒ THỊ PHƯƠNG HIỀN','1989-05-21','M',2007,'CK','20708232@sinhvien.com'),('20808035','NGUYỄN PHƯƠNG VI','1990-09-23','F',2008,'CK','20808035@sinhvien.com'),('20808229','VÕ HUỲNH HẠ DU','1988-10-11','F',2008,'CK','20808229@sinhvien.com'),('20908013','HỒNG THỊ HIỀN','1989-01-24','F',2009,'CK','20908013@sinhvien.com'),('20908022','ĐINH THỊ TRÀ MY','1990-07-26','M',2009,'CK','20908022@sinhvien.com'),('20908231','LÊ THỊ HAY','1990-05-18','F',2009,'CK','20908231@sinhvien.com'),('21008010','LÊ DIỄM HẰNG','1989-08-28','M',2010,'CK','21008010@sinhvien.com'),('21008261','NGUYỄN PHƯƠNG HOÀI','1989-01-06','F',2010,'CK','21008261@sinhvien.com'),('21008262','TRẦN THỊ ANH THY','1988-11-18','M',2010,'CK','21008262@sinhvien.com'),('21108033','TRƯƠNG PHÙNG THANH TUẤN','1985-08-30','F',2011,'CK','21108033@sinhvien.com'),('30508233','NGUYỄN ĐÌNH LÊ HÒA','1988-06-18','F',2005,'DC','30508233@sinhvien.com'),('30808017','NGUYỄN HỮU HUY','1987-05-13','F',2008,'DC','30808017@sinhvien.com'),('30808260','HUỲNH TRỌNG HIẾU','1990-08-08','M',2008,'DC','30808260@sinhvien.com'),('30908237','ĐỖ SƠN HUY','1990-06-25','F',2009,'DC','30908237@sinhvien.com'),('31008234','VŨ VIẾT HÙNG','1988-02-15','M',2010,'DC','31008234@sinhvien.com'),('40608238','LÊ NGỌC KIÊN','1988-06-20','M',2006,'DD','40608238@sinhvien.com'),('40708034','PHẠM THỊ THÙY VÂN','1990-10-23','M',2007,'DD','40708034@sinhvien.com'),('40808020','NGÔ LỆ THÙY LINH','1990-01-10','M',2008,'DD','40808020@sinhvien.com'),('41008239','ÔNG THỊ TUYẾT NGA','1990-07-20','F',2010,'DD','41008239@sinhvien.com'),('41108026','HUỲNH ANH THI','1990-09-02','M',2011,'DD','41108026@sinhvien.com'),('41108225','NGUYỄN THỊ KIM NGỌC','1989-09-18','F',2011,'DD','41108225@sinhvien.com'),('41108240','NGUYỄN THỊ KIM NGỌC','1989-09-18','M',2011,'DD','41108240@sinhvien.com'),('50808243','ĐỒN THỊ THỤC QUỲNH','1989-11-20','F',2008,'MT','50808243@sinhvien.com'),('50908242','LA HUỆ PHƯƠNG','1990-11-20','M',2009,'MT','50908242@sinhvien.com'),('51008029','TRẦN THỊ TUYẾT TRINH','1990-01-02','F',2010,'MT','51008029@sinhvien.com'),('51108241','CHÂU THỊ HỒNG NHÃN','1989-06-16','F',2011,'MT','51108241@sinhvien.com'),('60508263','MAI THỊ HỒNG TRÂM','1990-04-23','F',2005,'HC','60508263@sinhvien.com'),('60908246','TRẦN NỮ XUÂN THƠ','1990-09-10','M',2009,'HC','60908246@sinhvien.com'),('61008030','LẠI CHÍNH TRỰC','1990-05-27','M',2010,'HC','61008030@sinhvien.com'),('61108003','NGUYỄN HUỲNH DẠ THẢO','1990-03-03','F',2011,'HC','61108003@sinhvien.com'),('61108249','TRẦN THỊ BÍCH THUẬN','1990-10-09','F',2011,'HC','61108249@sinhvien.com'),('70808251','TRẦN THỊ KIM TRANG','1990-03-04','F',2008,'QL','70808251@sinhvien.com'),('70908250','NGUYỄN MINH TIẾN','1990-11-11','M',2009,'QL','70908250@sinhvien.com'),('71008025','PHAN THỊ THANH NAM','1990-07-12','F',2010,'QL','71008025@sinhvien.com'),('80908252','BÙI MINH TRÍ','1989-09-02','M',2009,'XD','80908252@sinhvien.com'),('81002317','PHAN THỊ LAN ANH','1988-05-18','F',2010,'XD','81002317@sinhvien.com'),('81008254','TRẦN KHẮC TRỌNG','1990-10-04','M',2010,'XD','81008254@sinhvien.com'),('90908256','LÂM THỊ THANH TUYỀN','1989-09-24','M',2009,'MO','90908256@sinhvien.com'),('91008007','PHAN THỊ THANH TRUNG','1989-08-21','F',2010,'MO','91008007@sinhvien.com'),('91108257','VÕ THỊ THÙY DUNG','1990-07-30','F',2011,'MO','91108257@sinhvien.com');
/*!40000 ALTER TABLE `projapp_sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_313280c4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (2,4,'eda60c49627fba660a0d05590878150fc76715e7');
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-05-23 20:25:48
