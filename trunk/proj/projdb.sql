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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Giangvien'),(2,'Sinhvien');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,2,1),(56,2,2),(57,2,3),(58,2,4),(59,2,5),(60,2,6),(61,2,7),(62,2,8),(63,2,9),(64,2,10),(65,2,11),(66,2,12),(67,2,13),(68,2,14),(69,2,15),(70,2,16),(71,2,17),(72,2,18),(73,2,19),(74,2,20),(75,2,21),(76,2,22),(77,2,23),(78,2,24),(79,2,25),(80,2,26),(81,2,27),(82,2,28),(83,2,29),(84,2,30),(85,2,31),(86,2,32),(87,2,33),(88,2,34),(89,2,35),(90,2,36),(91,2,37),(92,2,38),(93,2,39),(94,2,40),(95,2,41),(96,2,42),(97,2,43),(98,2,44),(99,2,45),(100,2,46),(101,2,47),(102,2,48),(103,2,49),(104,2,50),(105,2,51),(106,2,52),(107,2,53),(108,2,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'TAs','','','Tas@admin.com','pbkdf2_sha256$10000$RyGcse99mCX8$OwP2RafEUlkPx4foZHU9SN//1kL4zpYLPQ9Y5II0fk4=',1,1,1,'2012-06-03 06:56:48','2012-05-25 04:44:03'),(2,'GV0001','','','GV0001@giangvien.com','pbkdf2_sha256$10000$sO6mhZcbdfL1$1rc1fjtX8UYkBEcm1918VQxOYzJoRWSNr9lh1dxo8bc=',0,1,0,'2012-05-26 17:37:07','2012-05-25 05:20:55'),(3,'GV0002','','','GV0002@giangvien.com','pbkdf2_sha256$10000$D0gruVHhlWca$tmcySGdIMe/p5JrS2k+ZHzB2AHF00lQDDJXk5i/HT14=',0,1,0,'2012-05-25 05:20:55','2012-05-25 05:20:55'),(4,'GV0003','','','GV0003@giangvien.com','pbkdf2_sha256$10000$AYX2GBMXZttG$0TP6pPRrq2cpFcixohRSD7PwBgXq8IE+bgeBhr7hSVM=',0,1,0,'2012-05-26 11:54:15','2012-05-25 05:20:56'),(5,'GV0004','','','GV0004@giangvien.com','pbkdf2_sha256$10000$poQmEAzFNAX8$c0FoVmgoAcNvdi0DB451yW5swVYD2F0MnqhbqGyUjGE=',0,1,0,'2012-05-25 05:20:56','2012-05-25 05:20:56'),(6,'GV0005','','','GV0005@giangvien.com','pbkdf2_sha256$10000$ftSmFejeL7XD$whLi4cOHNcqgNdsnfhGVlJGMsoXBwLGcLYfgEY5RYvQ=',0,1,0,'2012-05-25 05:20:56','2012-05-25 05:20:56'),(7,'GV0006','','','GV0006@giangvien.com','pbkdf2_sha256$10000$NulhcicmNwU6$HBdBALQQoKohQ3zJhGxf+T5dtuLF2/fSqYbqtsYnfKU=',0,1,0,'2012-05-25 05:20:56','2012-05-25 05:20:56'),(8,'GV0007','','','GV0007@giangvien.com','pbkdf2_sha256$10000$rG7KJ6UpusyH$mDrdbJnR0OkF5io/24wAGyquyGpFrM73lITe9eIDOY8=',0,1,0,'2012-05-25 05:20:56','2012-05-25 05:20:56'),(9,'GV0008','','','GV0008@giangvien.com','pbkdf2_sha256$10000$TgbjWQI5G7Tc$39zqLUYjGzXRhzAzMcl7riY1iUr1zqsnicjhji/2LXc=',0,1,0,'2012-05-25 05:20:56','2012-05-25 05:20:56'),(10,'GV0009','','','GV0009@giangvien.com','pbkdf2_sha256$10000$bFvyHzbt3O8a$eGJDV6Eg9UPeNbrQ59P+jnsIh85RODRY+3Bog/9y52E=',0,1,0,'2012-05-25 05:20:57','2012-05-25 05:20:57'),(11,'GV0010','','','GV0010@giangvien.com','pbkdf2_sha256$10000$iPU4px6OwPo2$7P/rv8Y/mcQF7reZuPZrBm4CtnHrfIEsdOrSgRayZO0=',0,1,0,'2012-05-25 05:20:57','2012-05-25 05:20:57'),(12,'GV0011','','','GV0011@giangvien.com','pbkdf2_sha256$10000$yIRqQGYHmNhw$qbwTpnEjpMF96yzzoad3MnXmNPKEDG9tRIeS04P9WVk=',0,1,0,'2012-05-25 05:20:57','2012-05-25 05:20:57'),(13,'20108018','','','20108018@sinhvien.com','pbkdf2_sha256$10000$Hi4oCM1q4NxG$fwsKlms1faL+G8pcYtHLCso66HTWNX+zq4aH5IfVkNE=',0,1,0,'2012-06-02 08:08:29','2012-05-25 05:21:08'),(14,'20508264','','','20508264@sinhvien.com','pbkdf2_sha256$10000$3bYgYZbqpAhH$8IToL0D2q4EnpIAflS2EsLwqUYIVUJIFN5hF/qoV878=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(15,'20608019','','','20608019@sinhvien.com','pbkdf2_sha256$10000$5aLkuweIwPtr$Pzpdkg3KeDc79eu+rKGYPiUbvmpzS9dk9rgAhmWTA4U=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(16,'20708230','','','20708230@sinhvien.com','pbkdf2_sha256$10000$HCzv9vNizrjc$ti3JdrR7BE+INUZEnJxOIFY6yUe1to/EnFwzCGv8SR0=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(17,'20708232','','','20708232@sinhvien.com','pbkdf2_sha256$10000$sEb46wrIWAzC$FVbMaIJKQpFwz4Dby8SZxlB0CWYstNecvZjw59vnd6c=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(18,'20808035','','','20808035@sinhvien.com','pbkdf2_sha256$10000$rXp8W5xqem3A$i4ESUqONyMoTfSa44qFjN7uM5MXoaA9c+YzSJdLygsY=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(19,'20808229','','','20808229@sinhvien.com','pbkdf2_sha256$10000$Wt2TXXnbl9Oa$2neEzts+vEpUmysfwKBmfe/hH0SZtVIyJu7JAJ2u3kU=',0,1,0,'2012-05-25 05:21:09','2012-05-25 05:21:09'),(20,'20908013','','','20908013@sinhvien.com','pbkdf2_sha256$10000$JIJBGI1to4hG$1wzdsxSUm2riAx0eWGItMVAKpWZZkG7WHg23rTNulRk=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(21,'20908022','','','20908022@sinhvien.com','pbkdf2_sha256$10000$Dnovo1cZeWTM$iJsIdkSQdIO1b04BJsiDlnhe62etGQhY+EB6eTIA08M=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(22,'20908231','','','20908231@sinhvien.com','pbkdf2_sha256$10000$jlWDDXJdsRQi$0Pt6pY5QFf8BqvjbfRm+kYnORC7GQIvkJHGIW/rQtxY=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(23,'21008010','','','21008010@sinhvien.com','pbkdf2_sha256$10000$1gbY0cgKO2Mr$c9HeeDS7xvavtbCphR+UqKlL59qVcXjTRbcuKITpMjs=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(24,'21008261','','','21008261@sinhvien.com','pbkdf2_sha256$10000$GT7monODqSHX$ahUq34SiwiUGXEyXsdJR8rCTaZlnt18uCvOUmaHfPnA=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(25,'21008262','','','21008262@sinhvien.com','pbkdf2_sha256$10000$WdEhTIGynLtr$UEwfidM3wRaEp2uI2AWlwsNpPLspiGjPAF78l5YdKE8=',0,1,0,'2012-05-25 05:21:10','2012-05-25 05:21:10'),(26,'21108033','','','21108033@sinhvien.com','pbkdf2_sha256$10000$kRbAn1wNxTeS$yOm4SGGSpADFWUsm/sI5bZzRlOmVQsf3WEmTAMr1tjk=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(27,'30508233','','','30508233@sinhvien.com','pbkdf2_sha256$10000$hzcHJkutsIvk$/mT7A59dUuqR56vOe5T/u78zOCs4MlP8dtWlHbG9po0=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(28,'30808017','','','30808017@sinhvien.com','pbkdf2_sha256$10000$zGgJ1Y2Yw2P0$MQRrgGzEk9QogX4hBgEkywxRfwvs0iX2DWYI7qDsC1w=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(29,'30808260','','','30808260@sinhvien.com','pbkdf2_sha256$10000$7Ifxb7egSKy9$qyZKY0qCzzaJxEBsrNg6UIb4pKLiW/ZKSMUAjYfrqCk=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(30,'30908237','','','30908237@sinhvien.com','pbkdf2_sha256$10000$0gsKGMbrjYiX$8eiazBJuZQioSLKu86s4PCU6ZkasJJfrGH8lBEuUYco=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(31,'31008234','','','31008234@sinhvien.com','pbkdf2_sha256$10000$jAoxiRBxkrq9$cF+AC3fTsmOBUHGwvgrMLIM284n/48XVg1D28bS3tgM=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(32,'40608238','','','40608238@sinhvien.com','pbkdf2_sha256$10000$gZAjaRs8e31x$Wu8hSm27G2F5FPG+l49gfvs1Nm9dR5DwVBY72nWsjTs=',0,1,0,'2012-05-25 05:21:11','2012-05-25 05:21:11'),(33,'40708034','','','40708034@sinhvien.com','pbkdf2_sha256$10000$B6Zmvxb674Ce$8TPdad4mWITPSYM0cT1qmKT8MaVW6hU4Bh3YMjnZuOo=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(34,'40808020','','','40808020@sinhvien.com','pbkdf2_sha256$10000$51Un8NbsR5il$JJGHY7hfn4ycremkxoVbB877S3OW4oxTNIcJ8OkH5W4=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(35,'41008239','','','41008239@sinhvien.com','pbkdf2_sha256$10000$e6TEj3UZsltB$FEKEjEbCFnQ9tvPnemRVtKfKKH8wE22fmLzZw3UWWmE=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(36,'41108026','','','41108026@sinhvien.com','pbkdf2_sha256$10000$hwrWrTRzrE3N$59hPuGG42P8dvWodoPxgfuElLyC7V48V42iVWB3IRq0=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(37,'41108225','','','41108225@sinhvien.com','pbkdf2_sha256$10000$FxzgW8wOUNNC$R9F7K4ddbCG3FQp8Dz6V+GmwzKr/h3nuVo3ZvFyQTd4=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(38,'41108240','','','41108240@sinhvien.com','pbkdf2_sha256$10000$GloIR9fEtUje$POuwXc05TmscaHgGzxguKIEpBU27e4SRFxWYrQmvE34=',0,1,0,'2012-05-25 05:21:12','2012-05-25 05:21:12'),(39,'50808243','','','50808243@sinhvien.com','pbkdf2_sha256$10000$dl6QMwmN1WT7$0MX0x5rL4j+6fK5zJ7gUFWDpqrw00p1HJe22AzGIZ8Y=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(40,'50908242','','','50908242@sinhvien.com','pbkdf2_sha256$10000$3G1xwdwYIQ9I$UpaJtGqpxBdUyzFX+taOpvELh1tSaC4bQasfH1Ki2Qk=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(41,'51008029','','','51008029@sinhvien.com','pbkdf2_sha256$10000$P7FiD6xooQHJ$rVHuREwybD0jzQ2FwoqW4Hbt/1SIKEiq+MLuQOSPuls=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(42,'51108241','','','51108241@sinhvien.com','pbkdf2_sha256$10000$hD6GXBSEpbgO$LNYfrYxLTujjLJhAo5LwR0bxfQTPqt9eWSxtVcb48po=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(43,'60508263','','','60508263@sinhvien.com','pbkdf2_sha256$10000$jnnLXwsYQ8xX$kLHLvLmPe4frdwt/C/gXDgo0fbcZsp/ilf7XoZyKnV8=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(44,'60908246','','','60908246@sinhvien.com','pbkdf2_sha256$10000$tCSOTZPxRh3w$lr33N0FKIPF+3tjBANQVvmm1y3Xa2xz7fkyI9vz7qyo=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(45,'61008030','','','61008030@sinhvien.com','pbkdf2_sha256$10000$ZqhODikMrjZp$ZUhN6H3otq6nB7i1ZLCbGYjeUdi0PnObSTZ8dkWUdfk=',0,1,0,'2012-05-25 05:21:13','2012-05-25 05:21:13'),(46,'61108003','','','61108003@sinhvien.com','pbkdf2_sha256$10000$EPBYQnqY6CMK$akCbfsNKClAsXNBgapudoWUrDXKgXcCne1x14wQ+WSc=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(47,'61108249','','','61108249@sinhvien.com','pbkdf2_sha256$10000$oOq2QEGEZyTu$SCtE5CPNozs0tpwQfy8NyBs847h2DH19IvlTNBz1qJs=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(48,'70808251','','','70808251@sinhvien.com','pbkdf2_sha256$10000$Rz6g8EcTSNZ7$x9rNH90lmUx94ad0MXeK0ztJltEAfkq9gdov9MGNtDY=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(49,'70908250','','','70908250@sinhvien.com','pbkdf2_sha256$10000$TLdGwdgDmFza$iXCGLhd5wwZzrO6+BFGc2e05K4p0KlXaWTxnG1hZZDM=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(50,'71008025','','','71008025@sinhvien.com','pbkdf2_sha256$10000$PGOcTEJ5EiJZ$GMF7HzdCfLqZYj6oTDilaVjC/w4ivA2HNzjHolhNgKg=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(51,'80908252','','','80908252@sinhvien.com','pbkdf2_sha256$10000$fv8CDVPt0QsF$HL9h16je/8OF5Em2DSAWXEe4HyOBc82huDtXlppJrA0=',0,1,0,'2012-05-25 05:21:14','2012-05-25 05:21:14'),(52,'81002317','','','81002317@sinhvien.com','pbkdf2_sha256$10000$uW6p9Hv9sY9M$C3jN3ApvDlaOJYd3vGGPL6wis1TMT/fRdACdywvpVoo=',0,1,0,'2012-05-25 05:21:15','2012-05-25 05:21:15'),(53,'81008254','','','81008254@sinhvien.com','pbkdf2_sha256$10000$ZxBSNY1jEDEk$y9VWm9Us0pXb/449PIEw2MlHjCnhD991IE3Pn81n9kI=',0,1,0,'2012-05-25 05:21:15','2012-05-25 05:21:15'),(54,'90908256','','','90908256@sinhvien.com','pbkdf2_sha256$10000$WkJ0VpSoauK1$4YSDTM/UVNKhaxPRjKkKDKQTLTu/sZg/PGyzTJ/3BLE=',0,1,0,'2012-05-25 05:21:15','2012-05-25 05:21:15'),(55,'91008007','','','91008007@sinhvien.com','pbkdf2_sha256$10000$jqgoPixlPqhf$O+572P3Y4PQHItcgDhVLkjAz2gCx3P+HiGf6qLd9/o8=',0,1,0,'2012-05-25 05:21:15','2012-05-25 05:21:15'),(56,'91108257','','','91108257@sinhvien.com','pbkdf2_sha256$10000$0zWXE3zUmJin$DOtRlu2urvydLqMvQxMegxljyckyAWsDapN8zUWale0=',0,1,0,'2012-05-25 05:21:15','2012-05-25 05:21:15'),(57,'testgiangvien','','','','pbkdf2_sha256$10000$jtTeLnRzqF8y$zSpNvomD3CcrGwjctK7Sk9s9votFsRhBKCsKXFnoJhg=',1,1,0,'2012-05-26 05:45:23','2012-05-26 05:43:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,2),(13,14,2),(14,15,2),(15,16,2),(16,17,2),(17,18,2),(18,19,2),(19,20,2),(20,21,2),(21,22,2),(22,23,2),(23,24,2),(24,25,2),(25,26,2),(26,27,2),(27,28,2),(28,29,2),(29,30,2),(30,31,2),(31,32,2),(32,33,2),(33,34,2),(34,35,2),(35,36,2),(36,37,2),(37,38,2),(38,39,2),(39,40,2),(40,41,2),(41,42,2),(42,43,2),(43,44,2),(44,45,2),(45,46,2),(46,47,2),(47,48,2),(48,49,2),(49,50,2),(50,51,2),(51,52,2),(52,53,2),(53,54,2),(54,55,2),(55,56,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,57,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-05-25 05:20:27',1,2,'1','Giangvien',1,''),(2,'2012-05-25 05:20:35',1,2,'2','Sinhvien',1,''),(3,'2012-05-25 05:22:07',1,12,'1','111 - 001001:Nguyên lý cơ bản CN Mac Lênin - A',1,''),(4,'2012-05-25 05:53:43',1,13,'4','',1,''),(5,'2012-05-25 05:54:15',1,13,'5','',1,''),(6,'2012-05-25 06:03:18',1,12,'2','112 - 001025:Tư tưởng HCM  - B',1,''),(7,'2012-05-25 06:03:51',1,12,'3','102 - 006018:Xác suất thống kê  - B',1,''),(8,'2012-05-25 11:50:06',1,12,'7','112 - 005003:GDTC 3  - B',1,''),(9,'2012-05-26 05:43:59',1,3,'57','testgiangvien',1,''),(10,'2012-05-26 05:44:51',1,3,'57','testgiangvien',2,'Changed password, is_staff and user_permissions.');
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
INSERT INTO `django_session` VALUES ('c9fd90a54e881ec7ab58668978570af7','ZTM1ODEwMjAwYzRjYjE1YzUxYTFiMmI4MmVkYTljYTYxOTkzNDQxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-06-08 04:45:03'),('eb71a7b8f578f7f8ad74fd8243401a31','ODkxY2NhMzYyZGExNmRkY2VjOTZiNmFjZTM5ZTU0NzcxNzgwM2IwYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRVD2Rq\nYW5nb19sYW5ndWFnZVgCAAAAZW5xAlUNX2F1dGhfdXNlcl9pZIoBAXUu\n','2012-06-17 06:57:10');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_forum`
--

LOCK TABLES `forum_forum` WRITE;
/*!40000 ALTER TABLE `forum_forum` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_userprofile`
--

