/*
Navicat MySQL Data Transfer

Source Server         : demo
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : humanresource_db

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-08-15 21:21:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_tb
-- ----------------------------
DROP TABLE IF EXISTS `admin_tb`;
CREATE TABLE `admin_tb` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL DEFAULT 'normaladmin',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin_tb
-- ----------------------------
INSERT INTO `admin_tb` VALUES ('1', 'admin', '123', 'superadmin');
INSERT INTO `admin_tb` VALUES ('2', 'admin1', '123456', 'normaladmin');

-- ----------------------------
-- Table structure for dept_tb
-- ----------------------------
DROP TABLE IF EXISTS `dept_tb`;
CREATE TABLE `dept_tb` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  `dept_description` varchar(200) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of dept_tb
-- ----------------------------
INSERT INTO `dept_tb` VALUES ('1', 'course', 'make courses');
INSERT INTO `dept_tb` VALUES ('2', 'development', 'Software development');

-- ----------------------------
-- Table structure for employee_tb
-- ----------------------------
DROP TABLE IF EXISTS `employee_tb`;
CREATE TABLE `employee_tb` (
  `emp_id` varchar(20) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `education` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `dept_id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  KEY `pos_id` (`pos_id`),
  CONSTRAINT `employee_tb_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept_tb` (`dept_id`),
  CONSTRAINT `employee_tb_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `position_tb` (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of employee_tb
-- ----------------------------
INSERT INTO `employee_tb` VALUES ('10001', 'Tom', 'male', '18211234567', '524123456@qq.com', 'chengdu', 'Bachelor', '1990-04-30', '1', '1');
INSERT INTO `employee_tb` VALUES ('10002', 'Jack', 'male', '18211234568', '524123457@qq.com', 'chongqing', 'Master', '1986-09-02', '1', '1');
INSERT INTO `employee_tb` VALUES ('10011', 'Rose', 'female', '18211234580', '524198757@qq.com', 'chengdu', 'Bachelor', '1991-11-21', '2', '2');
INSERT INTO `employee_tb` VALUES ('10012', 'Anny', 'female', '18211237580', '594168757@qq.com', 'chengdu', 'Master', '1987-05-11', '2', '2');

-- ----------------------------
-- Table structure for position_tb
-- ----------------------------
DROP TABLE IF EXISTS `position_tb`;
CREATE TABLE `position_tb` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(50) NOT NULL,
  `pos_description` varchar(200) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of position_tb
-- ----------------------------
INSERT INTO `position_tb` VALUES ('1', 'Java course staff', 'make Java courses');
INSERT INTO `position_tb` VALUES ('2', 'front-end engineers', 'responsible for front-end development');

-- ----------------------------
-- Table structure for post_tb
-- ----------------------------
DROP TABLE IF EXISTS `post_tb`;
CREATE TABLE `post_tb` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `attachment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `post_tb_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_tb` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of post_tb
-- ----------------------------
INSERT INTO `post_tb` VALUES ('1', 'Leave notice', 'Please pay attention to holiday safety!', '1', '2017-04-30', null);
INSERT INTO `post_tb` VALUES ('2', '222', '<p>222</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('3', '2', '<p>2</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('4', '1', '<p>1</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('5', '3', '<p>3</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('6', '4', '<p>4</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('7', '5', '<p>5</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('8', '33', '<p>33</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('9', '44', '<p>44</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('10', '333', '<p>333</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('11', '444', '<p>444</p>', '1', '2017-01-24', null);
INSERT INTO `post_tb` VALUES ('12', '555', '<p>555</p>', '1', '2017-01-24', null);
