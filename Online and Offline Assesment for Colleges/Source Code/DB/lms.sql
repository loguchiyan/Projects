/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - onlinelearning
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinelearning` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinelearning`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `question_code` varchar(100) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `testn` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answers` */

insert  into `answers`(`id`,`user`,`question_code`,`question`,`answer`,`language`,`title`,`testn`) values ('1','Lakshmi','Java7117','Which component is used to compile, debug and execute the java programs?','---','Java','Java',NULL),('1','Lakshmi','Java7117','Which one of the following is not a Java feature?','---','Java','Java',NULL),('1','Lakshmi','Java7117','Which of these cannot be used for a variable name in Java?',' keyword','Java','Java',NULL),('1','Lakshmi','Java7117',' What is the extension of java code files?','---','Java','Java',NULL),('1','Lakshmi','Java7117','Which of the following is not an OOPS concept in Java?','---','Java','Java',NULL),('1','Lakshmi','Java7117','Which of the following is a type of polymorphism in Java Programming?','---','Java','Java',NULL),('1','Lakshmi','Java7117','Which exception is thrown when java is out of memory?','OutOfMemoryError','Java','Java',NULL),('1','Lakshmi','Java7117',' Which of these are selection statements in Java?','---','Java','Java',NULL),('1','Lakshmi','Java88943','What is the average of first five multiples of 12?','36','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','What is the difference in the place value of 5 in the numeral 754853?','49500','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943',' What is the compound interest on Rs. 2500 for 2 years at rate of interest 4% per annum?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','Which one of the following is not a Java feature?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','A pipe can fill a tank in 6 hours and another pipe can empty the tank in 12 hours. If both the pipes are opened at the same time,the tank can be filled in','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943',' shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','A running man crosses a bridge of length 500 meters in 4 minutes. At what speed he is running?','7.5 km/s','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','A 60 liter mixture of milk and water contains 10% water. How much water must be added to make water 20% in the mixture?','7.5 liters','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','What is the area of a triangle with base 5 meters and height 10 meters?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','A: B: C is in the ratio of 3: 2: 5. How much money will C get out of Rs 1260?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','Which exception is thrown when java is out of memory?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943',' Which of these are selection statements in Java?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','Which of these keywords is used to define interfaces in Java?','---','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943','Which of the following is a superclass of every class in Java?','Object class','Quantitative','Quantitative','Test1'),('1','Lakshmi','Java88943',' Which of the below is not a Java Profiler?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','What is the average of first five multiples of 12?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','What is the difference in the place value of 5 in the numeral 754853?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943',' What is the compound interest on Rs. 2500 for 2 years at rate of interest 4% per annum?',' 204','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','Which one of the following is not a Java feature?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','A pipe can fill a tank in 6 hours and another pipe can empty the tank in 12 hours. If both the pipes are opened at the same time,the tank can be filled in','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943',' shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','A running man crosses a bridge of length 500 meters in 4 minutes. At what speed he is running?','7.5 km/s','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','A 60 liter mixture of milk and water contains 10% water. How much water must be added to make water 20% in the mixture?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','What is the area of a triangle with base 5 meters and height 10 meters?','25square meters','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','A: B: C is in the ratio of 3: 2: 5. How much money will C get out of Rs 1260?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','Which exception is thrown when java is out of memory?','OutOfMemoryError','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943',' Which of these are selection statements in Java?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','Which of these keywords is used to define interfaces in Java?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943','Which of the following is a superclass of every class in Java?','---','Quantitative','Quantitative','Test1'),('1','Gowtham','Java88943',' Which of the below is not a Java Profiler?','---','Quantitative','Quantitative','Test1');

/*Table structure for table `java` */

DROP TABLE IF EXISTS `java`;

CREATE TABLE `java` (
  `id` varchar(100) DEFAULT NULL,
  `questions` varchar(500) DEFAULT NULL,
  `choice1` varchar(500) DEFAULT NULL,
  `choice2` varchar(500) DEFAULT NULL,
  `choice3` varchar(500) DEFAULT NULL,
  `choice4` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `testn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `java` */

