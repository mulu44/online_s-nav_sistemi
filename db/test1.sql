# Host: localhost  (Version 5.1.36-community)
# Date: 2021-12-15 15:03:32
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "answers"
#

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `question` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `answer` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `correct_answer` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

#
# Data for table "answers"
#

INSERT INTO `answers` VALUES (131,78,'Çift başlı kartal hangi devletin sembolüdür?','Selçuklular','Selçuklular','correct'),(132,78,'Yavuz Sultan Selim\'in dedesi kimdir?','Fatih Sultan Mehmet','Fatih Sultan Mehmet','correct'),(133,78,'Teoman hangi devletin kurucusudur?','Hunlar','Hunlar','correct'),(134,78,'Hangi Türk devleti daha önce kurulmu?tur?','Göktürkler','Hunlar','incorrect');

#
# Structure for table "courses"
#

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_name` varchar(25) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "courses"
#

INSERT INTO `courses` VALUES ('tarih',100,'10');

#
# Structure for table "exams"
#

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `course_name` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `total_marks` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `obt_marks` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `start_time` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `end_time` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `exam_time` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

#
# Data for table "exams"
#

INSERT INTO `exams` VALUES (78,'8','tarih','100','60','15-12-2021','13:44:20.791','13:44:41.720','10','Gecti');

#
# Structure for table "questions"
#

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `question` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `opt1` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  `opt2` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  `opt3` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  `opt4` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  `correct` varchar(85) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

#
# Data for table "questions"
#

INSERT INTO `questions` VALUES (9,'tarih','Hangi Türk devleti daha önce kurulmuştur?','Göktürkler','Uygurlar','Hunlar','Karahanlılar','Hunlar'),(10,'tarih','Çift başlı kartal hangi devletin sembolüdür?','Çağatay Hanlığı','Altın Orda Devleti','Selçuklular','Karahanlılar','Selçuklular'),(11,'tarih','Teoman hangi devletin kurucusudur?','Selçuklular','Hunlar','Göktürkler','Uygurlar','Hunlar'),(12,'tarih','Sultan Alparslan hangi devletin yöneticisiydi?','Osmanlılar','Selçuklular','Batı Hunları','Hunlar','Selçuklular'),(13,'tarih','Yavuz Sultan Selim\'in dedesi kimdir?','Fatih Sultan Mehmet','2. Bryazıt','2.Mehmet','1.Ahmet','Fatih Sultan Mehmet');

#
# Structure for table "test"
#

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `name` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "test"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='		';

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'muhammet','ulu','admin','adsdas@gmail.com','1','admin','05443735844',NULL,NULL),(5,'MUSTAFA','YILMAZ','2018123024','mustafa@gmail.com','123','student','05001233212',NULL,NULL),(7,'FATMA','KAYA','2018123001','fatma@gmail.com','123','student','05212315454',NULL,NULL),(8,'MEHMET','KAYA','2018123005','mehmet@gmail.com','123','student','',NULL,NULL);
