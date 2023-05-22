/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - group
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`group` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `group`;

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digsignature` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert  into `blockchain`(`id`,`digsignature`) values (1,'ABCDEFGHIJKLMNOP'),(2,'9cf5c7faff5d74e23100c75c6d690c66'),(3,'81d2dbba2870a489aa03cb3fd08bc75d'),(4,'1f0b8525d8b722589591dfd00727bf70'),(5,'196f6ae9cffbfd13b00eff4b256fe47b'),(6,'902aa73f06f7336d1ffd62b5ffaba2b5'),(7,'bc880ba6a18aaaac129e47dbb3e63935'),(8,'bf3c2d37500ae33173d46c7d7dacd983'),(9,'b7b6ed0cb9dcb53e2e47c2e1753d0e1f'),(10,'adae4d80145c2506b52590d065c6b023'),(11,'75e3588801897c94f30fa974915db81a'),(12,'a10fe2646b87921f8394d7ac9a41e785'),(13,'e3ff43b6cebe3eb55d3312c0ea60084e'),(14,'dc75d199783092d4f917b17c8c34203f'),(15,'96b5e6de55119ee37bc04d7219271e70'),(16,'9840d61a602ff7ccaa015413174c0d0c'),(17,'27eaaa486164b56eaad0b0d9afa42f46'),(18,'a90d3ff7f05d8c1c26a063103989eb82'),(19,'1412ca1b888102c93afbda611b7a97bf'),(20,'21534b26211f1a879c96c69e4c8cabc8'),(21,'2b14ea41f80d2a86d2be77adf2fa2454'),(22,'56fa8f5ab010817fbd27c35c931d9fc1'),(23,'abf8554984657446f0326a3c316075ec'),(24,'da63381fcdce60795b77f21592adb1a6'),(25,'a4cc525dfd412f40dc036545feac8aec'),(26,'d9c83be5954364efefeb01a354c04369'),(27,'a30d9f036370c8af69a26a97eb77e339'),(28,'24a101a608feed76503b083f0c1330ef'),(29,'efe2c49b96e53fa1e530d3498b3f6ae4'),(30,'2313513b40f4726896362c0fbc2a8cf7'),(31,'d73967ab8b18e3c3912ae8aa8f496eec'),(32,'879c0e696ad0a35bfee70b62ffe72124'),(33,'a5dbfdeab7a3b6bf33434583c723b228'),(34,'1285b828791717e043528e1ca9cad3fa'),(35,'9a1f9d257bd535ad2d1c4d3f0433f05e'),(36,'ec11f10634c950084eaee5a2230cd234'),(37,'d07980f3c8c00dafd55d2bf1506bfd7c'),(38,'9b2244a39b12a4f004666983322c9a27'),(39,'03ccb416d7a347ef9491b6737faa21ba'),(40,'c24bdf696149a9dcd1eba05eb9403a69'),(41,'42263d894124d57dafa1d51b881e86f6'),(42,'148f83f07dc59210b075534218f27613'),(43,'8ce241958ed63ab2a060ae13bb8d831a'),(44,'49e5d9a08cc9bfc3b1b4422ca12d2050'),(45,'4ad30c039353de3a58ce731e079e5d80'),(46,'c9bbf7a720a2791f67c39c52067cd49c'),(47,'e78221bb53fe8be77181c9eec92b08bd'),(48,'946c1b820656b51929dc122f8e1c3861'),(49,'9ed3b133652b5771878a8804be1389d1'),(50,'85a19cc5d0b8c4d67d63a04cab19d4ce'),(51,'93a2d3957cd0b4ac099a2586aa6f6fbe'),(52,'8b17cd6a6ef3e6bb2814b4e7b97f006b'),(53,'637ac3361095bd6b018bdcd02f5461f4'),(54,'ffae7b409856da801f604b4fe16c036b'),(55,'55643691241ed95f0e419223d69f495e'),(56,'624a8cf8f334c28f2766f14aad656946'),(57,'42cc81d805cf9905d0505f8fdcc1144b'),(58,'0c7cf2f9cde523aa25759484a431e812'),(59,'a7e249efbac945f1cf9dfd9767d86976'),(60,'bac7898a6ebe3af18bf8b8f2a075679d'),(61,'27412391c0e412ca3dcc7b85ab66000e'),(62,'0e701e340fc2aa3a983c4edb255afeb4'),(63,'5877583ad37036020bf92602c48517de'),(64,'cf21c824575eb8a0749c1ef43d3de619'),(65,'5d6886f86e37444511bd47e4404de803'),(66,'7680006abd3545d0f98c61859a4e31cf'),(67,'010ce03b9eac8b29f3a78877bf3844b1'),(68,'b5aa16fb011a938164d823ee63b0cc96'),(69,'732d4b1633ce1a511039e591009f1644'),(70,'e0128e203828a6b6e436b4a43382b1c3'),(71,'1677873ab8a76ad81230772415d2e53f'),(72,'73697b15ab9c3cbee2dbc326978cfad8'),(73,'09c13900bf6f9de9d166681beff9e9ad'),(74,'0f64111db76ab54500c00d6f2c10eb21'),(75,'783b0101ad037a6b13bcc663d8991a28'),(76,'a50a811ec710fcf0fc79ad88fa86086f'),(77,'06c63edd51f2abf94cd76b89e3ca1a5b'),(78,'518d2a5e3e34e668c1b77c09523287d2'),(79,'ebd6a71f2f5571ce2a92364cdd617a1e'),(80,'a7479dc20995966692f2d0f8e71bcdc4'),(81,'172998d0eac1c834757c31b3cd302d79');

/*Table structure for table `final` */

DROP TABLE IF EXISTS `final`;

CREATE TABLE `final` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `behaviour` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `final` */

insert  into `final`(`id`,`user`,`topic`,`image`,`description`,`location`,`grup`,`behaviour`) values (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `friendrequest` */

DROP TABLE IF EXISTS `friendrequest`;

CREATE TABLE `friendrequest` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(20) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `sid` varchar(200) DEFAULT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `friendrequest` */

insert  into `friendrequest`(`sno`,`id`,`user`,`mobile`,`grup`,`sid`,`sname`,`status`) values (1,16,'Rani','8346578834','Farmer','14','deepa','Request Send'),(2,1,'lakshmi','9876543210','Doctor','14','deepa','Accepted'),(3,13,'Jhansi','9876543210','Politician','198','Deepa','Accepted'),(4,13,'Jhansi','9876543210','Politician','198','Deepa','Request Send'),(5,1,'lakshmi','9876543210','Doctor','13','Jhansi','Accepted'),(6,198,'Deepa','8248939923','Engineer','109','Sathya','Request Send'),(7,16,'Rani','8346578834','Farmer','109','Sathya','Request Send'),(8,1,'lakshmi','9876543210','Doctor','109','Sathya','Accepted'),(9,1,'lakshmi','9876543210','Doctor','109','Sathya','Request Send'),(10,198,'Deepa','8248939923','Engineer','657','gdeepa','Request Send'),(11,13,'Jhansi','9876543210','Politician','657','gdeepa','Accepted'),(12,1,'lakshmi','9876543210','Doctor','657','gdeepa','Request Send');

/*Table structure for table `movements` */

DROP TABLE IF EXISTS `movements`;

CREATE TABLE `movements` (
  `id` int(12) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `frm` varchar(200) DEFAULT NULL,
  `too` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `movements` */

insert  into `movements`(`id`,`user`,`email`,`mobile`,`location`,`frm`,`too`) values (1,'lakshmi','1cp.javateam2020@gmail.com','9876543210','Chennai','null','null'),(198,'Deepa','deepaginfotech@gmail.com','8248939923','Chennai','null','null'),(1,'lakshmi','1cp.javateam2020@gmail.com','9876543210','Chennai','null','null'),(13,'Jhansi','jhansi@gmail.com','9876543210','Chennai','null','null');

/*Table structure for table `neg` */

DROP TABLE IF EXISTS `neg`;

CREATE TABLE `neg` (
  `negative` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neg` */

