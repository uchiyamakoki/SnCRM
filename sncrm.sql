/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : sncrm

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2018-07-12 00:52:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sjzdfl`
-- ----------------------------
DROP TABLE IF EXISTS `sjzdfl`;
CREATE TABLE `sjzdfl` (
  `sjzdflId` int(11) NOT NULL AUTO_INCREMENT,
  `sjzdflmc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjzdflId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjzdfl
-- ----------------------------
INSERT INTO `sjzdfl` VALUES ('1', '企业类型-分类');
INSERT INTO `sjzdfl` VALUES ('2', '企业性质-类型');
INSERT INTO `sjzdfl` VALUES ('3', '开户银行-分类');
INSERT INTO `sjzdfl` VALUES ('4', '信息来源-分类');
INSERT INTO `sjzdfl` VALUES ('5', '客户满意度-分类');

-- ----------------------------
-- Table structure for `sjzdxx`
-- ----------------------------
DROP TABLE IF EXISTS `sjzdxx`;
CREATE TABLE `sjzdxx` (
  `sjzdxxId` int(11) NOT NULL AUTO_INCREMENT,
  `sjzdflId` int(11) DEFAULT NULL,
  `sjzdxxmc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjzdxxId`),
  KEY `sjzdflId` (`sjzdflId`),
  CONSTRAINT `sjzdxx_ibfk_1` FOREIGN KEY (`sjzdflId`) REFERENCES `sjzdfl` (`sjzdflId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjzdxx
-- ----------------------------
INSERT INTO `sjzdxx` VALUES ('1', '1', '“服务业”');
INSERT INTO `sjzdxx` VALUES ('2', '1', '“制造业”');
INSERT INTO `sjzdxx` VALUES ('3', '1', '“金融业”');
INSERT INTO `sjzdxx` VALUES ('4', '1', '“视频业”');
INSERT INTO `sjzdxx` VALUES ('5', '1', '“科技业”');
