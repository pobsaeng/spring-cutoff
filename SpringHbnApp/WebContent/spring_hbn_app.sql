# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         localhost
# Database:                     spring_hbn_app
# Server version:               5.0.51b-community-nt-log
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2015-11-19 22:46:37
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'spring_hbn_app'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "spring_hbn_app" /*!40100 DEFAULT CHARACTER SET utf8 */;

USE "spring_hbn_app";


#
# Table structure for table 'address'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "address" (
  "adrId" bigint(20) NOT NULL auto_increment,
  "adrHomeNum" varchar(50) default NULL,
  "adrRoad" varchar(50) default NULL,
  "adrProvince" varchar(50) default NULL,
  "adrZipCode" varchar(25) default NULL,
  "adrCusId" bigint(20) default NULL,
  PRIMARY KEY  ("adrId"),
  KEY "FK1ED033D4925E76AE" ("adrCusId")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'address'
#

LOCK TABLES "address" WRITE;
/*!40000 ALTER TABLE "address" DISABLE KEYS;*/
REPLACE INTO "address" ("adrId", "adrHomeNum", "adrRoad", "adrProvince", "adrZipCode", "adrCusId") VALUES
	('1','30-31','Latphroa','BKK','20110','1');
REPLACE INTO "address" ("adrId", "adrHomeNum", "adrRoad", "adrProvince", "adrZipCode", "adrCusId") VALUES
	('2','176 M 17','Prathai','Nakonrachasima','30180','2');
/*!40000 ALTER TABLE "address" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'authorities'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "authorities" (
  "username" varchar(50) NOT NULL,
  "authority" varchar(50) NOT NULL,
  KEY "fk_authorities_users" ("username")
);



#
# Dumping data for table 'authorities'
#

LOCK TABLES "authorities" WRITE;
/*!40000 ALTER TABLE "authorities" DISABLE KEYS;*/
REPLACE INTO "authorities" ("username", "authority") VALUES
	('admin','ROLE_USER');
REPLACE INTO "authorities" ("username", "authority") VALUES
	('admin','ROLE_ADMIN');
REPLACE INTO "authorities" ("username", "authority") VALUES
	('guest','ROLE_USER');
REPLACE INTO "authorities" ("username", "authority") VALUES
	('admin','ROLE_USER');
REPLACE INTO "authorities" ("username", "authority") VALUES
	('admin','ROLE_ADMIN');
REPLACE INTO "authorities" ("username", "authority") VALUES
	('guest','ROLE_USER');
