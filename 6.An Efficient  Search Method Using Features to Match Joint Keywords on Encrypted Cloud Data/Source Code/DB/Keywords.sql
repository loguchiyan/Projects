/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - imagecloud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imagecloud` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `imagecloud`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`Gender`,`profile`,`cont`,`address`,`status`) values (1,'101','Gokul','1234','gokul12@gmaiil.com','12/09/1999','Male','800px_COLOURBOX5845335.jpg','9807654321','Chennai','Activated'),(2,'1','mohana','mohana','mohanas@gmail.com','03','11','owner img.jpg','1999','female','Activated');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`sno`,`id`,`name`,`password`,`mail_id`,`dob`,`profile`,`Gender`,`cont`,`address`,`status`) values (1,'101','mithun','1234','otpsendermessage@gmail.com','12/09/2000','800px_COLOURBOX5845335.jpg','Male','9807654321','Madurai','Activated'),(2,'3','Sheela','Sheela','otpsendermessage@gmail.com','25','user img.jpg','4','2001','female','Activated');

/*Table structure for table `reqreg` */

DROP TABLE IF EXISTS `reqreg`;

CREATE TABLE `reqreg` (
  `sno` int(20) NOT NULL,
  `id` int(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mail_id` varchar(200) DEFAULT NULL,
  `keyy` int(200) DEFAULT NULL,
  `statua` varchar(200) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reqreg` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reg` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  `fkey` varchar(200) DEFAULT '--------',
  `request` varchar(200) DEFAULT '0',
  `downlad` varchar(200) DEFAULT '0',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`id`,`name`,`reg`,`oname`,`trap`,`image`,`keyword`,`status`,`fkey`,`request`,`downlad`) values (21,'1','mithun','1','Gokul','D7E6DEDC16378941','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','Send Key','7912','1','0'),(22,'101','mithun','1','Gokul','D7E6DEDC16378941','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','waiting','--------','1','0'),(23,'101','gokul','101','gokul','B3C7963CE5C9748C','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','Send Key','8285','1','0'),(24,'101','gokul','101','gokul','B3C7963CE5C9748C','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','Send Key','8285','1','0'),(25,'101','gokul','101','gokul','B3C7963CE5C9748C','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','Send Key','8285','1','0'),(26,'101','mithun','101','gokul','B3C7963CE5C9748C','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Test','Send Key','8285','1','0'),(27,'3','Sheela','1','mohana','0C5DBF555BDA2B0F','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','Example','Send Key','1141','1','1');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `reg` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `trapdoor` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`reg`,`name`,`keyword`,`fkey`,`dates`,`trapdoor`,`image`) values ('1','Gokul','Test','7912','16/12/22 04:59:54','D7E6DEDC16378941','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt'),('101','gokul','Test','8285','17/12/22 02:30:47','B3C7963CE5C9748C','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt'),('1','mohana','Example','1141','17/12/22 03:01:49','0C5DBF555BDA2B0F','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