insert  into `java`(`id`,`questions`,`choice1`,`choice2`,`choice3`,`choice4`,`answer`,`title`,`testn`) values ('Java88943','What is the average of first five multiples of 12?','36','37','38','40','36','Quantitative','Test1'),('Java88943','What is the difference in the place value of 5 in the numeral 754853?','46500','49950','45000','49500','49500','Quantitative','Test1'),('Java88943',' What is the compound interest on Rs. 2500 for 2 years at rate of interest 4% per annum?','180',' 204','210','220',' 204','Quantitative','Test1'),('Java88943','Which one of the following is not a Java feature?','111','110','112','150','112','Quantitative','Test1'),('Java88943','A pipe can fill a tank in 6 hours and another pipe can empty the tank in 12 hours. If both the pipes are opened at the same time,the tank can be filled in','10 hours ','11 hours','12 hours','14 hours','12 hours','Quantitative','Test1'),('Java88943',' shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','20%','21%','23% ','25%','25%','Quantitative','Test1'),('Java88943','A running man crosses a bridge of length 500 meters in 4 minutes. At what speed he is running?','8.5 km/s','7.5 km/s','9.5 km/s','6.5 km/s','7.5 km/s','Quantitative','Test1'),('Java88943','A 60 liter mixture of milk and water contains 10% water. How much water must be added to make water 20% in the mixture?','8 liters','7.5 liters','7 liters','6.5 liters','7.5 liters','Quantitative','Test1'),('Java88943','What is the area of a triangle with base 5 meters and height 10 meters?','20 square meters','30 square meters','25square meters','40 square meters','25square meters','Quantitative','Test1'),('Java88943','A: B: C is in the ratio of 3: 2: 5. How much money will C get out of Rs 1260?','252','125','503','630','630','Quantitative','Test1'),('Java88943','Which exception is thrown when java is out of memory?','MemoryError','OutOfMemoryError','MemoryOutOfBoundsException','MemoryFullException','OutOfMemoryError','Quantitative','Test1'),('Java88943',' Which of these are selection statements in Java?','break','continue','for()',' if()','null','Quantitative','Test1'),('Java88943','Which of these keywords is used to define interfaces in Java?','intf','Intf','inter','Interface','interface','Quantitative','Test1'),('Java88943','Which of the following is a superclass of every class in Java?','ArrayList','Abstract class','Object class','String','Object class','Quantitative','Test1'),('Java88943',' Which of the below is not a Java Profiler?','JProfiler','Eclipse Profiler','JVM','JConsole','JVM','Quantitative','Test1'),('Java3356','A mother is twice as old as her son. If 20 years ago, the age of the mother was 10 times the age of the son, what is the present age of the mother?','38 years','40 years','43 years','45 years','45 years','Quantitative','Test2'),('Java3356','If January 1, 1996, was Monday, what day of the week was January 1, 1997?','Thursday','Wednesday','Friday','Sunday','Wednesday','Quantitative','Test2'),('Java3356','The speed of a boat in still water is 5km/hr. If the speed of the boat against the stream is 3 km/hr, what is the speed of the stream?','1.5 km/hr','2 km/hr','2.5 km/hr','1 km/hr','2 km/hr','Quantitative','Test2'),('Java3356','How many times the hands of a clock coincide in a day?','24','22','23','21','22','Quantitative','Test2'),('Java3356','40 % of 280 =?','112','116','115','120','112','Quantitative','Test2'),('Java3356','A shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','23%','25%','27%','29%','25%','Quantitative','Test2'),('Java3356','What is the area of a triangle with base 5 meters and height 10 meters?','20 square meters','35 square meters','25 square meters','40 square meters','25 square meters','Quantitative','Test2'),('Java3356',' In a kilometer race, A beats B by 40 meters or by 5 seconds. What is the time taken by A over the course?','1 minute 57 seconds.','2 minutes.','1.5 minutes.','None of these.','2 minutes','Quantitative','Test2'),('Java3356','What is the probability of getting an even number when a dice is rolled?','1/5','1/2','1/3','1/4','1/2','Quantitative','Test2'),('Java3356','What is the market price of a 9% share when a person gets 180 by investing Rs. 4000?  ','150','200','250','300','200','Quantitative','Test2'),('Java3356','If 15 men can reap the crops of a field in 28 days, in how many days will 5 men reap it?','50 days','60 days','84 days','9.333 days','84 days','Quantitative','Test2'),('Java3356','Find the logarithm of 1/256 to the base 2&#8730;2.','16','13/5','-16/3','12','null','Quantitative','Test2'),('Java3356','In what ways the letters of the word \"RUMOUR\" can be arranged?','180','150','200','230','180','Quantitative','Test2'),('Java3356','The perimeter of the rectangular field is 480 meters and the ratio between the length and breadth is 5:3. Find the area of the field.','7200 m2','15000 m2','13500 m2','54000 m2','13500 m2','Quantitative','Test2'),('Java3356','If the height of a triangle is decreased by 40% and its base is increased by 40%. What will be the effect on its area?','No change','16% increase','8% increase','16% decrease','16% decrease','Quantitative','Test2'),('Java1188','What is the average of first five multiples of 12?','36','37','38','9','36','Quantitative','Test3'),('Java1188','What is the difference in the place value of 5 in the numeral 754853?','46500','49950','Dennis Ritchie','49500','49500','Quantitative','Test3'),('Java1188',' What is the compound interest on Rs. 2500 for 2 years at rate of interest 4% per annum?','180',' 204','210','220',' 204','Quantitative','Test3'),('Java1188','40 % of 280 =?','24','22','23','21','22','Quantitative','Test3'),('Java1188','A pipe can fill a tank in 6 hours and another pipe can empty the tank in 12 hours. If both the pipes are opened at the same time,the tank can be filled in','10 hours ','11 hours','12 hours','14 hours','12 hours','Quantitative','Test3'),('Java1188',' shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','20%','21%','23% ','25%','25%','Quantitative','Test3'),('Java1188','What is the area of a triangle with base 5 meters and height 10 meters?','20 square meters','35 square meters','25 square meters','40 square meters','25 square meters','Quantitative','Test3'),('Java1188','A 60 liter mixture of milk and water contains 10% water. How much water must be added to make water 20% in the mixture?','8 liters','7.5 liters','7 liters','6.5 liters','7.5 liters','Quantitative','Test3'),('Java1188','What is the area of a triangle with base 5 meters and height 10 meters?','20 square meters','30 square meters','25square meters','40 square meters','25square meters','Quantitative','Test3'),('Java1188','A: B: C is in the ratio of 3: 2: 5. How much money will C get out of Rs 1260?','252','125','503','630','630','Quantitative','Test3'),('Java1188','If 15 men can reap the crops of a field in 28 days, in how many days will 5 men reap it?','50 days','60 days','84 days','9.333 days','84 days','Quantitative','Test3'),('Java1188','Find the logarithm of 1/256 to the base 2&#8730;2.','16','13/5','-16/3','12','null','Quantitative','Test3'),('Java1188','In what ways the letters of the word \"RUMOUR\" can be arranged?','180','150','200','230','180','Quantitative','Test3'),('Java1188','The perimeter of the rectangular field is 480 meters and the ratio between the length and breadth is 5:3. Find the area of the field.','7200 m2','15000 m2','13500 m2','54000 m2','13500 m2','Quantitative','Test3'),('Java1188','If the height of a triangle is decreased by 40% and its base is increased by 40%. What will be the effect on its area?','No change','16% increase','8% increase','16% decrease','16% decrease','Quantitative','Test3'),('Java29476','What is the average of first five multiples of 12?','36','37','38','8','36','Coding','Test1'),('Java29476','What is the difference in the place value of 5 in the numeral 754853?','46500','49950','Dennis Ritchie','49500','49500','Coding','Test1'),('Java29476',' What is the compound interest on Rs. 2500 for 2 years at rate of interest 4% per annum?','180',' 204','2.5 km/hr','220',' 204','Coding','Test1'),('Java29476','Which one of the following is not a Java feature?','111','110','112','150','112','Coding','Test1'),('Java29476','A pipe can fill a tank in 6 hours and another pipe can empty the tank in 12 hours. If both the pipes are opened at the same time,the tank can be filled in','10 hours ','11 hours','12 hours','14 hours','12 hours','Coding','Test1'),('Java29476',' shopkeeper sold an article for Rs. 2500. If the cost price of the article is 2000, find the profit percent.','20%','21%','23% ','25%','25%','Coding','Test1'),('Java29476','A running man crosses a bridge of length 500 meters in 4 minutes. At what speed he is running?','8.5 km/s','7.5 km/s','9.5 km/s','6.5 km/s','7.5 km/s','Coding','Test1'),('Java29476','A 60 liter mixture of milk and water contains 10% water. How much water must be added to make water 20% in the mixture?','8 liters','7.5 liters','7 liters','6.5 liters','7.5 liters','Coding','Test1'),('Java29476','What is the area of a triangle with base 5 meters and height 10 meters?','20 square meters','30 square meters','25square meters','40 square meters','25square meters','Coding','Test1'),('Java29476','A: B: C is in the ratio of 3: 2: 5. How much money will C get out of Rs 1260?','252','125','503','630','630','Coding','Test1'),('Java29476','Which exception is thrown when java is out of memory?','MemoryError','OutOfMemoryError','84 days','9.333 days','OutOfMemoryError','Coding','Test1'),('Java29476',' Which of these are selection statements in Java?','break','continue','-16/3',' if()',' if()','Coding','Test1'),('Java29476','Which of these keywords is used to define interfaces in Java?','intf','Intf','200','Interface','interface','Coding','Test1'),('Java29476','Which of the following is a superclass of every class in Java?','ArrayList','Abstract class','Object class','String','Object class','Coding','Test1'),('Java29476',' Which of the below is not a Java Profiler?','JProfiler','Eclipse Profiler','JVM','JConsole','JVM','Coding','Test1'),('Java29476','r','e','e','e','t','e','Coding','Test1'),('Java29476','ws','s','s','f','g','fg','Coding','Test1'),('Java29476','w','s','f','g','g','r','Coding','Test1'),('Java29476','q','e','r','ty','e','rw','Coding','Test1'),('Java29476','w','w','w','w','r','w','Coding','Test1');