/*!40000 ALTER TABLE "authorities" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'book'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "book" (
  "ISBN" varchar(17) NOT NULL,
  "Title" varchar(256) NOT NULL,
  "Author" varchar(256) NOT NULL,
  "Publisher" varchar(256) NOT NULL,
  "YearPublisher" varchar(4) NOT NULL,
  "Page" int(3) NOT NULL,
  "Price" decimal(10,2) NOT NULL,
  "Weight" float NOT NULL,
  "Stock" int(11) NOT NULL,
  "CreateUpdate" timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  "CreateDate" timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  ("ISBN")
);



#
# Dumping data for table 'book'
#

LOCK TABLES "book" WRITE;
/*!40000 ALTER TABLE "book" DISABLE KEYS;*/
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-616-90280-1-7','การพัฒนาระบบเชิงวัตถุด้วย UML','พนิดา พานิชกุล','เคทีพี','2552',374,'280','400',3000,'2015-11-10 00:06:42','2015-11-10 00:06:42');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-616-90280-0-0','การวิเคราะห์และออกแบบระบบเชิงวัตถุด้วย UML','กิตติพงษ์ กลมกล่อม','เคทีพี','2552',388,'290','500',1499,'2015-11-10 00:07:52','2015-11-10 00:07:50');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-974-06-7357-6','Java เล่ม 1','กิตติ ภักดีวัฒนะกุล','เคทีพี','2551',560,'420','1000',2998,'2015-11-10 00:07:54','2015-11-10 00:07:52');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-974-8424-74-3','วิศวกรรมซอฟต์แวร์ (Software Engineering)','กิตติ ภักดีวัฒนะกุล และพนิดา พานิชกุล','เคทีพี','2550',390,'390','1000',500,'2015-11-10 00:07:56','2015-11-10 00:07:55');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-974-09-4008-1','ภาษาซี ทีละก้าว','กิตติชัย ชีวาสุขถาวร','เคทีพี','2550',384,'290','600',450,'2015-11-10 00:07:58','2015-11-10 00:07:57');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-611-90280-1-2','Visual Basic 2008 และ Visual C# 2008 ','พิรพร หมุนสนิท และอัจจิมา เลี้ยงอยู่','เคทีพี','2552',580,'400','500',1579,'2015-11-10 00:08:04','2015-11-10 00:08:01');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-974-372-695-8','ASP.NET 3.5 ด้วย VB 2008 และ C# 2008 ','พิรพร หมุนสนิท และจันทรขจร แซ่อุ๊น','เคทีพี','2552',544,'360','825',797,'2015-11-10 00:08:07','2015-11-10 00:08:05');
REPLACE INTO "book" ("ISBN", "Title", "Author", "Publisher", "YearPublisher", "Page", "Price", "Weight", "Stock", "CreateUpdate", "CreateDate") VALUES
	('978-974-06-6220-4','การวิเคราะห์และออกแบบระบบ (Systems Analysis and Design)','กิตติ ภักดีวัฒนะกุล และพนิดา พานิชกุล ','เคทีพี','2551',496,'390','1000',400,'2015-11-10 00:08:10','2015-11-10 00:08:08');
