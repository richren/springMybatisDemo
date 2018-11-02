/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mybatisdemo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-11-02 15:38:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_answers
-- ----------------------------
DROP TABLE IF EXISTS `t_answers`;
CREATE TABLE `t_answers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `questionId` bigint(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `t_answers_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `t_questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_answers
-- ----------------------------
INSERT INTO `t_answers` VALUES ('1', '1', '问题1的回答1');
INSERT INTO `t_answers` VALUES ('2', '1', '问题1的回答2');
INSERT INTO `t_answers` VALUES ('3', '2', '问题2的回答1');
INSERT INTO `t_answers` VALUES ('4', '2', '问题2的回答2');

-- ----------------------------
-- Table structure for t_questions
-- ----------------------------
DROP TABLE IF EXISTS `t_questions`;
CREATE TABLE `t_questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_questions
-- ----------------------------
INSERT INTO `t_questions` VALUES ('1', '问题1');
INSERT INTO `t_questions` VALUES ('2', '问题2');
INSERT INTO `t_questions` VALUES ('3', '问题3');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', '蛋蛋1', '1');
INSERT INTO `t_users` VALUES ('2', '蛋蛋2', '2');
INSERT INTO `t_users` VALUES ('3', '蛋蛋3', '3');
INSERT INTO `t_users` VALUES ('4', '蛋蛋4', '4');
INSERT INTO `t_users` VALUES ('5', '蛋蛋5', '5');
INSERT INTO `t_users` VALUES ('6', '蛋蛋6', '6');
INSERT INTO `t_users` VALUES ('7', '蛋蛋7', '7');
INSERT INTO `t_users` VALUES ('8', '蛋蛋8', '8');
INSERT INTO `t_users` VALUES ('9', '蛋蛋9', '9');
INSERT INTO `t_users` VALUES ('10', '蛋蛋10', '10');
INSERT INTO `t_users` VALUES ('11', '蛋蛋11', '11');
INSERT INTO `t_users` VALUES ('12', '蛋蛋12', '12');
INSERT INTO `t_users` VALUES ('13', 'insert2Name', null);
INSERT INTO `t_users` VALUES ('14', 'insert2Name', '12');
INSERT INTO `t_users` VALUES ('15', 'testCache2', '16');
INSERT INTO `t_users` VALUES ('16', 'testCache2', '16');
INSERT INTO `t_users` VALUES ('17', 'testCache2', '16');
