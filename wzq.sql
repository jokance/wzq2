/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : wzq

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-06-29 13:10:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for play
-- ----------------------------
DROP TABLE IF EXISTS `play`;
CREATE TABLE `play` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '//自增id',
  `fromuid` varchar(10) NOT NULL COMMENT '//邀请人id',
  `touid` varchar(10) NOT NULL COMMENT '//被邀请人id',
  `confirm` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//1表示对方没有确认邀请,2表示对方接受邀请',
  `win` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//0表示没有赢，1表示赢',
  `flag` char(5) NOT NULL COMMENT '//表示颜色white \\black',
  `back` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//判断是否是悔棋',
  `qipan` tinyint(1) NOT NULL COMMENT '//棋子颜色',
  `myorder` tinyint(3) unsigned NOT NULL COMMENT '//棋子位置',
  `store` text NOT NULL COMMENT '//棋局信息',
  `listener` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//判断黑棋是否处于监听状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of play
-- ----------------------------
INSERT INTO `play` VALUES ('63', '2wzfn2s', '3lshuhd', '2', '1', 'white', '0', '1', '14', '[[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,1,0,0,-1,0,0],[0,0,0,0,1,1,-1,-1,-1,0],[0,0,0,0,1,0,0,0,-1,0],[0,0,0,0,1,0,0,0,0,0],[0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0]]|[44,26,25,28,34,17,54,27,24,38,14]', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '//自增id',
  `userid` varchar(10) NOT NULL COMMENT '//用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('72', '2wzfn2s');