/*!40000 ALTER TABLE "book" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'company'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "company" (
  "id" int(10) unsigned NOT NULL auto_increment,
  "price" float NOT NULL,
  "company" varchar(255) NOT NULL,
  "date" datetime NOT NULL,
  "size" varchar(45) NOT NULL,
  "visible" tinyint(1) NOT NULL,
  PRIMARY KEY  ("id")
) AUTO_INCREMENT=28;



#
# Dumping data for table 'company'
#

LOCK TABLES "company" WRITE;
/*!40000 ALTER TABLE "company" DISABLE KEYS;*/
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('1','71.72','3m Co','2007-09-01 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('2','29.01','Aloca Inc','2007-08-01 00:00:00','medium',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('3','83.81','Altria Group Inc','2007-08-03 00:00:00','large',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('4','52.55','American Express Company','2008-01-04 00:00:00','extra large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('5','64.13','American International Group Inc.','2008-03-04 00:00:00','small',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('6','31.61','AT&T Inc.','2008-02-01 00:00:00','extra large',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('7','75.43','Boeing Co.','2008-01-01 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('8','67.27','Caterpillar Inc.','2007-12-03 00:00:00','medium',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('9','49.37','Citigroup, Inc.','2007-11-24 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('10','40.48','E.I. du Pont de Nemours and Company','2007-05-09 00:00:00','extra large',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('11','68.1','Exxon Mobile Corp','2007-12-12 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('12','34.14','General Electric Company','2008-06-16 00:00:00','extra large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('13','30.27','General Motors Corporation','2006-12-07 00:00:00','medium',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('14','36.53','Hewlett-Packard Co.','2007-05-13 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('15','38.77','Honweywell Intl Inc','2006-11-07 00:00:00','medium',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('16','19.88','Intel Corporation','2007-01-09 00:00:00','small',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('17','81.41','International Business Machines','2005-01-21 00:00:00','extra large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('18','64.72','Johnson & Johnson','2008-01-10 00:00:00','extra large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('19','45.73','JP Morgan & Chase & Co','2008-02-20 00:00:00','large',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('20','36.76','McDonald''s Corporation','2007-06-12 00:00:00','large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('21','27.96','Pfizer Inc','2007-12-30 00:00:00','small',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('22','45.07','The Coca-Cola Company','2007-01-30 00:00:00','medium',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('23','34.64','The Home Depot, Inc','2006-12-31 00:00:00','small',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('24','61.91','The Procter & Gamble Company','2007-04-08 00:00:00','extra large',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('25','63.26','United Technologies Corporation','2006-06-04 00:00:00','medium',1);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('26','35.57','Verizon Communications','2005-07-09 00:00:00','small',0);
REPLACE INTO "company" ("id", "price", "company", "date", "size", "visible") VALUES
	('27','45.45','Wal-Mart Stores, Inc','2006-09-09 00:00:00','large',1);
/*!40000 ALTER TABLE "company" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'contact'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "contact" (
  "id" int(10) unsigned NOT NULL auto_increment,
  "firstName" varchar(45) NOT NULL,
  "lastName" varchar(45) default NULL,
  "headshot" varchar(45) NOT NULL,
  "twitter" varchar(45) default NULL,
  "telephone" varchar(45) default NULL,
  "city" varchar(45) NOT NULL,
  "state" varchar(45) NOT NULL,
  "country" varchar(45) NOT NULL,
  PRIMARY KEY  ("id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'contact'
#

LOCK TABLES "contact" WRITE;
/*!40000 ALTER TABLE "contact" DISABLE KEYS;*/
REPLACE INTO "contact" ("id", "firstName", "lastName", "headshot", "twitter", "telephone", "city", "state", "country") VALUES
	('1','Loiane','Groner','loiane.png','loiane','11-9999-9999','Vit—ria','Esp’rito Santo','Brazil');
REPLACE INTO "contact" ("id", "firstName", "lastName", "headshot", "twitter", "telephone", "city", "state", "country") VALUES
	('2','Kraipob','Saengkhunthod','iapp.png','Accc','24145454','Chon','Bcc','Uaa');
REPLACE INTO "contact" ("id", "firstName", "lastName", "headshot", "twitter", "telephone", "city", "state", "country") VALUES
	('3','Loiane','Groner','file.png','loiane','11-9999-9999','Vit?ria','Esp?rito Santo','Brazil');
REPLACE INTO "contact" ("id", "firstName", "lastName", "headshot", "twitter", "telephone", "city", "state", "country") VALUES
	('4','Loiane','Groner','การใช้ฟังก์ชัน COALESCE().png','loiane','11-9999-9999','Vit?ria','Esp?rito Santo','Brazil');
/*!40000 ALTER TABLE "contact" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'contact_tbl'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "contact_tbl" (
  "CONTACT_ID" int(11) NOT NULL auto_increment,
  "CONTACT_EMAIL" varchar(255) NOT NULL,
  "CONTACT_NAME" varchar(255) NOT NULL,
  "CONTACT_PHONE" varchar(255) NOT NULL,
  PRIMARY KEY  ("CONTACT_ID")
) AUTO_INCREMENT=543;



#
# Dumping data for table 'contact_tbl'
#

LOCK TABLES "contact_tbl" WRITE;
/*!40000 ALTER TABLE "contact_tbl" DISABLE KEYS;*/
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(479,'contact2@braziljs.com.br','Contact2','(098) 000-1234');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(480,'contact3@braziljs.com.br','Contact3','(098) 923-4011');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(481,'contact4@braziljs.com.br','Contact4','145246');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(482,'contact5@braziljs.com.br','Contact5','(000) 000-4321');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(483,'contact6@braziljs.com.br','Contact6','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(484,'contact7@braziljs.com.br','Contact7','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(485,'contact8@braziljs.com.br','Contact8','(000) 000-4567');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(487,'contact10@braziljs.com.br','Contact10','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(488,'contact11@braziljs.com.br','Contact11','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(490,'contact13@braziljs.com.br','Contact13','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(491,'contact14@braziljs.com.br','Contact14','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(492,'contact15@braziljs.com.br','Contact15','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(493,'contact16@braziljs.com.br','Contact16','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(494,'contact17@braziljs.com.br','Contact17','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(495,'contact18@braziljs.com.br','Contact18','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(496,'contact19@braziljs.com.br','Contact19','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(497,'CONTACT_tbl@braziljs.com.br','Contact20','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(498,'CONTACT_tbl@braziljs.com.br','Contact21','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(499,'CONTACT_tbl@braziljs.com.br','Contact22','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(500,'CONTACT_tbl@braziljs.com.br','Contact23','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(501,'CONTACT_tbl@braziljs.com.br','Contact24','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(502,'CONTACT_tbl@braziljs.com.br','Contact25','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(503,'CONTACT_tbl@braziljs.com.br','Contact26','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(504,'CONTACT_tbl@braziljs.com.br','Contact27','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(505,'CONTACT_tbl@braziljs.com.br','Contact28','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(506,'CONTACT_tbl@braziljs.com.br','Contact29','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(507,'CONTACT_tbl@braziljs.com.br','Contact30','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(508,'CONTACT_tbl@braziljs.com.br','Contact31','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(509,'CONTACT_tbl@braziljs.com.br','Contact31','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(510,'CONTACT_tbl@braziljs.com.br','Contact32','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(511,'CONTACT_tbl@braziljs.com.br','Contact33','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(512,'CONTACT_tbl@braziljs.com.br','Contact34','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(513,'CONTACT_tbl@braziljs.com.br','Contact35','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(514,'CONTACT_tbl@braziljs.com.br','Contact36','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(515,'CONTACT_tbl@braziljs.com.br','Contact37','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(516,'CONTACT_tbl@braziljs.com.br','Contact38','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(517,'CONTACT_tbl@braziljs.com.br','Contact39','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(518,'CONTACT_tbl@braziljs.com.br','Contact40','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(519,'CONTACT_tbl@braziljs.com.br','Contact41','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(520,'CONTACT_tbl@braziljs.com.br','Contact42','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(521,'CONTACT_tbl@braziljs.com.br','Contact43','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(522,'CONTACT_tbl@braziljs.com.br','Contact43','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(523,'CONTACT_tbl@braziljs.com.br','Contact44','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(524,'CONTACT_tbl@braziljs.com.br','Contact45','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(525,'CONTACT_tbl@braziljs.com.br','Contact46','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(526,'CONTACT_tbl@braziljs.com.br','Contact47','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(527,'CONTACT_tbl@braziljs.com.br','Contact48','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(528,'CONTACT_tbl@braziljs.com.br','Contact49','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(529,'CONTACT_tbl@braziljs.com.br','Contact50','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(530,'CONTACT_tbl@braziljs.com.br','Contact51','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(531,'CONTACT_tbl@braziljs.com.br','Contact51','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(532,'CONTACT_tbl@braziljs.com.br','Contact52','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(533,'CONTACT_tbl@braziljs.com.br','Contact53','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(534,'CONTACT_tbl@braziljs.com.br','Contact54','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(535,'CONTACT_tbl@braziljs.com.br','Contact55','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(536,'CONTACT_tbl@braziljs.com.br','Contact56','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(537,'CONTACT_tbl@braziljs.com.br','Contact57','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(538,'CONTACT_tbl@braziljs.com.br','Contact58','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(539,'CONTACT_tbl@braziljs.com.br','Contact59','(000) 000-0000');
REPLACE INTO "contact_tbl" ("CONTACT_ID", "CONTACT_EMAIL", "CONTACT_NAME", "CONTACT_PHONE") VALUES
	(542,'pob_itbuu@hotmail.co.th','Test','4578787');
/*!40000 ALTER TABLE "contact_tbl" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'customer'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "customer" (
  "cusId" bigint(20) NOT NULL auto_increment,
  "cusFirstName" varchar(50) NOT NULL,
  "cusLastName" varchar(50) NOT NULL,
  "cusAge" int(11) default NULL,
  PRIMARY KEY  ("cusId")
) AUTO_INCREMENT=52;



#
# Dumping data for table 'customer'
#

LOCK TABLES "customer" WRITE;
/*!40000 ALTER TABLE "customer" DISABLE KEYS;*/
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('14','Java','Book',30);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('10','Pu','Havy',29);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('47','BB','CC',23);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('17','OOP','Object',33);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('30','UU','OO',23);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('25','Bank','Wijet',29);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('26','AA','SW',30);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('31','PP','QQ',24);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('28','QQ','WW',12);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('29','JJ','HH',20);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('32','SS','DD',25);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('33','EE','RR',26);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('34','LL','KK',27);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('35','SS','TT',26);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('36','AA','NN',29);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('37','ZZ','XX',30);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('38','VV','BB',32);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('39','BB','NN',33);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('40','CC','XX',35);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('41','WW','EE',36);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('42','YY','GG',37);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('43','PP','RR',38);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('44','WO','TU',39);
REPLACE INTO "customer" ("cusId", "cusFirstName", "cusLastName", "cusAge") VALUES
	('48','XY','GG',24);
/*!40000 ALTER TABLE "customer" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'product'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "product" (
  "ProductID" varchar(17) NOT NULL,
  "ProductName" varchar(100) default NULL,
  "SupplierID" varchar(3) default NULL,
  "CategoryID" varchar(2) default NULL,
  "ProductTypeID" varchar(1) default NULL,
  "LastCost" decimal(7,0) default NULL,
  "CostAvg" decimal(7,0) default NULL,
  "SalePrice" decimal(7,0) default NULL,
  "HirePurchaseRate" decimal(6,0) default NULL,
  "RentPrice" int(11) default NULL,
  "NumberRentDate" int(11) default NULL,
  "FineRate" int(11) default NULL,
  "CustomerTypeID" varchar(1) default NULL,
  "ProductStatus" char(1) default NULL,
  "PictureFileName" varchar(100) default NULL,
  PRIMARY KEY  ("ProductID")
);



#
# Dumping data for table 'product'
#

LOCK TABLES "product" WRITE;
/*!40000 ALTER TABLE "product" DISABLE KEYS;*/
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('162-336-725-373-2','Spring 2513',NULL,NULL,NULL,0,0,2586,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('111-120-193-148-2','Spring 2711',NULL,NULL,NULL,0,0,8724,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('112-150-392-383-2','Spring 2338',NULL,NULL,NULL,0,0,5252,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('387-381-236-923-4','Spring 5851',NULL,NULL,NULL,0,0,1701,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('137-613-639-246-3','Spring 9096',NULL,NULL,NULL,0,0,3192,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('180-422-102-172-5','Spring 3243',NULL,NULL,NULL,0,0,3236,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('114-217-252-051-8','Spring 4474',NULL,NULL,NULL,0,0,3788,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('161-839-020-173-1','Spring 8169',NULL,NULL,NULL,0,0,9741,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('220-292-904-233-1','Spring 2114',NULL,NULL,NULL,0,0,9832,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('245-342-481-225-9','Spring 6012',NULL,NULL,NULL,0,0,7892,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('932-722-274-131-1','Spring 0593',NULL,NULL,NULL,0,0,6396,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('121-030-263-273-5','Spring 5658',NULL,NULL,NULL,0,0,7288,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('511-243-901-838-1','Spring 4229',NULL,NULL,NULL,0,0,5116,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('203-101-137-145-8','Spring 5422',NULL,NULL,NULL,0,0,8940,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('669-211-349-514-7','Spring 2535',NULL,NULL,NULL,0,0,4358,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('151-383-263-680-1','Spring 7716',NULL,NULL,NULL,0,0,3021,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('416-619-215-612-0','Spring 4363',NULL,NULL,NULL,0,0,5105,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('611-327-242-036-4','Spring 3593',NULL,NULL,NULL,0,0,4151,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('120-021-172-214-3','Spring 4022',NULL,NULL,NULL,0,0,4074,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO "product" ("ProductID", "ProductName", "SupplierID", "CategoryID", "ProductTypeID", "LastCost", "CostAvg", "SalePrice", "HirePurchaseRate", "RentPrice", "NumberRentDate", "FineRate", "CustomerTypeID", "ProductStatus", "PictureFileName") VALUES
	('604-331-242-746-3','Spring 3071',NULL,NULL,NULL,0,0,5584,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE "product" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tblbook'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tblbook" (
  "id" int(11) NOT NULL auto_increment,
  "title" varchar(128) NOT NULL,
  "authors" varchar(256) NOT NULL,
  "price" int(11) NOT NULL,
  "stock" int(11) NOT NULL,
  PRIMARY KEY  ("id")
) AUTO_INCREMENT=23;



#
# Dumping data for table 'tblbook'
#

LOCK TABLES "tblbook" WRITE;
/*!40000 ALTER TABLE "tblbook" DISABLE KEYS;*/
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(1,'CHATEAU DE SAINT COSME','กัปตัน แจ็ค',99,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(2,'LAN RIOJA CRIANZA','ณัฐพงศ์ ฐิติมานะกุล, รักษ์ศักดิ์ สิทธิวิไล',220,3);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(19,'พื้นฐานการวิเคราะห์และออกแบบระบบเชิงวัตถุ','กิตติ',300,1);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(3,'MARGERUM SYBARITE','Rhonda Byrne',245,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(4,'OWEN ROE EX UMBRIS','ดวงพร เกี๋ยงคำ',249,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(18,'คัมภีร์ Java เล่ม 1','กิตติ',350,2);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(5,'วิธีพูดกับลูก โดยไม่ทำร้ายจิตใจของเขา','เฮม จีนอตต์',189,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(6,'เขาเก็บเงินกันอย่างไรได้เป็นล้าน','อมิตา อริยอัชฌา',140,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(7,'อัจฉริยะสร้างได้','วนิษา เรซ',186,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(8,'30 วิธีเอาชนะโชคชะตา ','บัณฑิต อึ้งรังษี',175,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(9,'เรียนรู้เครือข่ายและอุปกรณ์ Cisco','ธวัชชัย ชมศิริ, สุชาติ คุ้มมะณี',249,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(10,'มองโลกแบบวิกรม ','วิกรม กรมดิษฐ์, วิมล ไทรนิ่มนวล',100,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(11,'คู่มือสอบใบขับขี่รถยนต์และรถจักรยานยนต์','สมปอง คงนิ่ม',49,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(12,'เว็บไซท์สวย สร้างง่ายด้วย Mambo','กอบเกียรติ สระอุบล',195,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(13,'แฮร์รี่ พอตเตอร์กับเครื่องรางยมทูต เล่ม 7','J.K. ROWLING',495,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(14,'ครบทุกเรื่อง คอมมือใหม่ เข้าใจง่าย','สุธีร์ นวกุล',225,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(15,'เขียนโปรแกรม JAVA เบื้องต้น ','ทศพล ธนะทิพานนท์, วรเศรษฐ สุวรรณิก',195,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(16,'เริ่มต้นเรียนรู้วิทยาการคอมพิวเตอร์','ยอดธง รอดแก้ว, วรเศรษฐ สุวรรณิก',165,5);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(17,'Java GUI using NetBeans ','วรเศรษฐ สุวรรณิก',145,10);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(20,'คัมภีร์ Visual C# 2005','กิตติ',250,1);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(21,'Python','Kraipob',300,2);
REPLACE INTO "tblbook" ("id", "title", "authors", "price", "stock") VALUES
	(22,'Grails','Joe',2,500);
/*!40000 ALTER TABLE "tblbook" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "usId" bigint(20) NOT NULL auto_increment,
  "usUserName" varchar(50) default NULL,
  "usPassword" varchar(15) default NULL,
  "usIsActive" varchar(1) default NULL,
  PRIMARY KEY  ("usId")
);



#
# Dumping data for table 'user'
#

# No data found.



#
# Table structure for table 'users'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "users" (
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "enabled" tinyint(1) NOT NULL,
  PRIMARY KEY  ("username")
);



#
# Dumping data for table 'users'
#

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS;*/
REPLACE INTO "users" ("username", "password", "enabled") VALUES
	('admin','admin',1);
REPLACE INTO "users" ("username", "password", "enabled") VALUES
	('guest','guest',1);
/*!40000 ALTER TABLE "users" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
