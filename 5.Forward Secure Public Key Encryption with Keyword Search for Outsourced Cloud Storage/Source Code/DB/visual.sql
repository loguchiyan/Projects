/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - visual
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`visual` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `visual`;

/*Table structure for table `msg` */

DROP TABLE IF EXISTS `msg`;

CREATE TABLE `msg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `txt` varchar(200) DEFAULT NULL,
  `enc` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `iname` varchar(200) DEFAULT NULL,
  `rname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `msg` */

insert  into `msg`(`id`,`name`,`uid`,`txt`,`enc`,`skey`,`iname`,`rname`) values (1,'Maran','6','Hi, I am Gokul','83E8039E07F4D0EB3CD8A25721E6FD41','8327','8327img1','Abi');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mob` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`id`,`name`,`pass`,`email`,`mob`,`city`,`status`) values (5,'Gokul','1234','gokul12@gmail.com','9878237978','Chennai','waiting'),(6,'Maran','1234','maran12@gmail.com','8943276789','Chennai','Authorized'),(11,'Abi','1234','gokul12@gmail.com','8943276789','Chennai','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
