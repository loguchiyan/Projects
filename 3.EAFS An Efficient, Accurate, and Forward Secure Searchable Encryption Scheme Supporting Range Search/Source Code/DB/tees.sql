/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - tees
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tees` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tees`;

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `tkey` varchar(200) DEFAULT NULL,
  `content` text,
  `sto` text,
  `ste` text,
  `tf` text,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`id`,`name`,`fname`,`fkey`,`tkey`,`content`,`sto`,`ste`,`tf`) values (1,'padmasri','dynamic.txt','94221644','0B21C4C71D147088FEB959B7D4642FCB','Cloud computing has become a popular approach to manage personal data for the economicsavings and management exibility in recent year. However, the sensitive data must be encrypted beforeoutsourcing to cloud servers for the consideration of privacy, which makes some traditional data utiliza-tion functions, such as the plaintext keyword search, impossible. To solve this problem, we present amulti-keyword ranked search scheme over encrypted cloud data supporting dynamic operations efciently.Our scheme utilizes the vector space model combined with TF  IDF rule and cosine similarity measureto achieve a multi-keyword ranked search. However, traditional solutions have to suffer high computationalcosts. In order to achieve the sub-linear search time, our scheme introduces Bloom lter to build a searchindex tree. What is more, our scheme can support dynamic operation properly and effectively on the accountof the property of the Bloom lter, which means that the updating cost of our scheme is lower than otherschemes. We present our basic scheme rst, which is secure under the known ciphertext model. Then,the enhanced scheme is presented later to guarantee security even under the known background model. Theexperiments on the real-world data set show that the performances of our proposed schemes are satisfactory.','Cloud computing become popular approach manage personal data economicsavings management exibility recent year However sensitive data encrypted beforeoutsourcing cloud servers consideration privacy makes traditional data utiliza-tion functions plaintext keyword search impossible solve problem present amulti-keyword ranked search scheme encrypted cloud data supporting dynamic operations efcientlyOur scheme utilizes vector space model combined TF  IDF rule cosine similarity measureto achieve multi-keyword ranked search However traditional solutions suffer high computationalcosts order achieve sub-linear search time scheme introduces Bloom lter build searchindex tree more scheme support dynamic operation properly effectively accountof property Bloom lter means updating cost scheme lower otherschemes present basic scheme rst secure known ciphertext model Then the enhanced scheme presented later guarantee security even known background model Theexperiments real-world data set show performances proposed schemes satisfactory','[Cloud comput become popular approach manage personal data economicsav manage exibility recent year However sensitive data encrypted beforeoutsourcing cloud server considerate privacy makes tradition data utiliza-tion functions plaintext keyword search impossible solve problem present amulti-keyword rank search scheme encrypted cloud data support dynamic operations efcientlyOur scheme utilizes vector space model combined TF  IDF rule cosine similarity measureto achieve multi-keyword rank search However tradition solutions suffer high computationalcosts order achieve sub-linear search time scheme introduces Bloom lter build searchindex tree more scheme support dynamic operate properly effectively accountof property Bloom lter means updat cost scheme lower otherschemes present basic scheme rst secure known ciphertext model Then the enhance scheme presented later guarantee security even known background model Theexperiments real-world data set show performances proposed schemes satisfactory]',' : 1 \nintroduces : 1 \nfunctions : 1 \nyear : 1 \neconomicsav : 1 \napproach : 1 \nproperly : 1 \nreal-world : 1 \nsuffer : 1 \nproblem : 1 \nproperty : 1 \nrank : 2 \nmodel : 3 \nThen : 1 \nrecent : 1 \norder : 1 \nexibility : 1 \nlower : 1 \npersonal : 1 \nsensitive : 1 \nschemes : 1 \nutilizes : 1 \noperate : 1 \neven : 1 \nBloom : 2 \nbecome : 1 \nmeasureto : 1 \nserver : 1 \nscheme : 7 \nachieve : 2 \nguarantee : 1 \nsearchindex : 1 \nTheexperiments : 1 \nsearch : 4 \nknown : 2 \notherschemes : 1 \nvector : 1 \ntradition : 2 \npopular : 1 \nefcientlyOur : 1 \nmeans : 1 \nset : 1 \nsub-linear : 1 \nmore : 1 \nmakes : 1 \nutiliza-tion : 1 \nplaintext : 1 \nthe : 1 \nTF : 1 \namulti-keyword : 1 \ncombined : 1 \ndata : 5 \nIDF : 1 \nsecure : 1 \nmulti-keyword : 1 \nspace : 1 \ncloud : 2 \nhigh : 1 \nlater : 1 \nconsiderate : 1 \npresented : 1 \ndynamic : 2 \nsatisfactory : 1 \nkeyword : 1 \nsolutions : 1 \ntree : 1 \nHowever : 2 \nproposed : 1 \nbackground : 1 \nsolve : 1 \ncosine : 1 \nupdat : 1 \nrst : 1 \npresent : 2 \nbasic : 1 \nsupport : 2 \ncomputationalcosts : 1 \nimpossible : 1 \nshow : 1 \nprivacy : 1 \nrule : 1 \ncomput : 1 \nsecurity : 1 \noperations : 1 \nsimilarity : 1 \naccountof : 1 \nperformances : 1 \nenhance : 1 \nciphertext : 1 \ncost : 1 \neffectively : 1 \nbeforeoutsourcing : 1 \nlter : 2 \nmanage : 2 \nencrypted : 2 \nbuild : 1 \nCloud : 1 \ntime : 1 \n'),(2,'padmasri','smaple.txt','17603144','94818173A5F1F92FFEB959B7D4642FCB','String pr_rat=(String)session.getAttribute(\"pr\");String pr_ran=(String)session.getAttribute(\"prange\");String z_rat=(String)session.getAttribute(\"zr\");String z_ran=(String)session.getAttribute(\"zrange\");String pix_rat=(String)session.getAttribute(\"pixr\");String pix_ran=(String)session.getAttribute(\"pixrange\");','String pr_rat=StringsessiongetAttributeprString pr_ran=StringsessiongetAttributeprangeString z_rat=StringsessiongetAttributezrString z_ran=StringsessiongetAttributezrangeString pix_rat=StringsessiongetAttributepixrString pix_ran=StringsessiongetAttributepixrange','[String pr_rat=StringsessiongetAttributeprString pr_ran=StringsessiongetAttributeprangeString z_rat=StringsessiongetAttributezrString z_ran=StringsessiongetAttributezrangeString pix_rat=StringsessiongetAttributepixrString pix_ran=StringsessiongetAttributepixrange]','z_rat=StringsessiongetAttributezrString : 1 \npix_rat=StringsessiongetAttributepixrString : 1 \nString : 1 \npr_ran=StringsessiongetAttributeprangeString : 1 \npix_ran=StringsessiongetAttributepixrange : 1 \npr_rat=StringsessiongetAttributeprString : 1 \nz_ran=StringsessiongetAttributezrangeString : 1 \n'),(3,'Gokul','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','FE82E3E5F4D78168FEB959B7D4642FCB','In this project we have two module1. Admin2. User1.AdminLogin with DetailsAdd ProductView Reviews and Rating as Positive or Negative View Tweets Reviews as Positive or Negative Logout2.UserRegister with DetailsLoginRecommend and Request for FriendUser Tweets as Positive or NegativeUser Reviews based on purchase productLogout','project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rating Positive Negative View Tweets Reviews Positive Negative Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout','[project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rat Positive Neg View Tweets Reviews Positive Neg Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout]','Rat : 1 \nDetailsAdd : 1 \nproject : 1 \ntwo : 1 \nTweets : 2 \nProductView : 1 \nLogout2UserRegister : 1 \nNegativeUser : 1 \nbased : 1 \nRequest : 1 \npurchase : 1 \nproductLogout : 1 \nmodule1 : 1 \nView : 1 \nNeg : 2 \nReviews : 3 \nDetailsLoginRecommend : 1 \nFriendUser : 1 \nPositive : 3 \nUser1AdminLogin : 1 \nAdmin2 : 1 \n'),(4,'Gokul','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','88241210','87BA18DE31ACE710FEB959B7D4642FCB','In this project we have two module1. Admin2. User1.AdminLogin with DetailsAdd ProductView Reviews and Rating as Positive or Negative View Tweets Reviews as Positive or Negative Logout2.UserRegister with DetailsLoginRecommend and Request for FriendUser Tweets as Positive or NegativeUser Reviews based on purchase productLogout','project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rating Positive Negative View Tweets Reviews Positive Negative Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout','[project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rat Positive Neg View Tweets Reviews Positive Neg Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout]','Rat : 1 \nDetailsAdd : 1 \nproject : 1 \ntwo : 1 \nTweets : 2 \nProductView : 1 \nLogout2UserRegister : 1 \nNegativeUser : 1 \nbased : 1 \nRequest : 1 \npurchase : 1 \nproductLogout : 1 \nmodule1 : 1 \nView : 1 \nNeg : 2 \nReviews : 3 \nDetailsLoginRecommend : 1 \nFriendUser : 1 \nPositive : 3 \nUser1AdminLogin : 1 \nAdmin2 : 1 \n'),(5,'abi','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','19807126','8341CBA01E406DFFFEB959B7D4642FCB','In this project we have two module1. Admin2. User1.AdminLogin with DetailsAdd ProductView Reviews and Rating as Positive or Negative View Tweets Reviews as Positive or Negative Logout2.UserRegister with DetailsLoginRecommend and Request for FriendUser Tweets as Positive or NegativeUser Reviews based on purchase productLogout','project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rating Positive Negative View Tweets Reviews Positive Negative Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout','[project two module1 Admin2 User1AdminLogin DetailsAdd ProductView Reviews Rat Positive Neg View Tweets Reviews Positive Neg Logout2UserRegister DetailsLoginRecommend Request FriendUser Tweets Positive NegativeUser Reviews based purchase productLogout]','Rat : 1 \nDetailsAdd : 1 \nproject : 1 \ntwo : 1 \nTweets : 2 \nProductView : 1 \nLogout2UserRegister : 1 \nNegativeUser : 1 \nbased : 1 \nRequest : 1 \npurchase : 1 \nproductLogout : 1 \nmodule1 : 1 \nView : 1 \nNeg : 2 \nReviews : 3 \nDetailsLoginRecommend : 1 \nFriendUser : 1 \nPositive : 3 \nUser1AdminLogin : 1 \nAdmin2 : 1 \n');