LOCK TABLES `forum_userprofile` WRITE;
/*!40000 ALTER TABLE `forum_userprofile` DISABLE KEYS */;
INSERT INTO `forum_userprofile` VALUES (1,'images/f1292273283.jpg',0,1),(2,'',0,2),(3,'',0,3),(4,'',0,4),(5,'',0,5),(6,'',0,6),(7,'',0,7),(8,'',0,8),(9,'',0,9),(10,'',0,10),(11,'',0,11),(12,'',0,12),(13,'images/f1292273283.jpg',0,13),(14,'',0,14),(15,'',0,15),(16,'',0,16),(17,'',0,17),(18,'',0,18),(19,'',0,19),(20,'',0,20),(21,'',0,21),(22,'',0,22),(23,'',0,23),(24,'',0,24),(25,'',0,25),(26,'',0,26),(27,'',0,27),(28,'',0,28),(29,'',0,29),(30,'',0,30),(31,'',0,31),(32,'',0,32),(33,'',0,33),(34,'',0,34),(35,'',0,35),(36,'',0,36),(37,'',0,37),(38,'',0,38),(39,'',0,39),(40,'',0,40),(41,'',0,41),(42,'',0,42),(43,'',0,43),(44,'',0,44),(45,'',0,45),(46,'',0,46),(47,'',0,47),(48,'',0,48),(49,'',0,49),(50,'',0,50),(51,'',0,51),(52,'',0,52),(53,'',0,53),(54,'',0,54),(55,'',0,55),(56,'',0,56),(57,'',0,57);
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
  `mssv_id` int(11) NOT NULL,
  `diem_giua_ky` double DEFAULT NULL,
  `diem_cuoi_ky` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mlmh_id` (`mlmh_id`,`mssv_id`),
  KEY `projapp_danhsachdiem_61409b2c` (`mlmh_id`),
  KEY `projapp_danhsachdiem_7b9768af` (`mssv_id`),
  CONSTRAINT `mlmh_id_refs_id_174650f6` FOREIGN KEY (`mlmh_id`) REFERENCES `projapp_lopmonhoc` (`id`),
  CONSTRAINT `mssv_id_refs_id_6d09d40` FOREIGN KEY (`mssv_id`) REFERENCES `projapp_sinhvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_danhsachdiem`
--

LOCK TABLES `projapp_danhsachdiem` WRITE;
/*!40000 ALTER TABLE `projapp_danhsachdiem` DISABLE KEYS */;
INSERT INTO `projapp_danhsachdiem` VALUES (1,1,1,5,8),(2,1,2,NULL,NULL),(3,1,19,6,6),(4,1,7,5,10),(5,1,10,5.5,7.7),(6,2,1,6,3),(7,2,2,8,5),(8,2,11,6,5),(9,2,15,9,9),(10,2,13,3,10),(11,2,12,4,0),(12,2,6,5,7),(13,3,1,5,5),(14,3,12,3,5),(15,3,18,7,7),(19,7,9,NULL,NULL),(20,7,4,NULL,NULL),(21,7,14,NULL,NULL);
/*!40000 ALTER TABLE `projapp_danhsachdiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_giangvien`
--

DROP TABLE IF EXISTS `projapp_giangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_giangvien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mgv_id` int(11) NOT NULL,
  `ten_gv` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mgv_id` (`mgv_id`),
  CONSTRAINT `mgv_id_refs_id_2badf9ac` FOREIGN KEY (`mgv_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_giangvien`
--

LOCK TABLES `projapp_giangvien` WRITE;
/*!40000 ALTER TABLE `projapp_giangvien` DISABLE KEYS */;
INSERT INTO `projapp_giangvien` VALUES (1,2,'ĐINH BÁC ÁI','1989-01-10'),(2,3,'TRẦN HOÀI ANH','1990-09-18'),(3,4,'TRẦN CÔNG ĐỨC','1987-09-28'),(4,5,'NGUYỄN TẤN DUY','1989-10-25'),(5,6,'PHAN THỊ THÚY HẰNG','1987-04-08'),(6,7,'NGUYỄN THỊ MINH HOA','1989-10-01'),(7,8,'TRẦN NGỌC KIÊN','1988-02-24'),(8,9,'HỨA KHÁNH LINH','1990-06-23'),(9,10,'TRẦN CHÂN MÂY','1990-01-16'),(10,11,'LÊ THỊ BÍCH NGỌC','1989-09-23'),(11,12,'NGUYỄN THỊ SƠN','1990-05-14');
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
INSERT INTO `projapp_hocky` VALUES (111,'HK 1 (2011-2012)'),(102,'HK 2 (2010-2011)'),(112,'HK 2 (2011-2012)');
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
  `mon_hoc_id` varchar(6) COLLATE utf16_unicode_ci NOT NULL,
  `nhom_to` varchar(5) COLLATE utf16_unicode_ci NOT NULL,
  `giang_vien_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hoc_ky_id` (`hoc_ky_id`,`mon_hoc_id`,`nhom_to`),
  KEY `projapp_lopmonhoc_288e666d` (`hoc_ky_id`),
  KEY `projapp_lopmonhoc_6acfa662` (`mon_hoc_id`),
  KEY `projapp_lopmonhoc_667ae4d7` (`giang_vien_id`),
  CONSTRAINT `giang_vien_id_refs_id_27f0130` FOREIGN KEY (`giang_vien_id`) REFERENCES `projapp_giangvien` (`id`),
  CONSTRAINT `hoc_ky_id_refs_mhk_132e5338` FOREIGN KEY (`hoc_ky_id`) REFERENCES `projapp_hocky` (`mhk`),
  CONSTRAINT `mon_hoc_id_refs_mmh_926eaab` FOREIGN KEY (`mon_hoc_id`) REFERENCES `projapp_monhoc` (`mmh`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_lopmonhoc`
--

LOCK TABLES `projapp_lopmonhoc` WRITE;
/*!40000 ALTER TABLE `projapp_lopmonhoc` DISABLE KEYS */;
INSERT INTO `projapp_lopmonhoc` VALUES (1,111,'001001','A',1),(2,112,'001025','B',NULL),(3,102,'006018','B',6),(7,112,'005003','B',1);
/*!40000 ALTER TABLE `projapp_lopmonhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_monhoc`
--

DROP TABLE IF EXISTS `projapp_monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_monhoc` (
  `mmh` varchar(6) COLLATE utf16_unicode_ci NOT NULL,
  `ten_mh` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `tile_giuaky` double NOT NULL,
  PRIMARY KEY (`mmh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_monhoc`
--

LOCK TABLES `projapp_monhoc` WRITE;
/*!40000 ALTER TABLE `projapp_monhoc` DISABLE KEYS */;
INSERT INTO `projapp_monhoc` VALUES ('001001','Nguyên lý cơ bản CN Mac Lênin',0.2),('001004','Đường lối CM ĐCSVN ',0.2),('001025','Tư tưởng HCM ',0.2),('003001','Anh văn 1 ',0.2),('003002','Anh văn 2 ',0.2),('003003','Anh văn 3 ',0.2),('003004','Anh văn 4 ',0.2),('005001','GDTC 1',0.2),('005002','GDTC 2',0.2),('005003','GDTC 3 ',0.2),('006001','Giải tích 1 ',0.2),('006002','Giải tích 2 ',0.2),('006004','Đại số',0.2),('006018','Xác suất thống kê ',0.2),('006023','Phương pháp tính ',0.2),('007001','Vật lý 1 ',0.2),('007002','Vật lý 2 ',0.2),('007005','TN Vật lý ',0.2),('008001','Pháp luật VN đại cương ',0.2),('201010','Cơ ứng dụng ',0.2),('201011','Cơ Lý thuyết ',0.2),('210014','Nhiệt động lực học kỹ thuật ... ',0.2),('402024','Kỹ thuật điện tử ... ',0.2),('406009','Kỹ thuật điện ... ',0.2),('501001','Tin học đại cương ',0.2),('604001','Hóa học đại cương A ',0.2),('604002','Hóa học đại cương B ',0.2),('604003','Thí nghiệm hóa học ĐC',0.2),('610001','Môi trường & Con người',0.2),('802012','TN Cơ lưu chất ... ',0.2),('802015','Cơ lưu chất ... ',0.2),('806001','Vẽ kỹ  thuật 1A ',0.2),('806002','Vẽ kỹ  thuật 1B ',0.2),('806003','Vẽ kỹ  thuật 2A ',0.2),('806004','Vẽ kỹ  thuật 2B ',0.2),('806010','Vẽ kỹ thuật',0.2),('809026','Sức bền vật liệu 1 ... ',0.2),('KKK300','Kỹ năng Giao tiếp - Ngành nghề',0.2);
/*!40000 ALTER TABLE `projapp_monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projapp_sinhvien`
--

DROP TABLE IF EXISTS `projapp_sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projapp_sinhvien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mssv_id` int(11) NOT NULL,
  `ten_sv` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` varchar(1) COLLATE utf16_unicode_ci NOT NULL,
  `khoa` int(11) NOT NULL,
  `nganh` varchar(2) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mssv_id` (`mssv_id`),
  CONSTRAINT `mssv_id_refs_id_5190154d` FOREIGN KEY (`mssv_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projapp_sinhvien`
--

LOCK TABLES `projapp_sinhvien` WRITE;
/*!40000 ALTER TABLE `projapp_sinhvien` DISABLE KEYS */;
INSERT INTO `projapp_sinhvien` VALUES (1,13,'TẠ VĂN HUYNH','1989-12-25','M',2001,'CK'),(2,14,'TRỊNH THỊ MAI TRANG','1989-01-04','M',2005,'CK'),(3,15,'NGUYỄN LÊ TOÀN  KHOA','1987-10-26','F',2006,'CK'),(4,16,'NGUYỄN TRỌNG  DUY','1987-04-30','M',2007,'CK'),(5,17,'HỒ THỊ PHƯƠNG HIỀN','1989-05-21','M',2007,'CK'),(6,18,'NGUYỄN PHƯƠNG VI','1990-09-23','F',2008,'CK'),(7,19,'VÕ HUỲNH HẠ DU','1988-10-11','F',2008,'CK'),(8,20,'HỒNG THỊ HIỀN','1989-01-24','F',2009,'CK'),(9,21,'ĐINH THỊ TRÀ MY','1990-07-26','M',2009,'CK'),(10,22,'LÊ THỊ HAY','1990-05-18','F',2009,'CK'),(11,23,'LÊ DIỄM HẰNG','1989-08-28','M',2010,'CK'),(12,24,'NGUYỄN PHƯƠNG HOÀI','1989-01-06','F',2010,'CK'),(13,25,'TRẦN THỊ ANH THY','1988-11-18','M',2010,'CK'),(14,26,'TRƯƠNG PHÙNG THANH TUẤN','1985-08-30','F',2011,'CK'),(15,27,'NGUYỄN ĐÌNH LÊ HÒA','1988-06-18','F',2005,'DC'),(16,28,'NGUYỄN HỮU HUY','1987-05-13','F',2008,'DC'),(17,29,'HUỲNH TRỌNG HIẾU','1990-08-08','M',2008,'DC'),(18,30,'ĐỖ SƠN HUY','1990-06-25','F',2009,'DC'),(19,31,'VŨ VIẾT HÙNG','1988-02-15','M',2010,'DC'),(20,32,'LÊ NGỌC KIÊN','1988-06-20','M',2006,'DD'),(21,33,'PHẠM THỊ THÙY VÂN','1990-10-23','M',2007,'DD'),(22,34,'NGÔ LỆ THÙY LINH','1990-01-10','M',2008,'DD'),(23,35,'ÔNG THỊ TUYẾT NGA','1990-07-20','F',2010,'DD'),(24,36,'HUỲNH ANH THI','1990-09-02','M',2011,'DD'),(25,37,'NGUYỄN THỊ KIM NGỌC','1989-09-18','F',2011,'DD'),(26,38,'NGUYỄN THỊ KIM NGỌC','1989-09-18','M',2011,'DD'),(27,39,'ĐỒN THỊ THỤC QUỲNH','1989-11-20','F',2008,'MT'),(28,40,'LA HUỆ PHƯƠNG','1990-11-20','M',2009,'MT'),(29,41,'TRẦN THỊ TUYẾT TRINH','1990-01-02','F',2010,'MT'),(30,42,'CHÂU THỊ HỒNG NHÃN','1989-06-16','F',2011,'MT'),(31,43,'MAI THỊ HỒNG TRÂM','1990-04-23','F',2005,'HC'),(32,44,'TRẦN NỮ XUÂN THƠ','1990-09-10','M',2009,'HC'),(33,45,'LẠI CHÍNH TRỰC','1990-05-27','M',2010,'HC'),(34,46,'NGUYỄN HUỲNH DẠ THẢO','1990-03-03','F',2011,'HC'),(35,47,'TRẦN THỊ BÍCH THUẬN','1990-10-09','F',2011,'HC'),(36,48,'TRẦN THỊ KIM TRANG','1990-03-04','F',2008,'QL'),(37,49,'NGUYỄN MINH TIẾN','1990-11-11','M',2009,'QL'),(38,50,'PHAN THỊ THANH NAM','1990-07-12','F',2010,'QL'),(39,51,'BÙI MINH TRÍ','1989-09-02','M',2009,'XD'),(40,52,'PHAN THỊ LAN ANH','1988-05-18','F',2010,'XD'),(41,53,'TRẦN KHẮC TRỌNG','1990-10-04','M',2010,'XD'),(42,54,'LÂM THỊ THANH TUYỀN','1989-09-24','M',2009,'MO'),(43,55,'PHAN THỊ THANH TRUNG','1989-08-21','F',2010,'MO'),(44,56,'VÕ THỊ THÙY DUNG','1990-07-30','F',2011,'MO');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
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

-- Dump completed on 2012-06-03 13:59:07
