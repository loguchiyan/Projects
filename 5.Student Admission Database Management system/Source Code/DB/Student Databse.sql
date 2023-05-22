/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - studentadmission
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentadmission` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `studentadmission`;

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `reg` varchar(222) DEFAULT NULL,
  `user` varchar(222) DEFAULT NULL,
  `hschl` varchar(222) DEFAULT NULL,
  `hroll` varchar(222) DEFAULT NULL,
  `hmedium` varchar(222) DEFAULT NULL,
  `hgrup` varchar(222) DEFAULT NULL,
  `hper` varchar(222) DEFAULT NULL,
  `hyear` varchar(222) DEFAULT NULL,
  `sschl` varchar(222) DEFAULT NULL,
  `sroll` varchar(222) DEFAULT NULL,
  `smedium` varchar(222) DEFAULT NULL,
  `sper` varchar(222) DEFAULT NULL,
  `syear` varchar(222) DEFAULT NULL,
  `ug` varchar(222) DEFAULT NULL,
  `uclg` varchar(222) DEFAULT NULL,
  `udept` varchar(222) DEFAULT NULL,
  `uper` varchar(222) DEFAULT NULL,
  `pclg` varchar(222) DEFAULT NULL,
  `pdept` varchar(222) DEFAULT NULL,
  `pper` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `education` */

insert  into `education`(`sno`,`reg`,`user`,`hschl`,`hroll`,`hmedium`,`hgrup`,`hper`,`hyear`,`sschl`,`sroll`,`smedium`,`sper`,`syear`,`ug`,`uclg`,`udept`,`uper`,`pclg`,`pdept`,`pper`) values (1,'RID7793','Lakshmi','St.marys','2342344','English','Maths Biology','78','2016','St.Marys','46345654','English','91','2014','None','','','','','',''),(2,'null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null'),(3,'null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null'),(4,'RID3934','Deepa','Gojan','2342344','Tamil','Commerce','67','2015','St.Marys','46345654','Tamil','89','2017','Under Graduate','Valimai','BSC','78','None','None','None');

/*Table structure for table `family` */

DROP TABLE IF EXISTS `family`;

CREATE TABLE `family` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `reg` varchar(222) DEFAULT NULL,
  `user` varchar(222) DEFAULT NULL,
  `pargur` varchar(222) DEFAULT NULL,
  `fname` varchar(222) DEFAULT NULL,
  `mname` varchar(222) DEFAULT NULL,
  `foccup` varchar(222) DEFAULT NULL,
  `moccup` varchar(222) DEFAULT NULL,
  `noo` varchar(222) DEFAULT NULL,
  `annual` varchar(222) DEFAULT NULL,
  `pimage` varchar(222) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `family` */

insert  into `family`(`sno`,`reg`,`user`,`pargur`,`fname`,`mname`,`foccup`,`moccup`,`noo`,`annual`,`pimage`) values (1,'RID7793','Lakshmi','Parent','Gopal','Laks','Farmer','HouseWife','2','2,00,000','13-132360_size-admin-user-icon-png.png'),(2,'RID7793','Lakshmi','Parent','Gopal','Laks','Farmer','HouseWife','2','2,00,000','13-132360_size-admin-user-icon-png.png'),(3,'RID3934','Deepa','Parent','Gopal','Lakshmi','Busness','HouseWife','1','7,00,000','aaa.jpg');

/*Table structure for table `fees` */

DROP TABLE IF EXISTS `fees`;

CREATE TABLE `fees` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `dept` varchar(222) DEFAULT NULL,
  `year1` varchar(222) DEFAULT NULL,
  `afee` varchar(222) DEFAULT NULL,
  `tfee` varchar(222) DEFAULT NULL,
  `lfee` varchar(222) DEFAULT NULL,
  `sfee` varchar(222) DEFAULT NULL,
  `pfee` varchar(222) DEFAULT NULL,
  `hfee` varchar(222) DEFAULT NULL,
  `bfee` varchar(222) DEFAULT NULL,
  `mfee` varchar(222) DEFAULT NULL,
  `ofee` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `fees` */

insert  into `fees`(`sno`,`dept`,`year1`,`afee`,`tfee`,`lfee`,`sfee`,`pfee`,`hfee`,`bfee`,`mfee`,`ofee`) values (1,'MSC','1st Year','500','20000','1000','200 per paper','2000','15000 per year','1000 for 10 km','2000','40000'),(2,'MSC','null','600','20000','1000','700','3000','2500','1200 for 10 km','1000','70000');

/*Table structure for table `personal` */

DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `reg` varchar(222) DEFAULT NULL,
  `user` varchar(222) DEFAULT NULL,
  `luser` varchar(222) DEFAULT NULL,
  `dob` varchar(222) DEFAULT NULL,
  `gender` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `addr` varchar(222) DEFAULT NULL,
  `city` varchar(222) DEFAULT NULL,
  `state` varchar(222) DEFAULT NULL,
  `country` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `ParGur` varchar(222) DEFAULT NULL,
  `fname` varchar(222) DEFAULT NULL,
  `mname` varchar(222) DEFAULT NULL,
  `foccup` varchar(222) DEFAULT NULL,
  `moccup` varchar(222) DEFAULT NULL,
  `noo` varchar(222) DEFAULT NULL,
  `annual` varchar(222) DEFAULT NULL,
  `pimage` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `personal` */

insert  into `personal`(`sno`,`reg`,`user`,`luser`,`dob`,`gender`,`contact`,`addr`,`city`,`state`,`country`,`image`,`ParGur`,`fname`,`mname`,`foccup`,`moccup`,`noo`,`annual`,`pimage`) values (7,'RID7793','Lakshmi','G','14/09/88','Female','786856876','Vadapalani','Chennai','Tamilnadu','Chennai','admin.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'RID3934','Deepa','G','14/09/88','Female','8678667567','Vadapalani','Chennai','Tamilnadu','India','admin.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `pass` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `feed` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`email`,`contact`,`location`,`feed`) values (17,'Lakshmi','lakshmi','lakshmi@gmail.com','8796796789','Chennai',NULL),(18,'Deepa','deepa','deepa@gmail.com','8678667567','Chennai',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
