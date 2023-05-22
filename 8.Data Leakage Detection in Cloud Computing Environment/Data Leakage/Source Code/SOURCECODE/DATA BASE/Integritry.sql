/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - intergity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`intergity` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `intergity`;

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

insert  into `audit`(`id`,`name`,`fkey`,`trap`,`fname`,`status`) values ('1','praba','6461','2ECB5F90560D91FA','READ ME.txt','Nodify send'),('2','saro','4636','B04506D7857F2E06','READ ME.txt','Nodify send'),('4','ragu','2136','7DF59C8B0AD2DEB0','READ ME.txt','Nodify send'),('5','kingsleen','2449','1997A951B8F4D59C','file1.txt','Nodify send'),('5','kingsleen','2449','1997A951B8F4D59C','file1.txt','Nodify send'),('5','kingsleen','2449','1997A951B8F4D59C','file1.txt','Nodify send');

/*Table structure for table `exe` */

DROP TABLE IF EXISTS `exe`;

CREATE TABLE `exe` (
  `id` int(20) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `sqle` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Sql Injected',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `exe` */

insert  into `exe`(`id`,`cname`,`sqle`,`status`,`date`) values (10,'Deepa','Select # from de','Sql Injected','2022-10-08 13:01:39'),(17,'Vel','Select# from tebale','Sql Injected','2022-10-08 18:33:18');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Unauthorized',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `trap` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fkkey` varchar(200) DEFAULT '-------',
  `status` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`name`,`fkey`,`trap`,`fname`,`fkkey`,`status`) values ('1','praba','6461','2ECB5F90560D91FA','READ ME.txt','6461','Send Key'),('2','saro','6461','2ECB5F90560D91FA','READ ME.txt','6461','Send Key'),('4','ragu','4636','B04506D7857F2E06','READ ME.txt','4636','Send Key'),('5','kingsleen','6461','2ECB5F90560D91FA','READ ME.txt','6461','Send Key'),('5','kingsleen','6461','2ECB5F90560D91FA','READ ME.txt','6461','Send Key');

/*Table structure for table `revo` */

DROP TABLE IF EXISTS `revo`;

CREATE TABLE `revo` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) DEFAULT NULL,
  `count` int(200) DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `revo` */

insert  into `revo`(`id`,`uname`,`count`) values (1,'achu',2),(15,'Lakshmi',1);

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `reg` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `dates` varchar(200) DEFAULT NULL,
  `trapdoor` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `Attack` varchar(200) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`reg`,`name`,`fkey`,`dates`,`trapdoor`,`image`,`Attack`) values ('1','praba','6461','14/09/20 18:54:25','2ECB5F90560D91FA','READ ME.txt','Attack'),('2','saro','4636','14/09/20 19:30:29','B04506D7857F2E06','READ ME.txt','Attack'),('4','ragu','2136','16/09/20 11:31:40','7DF59C8B0AD2DEB0','READ ME.txt','No'),('5','kingsleen','2449','21/09/20 16:35:10','1997A951B8F4D59C','file1.txt','Attack'),('6','Lakshmi','1642','16/03/23 11:42:29','2D928AAD086FF3EB','coding.txt','No');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Unauthorized',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`name`,`pass`,`dob`,`email`,`cont`,`address`,`status`) values (1,'praba','praba','21/01/1997','cvsathyavani1999@gmail.com','9898998989','chhennai','Authorized'),(2,'saro','saro','21/01/1999','1cp.javateam2020@gmail.com','9389309389','chemmai','Authorized'),(3,'ram','ram','21/01/2007','ram@gmail.com','9829828922','chenni','Unauthorized'),(4,'ragu','ragu','21/01/2020','1cp.javateam2020@gmail.com','','kumbakonam','Authorized'),(5,'kingsleen','password','14/11/1982','kingsleen.singapore@gmail.com','9865133648','chennai','Authorized'),(6,'Lakshmi','lakshmi','14/09/1996','lakshmi@gmail.com','8485934594','Chennai','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
