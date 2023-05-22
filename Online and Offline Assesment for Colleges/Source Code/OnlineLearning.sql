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

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `id` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `question_code` varchar(200) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answer` */

insert  into `answer`(`id`,`user`,`question_code`,`question`,`answer`,`title`,`mark`) values ('1','Lakshmi','Java61776','What is C Programming?','gjhghj','C Programming','12'),('1','Lakshmi','Java61776','C is program ?','de','C Programming','12'),('1','Lakshmi','Java61776','What is meant by program?','sd','C Programming','12'),('1','Lakshmi','Java61776','What is meant c?','pok','C Programming','12'),('1','Lakshmi','Java61776','When ?','kjhbj','C Programming','12'),('1','Lakshmi','Java61776','where ?','hghghj','C Programming','12'),('1','Lakshmi','Java61776','which ?','bjhghj','C Programming','12'),('1','Lakshmi','Java61776','how when ?','vgh','C Programming','12'),('1','Lakshmi','Java61776','What is private  access modifier?','vjhg','C Programming','12'),('1','Lakshmi','Java61776','Define Public access modifier?','vfhgfv','C Programming','12'),('1','Lakshmi','Java65609','What is meant by Java?','jhvgj   bjbknk','Java','12'),('1','Lakshmi','Java65609','Java is high level Language.Why?','vjfgvjgvj vhjhhbggkj','Java','12'),('1','Lakshmi','Java65609','What is Opps?','wsewer kuoimj','Java','12'),('1','Lakshmi','Java65609','Define polymorphism?','mnlkjhi aerwsrtd','Java','12'),('1','Lakshmi','Java65609','What is the uses of Final Keyword?','xsrews5ryetg hjgku','Java','12'),('1','Lakshmi','Java65609','what is abstraction?','eswrews5y','Java','12'),('1','Lakshmi','Java65609','Difference between Overloading and Overriding?','kjhoighb saret','Java','12'),('1','Lakshmi','Java65609','What is meant by collection?','gcgfsttf hglijol','Java','12'),('1','Lakshmi','Java65609','What is private  access modifier?','zarestd bjbjjhh','Java','12'),('1','Lakshmi','Java65609','What is Meant by task?','shfgajsdf sjdhsafh','Java','12'),('1','Lakshmi','Java65609','What is meant by Java?','wsfgawer','Java','12'),('1','Lakshmi','Java65609','Java is high level Language.Why?','ertwertw','Java','12'),('1','Lakshmi','Java65609','What is Opps?','wetwergtw','Java','12'),('1','Lakshmi','Java65609','Define polymorphism?','ertwert','Java','12'),('1','Lakshmi','Java65609','What is the uses of Final Keyword?','ertfgwergetg','Java','12'),('1','Lakshmi','Java65609','what is abstraction?','wregtfweyg','Java','12'),('1','Lakshmi','Java65609','Difference between Overloading and Overriding?','ergwery','Java','12'),('1','Lakshmi','Java65609','What is meant by collection?','ertwergt','Java','12'),('1','Lakshmi','Java65609','What is private  access modifier?','rethtyuj ','Java','12'),('1','Lakshmi','Java65609','What is Meant by task?','egyerye5rty','Java','12'),('9','mithun','Java19074','What is c?','cs nhbfv','----Choose Test Type--------',NULL),('9','mithun','Java19074','Type of java variable?','dddd','----Choose Test Type--------',NULL),('9','mithun','Java19074','How do  declaration in array?','dddd','----Choose Test Type--------',NULL),('9','mithun','Java19074','How do declaration in variable?','dddddd','----Choose Test Type--------',NULL),('9','mithun','Java19074','How do declaration in object?','dddd','----Choose Test Type--------',NULL),('9','mithun','Java19074','How do declaration in object?','sds','----Choose Test Type--------',NULL),('9','mithun','Java19074','How do declaration in object?','dd','----Choose Test Type--------',NULL),('9','mithun','Java19074','what is your name?','mithun','----Choose Test Type--------',NULL),('9','mithun','Java19074','what is HTML?','HyperText Markup Language','----Choose Test Type--------',NULL),('9','mithun','Java19074','what is CSS?','Cascading Style Sheets','----Choose Test Type--------',NULL);

/*Table structure for table `answer12` */

DROP TABLE IF EXISTS `answer12`;

CREATE TABLE `answer12` (
  `id` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `question_code` varchar(200) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answer12` */

