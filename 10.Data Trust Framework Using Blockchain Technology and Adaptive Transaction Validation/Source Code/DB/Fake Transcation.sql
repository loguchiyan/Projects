/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - fake transcation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fake transcation` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fake transcation`;

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digsignature` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert  into `blockchain`(`id`,`digsignature`) values (1,'a24dc103b874ab6dc6afc8c79cdecbe6'),(2,'31b641dbeebb762514211b4c85ed640b'),(3,'58b5dcc35d2be7d6d5e8d120f1a0f19f'),(4,'fa9c0dc011c0463e08e5e8948aea1c87'),(5,'76e339e26d330614a91b2254e9a7777a'),(6,'dadd5250fb30c4a729fa610e5f54a535'),(7,'d482aca557325d69e51d30db15e05a3e'),(8,'12fe3f7882dbd651d8bbb3d7e5562694');

/*Table structure for table `card` */

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `cno` varchar(222) NOT NULL,
  `cvno` varchar(222) DEFAULT NULL,
  `exp` varchar(222) DEFAULT NULL,
  `mobile` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `aclim` varchar(222) DEFAULT NULL,
  `password` varchar(222) DEFAULT NULL,
  `sec` varchar(222) DEFAULT NULL,
  `ans` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`cno`),
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `card` */

insert  into `card`(`sno`,`user`,`cno`,`cvno`,`exp`,`mobile`,`email`,`aclim`,`password`,`sec`,`ans`) values (1,'LakshmiG','67568748675','245','567567','56756756','lakshmi@gmail.com','2343','lakshmi','what','drgdsgv'),(3,'Abi','74564554654','234','02/2025','9871236540','mohanas9499@gmail.com','7000','1234','name','gokul'),(2,'Testing','7545747567','345','23','8745684554','otpsendermessage@gmail.com','20000','testing','my first name?','testing');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `pid` varchar(222) DEFAULT NULL,
  `pcat` varchar(222) DEFAULT NULL,
  `pbrand` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `spec` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `hashkey` varchar(222) DEFAULT NULL,
  `review` varchar(222) DEFAULT NULL,
  `rate` varchar(222) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`sno`,`pid`,`pcat`,`pbrand`,`pname`,`price`,`spec`,`image`,`hashkey`,`review`,`rate`) values (2,'PID5842','Electronics','Sony','Camera','20000','Best for all shoot','digital.jpg','12fe3f7882dbd651d8bbb3d7e5562694',NULL,NULL),(7,'PID5079','Grocery','good','Realme','7686','good','bank.jpg','12fe3f7882dbd651d8bbb3d7e5562694',NULL,NULL),(8,'PID4262','Men','Shirt','dsfds','700','good','data.jpg','12fe3f7882dbd651d8bbb3d7e5562694',NULL,NULL),(9,'PID5923','Home Essentials','AAA','AAA','10000','ADA','attack.png','12fe3f7882dbd651d8bbb3d7e5562694',NULL,NULL),(10,'PID3166','Grocery','AAA','Raj','10000','ADA','B4.jpg','12fe3f7882dbd651d8bbb3d7e5562694',NULL,NULL);

/*Table structure for table `product1` */

DROP TABLE IF EXISTS `product1`;

CREATE TABLE `product1` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `pid` varchar(222) DEFAULT NULL,
  `pcat` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `pbrand` varchar(222) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `review` varchar(222) DEFAULT NULL,
  `rate` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Wait',
  `dstatus` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `product1` */

insert  into `product1`(`sno`,`user`,`pid`,`pcat`,`pname`,`pbrand`,`price`,`review`,`rate`,`status`,`dstatus`) values (26,'Lakshmi','PID4570','Electronics','aaa','Good','20000','null','null','OTP Send','Waiting'),(27,'LakshmiG','PID8030','Women','Kurthi','Avasa','300','null','null','OTP Send','Product Delivered'),(28,'LakshmiG','PID4489','Electronics','Mobile','oppo','20000','null','null','Wait','Waiting'),(29,'Testing','PID2241','Electronics','sony Camera','camera','35000','null','null','OTP Send','Product Delivered'),(30,'Testing','PID4489','Electronics','Mobile','oppo','20000','null','null','Wait','Product Delivered'),(31,'Abi','PID8030','Women','Kurthi','Avasa','300','null','null','OTP Send','Product Delivered'),(32,'Abi','PID8532','Men','dfgfd','dfgfd','7686','null','null','Wait','Product Delivered'),(33,'Abi','PID8532','Men','dfgfd','dfgfd','7686','null','null','Wait','Waiting'),(34,'Abi','PID8532','Men','dfgfd','dfgfd','7686','null','null','Wait','Waiting'),(35,'Abi','PID8030','Women','Kurthi','Avasa','300','null','null','Wait','Waiting'),(36,'Abi','PID5079','Grocery','Realme','good','7686','null','null','Wait','Waiting'),(37,'Abi','PID5923','Home Essentials','AAA','AAA','10000','null','null','Fake Product','Product Delivered'),(38,'Abi','PID5923','Home Essentials','AAA','AAA','10000','null','null','Fake Product','Product Delivered'),(39,'Abi','PID5662','Women','Laptop','AAA','10','null','null','Fake Product','Product Delivered');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `cpass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`cpass`,`email`,`dob`,`contact`,`location`,`image`) values (1,'LakshmiG','lakshmi','lakshmi','otpsendermessage@gmail.com','14/09/89','87967967896',NULL,'admin.png'),(2,'Testing','testing','testing','otpsendermessage@gmail.com','14/09/89','87967967896',NULL,'2-Carrots.jpeg'),(3,'Abi','1234','1234','abi@gmail.com','12/12/1999','98675644564',NULL,'cyper.jpg'),(4,'Abi','1234','1234','goklul@gmail.com','03/11/1999 ','98675644564',NULL,'bank.jpg'),(5,'Abi','1234','1234','abi@gmail.com','12/07/2000','9697097890',NULL,'B5.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
