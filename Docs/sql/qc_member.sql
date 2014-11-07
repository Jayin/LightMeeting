-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 11 月 07 日 11:09
-- 服务器版本: 5.5.28
-- PHP 版本: 5.4.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `qcdatabase`
--

-- --------------------------------------------------------

--
-- 表的结构 `qc_member`
--

CREATE TABLE IF NOT EXISTS `qc_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `nickname` varchar(32) DEFAULT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `sex` char(1) NOT NULL COMMENT '性别',
  `company` int(11) DEFAULT NULL COMMENT '公司id',
  `position` int(11) DEFAULT NULL COMMENT '职位id',
  `phone` varchar(64) DEFAULT NULL COMMENT '电话',
  `email` varchar(64) NOT NULL COMMENT '电子邮箱',
  `birth` int(10) DEFAULT NULL COMMENT '生日',
  `ctime` int(10) NOT NULL COMMENT '注册日期',
  `cIP` varchar(32) NOT NULL COMMENT '注册ip',
  `lasttime` int(10) NOT NULL COMMENT '最后一次登录时间',
  `lastIP` varchar(32) NOT NULL COMMENT '最后一次登录ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=9 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
