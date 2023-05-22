/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - blockhealthcare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blockhealthcare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blockhealthcare`;

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digsignature` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert  into `blockchain`(`id`,`digsignature`) values (1,'ABCDEFGHIJKLMNOP'),(2,'9cf5c7faff5d74e23100c75c6d690c66'),(3,'81d2dbba2870a489aa03cb3fd08bc75d'),(4,'1f0b8525d8b722589591dfd00727bf70'),(5,'196f6ae9cffbfd13b00eff4b256fe47b'),(6,'902aa73f06f7336d1ffd62b5ffaba2b5'),(7,'bc880ba6a18aaaac129e47dbb3e63935'),(8,'bf3c2d37500ae33173d46c7d7dacd983'),(9,'b7b6ed0cb9dcb53e2e47c2e1753d0e1f'),(10,'adae4d80145c2506b52590d065c6b023'),(11,'75e3588801897c94f30fa974915db81a'),(12,'a10fe2646b87921f8394d7ac9a41e785'),(13,'e3ff43b6cebe3eb55d3312c0ea60084e'),(14,'dc75d199783092d4f917b17c8c34203f'),(15,'96b5e6de55119ee37bc04d7219271e70'),(16,'9840d61a602ff7ccaa015413174c0d0c'),(17,'27eaaa486164b56eaad0b0d9afa42f46'),(18,'a90d3ff7f05d8c1c26a063103989eb82'),(19,'1412ca1b888102c93afbda611b7a97bf'),(20,'21534b26211f1a879c96c69e4c8cabc8'),(21,'2b14ea41f80d2a86d2be77adf2fa2454'),(22,'56fa8f5ab010817fbd27c35c931d9fc1'),(23,'abf8554984657446f0326a3c316075ec'),(24,'da63381fcdce60795b77f21592adb1a6'),(25,'a4cc525dfd412f40dc036545feac8aec'),(26,'d9c83be5954364efefeb01a354c04369'),(27,'a30d9f036370c8af69a26a97eb77e339'),(28,'24a101a608feed76503b083f0c1330ef'),(29,'efe2c49b96e53fa1e530d3498b3f6ae4'),(30,'2313513b40f4726896362c0fbc2a8cf7'),(31,'d73967ab8b18e3c3912ae8aa8f496eec'),(32,'879c0e696ad0a35bfee70b62ffe72124'),(33,'a5dbfdeab7a3b6bf33434583c723b228'),(34,'1285b828791717e043528e1ca9cad3fa'),(35,'9a1f9d257bd535ad2d1c4d3f0433f05e'),(36,'ec11f10634c950084eaee5a2230cd234'),(37,'d07980f3c8c00dafd55d2bf1506bfd7c'),(38,'9b2244a39b12a4f004666983322c9a27'),(39,'03ccb416d7a347ef9491b6737faa21ba'),(40,'c24bdf696149a9dcd1eba05eb9403a69'),(41,'42263d894124d57dafa1d51b881e86f6'),(42,'148f83f07dc59210b075534218f27613'),(43,'8ce241958ed63ab2a060ae13bb8d831a'),(44,'49e5d9a08cc9bfc3b1b4422ca12d2050'),(45,'4ad30c039353de3a58ce731e079e5d80'),(46,'c9bbf7a720a2791f67c39c52067cd49c'),(47,'e78221bb53fe8be77181c9eec92b08bd'),(48,'946c1b820656b51929dc122f8e1c3861'),(49,'9ed3b133652b5771878a8804be1389d1'),(50,'85a19cc5d0b8c4d67d63a04cab19d4ce'),(51,'93a2d3957cd0b4ac099a2586aa6f6fbe'),(52,'8b17cd6a6ef3e6bb2814b4e7b97f006b'),(53,'637ac3361095bd6b018bdcd02f5461f4'),(54,'ffae7b409856da801f604b4fe16c036b'),(55,'55643691241ed95f0e419223d69f495e'),(56,'624a8cf8f334c28f2766f14aad656946'),(57,'42cc81d805cf9905d0505f8fdcc1144b'),(58,'0c7cf2f9cde523aa25759484a431e812'),(59,'a7e249efbac945f1cf9dfd9767d86976'),(60,'bac7898a6ebe3af18bf8b8f2a075679d'),(61,'27412391c0e412ca3dcc7b85ab66000e'),(62,'0e701e340fc2aa3a983c4edb255afeb4'),(63,'5877583ad37036020bf92602c48517de'),(64,'cf21c824575eb8a0749c1ef43d3de619'),(65,'5d6886f86e37444511bd47e4404de803'),(66,'7680006abd3545d0f98c61859a4e31cf'),(67,'010ce03b9eac8b29f3a78877bf3844b1'),(68,'b5aa16fb011a938164d823ee63b0cc96'),(69,'732d4b1633ce1a511039e591009f1644'),(70,'e0128e203828a6b6e436b4a43382b1c3'),(71,'1677873ab8a76ad81230772415d2e53f'),(72,'73697b15ab9c3cbee2dbc326978cfad8'),(73,'09c13900bf6f9de9d166681beff9e9ad'),(74,'0f64111db76ab54500c00d6f2c10eb21'),(75,'783b0101ad037a6b13bcc663d8991a28'),(76,'a50a811ec710fcf0fc79ad88fa86086f'),(77,'06c63edd51f2abf94cd76b89e3ca1a5b'),(78,'518d2a5e3e34e668c1b77c09523287d2'),(79,'ebd6a71f2f5571ce2a92364cdd617a1e'),(80,'a7479dc20995966692f2d0f8e71bcdc4'),(81,'172998d0eac1c834757c31b3cd302d79'),(82,'5db8a4aec5f378c0143725f29907a6c8'),(83,'07d1ee305361e6093fdf26583e055e5b'),(84,'6836feac78013d961d3c542f113c671c'),(85,'ff99a93d7e21d0b1e9d0b2ee91c31dd8'),(86,'823bbba3953d5b333c3b1ee7535be0ca'),(87,'8927dac55089a230768692270428b6fc'),(88,'fdbdea58bad8a8c9c36a99f0942c893e'),(89,'cd4a1aba8b42e57fbaa0490f2df7cd95'),(90,'d9ed1070ee3fc2314796ed3c35ec96c5'),(91,'a894e384db80a388c2b4c099467c27df'),(92,'02dc93279f75c1361a516b053567eb04');

