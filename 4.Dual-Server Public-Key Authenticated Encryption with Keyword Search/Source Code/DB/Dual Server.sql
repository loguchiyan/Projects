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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

/*Data for the table `cloudreq` */

insert  into `cloudreq`(`id`,`user`,`status`) values (121,'Magesh','Accept'),(121,'Magesh','Accept');

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;

/*Data for the table `dpreg` */

insert  into `dpreg`(`id`,`user`,`pass`,`email`,`mobile`,`location`,`status`) values (121,'Magesh','1234','otpsendermessage@gmail.com','86575645434','Chennai','Activated');

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

insert  into `upload`(`id`,`user`,`fkey`,`tkey`,`skey`,`files`) values (121,'Magesh',5982,'E476CCF1AA75371C','/;2]IONu','Library Management System.txt'),(121,'Magesh',1929,'25CD641BFDBBAADA','850lF8Uq','addaction.jsp');

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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`user`,`pass`,`email`,`mobile`,`location`,`status`) values (111,'Gokul','1234','otpsendermessage@gmail.com','9835392342','Chennai','Activated');

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

insert  into `urequest`(`id`,`user`,`files`,`cloud`,`internal`,`uid`,`uname`,`email`,`fkey`,`tkey`,`skey`) values (121,'Magesh','Library Management System.txt','Accept','Accept','111','Gokul','otpsendermessage@gmail.com','5982','E476CCF1AA75371C','/;2]IONu'),(121,'Magesh','Library Management System.txt','Waiting','Waiting','111','Gokul','otpsendermessage@gmail.com','5982','E476CCF1AA75371C','/;2]IONu'),(121,'Magesh','addaction.jsp','Waiting','Waiting','4','vignesh','viki123@gmail.com',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
