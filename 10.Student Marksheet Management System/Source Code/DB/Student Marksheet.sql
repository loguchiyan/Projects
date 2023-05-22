/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - marksheet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`marksheet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `marksheet`;

/*Table structure for table `sem1` */

DROP TABLE IF EXISTS `sem1`;

CREATE TABLE `sem1` (
  `sno` int(222) NOT NULL AUTO_INCREMENT,
  `sid` varchar(222) DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `sem` varchar(222) DEFAULT NULL,
  `s1` varchar(222) DEFAULT NULL,
  `s2` varchar(222) DEFAULT NULL,
  `s3` varchar(222) DEFAULT NULL,
  `s4` varchar(222) DEFAULT NULL,
  `s5` varchar(222) DEFAULT NULL,
  `l1` varchar(222) DEFAULT NULL,
  `l2` varchar(222) DEFAULT NULL,
  `m1` varchar(222) DEFAULT NULL,
  `m2` varchar(222) DEFAULT NULL,
  `m3` varchar(222) DEFAULT NULL,
  `m4` varchar(222) DEFAULT NULL,
  `m5` varchar(222) DEFAULT NULL,
  `lm1` varchar(222) DEFAULT NULL,
  `lm2` varchar(222) DEFAULT NULL,
  `cgpa` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `sem1` */

insert  into `sem1`(`sno`,`sid`,`name`,`sem`,`s1`,`s2`,`s3`,`s4`,`s5`,`l1`,`l2`,`m1`,`m2`,`m3`,`m4`,`m5`,`lm1`,`lm2`,`cgpa`) values (25,'SID9380',NULL,'Semester1','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','80'),(26,'SID9380',NULL,'Semester2','AI001/AI','ML002/ML','DM003/DataMining','IOT004/IOT','ML005/ML','MLAP006/ML','AILAP007/AI','25 F','35 P','65 P','28 F','28 F','60 p','55 P','65'),(27,'SID9380',NULL,'Semester3','C001/C','ML002/ML','DM003/DataMining','DS004/Data Strucures','P005/Basic Python','MLAP006/ML','AILAP007/AI','25 F','35 P','60 P','97 P','88 P','60 p','90 P','70'),(28,'SID3255',NULL,'Semester1','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','60 p','90 P','70'),(29,'SID3255',NULL,'Semester2','AI001/AI','ML002/ML','DM003/DataMining','IOT004/IOT','ML005/ML','CL006/C program','AILAP007/AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'SID3255',NULL,'Semester3','AI001/AI','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','AILAP007/AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'SID4870',NULL,'Semester1','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','92'),(32,'SID4870',NULL,'Semester2','AI001/AI','ML002/ML','DM003/DataMining','IOT004/IOT','ML005/ML','CL006/C program','PL007/Python ','85 P','75 P','65 P','97 P','58 P','80 P','90 P','70'),(33,'SID4870',NULL,'Semester3','AI001/AI','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','68'),(34,'SID1165',NULL,'--Choose--','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','68'),(35,'SID1165',NULL,'Semester2','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','70'),(36,'SID1165',NULL,'Semester3','AI001/AI','ML002/ML','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','68'),(37,'SID8897',NULL,'Semester1','C001/C','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','68'),(38,'SID8897',NULL,'Semester2','AI001/AI','C002/C++','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','35 P','65 P','87 P','88 P','80 P','90 P','68'),(39,'SID8897',NULL,'Semester3','AI001/AI','ML002/ML','DS003/Data Strucures','ES004/EVS','P005/Basic Python','CL006/C program','PL007/Python ','85 P','75 P','65 P','87 P','88 P','80 P','90 P','68');

/*Table structure for table `sem2` */

DROP TABLE IF EXISTS `sem2`;

CREATE TABLE `sem2` (
  `sno` int(222) NOT NULL AUTO_INCREMENT,
  `sid` varchar(222) DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `s1` varchar(222) DEFAULT NULL,
  `s2` varchar(222) DEFAULT NULL,
  `s3` varchar(222) DEFAULT NULL,
  `s4` varchar(222) DEFAULT NULL,
  `s5` varchar(222) DEFAULT NULL,
  `l1` varchar(222) DEFAULT NULL,
  `l2` varchar(222) DEFAULT NULL,
  `m1` varchar(222) DEFAULT NULL,
  `m2` varchar(222) DEFAULT NULL,
  `m3` varchar(222) DEFAULT NULL,
  `m4` varchar(222) DEFAULT NULL,
  `m5` varchar(222) DEFAULT NULL,
  `lm1` varchar(222) DEFAULT NULL,
  `lm2` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sem2` */