/*Table structure for table `dreg` */

DROP TABLE IF EXISTS `dreg`;

CREATE TABLE `dreg` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `dname` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `hname` varchar(200) DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL,
  `spec` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `dreg` */

insert  into `dreg`(`id`,`dname`,`pass`,`hname`,`des`,`spec`,`dob`,`email`,`contact`,`location`,`status`) values (16,'Lakshmi','lakshmi','Apollo','Doctor','Cardiologists','1998-06-05','lakshmi@gmail.com','898879898','Chennai','Activated'),(17,'Camy','camy','Apollo','Doctor','Gynecologists','2023-03-16','camy@gmail.com','8739579345','Chennai','Activated'),(18,'Jhansi','jhansi','Apollo','Doctor','General','2023-03-09','jhansi@gmail.com','8797878798','Chennai','Waiting'),(19,'Vel','vel','Vijaya','Doctor','Cardiologists','3332-03-31','vel@gmail.com','8737846778','Chennai','Activated'),(20,'Ram','ram','SMK','Doctor','General','1985-05-14','ram@gmail.com','7895642565','Chennai','Activated');

/*Table structure for table `preg` */

DROP TABLE IF EXISTS `preg`;

CREATE TABLE `preg` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `pname` varchar(222) DEFAULT NULL,
  `pass` varchar(222) DEFAULT NULL,
  `dob` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `contact` varchar(222) DEFAULT NULL,
  `location` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `preg` */

