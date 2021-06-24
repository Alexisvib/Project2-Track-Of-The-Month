-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: track
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
-- Table structure for table `badge`
--

DROP TABLE IF EXISTS `badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `badge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge`
--

LOCK TABLES `badge` WRITE;
/*!40000 ALTER TABLE `badge` DISABLE KEYS */;
INSERT INTO `badge` VALUES (7,'Track of the month','https://cdn.pixabay.com/photo/2017/03/21/21/50/medal-2163457_1280.png','1ère place du podium','2021-04-21 13:29:19','2021-04-21 13:29:19'),(13,'5 musics shared','https://cdn.pixabay.com/photo/2013/07/12/18/04/dvd-152917_1280.png','5 musiques partagées','2021-04-21 21:05:45','2021-04-21 21:05:45'),(14,'10 musics shared','https://cdn.pixabay.com/photo/2013/07/13/11/51/cd-158817_1280.png','10 musiques partagées','2021-04-21 21:06:22','2021-04-21 21:06:22'),(15,'Sleepy vote','https://cdn.pixabay.com/photo/2016/09/16/09/20/alarm-1673577_1280.png','Vote entre 2 et 5h du matin','2021-04-21 21:08:35','2021-04-21 21:08:35'),(16,'Weekend vote','https://cdn.pixabay.com/photo/2018/08/04/12/54/weekend-3583629_1280.png','Vote samedi et/ou dimanche','2021-04-21 21:09:37','2021-04-21 21:09:37'),(17,'5 power given','https://cdn.pixabay.com/photo/2013/07/13/10/50/heart-157895_1280.png','5 votes power donnés','2021-04-21 21:13:40','2021-04-21 21:13:40'),(22,'100 power given','https://cdn131.picsart.com/316495857416211.png?type=webp&to=min&r=640','100 votes power donnés','2021-04-22 11:49:21','2021-04-22 11:49:21'),(23,'10000 power given','https://i.pinimg.com/originals/af/13/b2/af13b2733564164ef0f44d88187364e4.png','10 000 votes power donnés','2021-04-22 11:52:13','2021-04-22 11:52:13'),(25,'100000 power given','https://i.pinimg.com/originals/e1/77/59/e17759233083705c39c45b7d7a50027e.png','100 000 votes power donnés','2021-04-22 12:02:30','2021-04-22 12:02:30'),(26,'1000000  power given','https://clipart.info/images/ccovers/1484942366ios-emoji-green-heart.png','1 000 000 votes power reçus','2021-04-22 12:05:19','2021-04-22 12:05:19'),(34,'1 music shared','https://media.discordapp.net/attachments/828934209476886601/837590230038085682/484-4841195_grammys-hd-png-download.png?width=467&height=489','1 musique ajoutée',NULL,NULL),(35,'50 musics shared','https://media.discordapp.net/attachments/828934209476886601/837590221859586048/Feutrine-vinyle-logo-vidi-vici.jpg','50 musiques ajoutées',NULL,NULL),(36,'100 musics shared','https://media.discordapp.net/attachments/828934209476886601/837590224288481301/images.jpg','100 musiques ajoutées',NULL,NULL);
/*!40000 ALTER TABLE `badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'administrateur','admin'),(2,'contributeur','contributor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `id` int NOT NULL AUTO_INCREMENT,
  `youtube_id` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rating` float DEFAULT NULL,
  `power` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_song_user` (`user_id`),
  CONSTRAINT `fk_song_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (87,'kYtGl1dX5qI',58,NULL,59,'2021-05-05 10:29:08','2021-05-24 12:54:09');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_style`
--

DROP TABLE IF EXISTS `song_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_style` (
  `style_id` int NOT NULL,
  `song_id` int NOT NULL,
  KEY `fk_song_style_style` (`style_id`),
  KEY `fk_song_style_song` (`song_id`),
  CONSTRAINT `fk_song_style_song` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_song_style_style` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_style`
--

LOCK TABLES `song_style` WRITE;
/*!40000 ALTER TABLE `song_style` DISABLE KEYS */;
INSERT INTO `song_style` VALUES (17,87);
/*!40000 ALTER TABLE `song_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `style` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `identifier` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (1,'BO, Musiques de films, Comédies musicales','Movie_music'),(2,'Compilations, Dance, Divers','Dance_divers'),(3,'Country','Country'),(4,'Electro','Electro'),(5,'Hard Rock, Metal','Metal'),(6,'Jazz, Blues','Jazz'),(7,'K-pop','Korean'),(8,'Musique Classique','Classic'),(9,'Musiques de Jeux Vidéo','Videogame'),(10,'Musiques du monde','Worldmusic'),(11,'Musiques enfants','Child'),(12,'Pop, Rock, Indé','Rockpop'),(13,'R&B, Soul, Funk','Rnb'),(14,'Rap','Rap'),(15,'Reggae, Ragga, Roots','Reggae'),(16,'Variété Française','Frenchvariety'),(17,'Variété Internationale','Worldvariety');
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `role_id` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `github` varchar(100) DEFAULT NULL,
  `contribution_force` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_role` (`role_id`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (58,'admin',1,'$2y$10$NtE1Gh5YZEuHmzf8ni.zbOCmbXVOrrJVgl7bU0B1wgrVQlayWv6jG','admin',5,'2021-05-05 10:28:54','2021-05-05 10:28:54');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_badge`
--

DROP TABLE IF EXISTS `user_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_badge` (
  `user_id` int NOT NULL,
  `badge_id` int NOT NULL,
  KEY `fk_user_badge_badge` (`badge_id`),
  KEY `fk_user_badge_user` (`user_id`),
  CONSTRAINT `fk_user_badge_badge` FOREIGN KEY (`badge_id`) REFERENCES `badge` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_badge_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_badge`
--

LOCK TABLES `user_badge` WRITE;
/*!40000 ALTER TABLE `user_badge` DISABLE KEYS */;
INSERT INTO `user_badge` VALUES (58,34),(58,17);
/*!40000 ALTER TABLE `user_badge` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 14:21:50
