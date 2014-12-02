-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 12 月 02 日 15:44
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
-- 表的结构 `qc_relation`
--

CREATE TABLE IF NOT EXISTS `qc_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `groupid` int(11) DEFAULT '0' COMMENT '所属组id',
  `hostmemberid` int(11) NOT NULL COMMENT '主人id',
  `vicememberid` int(11) NOT NULL COMMENT '被添加人id',
  `ctime` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='这是一张人脉表，用户可以交换名片' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
