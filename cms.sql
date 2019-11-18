/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2019-11-15 16:25:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_ad
-- ----------------------------
DROP TABLE IF EXISTS `tb_ad`;
CREATE TABLE `tb_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告主表id',
  `name` varchar(50) DEFAULT NULL COMMENT '广告组名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1-启用 2-关闭',
  `new_window` tinyint(1) DEFAULT '0' COMMENT '是否新开窗口 0-否 1-是',
  `remarks` varchar(300) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改事件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ad
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ad_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_ad_item`;
CREATE TABLE `tb_ad_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告子表id',
  `ad_id` int(11) NOT NULL COMMENT '对应的广告主表id',
  `title` varchar(100) DEFAULT NULL COMMENT '广告标题',
  `url` varchar(200) DEFAULT NULL COMMENT '跳转 相对地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改事件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ad_id_index` (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_ad_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_artcle
-- ----------------------------
DROP TABLE IF EXISTS `tb_artcle`;
CREATE TABLE `tb_artcle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `category_id` int(11) NOT NULL COMMENT '对应的分类id',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `desc` varchar(400) DEFAULT NULL COMMENT '描述',
  `thumbnail` varchar(500) DEFAULT NULL COMMENT '缩略图 url相对地址',
  `content` text COMMENT '内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0-待审核 1-启用 2-关闭',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改事件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_artcle
-- ----------------------------

-- ----------------------------
-- Table structure for tb_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_basic_info`;
CREATE TABLE `tb_basic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) NOT NULL COMMENT '网站简称',
  `logo` varchar(500) DEFAULT NULL COMMENT 'logo url相对地址',
  `icon` varchar(500) DEFAULT NULL COMMENT '网站图标ico url相对地址',
  `title` varchar(100) NOT NULL COMMENT '网站标题',
  `desc` varchar(300) NOT NULL COMMENT '网站描述',
  `key_words` varchar(100) NOT NULL COMMENT '网站关键词',
  `copyright` varchar(200) NOT NULL COMMENT '网站版权',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父类别id当id=0时说明是根节点,一级类别',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态 1-启用 2-关闭',
  `sort` int(4) DEFAULT NULL COMMENT '排序编号,同类展示顺序,数值相等则自然排序',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改事件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名,账号',
  `password` varchar(50) NOT NULL COMMENT '密码,md5加密',
  `question` varchar(50) NOT NULL COMMENT '找回密码的问题',
  `answer` varchar(50) NOT NULL COMMENT '找回密码的答案',
  `role` int(2) NOT NULL COMMENT '角色 0-管理员,1-普通用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改事件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