insert  into `preg`(`id`,`pname`,`pass`,`dob`,`email`,`contact`,`location`,`status`) values (3,'Deepa','deepa','4344-06-06','deepa@gmail.com','8355454588','Chennai','Activated'),(4,'Arun','arun','2000-11-12','arun@gmail.com','9875486521','chennai','Activated');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `pname` varchar(222) DEFAULT NULL,
  `keyy` varchar(222) DEFAULT 'Generate Symetric Key',
  `status` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`sno`,`pname`,`keyy`,`status`) values (1,'Deepa','512509629D305FF9','Permitted'),(5,'Deepa','Generate Symetric Key','Waiting'),(6,'Deepa','Generate Symetric Key','Waiting'),(7,'Deepa','Generate Symetric Key','Waiting'),(8,'Arun','Generate Symetric Key','Waiting'),(9,'Arun','Generate Symetric Key','Waiting'),(10,'Arun','5CB1B2F3446BA207','Permitted'),(11,'arun','F0FA7CD84167C829','Permitted');

/*Table structure for table `request1` */

DROP TABLE IF EXISTS `request1`;

CREATE TABLE `request1` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `pname` varchar(222) DEFAULT NULL,
  `patient` varchar(222) DEFAULT NULL,
  `dname` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  `pstatus` varchar(222) DEFAULT 'Waiting',
  `file` varchar(222) DEFAULT NULL,
  `keyy` varchar(222) DEFAULT 'Waiting',
  `estatus` varchar(222) DEFAULT 'Waiting',
  `sol` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `request1` */

insert  into `request1`(`sno`,`pname`,`patient`,`dname`,`status`,`pstatus`,`file`,`keyy`,`estatus`,`sol`) values (5,'Deepa','Rani','Camy','Permitted','Accepted','Resource Allocation.txt','512509629D305FF9','Key Sent','Do yoga Daily. No need any operation. Take proper food'),(6,'Deepa','Rani','Camy','Waiting','Waiting','Resource Allocation.txt','512509629D305FF9','Waiting',NULL),(7,'Arun','Arun','Camy','Permitted','Accepted','Blockhealthcare.sql','5CB1B2F3446BA207','Key Sent','ghhg'),(12,'Arun','Arun','Camy','Permitted','Waiting','Blockhealthcare.sql','5CB1B2F3446BA207','Waiting','ghhg');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `keyy` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `patient` varchar(222) DEFAULT NULL,
  `dob` varchar(222) DEFAULT NULL,
  `gen` varchar(222) DEFAULT NULL,
  `diseas` varchar(222) DEFAULT NULL,
  `age` varchar(222) DEFAULT NULL,
  `blood` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `addr` varchar(222) DEFAULT NULL,
  `con` varchar(222) DEFAULT NULL,
  `dname` varchar(222) DEFAULT NULL,
  `file` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`sno`,`keyy`,`pname`,`patient`,`dob`,`gen`,`diseas`,`age`,`blood`,`email`,`addr`,`con`,`dname`,`file`) values (4,'512509629D305FF9','Deepa','Rani','14/09/1996','Female','Fever','30','o+ve','rani@gmail.com','Chennai','9879789676','Camy','Resource Allocation.txt'),(5,'5CB1B2F3446BA207','Arun','Arun','12/09/1999','Male','Cancer','24','B+','arun12@gmail.com','Chennai','87665756454','','Blockhealthcare.sql'),(6,'5CB1B2F3446BA207','Arun','Arun','12/09/1999','Male','Cancer','30','O+','arun12@gmail.com','Chennai','78967867546','Camy','Blockhealthcare.sql'),(7,'5CB1B2F3446BA207','Arun','Arun','12/09/1999','Male','Cancer','30','O+','arun12@gmail.com','Chennai','78967867546','Camy','Blockhealthcare.sql');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
