/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.7.21-log : Database - pcs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pcs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pcs`;

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `locations` */

insert  into `locations`(`location_id`,`location`) values 
(1,'Warangal'),
(2,'Hyderabad'),
(3,'Banglore'),
(4,'Narsampet'),
(5,'Vardhannapet');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `reg` */

insert  into `reg`(`id`,`name`,`address`) values 
(1,'',''),
(2,'dfds','dsfsd'),
(3,'asdsad','asdasd');

/*Table structure for table `user_registration` */

DROP TABLE IF EXISTS `user_registration`;

CREATE TABLE `user_registration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `crt_date` date DEFAULT NULL,
  `crt_time` time DEFAULT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `updated_time` time DEFAULT NULL,
  `feedback_msg` varchar(500) DEFAULT NULL,
  `user_rating` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `user_registration` */

insert  into `user_registration`(`user_id`,`first_name`,`last_name`,`user_name`,`password`,`email`,`contact_no`,`location`,`gender`,`crt_date`,`crt_time`,`user_type`,`updated_date`,`updated_time`,`feedback_msg`,`user_rating`) values 
(1,'Ranjith','Namani','Ranjith','Ran1212?','ran@gmail.com','7382233485','Hyderabad','Male','2018-02-19','09:05:06','admin','2018-03-15','09:13:13',NULL,NULL),
(2,'Charan','Kontham','Charan','1234','charan@gmail.com','9949186131','Warangal','Male','2018-02-20','08:05:02','user',NULL,NULL,'hi heelo','excellent'),
(3,'Sindhu','Kontham','Sindhu','123','sindhu@gmail.com','9908638928','Ghatkesar','Famale','2018-02-21','07:05:03','user',NULL,NULL,NULL,NULL),
(4,'fsdfs','sfsdf','sdfssdsfs','ranjith12?','ran@gmail.com','1234567891','Hyderabad','Male','2018-02-24','23:59:08','user',NULL,NULL,NULL,NULL),
(5,'ranjith','fdsf','fsdfsdf','Ran1212?','fsdf@','1234567891','Nizambad','Male','2018-03-12','23:58:18','user',NULL,NULL,NULL,NULL),
(6,'ranjith1','n','ranjith1','rAN1212?','ran@gmail.com1','1234567891','Warangal','Male','2018-03-13','00:09:18','user',NULL,NULL,NULL,NULL),
(7,'fdg','fgh','fsfsdfsd','Ran1212?','fdgfdg','2432423423','Yadadri','Male','2018-03-15','09:06:13','user',NULL,NULL,NULL,NULL),
(8,'dfdsf','sdfsdf','sdfsdfdsfd','Ran1212?','sdfsdf','7382233485','Yadadri','Male','2018-03-15','09:07:25','user',NULL,NULL,NULL,NULL),
(9,'dfsfsdf','fddsf','dsfdsfsdf','Ran1212?','ran@gmail.com2','3332423432','Yadadri','Male','2018-03-15','09:10:27','admin',NULL,NULL,NULL,NULL),
(10,NULL,NULL,'dsfsdf','sdfsd','sfsdf','dsfdsf',NULL,NULL,'2018-03-15','09:26:31','admin',NULL,NULL,NULL,NULL),
(11,'ranjtih13',NULL,'ranjtih13','ran1','ran@gmail.com5','7382233485',NULL,NULL,'2018-03-15','09:30:35','admin',NULL,NULL,NULL,NULL);

/*Table structure for table `user_service_details` */

DROP TABLE IF EXISTS `user_service_details`;