insert  into `neg`(`negative`) values ('bad'),('selfish'),('foolish'),('stupied'),('guilty'),('Depression'),('lonely'),('not well');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `sno` int(200) NOT NULL AUTO_INCREMENT,
  `topic` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'wait',
  `hash` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`sno`,`topic`,`user`,`grup`,`image`,`description`,`location`,`status`,`hash`) values (1,'Meditation','lakshmi','Doctor','yoga.jpg','Every people can do Meditation day by day. good So it give more peace and healthy for mind ..','Chennai','Postive','49c3e434fc9b6ce7d4b2db0c3d93cf86'),(2,'ADMK','Jhansi','Politician','admk.png','During the ADMK period ,they act like good and selfish','Chennai','Neutral','51d921de651024a8c0caefc9734e9417'),(3,'Future of India','Deepa','Engineer','engineer.jpg','Today engineers are the tommorow future.great We can give solution for all the realtime problems..','Chennai','wait','49c3e434fc9b6ce7d4b2db0c3d93cf86'),(4,' Future ','Sathya','Business','database.jpg','In the world  Business in more power .. For that bisniess we have  great to use data thata avaiable in the lonely','Chennai','Neutral',NULL),(6,'Deppresion','gdeepa','Actress','depression.jpg','Indian cinema is very great but due to lockdown. Every pepole is lonely and despression..','Salem','Neutral','eb760e7f753fc80f80fe04ad3a851602'),(7,'bhfgkujh','hgfduyjhfvuythfyrf','gfdjhikj','admk.png','gbfkjhkjmn','gfkjhiikhnukjufhccrxfdvc ','wait',NULL),(8,'bhfgkujh','hgfduyjhfvuythfyrf','gfdjhikj','admk.png','gbfkjhkjmn','gfkjhiikhnukjufhccrxfdvc ','wait',NULL),(9,'Helping Hand','Deepa','Engineer','helipn.jpg','Help for all the people who dont have food shelter.','Chennai','wait','49c3e434fc9b6ce7d4b2db0c3d93cf86');

