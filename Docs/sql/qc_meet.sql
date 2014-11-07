-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 11 月 07 日 11:08
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
-- 表的结构 `qc_meet`
--

CREATE TABLE IF NOT EXISTS `qc_meet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `title` varchar(256) NOT NULL COMMENT '会议主题',
  `intro` varchar(2048) NOT NULL COMMENT '会议介绍',
  `address` varchar(526) NOT NULL COMMENT '会议地址',
  `createmember` int(11) NOT NULL COMMENT '创建人id',
  `weight` int(11) NOT NULL COMMENT '会议权值',
  `starttime` int(10) NOT NULL COMMENT '会议开始时间',
  `endtime` int(10) NOT NULL COMMENT '会议介绍时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=10 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
