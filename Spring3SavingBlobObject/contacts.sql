-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- โฮสต์: localhost
-- เวลาในการสร้าง: 
-- รุ่นของเซิร์ฟเวอร์: 5.0.51
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- ฐานข้อมูล: `test`
-- 

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `contacts`
-- 

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL auto_increment,
  `FIRSTNAME` varchar(50) default NULL,
  `LASTNAME` varchar(50) default NULL,
  `EMAIL` varchar(50) default NULL,
  `TELEPHONE` varchar(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- dump ตาราง `contacts`
-- 

INSERT INTO `contacts` VALUES (1, 'Kraipob', 'Saengkhunthod', 'pobsaeng@gmail.com', '0989234011');
INSERT INTO `contacts` VALUES (3, 'Elic', 'Johnson', 'pob_itbuu@hotmail.co.th', '8089260836');
INSERT INTO `contacts` VALUES (4, 'Yngwie', 'Malmsteen', 'Yngwie@gmail.com', '0892608341');
INSERT INTO `contacts` VALUES (5, 'Jack', 'Johnson', 'Jack@hotmail.com', '08924563410');
INSERT INTO `contacts` VALUES (6, 'Tasan', 'Bappa', 'Tasan@hotmail.com', '08921113410');