/*Table structure for table `pst` */

DROP TABLE IF EXISTS `pst`;

CREATE TABLE `pst` (
  `positive` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pst` */

insert  into `pst`(`positive`) values ('success'),('great'),('good'),('future'),('pleasant'),('wonderful'),('peace'),('health'),('wealth'),('happy');

/*Table structure for table `recommed` */

DROP TABLE IF EXISTS `recommed`;

CREATE TABLE `recommed` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `review` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `hash` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `recommed` */

insert  into `recommed`(`sno`,`image`,`topic`,`description`,`user`,`grup`,`location`,`review`,`status`,`hash`) values (15,'helipn.jpg','Helping Hand','Help for all the people who dont have food shelter.','Deepa','Farmer',' Chennai','This is very useful information  and happy to share this information','Postive','51d921de651024a8c0caefc9734e9417'),(16,'database.jpg',' Future ','In the world  Business in more power .. For that bisniess we have  great to use data thata avaiable in the lonely','Sathya','Politician',' Chennai','very bad socitety','negative','51d921de651024a8c0caefc9734e9417'),(17,'helipn.jpg','Helping Hand','Help for all the people who dont have food shelter.','Deepa','Engineer',' Chennai','Very bad ','negative','49c3e434fc9b6ce7d4b2db0c3d93cf86');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `grup` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Deactivated',
  `hash` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=878436 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`grup`,`gender`,`mobile`,`location`,`status`,`hash`) values ('admi.jpg',1,'lakshmi','lakshmi','1cp.javateam2020@gmail.com','14/07/1997','Doctor','female','9876543210','Chennai','Activated',NULL),('key.png',13,'Jhansi','jhansi','jhansi@gmail.com','14/07/2000','Politician','female','9876543210','Chennai','Activated',NULL),('data uowner.jpg',16,'Rani','rani','rani@gmail.com','21/01/1999','Farmer','female','8346578834','Chennai','Activated',NULL),('admi.jpg',198,'Deepa','deepa','deepaginfotech@gmail.com','14/07/1997','Engineer','female','8248939923','Chennai','Activated',NULL),('fema.jpg',109,'Sathya','sathya','deepaginfotech@gmail.com','21/01/1999','Busniess','female','9876543210','Chennai','Activated',NULL),('data uowner.jpg',657,'gdeepa','gdeepa','deepaginfotech@gmail.com','21/01/1999','Actress','female','9876543210','Salem','Activated','eb760e7f753fc80f80fe04ad3a851602'),('admin.png',878435,'Camy','camy','camy@gmail.com','14/09/98','Engineer','female','985435384','Chennai','Activated',NULL),('13-132360_size-admin-user-icon-png.png',3354,'Jhansi','Jhansi','jhansi@gmail.com','14/09/98','Actress','female','985435384','Chennai','Activated','eb760e7f753fc80f80fe04ad3a851602');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
