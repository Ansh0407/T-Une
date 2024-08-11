-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: tune.cbcitdflipgg.ap-south-1.rds.amazonaws.com    Database: tune
-- ------------------------------------------------------
-- Server version	8.0.28
use tune
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
/* SET @@SESSION.SQL_LOG_BIN= 0;*/

--
-- GTID state at the beginning of the backup 
--

-- SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `genreid` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`genreid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'EDM'),(2,'Hip-Hop'),(3,'Bollywood'),(4,'K-pop');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Info`
--

DROP TABLE IF EXISTS `Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Info` (
  `day` date NOT NULL,
  `visits` int DEFAULT NULL,
  PRIMARY KEY (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Info`
--

LOCK TABLES `Info` WRITE;
/*!40000 ALTER TABLE `Info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Likes`
--

DROP TABLE IF EXISTS `Likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Likes` (
  `postid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  KEY `postid` (`postid`),
  KEY `userid` (`userid`),
  CONSTRAINT `Likes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `Posts` (`postid`),
  CONSTRAINT `Likes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Likes`
--

LOCK TABLES `Likes` WRITE;
/*!40000 ALTER TABLE `Likes` DISABLE KEYS */;
INSERT INTO `Likes` VALUES (7,2275),(6,2285),(5,2287),(2,2285),(4,2285),(7,2285),(6,2287),(16,2288),(15,2288),(14,2285),(2,2290),(2,2292),(14,2298);
/*!40000 ALTER TABLE `Likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Merchandise`
--

DROP TABLE IF EXISTS `Merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Merchandise` (
  `merchid` int NOT NULL AUTO_INCREMENT,
  `item` varchar(50) NOT NULL,
  `weblink` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rating` int DEFAULT NULL,
  `price` double NOT NULL,
  `merchPicture` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`merchid`),
  CONSTRAINT `Merchandise_chk_1` CHECK ((`rating` <= 5))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Merchandise`
--

LOCK TABLES `Merchandise` WRITE;
/*!40000 ALTER TABLE `Merchandise` DISABLE KEYS */;
INSERT INTO `Merchandise` VALUES (1,'Coldplay T-Shirt | The Scientist Musical Notes Roy','https://www.google.com/shopping/product/14634233462116835407?client=opera-gx&amp;q=music+shopping+me','\"Jersey · Round Neck:The mod designs, comfy fabric, and unmatchable love for\nurbane clothing are jus',5,0,'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcR3B4_EA7KZwZL9JjYh0jYomICLOCziKIwqPj1tUuFj3iOMLLwZ1GEJ3QMMQm_ZlOCilZ_JBbURvtkA25thtmqV-6ez_NR1&amp;usqp=CAY'),(2,'Tupac Posters 2pac Poster Gold Chains Portrait ','https://www.ubuy.co.in/product/4KOGIICH0-tupac-posters-2pac-poster-gold-chains-portrait-90s-hip-hop-','Tupac Posters 2pac Poster Gold Chains Portrait 90s Hip Hop Rapper Posters For Room Aesthetic Mid 90s',2,0,NULL),(3,'Music Legends: The Beatles T-Shirt','https://nerdarena.in/products/music-legends-the-beatles-t-shirt?variant=42413647200507&currency=INR&','Product Details: 250 GSM, 100% Cotton, Pre-Shrunk Hand Printed with Silk Screen Printing 3D Design L',3,2000,'https://cdn.shopify.com/s/files/1/1969/6605/products/TheBeatlesPoster1.jpg?v=1640179428&amp;width=960'),(5,'Daft Punk - Random Access Memories (cd)','https://bigamart.com/product/random-access-memories/?wmc-currency=INR','2013 album from the beloved Electronic French duo, their first proper studio album in eight years. I',3,0,NULL),(6,'TENOCHTITLAN \"Epoch Of The Fifth Sun\" /CD/','https://shop.metalscraprecords.com/tenochtitlan-epoch-of-the-fifth-sun-cd-4844','\"Epoch Of The Fifth Sun\" is debut album for doom, ethno & ambient music lovers. This virtual project',1,1500,NULL);
/*!40000 ALTER TABLE `Merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posts` (
  `postid` int NOT NULL AUTO_INCREMENT,
  `genreid` int NOT NULL,
  `pdate` date NOT NULL,
  `summary` varchar(100) NOT NULL,
  `content` text,
  `image_link` varchar(250) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  `likes` int DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `genreid` (`genreid`),
  CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`genreid`) REFERENCES `Genre` (`genreid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (2,1,'2022-04-21','Disney announces vinyl reissue of Daft Punk’s iconic “Tron legacy” Soundtrack','In celebration of the 40-year anniversary of the original TRON film, Disney has announced a vinyl reissue of the 1982 sci-fi classic\'s soundtrack. The company is also pressing new vinyl of Daft Punk\'s iconic TRON: Legacy score and subsequent remix album, 2011\'s TRON: Legacy Reconfigured, which features reworks of the robots\' music by Avicii, M83, Boys Noize and The Glitch Mob, among others.','https://lumiere-a.akamaihd.net/v1/images/p_tronlegacy_19298_7b1ec957.jpeg','',19),(3,2,'2022-04-21','Kendrick Lamar announces Mr. Morale & The Big Steppers – his first album in five years','Kendrick Lamar officially kickstarted the rollout for his fifth studio album on Monday (April 18) via his personal website, oklama.com.','https://media.newyorker.com/photos/5ad6313540fc7c73d830a3a8/master/w_1600%2Cc_limit/St-Felix-Kendrick-Lamar-Pulitzer.jpg','',6),(4,2,'2022-04-21','Wiz Khalifa Celebrates 420 By Releasing Classic \'Taylor Allderdice\' Mixtape On Streaming','Trust Wiz Khalifa to come through with a treat for his fans on 420. To celebrate the annual smoker’s holiday, the Pittsburgh rapper released his classic 2012 mixtape Taylor Allderdice on streaming services for the first time on Wednesday (April 20).','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLjJnyuaFDb-IaXfowp2sT-y16FTFqErxvTQ&usqp=CAU','',28),(5,4,'2022-04-21','BTS is back after the long Hiatus! BTS surprised their fans with the release date of the much antici','In June, BTS, a South Korean pop band, announced their return with a new album. The announcement was made  w hile wrapping off their \'Permission to Dance On Stage\' tour at Allegiant Stadium in Las Vegas, Nevada. BigHit Music, their record  label,made the news on Weverse, a global fan community forum. \"BTS will release a new album on June 10, 2022,\" BigHit Music said in a statement.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5RqJON5wYzk4lBM1cMNpdLDGFPidpHqCvAw&usqp=CAU','https://www.dnaindia.com/entertainment/report-bts-suga-jhope-rm-jimin-v-jungkook-new-album-we-are-bu',20),(6,4,'2022-04-22','K-pop idol Wonho to make musical debut in upcoming period musical ‘Equal’','Wonho appears to be pretty booked and busy these days, as fans are planning to visit him in person after witnessing him MC a performance with (G)I-DLE as guests. The K-pop sensation has been cast as one of the major characters in the musical \'Equal.\' The drama follows the friendship between Theo, a doctor, and Nikola, a patient with an incurable sickness, in 17th century Europe, when the continent was plagued with witch hunts and the plague. The musical is now in its third edition, with the last one ending its run in February.','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/WONHO_BEAUTYPLUS_2020.jpg/360px-WONHO_BEAUTYPLUS_2020.jpg','https://meaww.com/equal-k-pop-idol-wonho-musical-debut-theo-fan-reaction',153),(7,3,'2022-04-28','Nawazuddin Siddiqui Calls Out Bollywood Filmmakers For Speaking in English: “South Me Proud Feel Kar','Nawazuddin Siddiqui has proved his acting chops over the years with projects like The Lunchbox, Sacred Games, Manto amongst others. He found his much-deserved duo in the latter half of his career but better late than never, isn’t it? The actor is known for speaking up his mind and has weighed in on Bollywood filmmakers speaking in English while they make Hindi films. Scroll below for details!','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaoben5fzrImvjV5oCEFNb5u2lKgpLN4u2Tg&usqp=CAU','https://www.koimoi.com/bollywood-news/nawazuddin-siddiqui-calls-out-bollywood-filmmakers-for-speakin',52),(8,3,'2022-04-28','Ajay Devgn hits back at Kichcha Sudeepa’s comment on pan-India films; says, “Hindi was, is and alway','Ajay Devgn has hit back at actor Kichcha Sudeepa for his comment on Hindi language and pan-India films. Ajay questioned Kichcha on why he dubs his Kannada films in Hindi and releases them. This was in response to Kichcha saying that Hindi is no more the national language of India.','https://st1.bollywoodlife.com/wp-content/uploads/2021/05/Sudeep-Ajay.jpg?impolicy=Medium_Widthonly&w=600','https://www.bollywoodhungama.com/news/features/ajay-devgn-hits-back-kichcha-sudeepas-comment-pan-ind',201),(9,1,'2022-05-11','ALAN WALKER ANNOUNCES \"WALKERVERSE\" 2022 WORLD TOUR','The lengthy, 29-stop tour snakes throughout Europe\'s major metropolitan centers before touching down in North America by way of Dallas, Texas. With major outings at Washington D.C.\'s Echostage, Chicago\'s Radius, and the Bill Graham Civic Auditorium in San Francisco, the WalkerVerse tour is shaping up to be Walker\'s biggest showing yet on the club circuit. ','https://pbs.twimg.com/media/FE1FhWHWUAEXfQK.jpg','https://edm.com/news/alan-walker-walkerverse-world-tour-dates-2022',210),(10,1,'2022-05-11','CALVIN HARRIS TEASES NEW COLLABORATION WITH SNOOP DOGG FROM \"FUNK WAV BOUNCES VOL. 2\"','Speculation around Calvin Harris\' list of collaborators who will appear on the hotly anticipated Funk Wav Bounces Vol. 2 continues to grow after the superstar DJ teased new music with none other than the Doggfather himself.','https://assets.capitalxtra.com/2017/27/calvin-harris-album-launch-party-with-snoop-dogg-1499097154-view-0.png','https://edm.com/news/calvin-harris-teases-new-collaboration-snoop-dogg-funk-wav-bounces-vol-2',100),(12,2,'2022-05-11','Gunna Officially Surrenders To Authorities For RICO Charge','According to the Fulton County jail records, authorities charged Gunna (born Sergio Giavanni Kitchens) with one count of Conspiracy to Violate the Racketeer Influenced and Corrupt Organizations Act. The Fulton County Sheriff’s Office booked the “Drip Too Hard” rapper on May 11.','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Gunna_-_Openair_Frauenfeld_2019_09.jpg/220px-Gunna_-_Openair_Frauenfeld_2019_09.jpg','https://allhiphop.com/news/gunna-officially-surrenders-to-authorities-for-rico-charge/',59),(13,3,'2022-05-11','Sonakshi Sinha\'s BIG Secret is out and it\'s not what we all thought!','Now, finally, the big secret of Sonakshi is out. The actress has launched her own brand of press-on nails. She shared a video of the same and wrote, “Ladies… are you ready to take over Hot Girl Summer and #NAILIT with me???? @itssoezi.” In the video, Sona shows some beautiful shades of nails and it’s a very glamorous video. So, all the fans of Sonakshi, who thought that the actress is all set to tie the knot, well your prediction has turned out to be false.','https://images.news18.com/ibnlive/uploads/2022/05/sonakshi.jpg','https://www.bollywoodlife.com/news-gossip/sonakshi-sinhas-big-secret-is-out-and-its-not-what-we-all-',248),(14,3,'2022-05-11','Hina Khan to attend Cannes 2022, SidNaaz trends for new milestone, Bharti Singh planning second baby','Yeh Rishta Kya Kehlata Hai star Hina Khan is going to walk the red carpet at the Cannes this year. This is her second time at the Cannes, having walked the red carpet in 2019. This year Hina Khan will launch the poster of her Indo-English film. \"Hina\'s Indo English film Country of Blind is all set for a poster launch at the Cannes Film Festival, and hence Hina will be seen again at the Cannes Red Carpet. She walked not once but twice on the red carpet and was appreciated for both her looks which were so different from each other. ','https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Hina-Khan-snapped-on-Bigg-Boss-OTT-set-in-Film-City-Goregaon-3.jpg/220px-Hina-Khan-snapped-on-Bigg-Boss-OTT-set-in-Film-City-Goregaon-3.jpg','https://www.bollywoodlife.com/tv/trending-tv-news-today-11-may-2022-hina-khan-to-attend-cannes-2022-',152),(15,4,'2022-05-11','Woosung drops thrilling teaser for upcoming single ‘Phase Me’','The Rose frontman Woosung has released a music video teaser for his upcoming solo single ‘Phase Me’, the title track of his new album ‘Moth’.The clip opens with Woosung standing in front of an eerie-looking street light, dressed in a bright blue jacket with his back facing the camera. It cuts to scenes of the singer with blank all-white eyes, as well as shots of him dancing with women. “This don’t phase me at all,” Woosung croons in the trailer, before the screen cuts to black.','https://www.hellokpop.com/wp-content/uploads/2022/04/FPLw-wnUYAc9DZy.jpg','https://www.nme.com/news/music/woosungs-phase-me-music-video-moth-ep-3222977',501),(16,4,'2022-05-11','Stray Kids’ Hyunjin Is Still Going Viral For “God’s Menu” Two Years Later','Hyunjin goes viral on the regular. One fan recently tweeted pictures of him “getting ready for” the Met Gala, except they weren’t from the event at all. Still, locals flocked to the tweet, wanting to know who the beautiful man was.','https://i.pinimg.com/originals/fb/cd/af/fbcdaf0f0230a460001f2859ce10893a.jpg','https://www.koreaboo.com/stories/stray-kids-hyunjin-gods-menu-going-viral-two-years-later/',351);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Preferences`
--

DROP TABLE IF EXISTS `Preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Preferences` (
  `pr_index` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `genreid1` int NOT NULL,
  `genreid2` int DEFAULT NULL,
  `genreid3` int DEFAULT NULL,
  PRIMARY KEY (`pr_index`),
  KEY `userid` (`userid`),
  KEY `genreid1` (`genreid1`),
  KEY `genreid2` (`genreid2`),
  KEY `genreid3` (`genreid3`),
  CONSTRAINT `Preferences_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`),
  CONSTRAINT `Preferences_ibfk_2` FOREIGN KEY (`genreid1`) REFERENCES `Genre` (`genreid`),
  CONSTRAINT `Preferences_ibfk_3` FOREIGN KEY (`genreid2`) REFERENCES `Genre` (`genreid`),
  CONSTRAINT `Preferences_ibfk_4` FOREIGN KEY (`genreid3`) REFERENCES `Genre` (`genreid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preferences`
--

LOCK TABLES `Preferences` WRITE;
/*!40000 ALTER TABLE `Preferences` DISABLE KEYS */;
INSERT INTO `Preferences` VALUES (1,2282,2,1,3),(2,2284,2,1,4),(3,2285,1,3,4),(4,2286,2,1,4),(5,2289,2,3,4),(6,2290,1,3,4),(7,2292,2,1,3),(8,2295,2,1,3),(9,2296,2,1,3);
/*!40000 ALTER TABLE `Preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Questions`
--

DROP TABLE IF EXISTS `Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Questions` (
  `questionid` int NOT NULL,
  `genreid` int DEFAULT NULL,
  `question` varchar(100) NOT NULL,
  `option1` varchar(25) NOT NULL,
  `option2` varchar(25) NOT NULL,
  `option3` varchar(25) DEFAULT NULL,
  `option4` varchar(25) DEFAULT NULL,
  `answer` varchar(25) NOT NULL,
  PRIMARY KEY (`questionid`),
  KEY `genreid` (`genreid`),
  CONSTRAINT `Questions_ibfk_1` FOREIGN KEY (`genreid`) REFERENCES `Genre` (`genreid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Questions`
--

LOCK TABLES `Questions` WRITE;
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
INSERT INTO `Questions` VALUES (1,3,'Kitne dino se.. ye asaaman bhi… soya nhi h, issko sulade','Fanna','Bol na halke halke','Abhi kuch dino se','Sau asaaman','Bol na halke halke'),(2,3,'Chand utha chal toss kre chehra tera aur jaan meri','Chand sifarish','Jiya jale','Chamak challo','Ishq shava','Ishq shava'),(3,3,'Inn ki raahein… khole baahein, jo bhi aaye idhar ','Muskaanein jhooti hai','Rabata','Girl’s like to swing','Heroine','Muskaanein jhooti hai'),(4,3,'Jannatein bhulake teri baahon me panah leke','Mere haat me ','Rabata','Falak tak chal','Sawaar loon','Rabata'),(5,3,'Aassaman mila zameen ko meri aadhe aadhe hue he humdum ','Falak tak chal','Rehnuma ','Jeena jeena','Tere sang yaara ','Jeena jeena'),(6,3,'Khudgarz si khwaish liye, besaans bhi hum tum jiye… ','Sooraj Duba hai','Channa Mereya','Chittiyan Kallaiyan','Besharam','Sooraj Duba hai'),(7,3,'Jo tere khatir tadpe phle se hi kya use tadpana','Abhi kuch dino se','Bol na halke halke','Kalla Chashma ','Zalima','Zalima'),(8,3,'Tu naga hi tho aaya h tho ghanta leke jaayega ','Apna time aayega','Channa Mereya','Chittiyan Kallaiyan','Ladies vs Rickey Bhel','Apna time aayega'),(9,3,'Aakash hai koi prem kavi, main usski likhi kavita','Chalka Re ','San sanana','Bum bum bole','Dhal gya din','San sanana'),(10,3,'Kwaboon ki galliyon me raaz bnke khona jana','Hasseno ka deewana ','Baarish','Gaaliyan','Hichiki Hichiki','Hichiki Hichiki');
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `age` int DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (2284,'Adhish Bahl','$2y$10$L2khm6.9RT9ZuTHBWE0lZuz9EjVYAUixTzwo/EbivrSL.tGjj3UVO','2001-11-01',21,'9462849725','adhishbahl0@gmail.com'),(2285,'Adhish Bahl','$2y$10$Ayy/wyFR7rHzeu6Jw9iDseCrXLZDKiNVDOn9QvckHgWykfO2GzX7W','2001-11-01',21,'9462849725','adhishbahl0@gmail.sus'),(2286,'Adhish Bahl','$2y$10$SscFVKuU2hpYBKkcAvOGVugmloALauSsEYZfAPoVrS7iBTdwWAVqq','2001-11-01',21,'9462849725','adhishbahl0@gmail.abc'),(2287,'Gayathri S','$2y$10$64zl4Une6HWYDVwP0dFeGOhja78C32qtfAw/5J7hfsSUqL9VH/3cy','2002-06-28',20,'9980156665','gayathris@gmail.com'),(2288,'Sally','$2y$10$HTiWA.DMmS63h/TeDZXfXetDehLiU4AklOmJsRPjtAB6PRvLx09R6','2002-06-28',20,'0123456789','sally@gmail.com'),(2289,'Adhish Bahl','$2y$10$GuKFdQ8TRZTuON8lnhbBSeL88mGJX8P2ISsDKBqqmJbteePwQdvG.','2001-11-01',21,'9462849725','adhishbahl0@gmail.in'),(2290,'Adhish Bahl','$2y$10$LvVH3T2lEtIjbV3raXTMw.N99bHZMMgA16ShpM7XSwEWrc07.d0qO','2001-11-01',21,'9462849725','adhishbahl0@gmail.inn'),(2291,'Nayan ','$2y$10$69aTV0aW0MGUXU9Ol5.FvuG/FMlS4fobrHoAIQ6Hl6BZaUTU/UfNy','2002-03-27',20,'9964513427','nayanbadolla@yahoo.in'),(2292,'ansh','$2y$10$Sm1UfiREGeiF7y6UYPyoQ.JN2EPpyPIF96KxkCRefdcNGvssppgta','2022-05-13',0,'9462849725','ansh@gmail.com'),(2294,'Rishabh','$2y$10$oVC1vlUjo6nUHkoL/RlQt.xMnWRacVtGivLZI7tHJ6.35UPlgehgy','2020-07-01',2,'6382676968','kutubaradia@gmail.com'),(2295,'Adhish Bahl','$2y$10$jtJ/IFCbyEY8KwnRDwV/6uv0VUWk2tUrH.f7O8qTdTWKyQRMe6d2K','2001-11-01',21,'9462849725','adhishbahl0@gmail.gay'),(2296,'XYZ','$2y$10$.bowc03gVbwt/1SSLSxaLOGml3NhhBDhfT7/TMasRnRmguEOYrptm','2022-11-20',0,'1234567890','test@123.com'),(2298,'Bahl','$2y$10$Zou/IskuExnBB2ZxdAonEe.k2HGkN15VguUw6aIw1FSBA3ivxa35m','2001-11-01',21,'9462849725','bahl@gmail.com');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charts` (
  `Date` date NOT NULL,
  `t1` varchar(25) DEFAULT NULL,
  `a1` varchar(25) DEFAULT NULL,
  `t2` varchar(25) DEFAULT NULL,
  `a2` varchar(25) DEFAULT NULL,
  `t3` varchar(25) DEFAULT NULL,
  `a3` varchar(25) DEFAULT NULL,
  `t4` varchar(25) DEFAULT NULL,
  `a4` varchar(25) DEFAULT NULL,
  `t5` varchar(25) DEFAULT NULL,
  `a5` varchar(25) DEFAULT NULL,
  `t6` varchar(25) DEFAULT NULL,
  `a6` varchar(25) DEFAULT NULL,
  `t7` varchar(25) DEFAULT NULL,
  `a7` varchar(25) DEFAULT NULL,
  `t8` varchar(25) DEFAULT NULL,
  `a8` varchar(25) DEFAULT NULL,
  `t9` varchar(25) DEFAULT NULL,
  `a9` varchar(25) DEFAULT NULL,
  `t10` varchar(25) DEFAULT NULL,
  `a10` varchar(25) DEFAULT NULL,
  `month` int DEFAULT NULL,
  PRIMARY KEY (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charts`
--

LOCK TABLES `charts` WRITE;
/*!40000 ALTER TABLE `charts` DISABLE KEYS */;
INSERT INTO `charts` VALUES ('2022-05-06','Honest (feat. Don Toliver','ustin Bieber, Don Toliver','First Class ','Jack Harlow.','As It Was','Harry Styles.','Bam Bam (feat. Ed Sheeran','Camila Cabello, Ed Sheera','Heat Waves ','Glass Animals','THATS WHAT I WANT ','Lil Nas X','Thousand Miles','The Kid LAROI','Ghost ','Justin Bieber','Middle of the night ','Elley Duhe','Woman','Doja Cat',5);
/*!40000 ALTER TABLE `charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `fbid` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `fbdate` date NOT NULL,
  `fbtime` time NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`fbid`),
  KEY `userid` (`userid`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `Users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,2285,'2022-05-06','21:06:59','This is the first feedback about the website.'),(2,2285,'2022-05-06','21:07:27','This is the Second feedback about the website.'),(3,2285,'2022-05-06','21:08:22','This is the Third feedback about the website.'),(4,2285,'2022-05-06','21:10:06','This is my Forth Feedback!'),(5,2285,'2022-05-06','19:22:40','Testing!! Hello Hello'),(6,2287,'2022-05-07','03:36:39','Very nice website!');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 20:55:09