/*Table structure for table `filereq` */

DROP TABLE IF EXISTS `filereq`;

CREATE TABLE `filereq` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'De-Active',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `filereq` */

insert  into `filereq`(`id`,`name`,`fname`,`fkey`,`status`) values (1,'bhuvi','t104.txt','62122630','Active'),(2,'1crore','t100.txt','28909320','Active'),(3,'madhuri','dynamic.txt','94221644','Active'),(4,'madhuri','smaple.txt','17603144','Active'),(5,'Gokul','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active'),(6,'Gokul','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active'),(7,'tree','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active'),(8,'tree','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active'),(9,'joi','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active'),(10,'ravi','Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','24482020','Active');

/*Table structure for table `highlevel` */

DROP TABLE IF EXISTS `highlevel`;

CREATE TABLE `highlevel` (
  `filename` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `highlevel` */

insert  into `highlevel`(`filename`,`rank`) values ('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2'),('Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','2');

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`id`,`name`,`pass`,`email`,`mobile`,`city`,`state`,`status`) values (2,'mithun','mithun','lkjhgf','1234567899990','covai','Bhutan','Activated'),(6,'Gokul','1234','gokul12@gmail.com','983453877','Vellore','Tamil Nadu','Activated'),(7,'tan','123','tan@gmail.com','098765432','theni','Tamil Nadu','Activated'),(9,'RAJ','1234','raj@gmail.com','65754534','Vellore','Tamil Nadu','Deactivated'),(10,'RAJ','1234','raj@gmail.com','65754534','Vellore','Tamil Nadu','Activated'),(11,'abi','123','otpsendermessage@gmail.com','0987654321','Vellore','Bhutan','Deactivated');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `count` int(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `result` */

insert  into `result`(`id`,`fname`,`count`) values (1,'smaple.txt',12),(2,'dynamci.txt',4),(3,'Check.txt',9),(4,'smaple.txt',12),(5,'smaple.txt',12),(6,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',4),(7,'smaple.txt',12),(8,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',6),(9,'smaple.txt',12),(10,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',12),(11,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',12),(12,'smaple.txt',12),(13,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',16),(14,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',16),(15,'smaple.txt',12),(16,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',20),(17,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',20),(18,'smaple.txt',12),(19,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',26),(20,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',26),(21,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt',26);

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`name`,`pass`,`email`,`mobile`,`city`,`state`,`status`) values (1,'madhuri','madhu','1croreprojects.javateam@gmail.com','9988776655','Chennai','tamilnadu','Activated'),(10,'joi','joi','otpsendermessage@gmail.com','0987654321','theni','Tamil Nadu','Activated'),(11,'john','123','otpsendermessage@gmail.com','8989899876','theni','Tamil Nadu','Activated'),(12,'ravi','123','otpsendermessage@gmail.com','8989899876','covai','Tamil Nadu','Activated');

/*Table structure for table `val` */

DROP TABLE IF EXISTS `val`;

CREATE TABLE `val` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `ke` varchar(200) DEFAULT NULL,
  `count` int(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `val` */

insert  into `val`(`id`,`fname`,`ke`,`count`) values (1,'smaple.txt','string',12),(2,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','user',4),(3,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(4,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','positive',3),(5,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','positive',3),(6,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(7,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(8,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(9,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(10,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(11,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2),(12,'Learning Latent Multi-Criteria Ratings From User Reviews for Recommendations.txt','tweets',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
