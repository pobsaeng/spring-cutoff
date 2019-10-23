# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         localhost
# Database:                     polling_app
# Server version:               5.7.18-log
# Server OS:                    Win64
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2018-06-07 15:16:24
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'polling_app'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "polling_app" /*!40100 DEFAULT CHARACTER SET utf8 */;

USE "polling_app";


#
# Table structure for table 'roles'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "roles" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "name" varchar(60) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "uk_roles_name" ("name"),
  UNIQUE KEY "UK_nb4h0p6txrmfc0xbrd1kglp9t" ("name")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'roles'
#

LOCK TABLES "roles" WRITE;
/*!40000 ALTER TABLE "roles" DISABLE KEYS;*/
REPLACE INTO "roles" ("id", "name") VALUES
	('5','ROLE_ADMIN');
REPLACE INTO "roles" ("id", "name") VALUES
	('4','ROLE_USER');
/*!40000 ALTER TABLE "roles" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "age" int(11) DEFAULT NULL,
  "password" varchar(255) DEFAULT NULL,
  "salary" bigint(20) DEFAULT NULL,
  "username" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id")
);



#
# Dumping data for table 'user'
#

# No data found.



#
# Table structure for table 'users'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "users" (
  "id" bigint(20) NOT NULL AUTO_INCREMENT,
  "name" varchar(40) NOT NULL,
  "username" varchar(15) NOT NULL,
  "email" varchar(40) NOT NULL,
  "password" varchar(100) NOT NULL,
  "created_at" datetime DEFAULT NULL,
  "updated_at" datetime DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "uk_users_username" ("username"),
  UNIQUE KEY "uk_users_email" ("email"),
  UNIQUE KEY "UKr43af9ap4edm43mmtq01oddj6" ("username"),
  UNIQUE KEY "UK6dotkott2kjsp8vw4d0m25fb7" ("email")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'users'
#

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS;*/
REPLACE INTO "users" ("id", "name", "username", "email", "password", "created_at", "updated_at") VALUES
	('1','Kraipob','Saengkhunthod','pobsaeng@gmail.com','$2a$10$BRb5vH97f3vO8ucElmWBmeHvwDgfO08uswfgAuQ/UFMYa31wVDMlu','2018-05-21 16:52:55','2018-05-21 16:52:55');
REPLACE INTO "users" ("id", "name", "username", "email", "password", "created_at", "updated_at") VALUES
	('4','John','john','john@gmail.com','$2a$10$BRb5vH97f3vO8ucElmWBmeHvwDgfO08uswfgAuQ/UFMYa31wVDMlu','2018-06-04 17:33:17','2018-06-04 17:33:17');
REPLACE INTO "users" ("id", "name", "username", "email", "password", "created_at", "updated_at") VALUES
	('5','paew','paew','paew@gmail.com','$2a$10$bYD5a7sS3Bj8WTGap4YQv.htZ1ggnIbegxbRLMcsacdUJ/UGUR4Ky','2018-06-04 17:41:32','2018-06-04 17:41:32');
/*!40000 ALTER TABLE "users" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'user_roles'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user_roles" (
  "user_id" bigint(20) NOT NULL,
  "role_id" bigint(20) NOT NULL,
  PRIMARY KEY ("user_id","role_id"),
  KEY "fk_user_roles_role_id" ("role_id"),
  CONSTRAINT "fk_user_roles_role_id" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
  CONSTRAINT "fk_user_roles_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);



#
# Dumping data for table 'user_roles'
#

LOCK TABLES "user_roles" WRITE;
/*!40000 ALTER TABLE "user_roles" DISABLE KEYS;*/
REPLACE INTO "user_roles" ("user_id", "role_id") VALUES
	('4','4');
REPLACE INTO "user_roles" ("user_id", "role_id") VALUES
	('5','4');
REPLACE INTO "user_roles" ("user_id", "role_id") VALUES
	('1','5');
/*!40000 ALTER TABLE "user_roles" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
