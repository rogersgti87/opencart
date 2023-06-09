/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.30 : Database - opencart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`opencart` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `opencart`;

/*Table structure for table `oc_address` */

DROP TABLE IF EXISTS `oc_address`;

CREATE TABLE `oc_address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_address` */

insert  into `oc_address`(`address_id`,`customer_id`,`firstname`,`lastname`,`company`,`address_1`,`address_2`,`city`,`postcode`,`country_id`,`zone_id`,`custom_field`) values 
(1,1,'ROGER','SOARES GUIMARÃES','REFERENCIA','RUA GILDO TORRES','JARDIM ESPERANÇA','CABO FRIO','28920-280',30,458,'{\"3\":\"22\",\"9\":\"COMPLEMENTO\"}');

/*Table structure for table `oc_api` */

DROP TABLE IF EXISTS `oc_api`;

CREATE TABLE `oc_api` (
  `api_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_api` */

insert  into `oc_api`(`api_id`,`username`,`key`,`status`,`date_added`,`date_modified`) values 
(1,'Default','EROUSriqBMVliBSIELlKerO6bGpqMdeNjbSre0Pe5nJY3chZqOAeCmJO8jXiYJXQcvIdWKwImEESMkVH1hDbvqjDz5lyd27bWMfAkp6eFZbjtOKJeTKa3vf3fRm0s7t9Ofzj8qjaN5YSVuOKmRDQ2DGfdif5FeaGn1MemrLLo8OmmZ0UTzqpQkgc4hyuSqHpsEuEtVbl8TvAkQm0Qiw5YsKRgUD5O9XebF2KH0MQx2SbvD47Oy5dHSk4yrvG0Ctd',1,'2022-08-19 21:44:29','2022-08-19 21:44:29');

/*Table structure for table `oc_api_ip` */

DROP TABLE IF EXISTS `oc_api_ip`;

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int NOT NULL AUTO_INCREMENT,
  `api_id` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_api_ip` */

/*Table structure for table `oc_api_session` */

DROP TABLE IF EXISTS `oc_api_session`;

CREATE TABLE `oc_api_session` (
  `api_session_id` int NOT NULL AUTO_INCREMENT,
  `api_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_api_session` */

/*Table structure for table `oc_attribute` */

DROP TABLE IF EXISTS `oc_attribute`;

CREATE TABLE `oc_attribute` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_attribute` */

/*Table structure for table `oc_attribute_description` */

DROP TABLE IF EXISTS `oc_attribute_description`;

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_attribute_description` */

/*Table structure for table `oc_attribute_group` */

DROP TABLE IF EXISTS `oc_attribute_group`;

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int NOT NULL AUTO_INCREMENT,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_attribute_group` */

/*Table structure for table `oc_attribute_group_description` */

DROP TABLE IF EXISTS `oc_attribute_group_description`;

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_attribute_group_description` */

/*Table structure for table `oc_banner` */

DROP TABLE IF EXISTS `oc_banner`;

CREATE TABLE `oc_banner` (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_banner` */

insert  into `oc_banner`(`banner_id`,`name`,`status`) values 
(6,'HP Products',1),
(7,'Home Page Slideshow',1),
(8,'Manufacturers',1);

/*Table structure for table `oc_banner_image` */

DROP TABLE IF EXISTS `oc_banner_image`;

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int NOT NULL AUTO_INCREMENT,
  `banner_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_banner_image` */

insert  into `oc_banner_image`(`banner_image_id`,`banner_id`,`language_id`,`title`,`link`,`image`,`sort_order`) values 
(79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),
(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),
(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),
(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),
(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),
(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),
(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),
(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),
(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),
(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),
(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),
(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),
(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),
(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),
(99,7,2,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),
(100,6,2,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),
(101,8,2,'NFL','','catalog/demo/manufacturer/nfl.png',0),
(102,8,2,'RedBull','','catalog/demo/manufacturer/redbull.png',0),
(103,8,2,'Sony','','catalog/demo/manufacturer/sony.png',0),
(104,8,2,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),
(105,8,2,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),
(106,8,2,'Canon','','catalog/demo/manufacturer/canon.png',0),
(107,8,2,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),
(108,8,2,'Dell','','catalog/demo/manufacturer/dell.png',0),
(109,8,2,'Disney','','catalog/demo/manufacturer/disney.png',0),
(110,7,2,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),
(111,8,2,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),
(112,8,2,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);

/*Table structure for table `oc_cart` */

DROP TABLE IF EXISTS `oc_cart`;

CREATE TABLE `oc_cart` (
  `cart_id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `option` text NOT NULL,
  `quantity` int NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_cart` */

insert  into `oc_cart`(`cart_id`,`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`,`option`,`quantity`,`date_added`) values 
(19,0,0,'c5972edb2e66cfb8a83343e0e1',42,0,'[]',1,'2023-06-09 16:37:30');

/*Table structure for table `oc_category` */

DROP TABLE IF EXISTS `oc_category`;

CREATE TABLE `oc_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category` */

insert  into `oc_category`(`category_id`,`image`,`parent_id`,`top`,`column`,`sort_order`,`status`,`date_added`,`date_modified`) values 
(20,'catalog/demo/compaq_presario.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2011-07-16 02:14:42');

/*Table structure for table `oc_category_description` */

DROP TABLE IF EXISTS `oc_category_description`;

CREATE TABLE `oc_category_description` (
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category_description` */

insert  into `oc_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values 
(20,1,'Desktops','&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n','Desktops','Example of category description',''),
(20,2,'Desktops','&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n','Desktops','Example of category description','');

/*Table structure for table `oc_category_filter` */

DROP TABLE IF EXISTS `oc_category_filter`;

CREATE TABLE `oc_category_filter` (
  `category_id` int NOT NULL,
  `filter_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category_filter` */

/*Table structure for table `oc_category_path` */

DROP TABLE IF EXISTS `oc_category_path`;

CREATE TABLE `oc_category_path` (
  `category_id` int NOT NULL,
  `path_id` int NOT NULL,
  `level` int NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category_path` */

insert  into `oc_category_path`(`category_id`,`path_id`,`level`) values 
(20,20,0);

/*Table structure for table `oc_category_to_layout` */

DROP TABLE IF EXISTS `oc_category_to_layout`;

CREATE TABLE `oc_category_to_layout` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category_to_layout` */

/*Table structure for table `oc_category_to_store` */

DROP TABLE IF EXISTS `oc_category_to_store`;

CREATE TABLE `oc_category_to_store` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_category_to_store` */

insert  into `oc_category_to_store`(`category_id`,`store_id`) values 
(20,0);

/*Table structure for table `oc_country` */

DROP TABLE IF EXISTS `oc_country`;

CREATE TABLE `oc_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_country` */

insert  into `oc_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values 
(30,'Brazil','BR','BRA','{firstname} {lastname}\r\n{custom_field_1} {custom_field_2}\r\n{company}\r\n{custom_field_4}\r\n{address_1}, {custom_field_3}\r\n{address_2}\r\n{custom_field_9}\r\n{postcode}\r\n {city} / {zone}\r\n{country}',1,1);

/*Table structure for table `oc_coupon` */

DROP TABLE IF EXISTS `oc_coupon`;

CREATE TABLE `oc_coupon` (
  `coupon_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_coupon` */

insert  into `oc_coupon`(`coupon_id`,`name`,`code`,`type`,`discount`,`logged`,`shipping`,`total`,`date_start`,`date_end`,`uses_total`,`uses_customer`,`status`,`date_added`) values 
(4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),
(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),
(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');

/*Table structure for table `oc_coupon_category` */

DROP TABLE IF EXISTS `oc_coupon_category`;

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_coupon_category` */

/*Table structure for table `oc_coupon_history` */

DROP TABLE IF EXISTS `oc_coupon_history`;

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_coupon_history` */

/*Table structure for table `oc_coupon_product` */

DROP TABLE IF EXISTS `oc_coupon_product`;

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_coupon_product` */

/*Table structure for table `oc_currency` */

DROP TABLE IF EXISTS `oc_currency`;

CREATE TABLE `oc_currency` (
  `currency_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_currency` */

insert  into `oc_currency`(`currency_id`,`title`,`code`,`symbol_left`,`symbol_right`,`decimal_place`,`value`,`status`,`date_modified`) values 
(4,'Real','BRL','R$','','2',1.00000000,1,'2022-08-19 22:23:49');

/*Table structure for table `oc_custom_field` */

DROP TABLE IF EXISTS `oc_custom_field`;

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_custom_field` */

insert  into `oc_custom_field`(`custom_field_id`,`type`,`value`,`validation`,`location`,`status`,`sort_order`) values 
(1,'text','','','account',1,2),
(2,'text','','','account',1,2),
(3,'text','','','address',1,2),
(4,'text','','','account',1,1),
(5,'text','','','account',1,3),
(6,'text','','','account',1,9),
(7,'text','','','account',1,8),
(8,'select','','','account',1,3),
(9,'text','','','address',1,8);

/*Table structure for table `oc_custom_field_customer_group` */

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_custom_field_customer_group` */

insert  into `oc_custom_field_customer_group`(`custom_field_id`,`customer_group_id`,`required`) values 
(1,1,1),
(2,2,1),
(3,1,1),
(3,2,1),
(4,2,1),
(5,2,0),
(6,1,1),
(7,1,1),
(7,2,1),
(8,1,1),
(9,2,0),
(9,1,0);

/*Table structure for table `oc_custom_field_description` */

DROP TABLE IF EXISTS `oc_custom_field_description`;

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_custom_field_description` */

insert  into `oc_custom_field_description`(`custom_field_id`,`language_id`,`name`) values 
(1,2,'CPF'),
(2,2,'CNPJ'),
(3,2,'Número'),
(4,2,'Razão Social'),
(5,2,'Inscrição Estadual'),
(6,2,'Data de Nascimento'),
(7,2,'Celular'),
(8,2,'Sexo'),
(9,2,'Complemento');

/*Table structure for table `oc_custom_field_value` */

DROP TABLE IF EXISTS `oc_custom_field_value`;

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int NOT NULL AUTO_INCREMENT,
  `custom_field_id` int NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_custom_field_value` */

insert  into `oc_custom_field_value`(`custom_field_value_id`,`custom_field_id`,`sort_order`) values 
(2,8,2),
(1,8,1);

/*Table structure for table `oc_custom_field_value_description` */

DROP TABLE IF EXISTS `oc_custom_field_value_description`;

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_custom_field_value_description` */

insert  into `oc_custom_field_value_description`(`custom_field_value_id`,`language_id`,`custom_field_id`,`name`) values 
(2,2,8,'F'),
(1,2,8,'M');

/*Table structure for table `oc_customer` */

DROP TABLE IF EXISTS `oc_customer`;

CREATE TABLE `oc_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_group_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer` */

insert  into `oc_customer`(`customer_id`,`customer_group_id`,`store_id`,`language_id`,`firstname`,`lastname`,`email`,`telephone`,`fax`,`password`,`salt`,`cart`,`wishlist`,`newsletter`,`address_id`,`custom_field`,`ip`,`status`,`safe`,`token`,`code`,`date_added`) values 
(3,1,0,2,'ROGER','SOARES GUIMARÃES','rogersgti87@gmail.com','(22) 98828-0129','','ac0d3345a6a0527b8de6eb40362fe62932535a0c','rGe6rD5y3',NULL,NULL,0,0,'{\"4\":\"\",\"2\":\"\",\"8\":\"1\",\"5\":\"\",\"1\":\"119.761.027-82\",\"7\":\"(22) 98828-0129\",\"6\":\"17\\/10\\/1987\"}','127.0.0.1',1,0,'','','2023-06-09 16:52:05');

/*Table structure for table `oc_customer_activity` */

DROP TABLE IF EXISTS `oc_customer_activity`;

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_activity` */

/*Table structure for table `oc_customer_affiliate` */

DROP TABLE IF EXISTS `oc_customer_affiliate`;

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_affiliate` */

/*Table structure for table `oc_customer_approval` */

DROP TABLE IF EXISTS `oc_customer_approval`;

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_approval` */

/*Table structure for table `oc_customer_group` */

DROP TABLE IF EXISTS `oc_customer_group`;

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int NOT NULL AUTO_INCREMENT,
  `approval` int NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_group` */

insert  into `oc_customer_group`(`customer_group_id`,`approval`,`sort_order`) values 
(1,0,1),
(2,0,2);

/*Table structure for table `oc_customer_group_description` */

DROP TABLE IF EXISTS `oc_customer_group_description`;

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_group_description` */

insert  into `oc_customer_group_description`(`customer_group_id`,`language_id`,`name`,`description`) values 
(1,2,'Pessoa Física','Pessoa Física'),
(2,2,'Pessoa Jurídica','Pessoa Jurídica');

/*Table structure for table `oc_customer_history` */

DROP TABLE IF EXISTS `oc_customer_history`;

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_history` */

/*Table structure for table `oc_customer_ip` */

DROP TABLE IF EXISTS `oc_customer_ip`;

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_ip` */

/*Table structure for table `oc_customer_login` */

DROP TABLE IF EXISTS `oc_customer_login`;

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_login` */

/*Table structure for table `oc_customer_online` */

DROP TABLE IF EXISTS `oc_customer_online`;

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_online` */

insert  into `oc_customer_online`(`ip`,`customer_id`,`url`,`referer`,`date_added`) values 
('127.0.0.1',0,'http://opencart.local:8090/conta/cadastro','http://opencart.local:8090/','2023-06-09 16:51:38');

/*Table structure for table `oc_customer_reward` */

DROP TABLE IF EXISTS `oc_customer_reward`;

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_reward` */

/*Table structure for table `oc_customer_search` */

DROP TABLE IF EXISTS `oc_customer_search`;

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_search` */

/*Table structure for table `oc_customer_transaction` */

DROP TABLE IF EXISTS `oc_customer_transaction`;

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_transaction` */

/*Table structure for table `oc_customer_wishlist` */

DROP TABLE IF EXISTS `oc_customer_wishlist`;

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_customer_wishlist` */

/*Table structure for table `oc_download` */

DROP TABLE IF EXISTS `oc_download`;

CREATE TABLE `oc_download` (
  `download_id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_download` */

/*Table structure for table `oc_download_description` */

DROP TABLE IF EXISTS `oc_download_description`;

CREATE TABLE `oc_download_description` (
  `download_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_download_description` */

/*Table structure for table `oc_event` */

DROP TABLE IF EXISTS `oc_event`;

CREATE TABLE `oc_event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_event` */

insert  into `oc_event`(`event_id`,`code`,`trigger`,`action`,`status`,`sort_order`) values 
(1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),
(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),
(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),
(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),
(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),
(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),
(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),
(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),
(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),
(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),
(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),
(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),
(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),
(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),
(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),
(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),
(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),
(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),
(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),
(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),
(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),
(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),
(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),
(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),
(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),
(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),
(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),
(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),
(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),
(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),
(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),
(32,'admin_mail_return','admin/model/sale/return/addReturnHistory/after','mail/return',1,0),
(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),
(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),
(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),
(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),
(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),
(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),
(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),
(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),
(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),
(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),
(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),
(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),
(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0);

/*Table structure for table `oc_extension` */

DROP TABLE IF EXISTS `oc_extension`;

CREATE TABLE `oc_extension` (
  `extension_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_extension` */

insert  into `oc_extension`(`extension_id`,`type`,`code`) values 
(49,'payment','cartao'),
(2,'total','shipping'),
(3,'total','sub_total'),
(4,'total','tax'),
(5,'total','total'),
(8,'total','credit'),
(9,'shipping','flat'),
(10,'total','handling'),
(11,'total','low_order_fee'),
(12,'total','coupon'),
(13,'module','category'),
(14,'module','account'),
(15,'total','reward'),
(16,'total','voucher'),
(17,'payment','free_checkout'),
(18,'module','featured'),
(20,'theme','default'),
(21,'dashboard','activity'),
(22,'dashboard','sale'),
(23,'dashboard','recent'),
(24,'dashboard','order'),
(25,'dashboard','online'),
(26,'dashboard','map'),
(27,'dashboard','customer'),
(28,'dashboard','chart'),
(29,'report','sale_coupon'),
(31,'report','customer_search'),
(32,'report','customer_transaction'),
(33,'report','product_purchased'),
(34,'report','product_viewed'),
(35,'report','sale_return'),
(36,'report','sale_order'),
(37,'report','sale_shipping'),
(38,'report','sale_tax'),
(39,'report','customer_activity'),
(40,'report','customer_order'),
(41,'report','customer_reward'),
(42,'advertise','google'),
(43,'module','validacao'),
(44,'module','sendpulse'),
(45,'module','parcelamento'),
(46,'module','latest'),
(47,'shipping','faixa_cep'),
(50,'payment','cod');

/*Table structure for table `oc_extension_install` */

DROP TABLE IF EXISTS `oc_extension_install`;

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int NOT NULL AUTO_INCREMENT,
  `extension_download_id` int NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_extension_install` */

/*Table structure for table `oc_extension_path` */

DROP TABLE IF EXISTS `oc_extension_path`;

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int NOT NULL AUTO_INCREMENT,
  `extension_install_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_extension_path` */

/*Table structure for table `oc_filter` */

DROP TABLE IF EXISTS `oc_filter`;

CREATE TABLE `oc_filter` (
  `filter_id` int NOT NULL AUTO_INCREMENT,
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_filter` */

/*Table structure for table `oc_filter_description` */

DROP TABLE IF EXISTS `oc_filter_description`;

CREATE TABLE `oc_filter_description` (
  `filter_id` int NOT NULL,
  `language_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_filter_description` */

/*Table structure for table `oc_filter_group` */

DROP TABLE IF EXISTS `oc_filter_group`;

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int NOT NULL AUTO_INCREMENT,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_filter_group` */

/*Table structure for table `oc_filter_group_description` */

DROP TABLE IF EXISTS `oc_filter_group_description`;

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_filter_group_description` */

/*Table structure for table `oc_geo_zone` */

DROP TABLE IF EXISTS `oc_geo_zone`;

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_geo_zone` */

insert  into `oc_geo_zone`(`geo_zone_id`,`name`,`description`,`date_added`,`date_modified`) values 
(3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),
(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');

/*Table structure for table `oc_googleshopping_category` */

DROP TABLE IF EXISTS `oc_googleshopping_category`;

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_googleshopping_category` */

/*Table structure for table `oc_googleshopping_product` */

DROP TABLE IF EXISTS `oc_googleshopping_product`;

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `conversions` int NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_googleshopping_product` */

insert  into `oc_googleshopping_product`(`product_advertise_google_id`,`product_id`,`store_id`,`has_issues`,`destination_status`,`impressions`,`clicks`,`conversions`,`cost`,`conversion_value`,`google_product_category`,`condition`,`adult`,`multipack`,`is_bundle`,`age_group`,`color`,`gender`,`size_type`,`size_system`,`size`,`is_modified`) values 
(1,50,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);

/*Table structure for table `oc_googleshopping_product_status` */

DROP TABLE IF EXISTS `oc_googleshopping_product_status`;

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int NOT NULL DEFAULT '0',
  `store_id` int NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_googleshopping_product_status` */

/*Table structure for table `oc_googleshopping_product_target` */

DROP TABLE IF EXISTS `oc_googleshopping_product_target`;

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `advertise_google_target_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_googleshopping_product_target` */

/*Table structure for table `oc_googleshopping_target` */

DROP TABLE IF EXISTS `oc_googleshopping_target`;

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int unsigned NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_googleshopping_target` */

/*Table structure for table `oc_information` */

DROP TABLE IF EXISTS `oc_information`;

CREATE TABLE `oc_information` (
  `information_id` int NOT NULL AUTO_INCREMENT,
  `bottom` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_information` */

insert  into `oc_information`(`information_id`,`bottom`,`sort_order`,`status`) values 
(3,1,3,1),
(4,1,1,1),
(5,1,4,1),
(6,1,2,1);

/*Table structure for table `oc_information_description` */

DROP TABLE IF EXISTS `oc_information_description`;

CREATE TABLE `oc_information_description` (
  `information_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_information_description` */

insert  into `oc_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values 
(4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),
(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),
(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),
(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','',''),
(4,2,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),
(5,2,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),
(3,2,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),
(6,2,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');

/*Table structure for table `oc_information_to_layout` */

DROP TABLE IF EXISTS `oc_information_to_layout`;

CREATE TABLE `oc_information_to_layout` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_information_to_layout` */

/*Table structure for table `oc_information_to_store` */

DROP TABLE IF EXISTS `oc_information_to_store`;

CREATE TABLE `oc_information_to_store` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_information_to_store` */

insert  into `oc_information_to_store`(`information_id`,`store_id`) values 
(3,0),
(4,0),
(5,0),
(6,0);

/*Table structure for table `oc_language` */

DROP TABLE IF EXISTS `oc_language`;

CREATE TABLE `oc_language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_language` */

insert  into `oc_language`(`language_id`,`name`,`code`,`locale`,`image`,`directory`,`sort_order`,`status`) values 
(2,'Português','pt-br','pt-BR,pt_BR.UTF-8,pt_BR,pt-br,portuguese','pt-br.png','pt-br',1,1);

/*Table structure for table `oc_layout` */

DROP TABLE IF EXISTS `oc_layout`;

CREATE TABLE `oc_layout` (
  `layout_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_layout` */

insert  into `oc_layout`(`layout_id`,`name`) values 
(1,'Home'),
(2,'Product'),
(3,'Category'),
(4,'Default'),
(5,'Manufacturer'),
(6,'Account'),
(7,'Checkout'),
(8,'Contact'),
(9,'Sitemap'),
(10,'Affiliate'),
(11,'Information'),
(12,'Compare'),
(13,'Search');

/*Table structure for table `oc_layout_module` */

DROP TABLE IF EXISTS `oc_layout_module`;

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int NOT NULL AUTO_INCREMENT,
  `layout_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_layout_module` */

insert  into `oc_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values 
(2,4,'0','content_top',0),
(3,4,'0','content_top',1),
(20,5,'0','column_left',2),
(69,10,'account','column_right',1),
(68,6,'account','column_right',1),
(74,1,'featured.28','content_top',2),
(72,3,'category','column_left',1);

/*Table structure for table `oc_layout_route` */

DROP TABLE IF EXISTS `oc_layout_route`;

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int NOT NULL AUTO_INCREMENT,
  `layout_id` int NOT NULL,
  `store_id` int NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_layout_route` */

insert  into `oc_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values 
(38,6,0,'account/%'),
(17,10,0,'affiliate/%'),
(44,3,0,'product/category'),
(55,1,0,'common/home'),
(20,2,0,'product/product'),
(24,11,0,'information/information'),
(23,7,0,'checkout/%'),
(31,8,0,'information/contact'),
(32,9,0,'information/sitemap'),
(34,4,0,''),
(45,5,0,'product/manufacturer'),
(52,12,0,'product/compare'),
(54,13,0,'product/search');

/*Table structure for table `oc_length_class` */

DROP TABLE IF EXISTS `oc_length_class`;

CREATE TABLE `oc_length_class` (
  `length_class_id` int NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_length_class` */

insert  into `oc_length_class`(`length_class_id`,`value`) values 
(1,1.00000000),
(2,10.00000000),
(3,0.39370000);

/*Table structure for table `oc_length_class_description` */

DROP TABLE IF EXISTS `oc_length_class_description`;

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_length_class_description` */

insert  into `oc_length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values 
(1,2,'Centímetro','cm'),
(2,2,'Milímetro','mm'),
(3,2,'Polegada','in'),
(1,1,'Centimeter','cm'),
(2,1,'Millimeter','mm'),
(3,1,'Inch','in');

/*Table structure for table `oc_location` */

DROP TABLE IF EXISTS `oc_location`;

CREATE TABLE `oc_location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_location` */

/*Table structure for table `oc_manufacturer` */

DROP TABLE IF EXISTS `oc_manufacturer`;

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_manufacturer` */

insert  into `oc_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values 
(8,'Apple','catalog/demo/apple_logo.jpg',0);

/*Table structure for table `oc_manufacturer_to_store` */

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_manufacturer_to_store` */

insert  into `oc_manufacturer_to_store`(`manufacturer_id`,`store_id`) values 
(8,0);

/*Table structure for table `oc_marketing` */

DROP TABLE IF EXISTS `oc_marketing`;

CREATE TABLE `oc_marketing` (
  `marketing_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_marketing` */

/*Table structure for table `oc_modification` */

DROP TABLE IF EXISTS `oc_modification`;

CREATE TABLE `oc_modification` (
  `modification_id` int NOT NULL AUTO_INCREMENT,
  `extension_install_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_modification` */

/*Table structure for table `oc_module` */

DROP TABLE IF EXISTS `oc_module`;

CREATE TABLE `oc_module` (
  `module_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_module` */

insert  into `oc_module`(`module_id`,`name`,`code`,`setting`) values 
(28,'Home Page','featured','{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"42\",\"50\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(32,'Produtos novos','latest','{\"name\":\"Produtos novos\",\"limit\":\"6\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

/*Table structure for table `oc_option` */

DROP TABLE IF EXISTS `oc_option`;

CREATE TABLE `oc_option` (
  `option_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_option` */

/*Table structure for table `oc_option_description` */

DROP TABLE IF EXISTS `oc_option_description`;

CREATE TABLE `oc_option_description` (
  `option_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_option_description` */

/*Table structure for table `oc_option_value` */

DROP TABLE IF EXISTS `oc_option_value`;

CREATE TABLE `oc_option_value` (
  `option_value_id` int NOT NULL AUTO_INCREMENT,
  `option_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_option_value` */

/*Table structure for table `oc_option_value_description` */

DROP TABLE IF EXISTS `oc_option_value_description`;

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `option_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_option_value_description` */

/*Table structure for table `oc_order` */

DROP TABLE IF EXISTS `oc_order`;

CREATE TABLE `oc_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` int NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int NOT NULL DEFAULT '0',
  `affiliate_id` int NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order` */

/*Table structure for table `oc_order_history` */

DROP TABLE IF EXISTS `oc_order_history`;

CREATE TABLE `oc_order_history` (
  `order_history_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_history` */

/*Table structure for table `oc_order_option` */

DROP TABLE IF EXISTS `oc_order_option`;

CREATE TABLE `oc_order_option` (
  `order_option_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_option_value_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_option` */

/*Table structure for table `oc_order_product` */

DROP TABLE IF EXISTS `oc_order_product`;

CREATE TABLE `oc_order_product` (
  `order_product_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_product` */

/*Table structure for table `oc_order_recurring` */

DROP TABLE IF EXISTS `oc_order_recurring`;

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int NOT NULL,
  `recurring_id` int NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint NOT NULL,
  `recurring_duration` smallint NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint NOT NULL,
  `trial_duration` smallint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_recurring` */

/*Table structure for table `oc_order_recurring_transaction` */

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_recurring_transaction` */

/*Table structure for table `oc_order_shipment` */

DROP TABLE IF EXISTS `oc_order_shipment`;

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_shipment` */

/*Table structure for table `oc_order_status` */

DROP TABLE IF EXISTS `oc_order_status`;

CREATE TABLE `oc_order_status` (
  `order_status_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_status` */

/*Table structure for table `oc_order_total` */

DROP TABLE IF EXISTS `oc_order_total`;

CREATE TABLE `oc_order_total` (
  `order_total_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_total` */

/*Table structure for table `oc_order_voucher` */

DROP TABLE IF EXISTS `oc_order_voucher`;

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_order_voucher` */

/*Table structure for table `oc_product` */

DROP TABLE IF EXISTS `oc_product`;

CREATE TABLE `oc_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `stock_status_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int NOT NULL DEFAULT '0',
  `tax_class_id` int NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product` */

insert  into `oc_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values 
(42,'Product 15','','','','','','','',989,5,'catalog/demo/apple_cinema_30.jpg',8,1,100.0000,400,0,'2009-02-04',0.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,60,'2009-02-03 21:07:37','2022-08-21 15:16:08'),
(50,'Product 15','1234567890123','','','','','','',989,5,'catalog/demo/apple_cinema_30.jpg',8,1,159.0000,400,0,'2009-02-04',0.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,18,'2009-02-03 21:07:37','2023-06-07 14:37:28');

/*Table structure for table `oc_product_attribute` */

DROP TABLE IF EXISTS `oc_product_attribute`;

CREATE TABLE `oc_product_attribute` (
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_attribute` */

/*Table structure for table `oc_product_description` */

DROP TABLE IF EXISTS `oc_product_description`;

CREATE TABLE `oc_product_description` (
  `product_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_description` */

insert  into `oc_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values 
(50,2,'Apple Cinema 30 teste 2','&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Apple Cinema 30','',''),
(42,2,'Apple Cinema 30&quot;','&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Apple Cinema 30','','');

/*Table structure for table `oc_product_discount` */

DROP TABLE IF EXISTS `oc_product_discount`;

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_discount` */

/*Table structure for table `oc_product_filter` */

DROP TABLE IF EXISTS `oc_product_filter`;

CREATE TABLE `oc_product_filter` (
  `product_id` int NOT NULL,
  `filter_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_filter` */

/*Table structure for table `oc_product_image` */

DROP TABLE IF EXISTS `oc_product_image`;

CREATE TABLE `oc_product_image` (
  `product_image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2392 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_image` */

insert  into `oc_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values 
(2387,50,'catalog/demo/compaq_presario.jpg',0),
(2366,42,'catalog/demo/canon_eos_5d_2.jpg',0),
(2390,50,'catalog/demo/canon_logo.jpg',0),
(2389,50,'catalog/demo/canon_eos_5d_2.jpg',0),
(2388,50,'catalog/demo/canon_eos_5d_1.jpg',0),
(2365,42,'catalog/demo/canon_eos_5d_1.jpg',0),
(2364,42,'catalog/demo/compaq_presario.jpg',0),
(2363,42,'catalog/demo/hp_1.jpg',0),
(2362,42,'catalog/demo/canon_logo.jpg',0),
(2391,50,'catalog/demo/hp_1.jpg',0);

/*Table structure for table `oc_product_option` */

DROP TABLE IF EXISTS `oc_product_option`;

CREATE TABLE `oc_product_option` (
  `product_option_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_option` */

/*Table structure for table `oc_product_option_value` */

DROP TABLE IF EXISTS `oc_product_option_value`;

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int NOT NULL AUTO_INCREMENT,
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  `quantity` int NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_option_value` */

/*Table structure for table `oc_product_recurring` */

DROP TABLE IF EXISTS `oc_product_recurring`;

CREATE TABLE `oc_product_recurring` (
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_recurring` */

/*Table structure for table `oc_product_related` */

DROP TABLE IF EXISTS `oc_product_related`;

CREATE TABLE `oc_product_related` (
  `product_id` int NOT NULL,
  `related_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_related` */

/*Table structure for table `oc_product_reward` */

DROP TABLE IF EXISTS `oc_product_reward`;

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `points` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=554 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_reward` */

insert  into `oc_product_reward`(`product_reward_id`,`product_id`,`customer_group_id`,`points`) values 
(548,42,1,100),
(553,50,1,100);

/*Table structure for table `oc_product_special` */

DROP TABLE IF EXISTS `oc_product_special`;

CREATE TABLE `oc_product_special` (
  `product_special_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=446 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_special` */

insert  into `oc_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values 
(445,50,1,1,119.9900,'2023-06-07','2033-06-07'),
(444,50,2,1,119.9900,'2023-06-07','2033-06-07');

/*Table structure for table `oc_product_to_category` */

DROP TABLE IF EXISTS `oc_product_to_category`;

CREATE TABLE `oc_product_to_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_to_category` */

insert  into `oc_product_to_category`(`product_id`,`category_id`) values 
(42,20),
(50,20);

/*Table structure for table `oc_product_to_download` */

DROP TABLE IF EXISTS `oc_product_to_download`;

CREATE TABLE `oc_product_to_download` (
  `product_id` int NOT NULL,
  `download_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_to_download` */

/*Table structure for table `oc_product_to_layout` */

DROP TABLE IF EXISTS `oc_product_to_layout`;

CREATE TABLE `oc_product_to_layout` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_to_layout` */

insert  into `oc_product_to_layout`(`product_id`,`store_id`,`layout_id`) values 
(42,0,0),
(50,0,0);

/*Table structure for table `oc_product_to_store` */

DROP TABLE IF EXISTS `oc_product_to_store`;

CREATE TABLE `oc_product_to_store` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_product_to_store` */

insert  into `oc_product_to_store`(`product_id`,`store_id`) values 
(42,0),
(50,0);

/*Table structure for table `oc_recurring` */

DROP TABLE IF EXISTS `oc_recurring`;

CREATE TABLE `oc_recurring` (
  `recurring_id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int unsigned NOT NULL,
  `cycle` int unsigned NOT NULL,
  `trial_status` tinyint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int unsigned NOT NULL,
  `trial_cycle` int unsigned NOT NULL,
  `status` tinyint NOT NULL,
  `sort_order` int NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_recurring` */

/*Table structure for table `oc_recurring_description` */

DROP TABLE IF EXISTS `oc_recurring_description`;

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_recurring_description` */

/*Table structure for table `oc_return` */

DROP TABLE IF EXISTS `oc_return`;

CREATE TABLE `oc_return` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int NOT NULL,
  `return_action_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_return` */

/*Table structure for table `oc_return_action` */

DROP TABLE IF EXISTS `oc_return_action`;

CREATE TABLE `oc_return_action` (
  `return_action_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_return_action` */

insert  into `oc_return_action`(`return_action_id`,`language_id`,`name`) values 
(1,2,'Reembolsado'),
(2,2,'Crédito Emitido'),
(3,2,'Envio de Substituição'),
(1,1,'Refunded'),
(2,1,'Credit Issued'),
(3,1,'Replacement Sent');

/*Table structure for table `oc_return_history` */

DROP TABLE IF EXISTS `oc_return_history`;

CREATE TABLE `oc_return_history` (
  `return_history_id` int NOT NULL AUTO_INCREMENT,
  `return_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_return_history` */

/*Table structure for table `oc_return_reason` */

DROP TABLE IF EXISTS `oc_return_reason`;

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_return_reason` */

insert  into `oc_return_reason`(`return_reason_id`,`language_id`,`name`) values 
(1,2,'Chegou quebrado'),
(2,2,'Produto trocado'),
(3,2,'Erro no pedido'),
(4,2,'Defeito, forneça detalhes'),
(5,2,'Outros, forneça detalhes'),
(1,1,'Dead On Arrival'),
(2,1,'Received Wrong Item'),
(3,1,'Order Error'),
(4,1,'Faulty, please supply details'),
(5,1,'Other, please supply details');

/*Table structure for table `oc_return_status` */

DROP TABLE IF EXISTS `oc_return_status`;

CREATE TABLE `oc_return_status` (
  `return_status_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_return_status` */

insert  into `oc_return_status`(`return_status_id`,`language_id`,`name`) values 
(1,2,'Pendente '),
(3,2,'Completa'),
(2,2,'Aguardando Produtos'),
(1,1,'Pending'),
(3,1,'Complete'),
(2,1,'Awaiting Products');

/*Table structure for table `oc_review` */

DROP TABLE IF EXISTS `oc_review`;

CREATE TABLE `oc_review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_review` */

/*Table structure for table `oc_seo_url` */

DROP TABLE IF EXISTS `oc_seo_url`;

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=850 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_seo_url` */

insert  into `oc_seo_url`(`seo_url_id`,`store_id`,`language_id`,`query`,`keyword`) values 
(849,0,2,'product_id=50','apple-cinema-30-teste-2'),
(845,0,2,'product_id=42','apple-cinema-30');

/*Table structure for table `oc_session` */

DROP TABLE IF EXISTS `oc_session`;

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_session` */

insert  into `oc_session`(`session_id`,`data`,`expire`) values 
('92165dc8b1aff8fe8e8b4408bb','{\"language\":\"pt-br\",\"currency\":\"BRL\",\"user_id\":\"1\",\"user_token\":\"Q6kI7DZllCTWZOZLaqbYVuCZtYvx0KE4\",\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"28920-280\",\"city\":\"\",\"zone_id\":\"458\",\"zone\":\"Rio de Janeiro\",\"zone_code\":\"RJ\",\"country_id\":\"30\",\"country\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{custom_field_1} {custom_field_2}\\r\\n{company}\\r\\n{custom_field_4}\\r\\n{address_1}, {custom_field_3}\\r\\n{address_2}\\r\\n{postcode}\\r\\n {city} \\/ {zone}\\r\\n{country}\"}}','2023-06-08 01:04:50'),
('c5972edb2e66cfb8a83343e0e1','{\"user_id\":\"1\",\"user_token\":\"vby7wx4v62PP9tJ5ZspPQk8bb5j7p5K4\",\"language\":\"pt-br\",\"currency\":\"BRL\",\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"28921-000\",\"city\":\"\",\"zone_id\":\"458\",\"zone\":\"Rio de Janeiro\",\"zone_code\":\"RJ\",\"country_id\":\"30\",\"country\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{custom_field_1} {custom_field_2}\\r\\n{company}\\r\\n{custom_field_4}\\r\\n{address_1}, {custom_field_3}\\r\\n{address_2}\\r\\n{custom_field_9}\\r\\n{postcode}\\r\\n {city} \\/ {zone}\\r\\n{country}\"},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"ROGER\",\"lastname\":\"SOARES GUIMAR\\u00c3ES\",\"company\":\"REFERENCIA\",\"address_1\":\"RUA GILDO TORRES\",\"address_2\":\"JARDIM ESPERAN\\u00c7A\",\"postcode\":\"28920-280\",\"city\":\"CABO FRIO\",\"zone_id\":\"458\",\"zone\":\"Rio de Janeiro\",\"zone_code\":\"RJ\",\"country_id\":\"30\",\"country\":\"Brazil\",\"iso_code_2\":\"BR\",\"iso_code_3\":\"BRA\",\"address_format\":\"{firstname} {lastname}\\r\\n{custom_field_1} {custom_field_2}\\r\\n{company}\\r\\n{custom_field_4}\\r\\n{address_1}, {custom_field_3}\\r\\n{address_2}\\r\\n{custom_field_9}\\r\\n{postcode}\\r\\n {city} \\/ {zone}\\r\\n{country}\",\"custom_field\":{\"3\":\"22\",\"9\":\"COMPLEMENTO\"}}}','2023-06-10 02:52:05');

/*Table structure for table `oc_setting` */

DROP TABLE IF EXISTS `oc_setting`;

CREATE TABLE `oc_setting` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1059 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_setting` */

insert  into `oc_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values 
(991,0,'config','config_file_max_size','300000',0),
(986,0,'config','config_compression','0',0),
(987,0,'config','config_secure','0',0),
(988,0,'config','config_password','1',0),
(989,0,'config','config_shared','0',0),
(990,0,'config','config_encryption','BjgBXhHEztR4fF6S2DggjS1h1fhW7hrnjpLe8G6ZoswJDd66PZxKMGTmYC4XyKeONc1XlWoECmF0bJxkxxvWik3QJrZYMLS770NcEi3ksZsKsDfiQJRLuRme8ZkTVmx5ZEOZapL5KlcA7ZDoUoAmUYlO4dP8k28UtcTaaGmUFuNPOwMrZxnJwd26RI0VauviienI8SHfpLFINbWTaclJ7ZFte7SRwdizcICUAKq9Gz2OqRAMjogkG5oqJbWUzmnuvJN1aFJ9XOy50Tb6RMi0AshLrDRu6tfF3sLUO62rhqQlUpwP3RR8ub3XMuMd45KVOxCpx3ZpnXSckVUJK6cMmzshOCHAofKCTjdhs92em8PTVEijoTkNKa1ZZBPFPbZfXgmPvdOb8lxNYdwv0X4syE3ujGRL7mRMPgSdoZQuF8u7MX1BMmMOFv9o5n9DIJmwIlOM9PWP4FbH0SspwsKkdVIu4nib4b9WkrNqw1tZuXRo7HN5u1ngjNhrcL2WOzj6jsJCkS81xIppqLSTSeJduIKme6vQvvd4nGbHiy5dSqy7cYnLSOCJHluPaoWNHvuoINtUv4m6IaEAVJxg69Zw62Alfhb0bzG0dq43H4W14jjJth1LSmKsY3fK3PWNmt3gitr50pCXilty8IQVB2iND5B8G1LZs3QtzBcANQenWupbD9Fn3pryAvxwNn8ylVoW50UT8uMwG2fbSlD5Dx9v3pqBo2G2hSALrRlccS2MeJORNKQtH4qhHuyJ6Vyu4tOUyzLoLwhA5z2hJDrY4QizjulgwtdNYrNaYPAj5lLLbdO2arMuDgLUfcM4bZUHJV0Acee24TAH6zZGqVsezu4Gb6HGmKrsKgXgvkUsj2vrRyrcVjU7XbQEt557tOAiSAlG9Ufictz8XXwuk1OTxtEnG8cNEOEegUAROTLaDC3HDNfRMG61Ux8I1hlISDdb5PctxIyeRmzPQ8SE0veXbWh1qcW2nV4DCkSvmgl28ZJ5jSFV7o9YTPST913jDEErLD3z',0),
(1037,0,'module_validacao','module_validacao_msg_bairro','O bairro deve ter entre 3 e 128 caracteres!',0),
(979,0,'config','config_mail_smtp_port','2525',0),
(980,0,'config','config_mail_smtp_timeout','5',0),
(981,0,'config','config_mail_alert','[\"order\"]',1),
(982,0,'config','config_mail_alert_email','',0),
(983,0,'config','config_maintenance','0',0),
(984,0,'config','config_seo_url','1',0),
(985,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),
(978,0,'config','config_mail_smtp_password','AM2qNfPsPIopOrt',0),
(976,0,'config','config_mail_smtp_hostname','smtp-pulse.com',0),
(977,0,'config','config_mail_smtp_username','contato@rogerti.com.br',0),
(975,0,'config','config_mail_parameter','',0),
(974,0,'config','config_mail_engine','smtp',0),
(973,0,'config','config_icon','catalog/cart.png',0),
(972,0,'config','config_logo','catalog/opencart-logo.png',0),
(971,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),
(970,0,'config','config_captcha','',0),
(969,0,'config','config_return_status_id','2',0),
(968,0,'config','config_return_id','0',0),
(967,0,'config','config_affiliate_id','4',0),
(966,0,'config','config_affiliate_commission','5',0),
(965,0,'config','config_affiliate_auto','0',0),
(964,0,'config','config_affiliate_approval','0',0),
(963,0,'config','config_affiliate_group_id','1',0),
(962,0,'config','config_stock_checkout','0',0),
(961,0,'config','config_stock_warning','1',0),
(960,0,'config','config_stock_display','1',0),
(959,0,'config','config_api_id','1',0),
(958,0,'config','config_fraud_status_id','7',0),
(957,0,'config','config_complete_status','[\"5\",\"3\"]',1),
(956,0,'config','config_processing_status','[\"1\",\"5\",\"3\",\"12\",\"19\",\"2\"]',1),
(955,0,'config','config_order_status_id','1',0),
(94,0,'payment_free_checkout','payment_free_checkout_status','1',0),
(95,0,'payment_free_checkout','payment_free_checkout_order_status_id','1',0),
(96,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),
(1057,0,'payment_cartao','payment_cartao_status','1',0),
(1058,0,'payment_cartao','payment_cartao_sort_order','1',0),
(1055,0,'payment_cartao','payment_cartao_order_status_id','1',0),
(102,0,'shipping_flat','shipping_flat_sort_order','1',0),
(103,0,'shipping_flat','shipping_flat_status','1',0),
(104,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),
(105,0,'shipping_flat','shipping_flat_tax_class_id','9',0),
(106,0,'shipping_flat','shipping_flat_cost','5.00',0),
(107,0,'total_shipping','total_shipping_sort_order','3',0),
(108,0,'total_sub_total','total_sub_total_sort_order','1',0),
(109,0,'total_sub_total','total_sub_total_status','1',0),
(110,0,'total_tax','total_tax_status','1',0),
(111,0,'total_total','total_total_sort_order','9',0),
(112,0,'total_total','total_total_status','1',0),
(113,0,'total_tax','total_tax_sort_order','5',0),
(114,0,'total_credit','total_credit_sort_order','7',0),
(115,0,'total_credit','total_credit_status','1',0),
(116,0,'total_reward','total_reward_sort_order','2',0),
(117,0,'total_reward','total_reward_status','1',0),
(118,0,'total_shipping','total_shipping_status','1',0),
(119,0,'total_shipping','total_shipping_estimator','1',0),
(120,0,'total_coupon','total_coupon_sort_order','4',0),
(121,0,'total_coupon','total_coupon_status','1',0),
(122,0,'total_voucher','total_voucher_sort_order','8',0),
(123,0,'total_voucher','total_voucher_status','1',0),
(124,0,'module_category','module_category_status','1',0),
(125,0,'module_account','module_account_status','1',0),
(126,0,'theme_default','theme_default_product_limit','15',0),
(127,0,'theme_default','theme_default_product_description_length','100',0),
(128,0,'theme_default','theme_default_image_thumb_width','228',0),
(129,0,'theme_default','theme_default_image_thumb_height','228',0),
(130,0,'theme_default','theme_default_image_popup_width','500',0),
(131,0,'theme_default','theme_default_image_popup_height','500',0),
(132,0,'theme_default','theme_default_image_category_width','80',0),
(133,0,'theme_default','theme_default_image_category_height','80',0),
(134,0,'theme_default','theme_default_image_product_width','228',0),
(135,0,'theme_default','theme_default_image_product_height','228',0),
(136,0,'theme_default','theme_default_image_additional_width','74',0),
(137,0,'theme_default','theme_default_image_additional_height','74',0),
(138,0,'theme_default','theme_default_image_related_width','200',0),
(139,0,'theme_default','theme_default_image_related_height','200',0),
(140,0,'theme_default','theme_default_image_compare_width','90',0),
(141,0,'theme_default','theme_default_image_compare_height','90',0),
(142,0,'theme_default','theme_default_image_wishlist_width','47',0),
(143,0,'theme_default','theme_default_image_wishlist_height','47',0),
(144,0,'theme_default','theme_default_image_cart_height','47',0),
(145,0,'theme_default','theme_default_image_cart_width','47',0),
(146,0,'theme_default','theme_default_image_location_height','50',0),
(147,0,'theme_default','theme_default_image_location_width','268',0),
(148,0,'theme_default','theme_default_directory','default',0),
(149,0,'theme_default','theme_default_status','1',0),
(150,0,'dashboard_activity','dashboard_activity_status','1',0),
(151,0,'dashboard_activity','dashboard_activity_sort_order','7',0),
(152,0,'dashboard_sale','dashboard_sale_status','1',0),
(153,0,'dashboard_sale','dashboard_sale_width','3',0),
(154,0,'dashboard_chart','dashboard_chart_status','1',0),
(155,0,'dashboard_chart','dashboard_chart_width','6',0),
(156,0,'dashboard_customer','dashboard_customer_status','1',0),
(157,0,'dashboard_customer','dashboard_customer_width','3',0),
(158,0,'dashboard_map','dashboard_map_status','1',0),
(159,0,'dashboard_map','dashboard_map_width','6',0),
(160,0,'dashboard_online','dashboard_online_status','1',0),
(161,0,'dashboard_online','dashboard_online_width','3',0),
(162,0,'dashboard_order','dashboard_order_sort_order','1',0),
(163,0,'dashboard_order','dashboard_order_status','1',0),
(164,0,'dashboard_order','dashboard_order_width','3',0),
(165,0,'dashboard_sale','dashboard_sale_sort_order','2',0),
(166,0,'dashboard_customer','dashboard_customer_sort_order','3',0),
(167,0,'dashboard_online','dashboard_online_sort_order','4',0),
(168,0,'dashboard_map','dashboard_map_sort_order','5',0),
(169,0,'dashboard_chart','dashboard_chart_sort_order','6',0),
(170,0,'dashboard_recent','dashboard_recent_status','1',0),
(171,0,'dashboard_recent','dashboard_recent_sort_order','8',0),
(172,0,'dashboard_activity','dashboard_activity_width','4',0),
(173,0,'dashboard_recent','dashboard_recent_width','8',0),
(174,0,'report_customer_activity','report_customer_activity_status','1',0),
(175,0,'report_customer_activity','report_customer_activity_sort_order','1',0),
(176,0,'report_customer_order','report_customer_order_status','1',0),
(177,0,'report_customer_order','report_customer_order_sort_order','2',0),
(178,0,'report_customer_reward','report_customer_reward_status','1',0),
(179,0,'report_customer_reward','report_customer_reward_sort_order','3',0),
(180,0,'report_customer_search','report_customer_search_sort_order','3',0),
(181,0,'report_customer_search','report_customer_search_status','1',0),
(182,0,'report_customer_transaction','report_customer_transaction_status','1',0),
(183,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),
(184,0,'report_sale_tax','report_sale_tax_status','1',0),
(185,0,'report_sale_tax','report_sale_tax_sort_order','5',0),
(186,0,'report_sale_shipping','report_sale_shipping_status','1',0),
(187,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),
(188,0,'report_sale_return','report_sale_return_status','1',0),
(189,0,'report_sale_return','report_sale_return_sort_order','7',0),
(190,0,'report_sale_order','report_sale_order_status','1',0),
(191,0,'report_sale_order','report_sale_order_sort_order','8',0),
(192,0,'report_sale_coupon','report_sale_coupon_status','1',0),
(193,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),
(194,0,'report_product_viewed','report_product_viewed_status','1',0),
(195,0,'report_product_viewed','report_product_viewed_sort_order','10',0),
(196,0,'report_product_purchased','report_product_purchased_status','1',0),
(197,0,'report_product_purchased','report_product_purchased_sort_order','11',0),
(198,0,'report_marketing','report_marketing_status','1',0),
(199,0,'report_marketing','report_marketing_sort_order','12',0),
(863,0,'developer','developer_sass','0',0),
(954,0,'config','config_checkout_id','5',0),
(953,0,'config','config_checkout_guest','1',0),
(952,0,'config','config_cart_weight','0',0),
(951,0,'config','config_invoice_prefix','INV-2022-00',0),
(950,0,'config','config_account_id','3',0),
(949,0,'config','config_login_attempts','5',0),
(948,0,'config','config_customer_price','0',0),
(947,0,'config','config_customer_group_display','[\"1\",\"2\"]',1),
(946,0,'config','config_customer_group_id','1',0),
(945,0,'config','config_customer_search','1',0),
(944,0,'config','config_customer_activity','1',0),
(943,0,'config','config_customer_online','1',0),
(942,0,'config','config_tax_customer','shipping',0),
(941,0,'config','config_tax_default','shipping',0),
(940,0,'config','config_tax','0',0),
(939,0,'config','config_voucher_max','1000',0),
(938,0,'config','config_voucher_min','1',0),
(937,0,'config','config_review_guest','1',0),
(936,0,'config','config_review_status','1',0),
(935,0,'config','config_limit_admin','20',0),
(934,0,'config','config_product_count','0',0),
(933,0,'config','config_weight_class_id','1',0),
(932,0,'config','config_length_class_id','1',0),
(931,0,'config','config_currency_auto','0',0),
(930,0,'config','config_currency','BRL',0),
(929,0,'config','config_admin_language','pt-br',0),
(928,0,'config','config_language','pt-br',0),
(927,0,'config','config_timezone','America/Sao_Paulo',0),
(926,0,'config','config_zone_id','458',0),
(925,0,'config','config_country_id','30',0),
(924,0,'config','config_comment','',0),
(923,0,'config','config_open','',0),
(922,0,'config','config_image','',0),
(921,0,'config','config_fax','',0),
(920,0,'config','config_telephone','123456789',0),
(919,0,'config','config_email','contato@rogerti.com.br',0),
(918,0,'config','config_geocode','',0),
(917,0,'config','config_address','Address 1',0),
(916,0,'config','config_owner','Your Name',0),
(915,0,'config','config_name','Your Store',0),
(914,0,'config','config_layout_id','4',0),
(913,0,'config','config_theme','default',0),
(862,0,'developer','developer_theme','0',0),
(1036,0,'module_validacao','module_validacao_msg_celular','O celular não é válido!',0),
(1035,0,'module_validacao','module_validacao_msg_maior_18_anos','Você deve ter no mínimo 18 anos!',0),
(1034,0,'module_validacao','module_validacao_msg_nascimento','A data de nascimento não é válida!',0),
(1033,0,'module_validacao','module_validacao_msg_cpf_existe','O CPF já está cadastrado!',0),
(1032,0,'module_validacao','module_validacao_msg_cpf','O CPF não é válido!',0),
(1031,0,'module_validacao','module_validacao_msg_cnpj','O CNPJ não é válido!',0),
(1030,0,'module_validacao','module_validacao_complemento_id','9',0),
(1029,0,'module_validacao','module_validacao_numero_id','3',0),
(1028,0,'module_validacao','module_validacao_celular_id','7',0),
(1027,0,'module_validacao','module_validacao_nascimento_id','6',0),
(1026,0,'module_validacao','module_validacao_cpf_id','1',0),
(1025,0,'module_validacao','module_validacao_cnpj_id','2',0),
(1024,0,'module_validacao','module_validacao_razao_social_id','4',0),
(1023,0,'module_validacao','module_validacao_cep_html','',0),
(743,0,'module_sendpulse','module_sendpulse_count','0',0),
(742,0,'module_sendpulse','module_sendpulse_status','1',0),
(741,0,'module_sendpulse','module_sendpulse_book_default','2058579',0),
(740,0,'module_sendpulse','module_sendpulse_sender_default','Contato,contato@itagency.com.br',0),
(739,0,'module_sendpulse','module_sendpulse_auto_add','1',0),
(738,0,'module_sendpulse','module_sendpulse_sexo','8',0),
(737,0,'module_sendpulse','module_sendpulse_celular','7',0),
(736,0,'module_sendpulse','module_sendpulse_nascimento','6',0),
(912,0,'config','config_meta_keyword','',0),
(735,0,'module_sendpulse','module_sendpulse_secret','6324468fba0b352c306364cf7465fdcb',0),
(734,0,'module_sendpulse','module_sendpulse_id','a4d469096a2c6205137f956d3dc0f127',0),
(911,0,'config','config_meta_description','My Store',0),
(910,0,'config','config_meta_title','Your Store',0),
(905,0,'module_parcelamento','module_parcelamento_tabela','[{\"parcelas\":\"\",\"juros\":\"\"}]',1),
(904,0,'module_parcelamento','module_parcelamento_view_container','#parcelamento',0),
(903,0,'module_parcelamento','module_parcelamento_options_container','#product',0),
(902,0,'module_parcelamento','module_parcelamento_texto_com_juros','com juros',0),
(901,0,'module_parcelamento','module_parcelamento_texto_sem_juros','sem juros',0),
(900,0,'module_parcelamento','module_parcelamento_layout_parcelas','&lt;li style=&quot;margin: 0px; padding-bottom: 5px; font-family: sans-serif;&quot;&gt;Em até &lt;strong&gt;{parcelas}x de {parcela}&lt;/strong&gt; {juros}&lt;',0),
(899,0,'module_parcelamento','module_parcelamento_layout_produto','&lt;div style=&quot;padding: 10px 0px; font-size: 13px;&quot;&gt;\r\n  À vista &lt;span style=&quot;font-size: 20px;&quot;&gt;{vdesconto}&lt;/span&gt; &lt;b&gt;({desconto}% OFF)&lt;/b&gt;&lt;br /&gt;\r\n  &lt;i class=&quot;fa fa-barcode&quot;&gt;&lt;/i&gt; Economize &lt;b&gt;{veconomia}&lt;/b&gt; no boleto ou pix\r\n&lt;/div&gt;\r\n&lt;div style=&quot;border-top: 1px solid #e2e2e2; padding: 10px 0px; font-size: 13px;&quot;&gt;\r\n  {sjminimo}Em até &lt;b&gt;{sem_juros}x&lt;/b&gt; de &lt;b&gt;{sjuros}&lt;/b&gt; sem juros{/sjminimo}\r\n  {cjminimo}&lt;br /&gt;ou até &lt;b&gt;{parcelas}x&lt;/b&gt; de &lt;b&gt;{cjuros}&lt;/b&gt; com juros{/cjminimo} \r\n  &lt;a style=&quot;text-decoration: none; float: right;&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;parcelas&quot; href=&quot;#parcelas&quot;&gt;&lt;i class=&quot;fa fa-credit-card&quot;&gt;&lt;/i&gt; Ver parcelas&lt;/a&gt;\r\n  &lt;div id=&quot;parcelas&quot; class=&quot;collapse&quot;&gt;\r\n    &lt;table class=&quot;table table-hover&quot;&gt;\r\n      &lt;thead&gt;\r\n        &lt;tr&gt;\r\n          &lt;th class=&quot;text-left&quot; style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;Parcelas&lt;/b&gt;&lt;/th&gt;\r\n          &lt;th class=&quot;text-center&quot; style=&quot;font-size:14px;&quot;&gt;&lt;b&gt;Total&lt;/b&gt;&lt;/th&gt;\r\n        &lt;/tr&gt;\r\n      &lt;/thead&gt;\r\n      &lt;tbody&gt;\r\n      {demonstrativo}\r\n      &lt;/tbody&gt;\r\n    &lt;/table&gt;\r\n    &lt;p style=&quot;text-align: right;&quot;&gt;&lt;small&gt;Taxa de juros de {juros_mes}% ao mês.&lt;/small&gt;&lt;/p&gt;\r\n  &lt;/div&gt;\r\n&lt;/div&gt;',0),
(893,0,'module_parcelamento','module_parcelamento_juros','2.99',0),
(894,0,'module_parcelamento','module_parcelamento_calculo_juros','simples',0),
(895,0,'module_parcelamento','module_parcelamento_sem_juros','6',0),
(896,0,'module_parcelamento','module_parcelamento_minimo','50',0),
(897,0,'module_parcelamento','module_parcelamento_imagem','catalog/assets/cartao.png',0),
(898,0,'module_parcelamento','module_parcelamento_layout_modulos','&lt;p&gt;\r\nÀ vista &lt;b&gt;{vdesconto}&lt;/b&gt; ({desconto}% OFF)\r\n{sjminimo}&lt;br /&gt;&lt;i class=&quot;fa fa-credit-card&quot;&gt;&lt;/i&gt; ou {sem_juros}x de &lt;b&gt;{sjuros}&lt;/b&gt; sem juros{/sjminimo}\r\n&lt;/p&gt;',0),
(890,0,'module_parcelamento','module_parcelamento_total','50',0),
(891,0,'module_parcelamento','module_parcelamento_desconto','5.00',0),
(892,0,'module_parcelamento','module_parcelamento_parcelas','12',0),
(889,0,'module_parcelamento','module_parcelamento_status','1',0),
(888,0,'module_parcelamento','module_parcelamento_customer_groups','[\"1\",\"2\"]',1),
(887,0,'module_parcelamento','module_parcelamento_stores','[\"0\"]',1),
(886,0,'module_parcelamento','module_parcelamento_currency_id','BRL',0),
(885,0,'module_parcelamento','module_parcelamento_language_id','pt-br',0),
(906,0,'shipping_faixa_cep','shipping_faixa_cep_group_title','Frete por Cep',0),
(907,0,'shipping_faixa_cep','shipping_faixa_cep_status','1',0),
(908,0,'shipping_faixa_cep','shipping_faixa_cep_sort_order','1',0),
(909,0,'shipping_faixa_cep','shipping_faixa_cep_interval','{\"qiiuj5ye6z\":{\"title\":\"Cabo Frio\",\"order_total\":\"\",\"cep\":\"28920000:28920999\",\"cost\":\"10.00\"},\"o0rga3q5du8\":{\"title\":\"S\\u00e3o Pedro\",\"order_total\":\"\",\"cep\":\"28941000:28941999\",\"cost\":\"5.00\"}}',0),
(992,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),
(993,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),
(994,0,'config','config_error_display','1',0),
(995,0,'config','config_error_log','1',0),
(996,0,'config','config_error_filename','error.log',0),
(1022,0,'module_validacao','module_validacao_cep_primeiro','1',0),
(1021,0,'module_validacao','module_validacao_cep_correios','1',0),
(1020,0,'module_validacao','module_validacao_remover_placeholder','0',0),
(1019,0,'module_validacao','module_validacao_maior_18_anos','1',0),
(1018,0,'module_validacao','module_validacao_cpf_existe','1',0),
(1038,0,'module_validacao','module_validacao_msg_numero','O Número não é válido!',0),
(1056,0,'payment_cartao','payment_cartao_geo_zone_id','0',0),
(1054,0,'payment_cartao','payment_cartao_total','1',0),
(1044,0,'payment_cod','payment_cod_total','1',0),
(1045,0,'payment_cod','payment_cod_order_status_id','1',0),
(1046,0,'payment_cod','payment_cod_geo_zone_id','0',0),
(1047,0,'payment_cod','payment_cod_status','1',0),
(1048,0,'payment_cod','payment_cod_sort_order','2',0);

/*Table structure for table `oc_shipping_courier` */

DROP TABLE IF EXISTS `oc_shipping_courier`;

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_shipping_courier` */

insert  into `oc_shipping_courier`(`shipping_courier_id`,`shipping_courier_code`,`shipping_courier_name`) values 
(1,'dhl','DHL'),
(2,'fedex','Fedex'),
(3,'ups','UPS'),
(4,'royal-mail','Royal Mail'),
(5,'usps','United States Postal Service'),
(6,'auspost','Australia Post');

/*Table structure for table `oc_statistics` */

DROP TABLE IF EXISTS `oc_statistics`;

CREATE TABLE `oc_statistics` (
  `statistics_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_statistics` */

insert  into `oc_statistics`(`statistics_id`,`code`,`value`) values 
(1,'order_sale',234.9900),
(2,'order_processing',0.0000),
(3,'order_complete',0.0000),
(4,'order_other',0.0000),
(5,'returns',0.0000),
(6,'product',0.0000),
(7,'review',0.0000);

/*Table structure for table `oc_stock_status` */

DROP TABLE IF EXISTS `oc_stock_status`;

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_stock_status` */

insert  into `oc_stock_status`(`stock_status_id`,`language_id`,`name`) values 
(7,2,'Em Estoque'),
(8,2,'Orçamento'),
(5,2,'Esgotado'),
(6,2,'2 a 3 Dias'),
(7,1,'In Stock'),
(8,1,'Pre-Order'),
(5,1,'Out Of Stock'),
(6,1,'2-3 Days');

/*Table structure for table `oc_store` */

DROP TABLE IF EXISTS `oc_store`;

CREATE TABLE `oc_store` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_store` */

/*Table structure for table `oc_tax_class` */

DROP TABLE IF EXISTS `oc_tax_class`;

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_tax_class` */

insert  into `oc_tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values 
(9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),
(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');

/*Table structure for table `oc_tax_rate` */

DROP TABLE IF EXISTS `oc_tax_rate`;

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_tax_rate` */

insert  into `oc_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values 
(86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),
(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');

/*Table structure for table `oc_tax_rate_to_customer_group` */

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_tax_rate_to_customer_group` */

insert  into `oc_tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values 
(86,1),
(87,1);

/*Table structure for table `oc_tax_rule` */

DROP TABLE IF EXISTS `oc_tax_rule`;

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int NOT NULL AUTO_INCREMENT,
  `tax_class_id` int NOT NULL,
  `tax_rate_id` int NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_tax_rule` */

insert  into `oc_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values 
(121,10,86,'payment',1),
(120,10,87,'store',0),
(128,9,86,'shipping',1),
(127,9,87,'shipping',2);

/*Table structure for table `oc_theme` */

DROP TABLE IF EXISTS `oc_theme`;

CREATE TABLE `oc_theme` (
  `theme_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_theme` */

/*Table structure for table `oc_translation` */

DROP TABLE IF EXISTS `oc_translation`;

CREATE TABLE `oc_translation` (
  `translation_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_translation` */

/*Table structure for table `oc_upload` */

DROP TABLE IF EXISTS `oc_upload`;

CREATE TABLE `oc_upload` (
  `upload_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_upload` */

/*Table structure for table `oc_user` */

DROP TABLE IF EXISTS `oc_user`;

CREATE TABLE `oc_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_group_id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_user` */

insert  into `oc_user`(`user_id`,`user_group_id`,`username`,`password`,`salt`,`firstname`,`lastname`,`email`,`image`,`code`,`ip`,`status`,`date_added`) values 
(1,1,'admin','d7717fb3a56b2c6ecf8e163dadc35b526749f7dc','eqxrvgwPy','Administrador','Admin','rogersgti87@gmail.com','','','127.0.0.1',1,'2022-08-19 21:44:29');

/*Table structure for table `oc_user_group` */

DROP TABLE IF EXISTS `oc_user_group`;

CREATE TABLE `oc_user_group` (
  `user_group_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_user_group` */

insert  into `oc_user_group`(`user_group_id`,`name`,`permission`) values 
(1,'Administrador','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/validacao\",\"extension\\/module\\/sendpulse\",\"extension\\/module\\/parcelamento\",\"extension\\/module\\/latest\",\"extension\\/shipping\\/faixa_cep\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cartao\",\"extension\\/payment\\/cod\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/validacao\",\"extension\\/module\\/sendpulse\",\"extension\\/module\\/parcelamento\",\"extension\\/module\\/latest\",\"extension\\/shipping\\/faixa_cep\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cartao\",\"extension\\/payment\\/cod\"]}'),
(10,'Operacional','');

/*Table structure for table `oc_voucher` */

DROP TABLE IF EXISTS `oc_voucher`;

CREATE TABLE `oc_voucher` (
  `voucher_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_voucher` */

/*Table structure for table `oc_voucher_history` */

DROP TABLE IF EXISTS `oc_voucher_history`;

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int NOT NULL AUTO_INCREMENT,
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_voucher_history` */

/*Table structure for table `oc_voucher_theme` */

DROP TABLE IF EXISTS `oc_voucher_theme`;

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_voucher_theme` */

insert  into `oc_voucher_theme`(`voucher_theme_id`,`image`) values 
(8,'catalog/demo/canon_eos_5d_2.jpg'),
(7,'catalog/demo/gift-voucher-birthday.jpg'),
(6,'catalog/demo/apple_logo.jpg');

/*Table structure for table `oc_voucher_theme_description` */

DROP TABLE IF EXISTS `oc_voucher_theme_description`;

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_voucher_theme_description` */

insert  into `oc_voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values 
(6,1,'Christmas'),
(7,1,'Birthday'),
(8,1,'General'),
(6,2,'Christmas'),
(7,2,'Birthday'),
(8,2,'General');

/*Table structure for table `oc_weight_class` */

DROP TABLE IF EXISTS `oc_weight_class`;

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_weight_class` */

insert  into `oc_weight_class`(`weight_class_id`,`value`) values 
(1,1.00000000),
(2,1000.00000000),
(5,2.20460000),
(6,35.27400000);

/*Table structure for table `oc_weight_class_description` */

DROP TABLE IF EXISTS `oc_weight_class_description`;

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_weight_class_description` */

insert  into `oc_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values 
(1,2,'Quilograma','kg'),
(2,2,'Grama','g'),
(5,2,'Libra','lb'),
(6,2,'Onça','oz'),
(1,1,'Kilogram','kg'),
(2,1,'Gram','g'),
(5,1,'Pound ','lb'),
(6,1,'Ounce','oz');

/*Table structure for table `oc_zone` */

DROP TABLE IF EXISTS `oc_zone`;

CREATE TABLE `oc_zone` (
  `zone_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_zone` */

insert  into `oc_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values 
(440,30,'Acre','AC',1),
(441,30,'Alagoas','AL',1),
(442,30,'Amapá','AP',1),
(443,30,'Amazonas','AM',1),
(444,30,'Bahia','BA',1),
(445,30,'Ceará','CE',1),
(446,30,'Distrito Federal','DF',1),
(447,30,'Espírito Santo','ES',1),
(448,30,'Goiás','GO',1),
(449,30,'Maranhão','MA',1),
(450,30,'Mato Grosso','MT',1),
(451,30,'Mato Grosso do Sul','MS',1),
(452,30,'Minas Gerais','MG',1),
(453,30,'Pará','PA',1),
(454,30,'Paraíba','PB',1),
(455,30,'Paraná','PR',1),
(456,30,'Pernambuco','PE',1),
(457,30,'Piauí','PI',1),
(458,30,'Rio de Janeiro','RJ',1),
(459,30,'Rio Grande do Norte','RN',1),
(460,30,'Rio Grande do Sul','RS',1),
(461,30,'Rondônia','RO',1),
(462,30,'Roraima','RR',1),
(463,30,'Santa Catarina','SC',1),
(464,30,'São Paulo','SP',1),
(465,30,'Sergipe','SE',1),
(466,30,'Tocantins','TO',1);

/*Table structure for table `oc_zone_to_geo_zone` */

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `zone_id` int NOT NULL DEFAULT '0',
  `geo_zone_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;

/*Data for the table `oc_zone_to_geo_zone` */

insert  into `oc_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values 
(1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