CREATE TABLE `user_service_details` (
  `user_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `ticket_id` varchar(50) NOT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `issue_desc` varchar(500) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `crt_date` date NOT NULL,
  `crt_time` time NOT NULL,
  `service_date` date NOT NULL,
  `service_type` varchar(150) NOT NULL,
  PRIMARY KEY (`user_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `user_service_details` */

insert  into `user_service_details`(`user_service_id`,`user_id`,`user_name`,`ticket_id`,`issue`,`issue_desc`,`payment_mode`,`address`,`status`,`crt_date`,`crt_time`,`service_date`,`service_type`) values 
(1,1,'Ranjith','service#001','PC repair','PC harddisk change','online','6/13^^^34^^^500091','Pending','2018-02-21','06:05:09','2018-02-24',''),
(2,2,'Joseh','service#002','washing machine','wm issue','cod','6/13^^^34^^^500091','Success','2018-02-22','03:05:08','2018-02-25',''),
(3,2,'David','service#003','plumbing','plumbing issue','onlne','6/14^^^36^^^500008','Pending','2018-02-22','03:05:06','2018-02-26',''),
(4,2,'Mr.Charan Kontham','service0002',NULL,'                                                    dsd','Online payment','asdd^^^asdasd^^^asdas^^^','Pending','2018-02-24','22:17:15','2018-02-24',''),
(5,2,'Mr.Charan Kontham','service0002',NULL,'                                                    dsd','Online payment','asdd^^^asdasd^^^asdas^^^','Pending','2018-02-24','22:20:42','2018-02-24',''),
(6,2,'Mr.Charan Kontham','service0002',NULL,'                                                    rffssfsdf','Online payment','sfsdf^^^fdsfs^^^sd^^^','Pending','2018-02-24','22:21:53','2018-02-25',''),
(7,2,'Mr.Charan Kontham','service0002','','                                                    dtc','Online payment','bj^^^fgcxgfc^^^vhgv^^^','Pending','2018-02-24','22:34:24','2018-02-24',''),
(8,2,'Mr.Charan Kontham','service0002','','                                                    fhfgh','Online payment','fgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:36:10','2018-02-24',''),
(9,2,'Mr.Charan Kontham','service0002','','                                                    fhfgh','Online payment','fgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:37:21','2018-02-24',''),
(10,2,'Mr.Charan Kontham','service0002','','                                                    fhfgh','Online payment','fgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:37:30','2018-02-24',''),
(11,2,'Mr.Charan Kontham','service0002','Washing Machine','                                                    fgfd','Online payment','fdg^^^fdg^^^fdg^^^','Pending','2018-02-24','22:38:03','2018-02-24','Repairings'),
(12,2,'Mr.Charan Kontham','service0002','Washing Machine','fgfd','Online payment','fdg^^^fdg^^^fdg^^^','Pending','2018-02-24','22:39:52','2018-02-24','Repairings'),
(13,2,'Mr.Charan Kontham','service0002','Washing Machine','hfgh','Online payment','fghfgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:40:57','2018-02-24','Repairings'),
(14,2,'Mr.Charan Kontham','service0002','Washing Machine','hfgh','Online payment','fghfgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:42:45','2018-02-24','Repairings'),
(15,2,'Mr.Charan Kontham','service0002','Washing Machine','fhfg','Online payment','fgh^^^fgh^^^fgh^^^','Pending','2018-02-24','22:43:09','2018-02-24','Repairings'),
(16,2,'Mr.Charan Kontham','service0002','Washing Machine','fhfg','Online payment','fgh^^^fgh^^^fgh^^^','Pending','2018-02-24','22:48:53','2018-02-24','Repairings'),
(17,2,'Mr.Charan Kontham','service0002','Washing Machine','hfgh','Online payment','fghfgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:49:04','2018-02-24','Repairings'),
(18,2,'Mr.Charan Kontham','service0002','Washing Machine','fgfd','Online payment','fdg^^^fdg^^^fdg^^^','Pending','2018-02-24','22:49:23','2018-02-24','Repairings'),
(19,2,'Mr.Charan Kontham','service0002','','fhfgh','Online payment','fgh^^^fgh^^^fghfg^^^','Pending','2018-02-24','22:49:28','2018-02-24',''),
(20,3,'Ms.Sindhu Kontham','service0003','Plumber','hgjgjhgjhgjhgjhg','Cod','gjghj^^^jgjgg^^^hjghjghj^^^','Pending','2018-02-25','17:09:17','2018-02-25','Daily needs'),
(21,3,'Ms.Sindhu Kontham','service0003','Plumber','hgjgjhgjhgjhgjhg','Cod','gjghj^^^jgjgg^^^hjghjghj^^^','Pending','2018-02-25','17:09:56','2018-02-25','Daily needs'),
(22,3,'Ms.Sindhu Kontham','service0003','Plumber','gfgfgfdgfd','Cod','dgfd^^^fdgg^^^fgfg^^^','Pending','2018-02-25','17:10:25','2018-02-25','Daily needs'),
(23,3,'Ms.Sindhu Kontham','service0003','Full home Cleaning','yhtyy','Cod','yty^^^ty^^^rtyrt^^^','Pending','2018-02-25','17:13:44','2018-02-27','Daily needs');

/*Table structure for table `workers_details` */

DROP TABLE IF EXISTS `workers_details`;

CREATE TABLE `workers_details` (
  `unq_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` varchar(15) DEFAULT NULL,
  `worker_name` varchar(50) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `location` varchar(500) NOT NULL,
  `email_id` varchar(25) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `crt_date` date DEFAULT NULL,
  `crt_time` time DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`unq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `workers_details` */

insert  into `workers_details`(`unq_id`,`worker_id`,`worker_name`,`contact_no`,`location`,`email_id`,`status`,`crt_date`,`crt_time`,`location_id`) values 
(1,'worker#001','Raghunadh','12345','Banglore','raghu@gmail.com','work pending','2018-02-20','05:05:03',1),
(2,'worker#002','Somu','123','Hyderabad','somu@gmail.com','work pending','2018-02-21','02:06:08',1),
(3,'worker#003','Mahesh','12','Siddipet','mahesh@gmail.com','work pending','2018-02-20','02:05:08',2),
(4,'worker#004','Naresh','121','Vardhannapet','naresh@gmail.com','work pending','2018-02-21','02:09:08',2),
(5,'worker#005','Rakhi','123456','Maheshwaram','rakhi@gmail.com','work finished','2018-02-21','02:07:08',3),
(6,'adasd','asada','3423423','dad',NULL,'Work Pending','2018-03-15','10:15:10',1),
(7,'sfsf','aaa','7382233485','aaa',NULL,'Work Pending','2018-03-15','10:17:12',1),
(8,'sfsf234234','aaa234324','7382233485','aaa234234234',NULL,'Work Pending','2018-03-15','10:17:27',1),
(9,'213213','1231321','324523','3123213',NULL,'Work Pending','2018-03-15','10:19:06',1),
(10,'sdfsdf','fs','','fsdf',NULL,'Work Pending','2018-03-15','10:19:24',1),
(11,'asd','dfsadasda','354235','sdasdasd',NULL,'Work Pending','2018-03-15','10:23:09',1),
(12,'dsfsdf','dfdsf','','sdf',NULL,'Work Pending','2018-03-15','10:23:26',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
