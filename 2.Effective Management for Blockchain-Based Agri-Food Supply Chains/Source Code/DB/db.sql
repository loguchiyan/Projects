/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - foodnetworkblockchain
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `foodnetworkblockchain`;

USE `foodnetworkblockchain`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL auto_increment,
  `digsignature` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert into `blockchain` (`id`,`digsignature`) values (1,'ABCDEFGHIJKLMNOP');
insert into `blockchain` (`id`,`digsignature`) values (2,'9cf5c7faff5d74e23100c75c6d690c66');
insert into `blockchain` (`id`,`digsignature`) values (3,'81d2dbba2870a489aa03cb3fd08bc75d');
insert into `blockchain` (`id`,`digsignature`) values (4,'1f0b8525d8b722589591dfd00727bf70');
insert into `blockchain` (`id`,`digsignature`) values (5,'196f6ae9cffbfd13b00eff4b256fe47b');

/*Table structure for table `consumerdetails` */

DROP TABLE IF EXISTS `consumerdetails`;

CREATE TABLE `consumerdetails` (
  `fullname` varchar(50) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `profession` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `consumerdetails` */

insert into `consumerdetails` (`fullname`,`username`,`password`,`profession`,`place`,`mobile`) values ('saran','saran','saran','student','cbe','9750999918');

/*Table structure for table `cropdetails` */

DROP TABLE IF EXISTS `cropdetails`;

CREATE TABLE `cropdetails` (
  `username` varchar(50) default NULL,
  `cropname` varchar(50) default NULL,
  `quantity` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `processor` varchar(50) default NULL,
  `hashkey1` varchar(200) default NULL,
  `id` int(11) NOT NULL auto_increment,
  `distributor` varchar(50) default NULL,
  `hashkey2` varchar(200) default NULL,
  `retailer` varchar(50) default NULL,
  `hashkey3` varchar(200) default NULL,
  `consumer` varchar(50) default NULL,
  `hashkey4` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cropdetails` */

insert into `cropdetails` (`username`,`cropname`,`quantity`,`price`,`processor`,`hashkey1`,`id`,`distributor`,`hashkey2`,`retailer`,`hashkey3`,`consumer`,`hashkey4`) values ('selva','tomato','100','50','siva','9cf5c7faff5d74e23100c75c6d690c66',1,'vicky','81d2dbba2870a489aa03cb3fd08bc75d','kavi','1f0b8525d8b722589591dfd00727bf70','saran','196f6ae9cffbfd13b00eff4b256fe47b');

/*Table structure for table `distributordetails` */

DROP TABLE IF EXISTS `distributordetails`;

CREATE TABLE `distributordetails` (
  `fullname` varchar(50) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `company` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `distributordetails` */

insert into `distributordetails` (`fullname`,`username`,`password`,`company`,`place`,`mobile`) values ('vicky','vicky','vicky','shop1','cbe','9750999918');

/*Table structure for table `farmerdetails` */

DROP TABLE IF EXISTS `farmerdetails`;

CREATE TABLE `farmerdetails` (
  `fullname` varchar(50) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `farmingarea` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `farmerdetails` */

insert into `farmerdetails` (`fullname`,`username`,`password`,`place`,`mobile`,`farmingarea`) values ('Selvakumar','selva','java','cbe','9750999918','less than 1 acre');

/*Table structure for table `processordetails` */

DROP TABLE IF EXISTS `processordetails`;

CREATE TABLE `processordetails` (
  `fullname` varchar(50) default NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `company` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `processordetails` */

insert into `processordetails` (`fullname`,`username`,`password`,`company`,`place`,`mobile`) values ('siva','siva','siva','shop1','cbe','9750999918');

/*Table structure for table `retailerdetails` */

DROP TABLE IF EXISTS `retailerdetails`;

CREATE TABLE `retailerdetails` (
  `fullname` varchar(50) default NULL,
  `username` varchar(50) NOT NULL default '',
  `password` varchar(50) default NULL,
  `company` varchar(50) default NULL,
  `place` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `retailerdetails` */

insert into `retailerdetails` (`fullname`,`username`,`password`,`company`,`place`,`mobile`) values ('kavitha','kavi','kavi','shop1','cbe','9750999918');

SET SQL_MODE=@OLD_SQL_MODE;