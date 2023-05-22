/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `music`;

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `song` varchar(200) DEFAULT NULL,
  `movie` varchar(200) DEFAULT NULL,
  `singer` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `song` */

insert  into `song`(`sno`,`song`,`movie`,`singer`,`year`,`audio`) values (5,'Singappenney','Bigil','A.R Rahman','2019',NULL),(6,'Chola Chola','Ponniyin Selvan 1','Mahalingam','2022',NULL),(7,'Chola Chola','Ponniyin Selvan 1','Mahalingam','2022',NULL);

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `music` varchar(200) DEFAULT NULL,
  `singer` varchar(200) DEFAULT NULL,
  `song` varchar(200) DEFAULT NULL,
  `movie` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `audio` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`sno`,`music`,`singer`,`song`,`movie`,`year`,`rate`,`audio`,`image`) values (20,'A. R. Rahman','Mahalingam','Chola Chola','Ponniyin Selvan 1','2022','5','Chola_Chola_[SamaDadaCom].Com].mp3',NULL),(21,'A. R. Rahman','A.R Rahman','Singappenney','Bigil','2019','4','Singappenney.mp3',NULL),(22,'Harris Jayaraja','sgfswrf','Usurae Poguthey',' Raavanan','2015','5','Usurae_Poguthey.mp3',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
