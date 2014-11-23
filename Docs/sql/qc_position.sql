-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2014 at 05:02 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qcdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `qc_position`
--

CREATE TABLE IF NOT EXISTS `qc_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长',
  `cid` int(11) NOT NULL COMMENT '所属公司的ID',
  `name` varchar(32) NOT NULL COMMENT '职位名称',
  `intro` varchar(256) NOT NULL COMMENT '职位介绍',
  `power` int(11) NOT NULL COMMENT '权',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='职位表' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `qc_position`
--

INSERT INTO `qc_position` (`id`, `cid`, `name`, `intro`, `power`, `add_time`) VALUES
(4, 1, '首席技术官CTO', '你懂的', 90, 1416646426),
(5, 1, 'CEO', '你懂的', 90, 1416646462);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
