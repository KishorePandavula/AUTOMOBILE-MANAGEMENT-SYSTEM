/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - vehicle_maintenance
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehicle_maintenance` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehicle_maintenance`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('Admin','Admin');

/*Table structure for table `part_graph` */

DROP TABLE IF EXISTS `part_graph`;

CREATE TABLE `part_graph` (
  `name` text,
  `count` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `part_graph` */

/*Table structure for table `partchange` */

DROP TABLE IF EXISTS `partchange`;

CREATE TABLE `partchange` (
  `carid` text,
  `service` text,
  `engine_oil` text,
  `Oil_Filter` text,
  `Air_Filter` text,
  `Coolant` text,
  `Fuel_Filter` text,
  `Service_Charge` text,
  `Spark_Plug` text,
  `Brake_Clutch_Oil` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `partchange` */

/*Table structure for table `price_graph` */

DROP TABLE IF EXISTS `price_graph`;

CREATE TABLE `price_graph` (
  `name` text,
  `price` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `price_graph` */

/*Table structure for table `pricing` */

DROP TABLE IF EXISTS `pricing`;

CREATE TABLE `pricing` (
  `cardid` text,
  `company` text,
  `variant` text,
  `type` text,
  `showroomprice` text,
  `rto` text,
  `Insurance` text,
  `image` longblob,
  `sid` text,
  `sname` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pricing` */

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `carid` text,
  `service` text,
  `total` text,
  `kms` text,
  `month` text,
  `FreeorPaid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service` */

/*Table structure for table `service_center` */

DROP TABLE IF EXISTS `service_center`;

CREATE TABLE `service_center` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `service_center` */

/*Table structure for table `service_graph` */

DROP TABLE IF EXISTS `service_graph`;

CREATE TABLE `service_graph` (
  `name` text,
  `count` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `service_graph` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `email` text,
  `mobile` text,
  `address` text,
  `username` text,
  `password` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
