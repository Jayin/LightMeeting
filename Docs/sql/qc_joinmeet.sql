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
-- 表的结构 `qc_joinmeet`
--

CREATE TABLE IF NOT EXISTS `qc_joinmeet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `meetid` int(11) NOT NULL COMMENT '会议id',
  `memberid` int(11) NOT NULL COMMENT '会员id',
  `powerid` int(11) NOT NULL COMMENT '会议中的身份',
  `stime` int(10) NOT NULL COMMENT '参加会议',
  `etime` int(10) DEFAULT NULL COMMENT '退出会议',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=4 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