insert  into `answer12`(`id`,`user`,`question_code`,`question`,`answer`,`title`,`mark`) values ('1','Lakshmi','Java46604','Define C Programming?','jhvgj   bjbknk  erwgyerttttttttttttttttttty erwt q4wetfgwegttrghwe thgyewhg dgwergtwertgfeaef adshgjsdf gfhja s ef yfshrf shgvfhsdf  jkhwbrjbskfs nfbjwewr jwjerbjqw e jrjbwnfwbnjerbrwjrjmn','Java',NULL),('1','Lakshmi','Java46604','Java is high level Language.Explain?','jklwekjrf mn,masdfj dweweda;ns psfbkjsnbkf waoefjoiwa wenfkwjfo0wfknwefmw  k orwejnwefdm m kjqwoekwnfesfmnsdb ojkefbejfhjw','Java',NULL);

/*Table structure for table `answer5` */

DROP TABLE IF EXISTS `answer5`;

CREATE TABLE `answer5` (
  `id` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `question_code` varchar(200) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answer5` */

insert  into `answer5`(`id`,`user`,`question_code`,`question`,`answer`,`title`,`mark`) values ('1','Lakshmi','Java78967','Explain Java?','jhvgj   bjbknk','Java',NULL),('1','Lakshmi','Java78967','Explain the architecture?','vjfgvjgvj vhjhhbggkj','Java',NULL),('1','Lakshmi','Java78967','Explain high level programing language?','wsewer kuoimj','Java',NULL),('1','Lakshmi','Java78967','Explain polymorphism?','gyfuuhgi hgugku','Java',NULL),('1','Lakshmi','Java78967','Explain Final Keyword?','wedwe grtrethy erhb ertghertgewrgw ','Java',NULL);

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

insert  into `answers`(`id`,`user`,`question_code`,`question`,`answer`,`language`,`title`,`testn`) values ('1','Lakshmi','Java6962','What is C Programming?','dsd','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','C is program?','sfrd','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','What is meant by program?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','What is meant c?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','When?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','where?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','which?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','how?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','What is access modifier?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','Define Public access modifier?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','which?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','which?','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','asdfawd','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','desad','---','Quantitative','Quantitative','null'),('1','Lakshmi','Java6962','sarfs','---','Quantitative','Quantitative','null');

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

insert  into `java`(`id`,`questions`,`choice1`,`choice2`,`choice3`,`choice4`,`answer`,`title`,`testn`) values ('Java6962','What is C Programming?','dsd','sds','sdfsdf','dfsdf','dsd','Quantitative','Test'),('Java6962','C is program?','sfrd','fdf','ede','srf','sfrd','Quantitative','Test'),('Java6962','What is meant by program?','sdfsdf','sdf','df','sd','sd','Quantitative','Test'),('Java6962','What is meant c?','sfsd','edd','de','rf','edd','Quantitative','Test'),('Java6962','When?','defe','rgdfg','sgfd','dgfd','defe','Quantitative','Test'),('Java6962','where?','dfx','df','dft','fdg','dfx','Quantitative','Test'),('Java6962','which?','def','wqw','sdf','eds','def','Quantitative','Test'),('Java6962','how?','dea','dfrgd','gfd','dfg','dfg','Quantitative','Test'),('Java6962','What is access modifier?','cds','sds','gdd','sdf','cds','Quantitative','Test'),('Java6962','Define Public access modifier?','sdf','dgt','dfg','sd','sdf','Quantitative','Test'),('Java6962','which?','jfg','hrf','yeash','hgfg','jfg','Quantitative','Test'),('Java6962','which?','hgh','kjh','dsf','dch','hgh','Quantitative','Test'),('Java6962','asdfawd','sadfasd','asfdasdsa','asedf','sd','asdfcfas','Quantitative','Test'),('Java6962','desad','casdf','sds','vcsdf','sfsadf','sdefesaf','Quantitative','Test'),('Java6962','sarfs','sdfsedf','fesrgtrtg','retywert','werwe','fertfwe','Quantitative','Test'),('Java6962','werqe','qwetfwr','gwer','wetwq3r','etgywert','ewrtwer','Quantitative','Test'),('Java6962','wetwr','ertw','ertetrwq','AFDWESF','SGFG','FGERTREWE','Quantitative','Test'),('Java6962','WEqwrdwe','wefrwer','werw','werw4erfg','ert','rtrew','Quantitative','Test'),('Java6962','rewrq','wer','werq','qwer','r5t','tyu','Quantitative','Test'),('Java6962','ty','rtyu','ty','ert','rt','ye','Quantitative','Test');

/*Table structure for table `java1` */

DROP TABLE IF EXISTS `java1`;

CREATE TABLE `java1` (
  `id` varchar(100) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `testn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `java1` */

insert  into `java1`(`id`,`questions`,`title`,`testn`) values ('Java65609','What is meant by Java?','Java','null'),('Java65609','Java is high level Language.Why?','Java','null'),('Java65609','What is Opps?','Java','null'),('Java65609','Define polymorphism?','Java','null'),('Java65609','What is the uses of Final Keyword?','Java','null'),('Java65609','what is abstraction?','Java','null'),('Java65609','Difference between Overloading and Overriding?','Java','null'),('Java65609','What is meant by collection?','Java','null'),('Java65609','What is private  access modifier?','Java','null'),('Java65609','What is Meant by task?','Java','null'),('Java19074','What is c?','----Choose Test Type--------','null'),('Java19074','Type of java variable?','----Choose Test Type--------','null'),('Java19074','How do  declaration in array?','----Choose Test Type--------','null'),('Java19074','How do declaration in variable?','----Choose Test Type--------','null'),('Java19074','How do declaration in object?','----Choose Test Type--------','null'),('Java19074','How do declaration in object?','----Choose Test Type--------','null'),('Java19074','How do declaration in object?','----Choose Test Type--------','null'),('Java19074','what is your name?','----Choose Test Type--------','null'),('Java19074','what is HTML?','----Choose Test Type--------','null'),('Java19074','what is CSS?','----Choose Test Type--------','null');

/*Table structure for table `java12` */

DROP TABLE IF EXISTS `java12`;

CREATE TABLE `java12` (
  `id` varchar(200) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `testn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `java12` */

insert  into `java12`(`id`,`questions`,`title`,`testn`) values ('Java46604','Define C Programming?','Java','null'),('Java46604','Java is high level Language.Explain?','Java','null');

/*Table structure for table `java5` */

DROP TABLE IF EXISTS `java5`;

CREATE TABLE `java5` (
  `id` varchar(200) DEFAULT NULL,
  `questions` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `testn` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `java5` */

insert  into `java5`(`id`,`questions`,`title`,`testn`) values ('Java78967','Explain Java?','Java','null'),('Java78967','Explain the architecture?','Java','null'),('Java78967','Explain high level programing language?','Java','null'),('Java78967','Explain polymorphism?','Java','null'),('Java78967','Explain Final Keyword?','Java','null');

/*Table structure for table `mark` */

DROP TABLE IF EXISTS `mark`;

CREATE TABLE `mark` (
  `user` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `dept` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `mark1` int(20) DEFAULT NULL,
  `mark2` int(20) DEFAULT NULL,
  `mark3` int(20) DEFAULT NULL,
  `mark4` int(20) DEFAULT NULL,
  `mark5` int(20) DEFAULT NULL,
  `mark6` int(20) DEFAULT NULL,
  `mark7` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mark` */

insert  into `mark`(`user`,`degree`,`dept`,`semester`,`mark1`,`mark2`,`mark3`,`mark4`,`mark5`,`mark6`,`mark7`) values ('Aryan','degree1','CSE','Semester 1',56,90,70,99,54,77,90),('ram','B.sc','IT','Semester 3',56,98,78,56,67,90,87),('null','B.E/B.Tech','IT','Semester 1',78,87,89,85,80,90,92),('Lakshmi','B.E/B.Tech','IT','Semester 1',78,87,89,85,80,90,92);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `results` */

insert  into `results`(`sno`,`id`,`user`,`title`,`question_code`,`language`,`total`,`mark`,`testn`) values (1,'1','Lakshmi','Quantitative','Java6962','Quantitative','15','2','null');

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

insert  into `ureg`(`image`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`country`,`state`,`city`,`rsn`,`status`,`edu`) values ('onn.jpg',1,'Lakshmi','lakshmi','lakshmi@gmail.com','5/04/2021','female','939839839','India','Tamilnadu','Chennai','For Learning','Waiting',NULL),('13-132360_size-admin-user-icon-png.png',1,'Gowtham','1234','gowtham123@gmail.com','14/07/98','male','480','980','89','no',NULL,'Waiting','no'),('download.jpg',9,'mithun','mithun','mithun@gmail.com','25','06','2001','male','0987654321','china',NULL,'Waiting','Bhutan'),('download.jpg',9,'mithun','mithun','mithun@gmail.com','25','06','2001','male','0987654321','china',NULL,'Waiting','Bhutan'),('download.jpg',9,'jaya','jaya','jaya@gmail.com','25','06','2001','male','0987654321','china',NULL,'Waiting','Bhutan'),('download.jpg',9,'mithunc','mithunc','mithunc@gmail.com','25','06','2000','male','1234567890','India',NULL,'Waiting','Tamil Nadu'),('download.jpg',1,'ram','ram','ram@gmail.com','25','07','1999','male','0987654312','India',NULL,'Waiting','Tamil Nadu'),('download.jpg',2,'maran','1234','maran12@gmail.com','12','09','2000','male','9089786567','India',NULL,'Waiting','Tamil Nadu'),('download.jpg',9,'Anbu','1234','anbu@gmail.com','12','09','2000','male','450','800',NULL,'Waiting','70');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