insert  into `sem2`(`sno`,`sid`,`name`,`s1`,`s2`,`s3`,`s4`,`s5`,`l1`,`l2`,`m1`,`m2`,`m3`,`m4`,`m5`,`lm1`,`lm2`) values (3,'SID9380','Lakshmi','AI001/AI','ML002/ML','DM003/DataMining','IOT004/IOT','ML005/ML','MLAP006/ML','AILAP006/AI','90 P','75 P','65 P','97 P','88 P','90 P','90 P');

/*Table structure for table `sem3` */

DROP TABLE IF EXISTS `sem3`;

CREATE TABLE `sem3` (
  `sno` int(222) NOT NULL AUTO_INCREMENT,
  `sid` varchar(222) DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `s1` varchar(222) DEFAULT NULL,
  `s2` varchar(222) DEFAULT NULL,
  `s3` varchar(222) DEFAULT NULL,
  `s4` varchar(222) DEFAULT NULL,
  `s5` varchar(222) DEFAULT NULL,
  `l1` varchar(222) DEFAULT NULL,
  `l2` varchar(222) DEFAULT NULL,
  `m1` varchar(222) DEFAULT NULL,
  `m2` varchar(222) DEFAULT NULL,
  `m3` varchar(222) DEFAULT NULL,
  `m4` varchar(222) DEFAULT NULL,
  `m5` varchar(222) DEFAULT NULL,
  `lm1` varchar(222) DEFAULT NULL,
  `lm2` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sem3` */

insert  into `sem3`(`sno`,`sid`,`name`,`s1`,`s2`,`s3`,`s4`,`s5`,`l1`,`l2`,`m1`,`m2`,`m3`,`m4`,`m5`,`lm1`,`lm2`) values (3,'SID9380','Lakshmi','AI001/AI','C002/C++','DM003/DataMining','DS004/Data Strucures','P005/Basic Python','MLAP006/ML','PL007/Python ','85 P','70 P','60 P','90 P','80 P','80 P','90 P');

/*Table structure for table `sreg` */

DROP TABLE IF EXISTS `sreg`;

CREATE TABLE `sreg` (
  `sno` int(200) NOT NULL AUTO_INCREMENT,
  `sid` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `dept` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `sem` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `sreg` */

insert  into `sreg`(`sno`,`sid`,`name`,`lname`,`gender`,`dob`,`dept`,`year`,`sem`,`contact`,`address`,`city`) values (1,'SID9380','Lakshmi','G','Female','14/09/88','MSC','I','1','8678667567','Vadapalani','Chennai'),(3,'SID8315','Deepa','G','Female','14/09/88','MSC','I','1','797897778','Guindy','Chennai'),(4,'SID3255','Jhansi','G','Female','02/3/88','MSC','I','1','667667567','Vadapalani','Chennai'),(5,'SID8318','Josh','L','Female','22/05/2001','MSC','I','1','677667567','Guindy','Chennai'),(6,'SID4870','Mohana','P','Female','02/3/88','MSC','I','1','8678667567','Vadapalani,Chennai','Chennai'),(7,'SID7621','Monisha','P','Female','14/09/88','MSC','I','1','8678667567','Guindy','Chennai'),(8,'SID7164','Monisha','G','Female','14/09/88','MSC','II','1','8678667567','Vadapalani,Chennai','Chennai'),(9,'SID1165','Monisha','P','Female','14/09/88','MSC','I','1','8678667567','Vadapalani','Chennai'),(10,'SID8897','moni','p','Female','14/09/88','MSC','I','1','8678667567','Vadapalani','Chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
