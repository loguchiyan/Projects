/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - preserving
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`preserving` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `preserving`;

/*Table structure for table `cloudreq` */

DROP TABLE IF EXISTS `cloudreq`;

CREATE TABLE `cloudreq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Waiting',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `cloudreq` */

insert  into `cloudreq`(`id`,`user`,`status`) values (12,'deepa','Activated'),(12,'deepa','Activated'),(12,'deepa','Activated'),(12,'deepa','Activated');

/*Table structure for table `dpreg` */

DROP TABLE IF EXISTS `dpreg`;

CREATE TABLE `dpreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Deactivated',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `dpreg` */

insert  into `dpreg`(`id`,`user`,`pass`,`email`,`mobile`,`location`,`status`) values (1,'lakshmi','lakshmi','1cp.javateam2020@gmail.com','9383938393','Chennai','Activated'),(1,'admin','12','1cp.javateam2020@gmail.com','9383938393','Chennai','Activated'),(12,'deepa','deepa','1cp.javateam2020@gmail.com','9383938393','chennai','Activated');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `fkey` int(100) DEFAULT NULL,
  `tkey` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`id`,`user`,`fkey`,`tkey`,`skey`,`files`) values (12,'deepa',8331,'B979E1D223ECA274','V>2z67KF','BASIC DAILY.txt'),(12,'deepa',1675,'15A1930CE5EAE30E','co FWC+$','READ ME.txt');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Deactivated',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`user`,`pass`,`email`,`mobile`,`location`,`status`) values (1,'de','de','1cp.javateam2020@gmail.com','9383938393','Chennai','Activated');

/*Table structure for table `urequest` */

DROP TABLE IF EXISTS `urequest`;

CREATE TABLE `urequest` (
  `id` int(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `cloud` varchar(100) DEFAULT 'Waiting',
  `internal` varchar(100) DEFAULT 'Waiting',
  `uid` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fkey` varchar(100) DEFAULT NULL,
  `tkey` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `urequest` */

insert  into `urequest`(`id`,`user`,`files`,`cloud`,`internal`,`uid`,`uname`,`email`,`fkey`,`tkey`,`skey`) values (12,'deepa','BASICssss.txt','Accept','Activated','1','de','1cp.javateam2020@gmail.com','8331','B979E1D223ECA274','V>2z67KF'),(12,'deepa','BASIC.txt','Accept','Activated','1','de','1cp.javateam2020@gmail.com','8331','B979E1D223ECA274','V>2z67KF'),(12,'deepa','BASIC.txt','Accept','Activated','1','de','1cp.javateam2020@gmail.com','8331','B979E1D223ECA274','V>2z67KF'),(12,'deepa','BASIC.txt','Accept','Activated','1','de','1cp.javateam2020@gmail.com','8331','B979E1D223ECA274','V>2z67KF');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