/*Table structure for table `results` */

DROP TABLE IF EXISTS `results`;

CREATE TABLE `results` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `id` varchar(500) DEFAULT NULL,
  `user` varchar(500) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `question_code` varchar(500) DEFAULT NULL,
  `language` varchar(500) DEFAULT NULL,
  `total` varchar(500) DEFAULT NULL,
  `mark` varchar(500) DEFAULT NULL,
  `testn` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `results` */

insert  into `results`(`sno`,`id`,`user`,`title`,`question_code`,`language`,`total`,`mark`,`testn`) values (28,'1','Lakshmi','Quantitative','Java88943','Quantitative','15','5','Test1'),(29,'1','Gowtham','Quantitative','Java88943','Quantitative','15','4','Test1');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `cname` varchar(200) DEFAULT NULL,
  `dura` varchar(200) DEFAULT NULL,
  `desci` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`cname`,`dura`,`desci`,`image`) values ('Java','6 Months','Get More Knowledge','bluebg.jpg');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `image` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `rsn` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `edu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`image`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`country`,`state`,`city`,`rsn`,`status`,`edu`) values ('onn.jpg',1,'Lakshmi','lakshmi','lakshmi@gmail.com','5/04/2021','female','939839839','India','Tamilnadu','Chennai','For Learning','Waiting',NULL),('13-132360_size-admin-user-icon-png.png',1,'Gowtham','1234','gowtham123@gmail.com','14/07/98','male','480','980','89','no',NULL,'Waiting','no');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
