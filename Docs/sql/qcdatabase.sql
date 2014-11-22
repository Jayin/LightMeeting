-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-11-22 06:42:19
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- 表的结构 `qc_comment`
--

CREATE TABLE IF NOT EXISTS `qc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `discussid` int(11) NOT NULL COMMENT '讨论id',
  `reply_member` int(11) NOT NULL COMMENT '评论对象默认是0',
  `author` int(11) NOT NULL COMMENT '回复(评论)人',
  `content` varchar(1024) NOT NULL COMMENT '评论内容',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `cip` varchar(32) NOT NULL COMMENT '创建ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='评论表' AUTO_INCREMENT=105 ;

--
-- 转存表中的数据 `qc_comment`
--

INSERT INTO `qc_comment` (`id`, `discussid`, `reply_member`, `author`, `content`, `ctime`, `cip`) VALUES
(1, 11, 0, 9, 'what is perfect design?', 1416303048, '221.4.190.120'),
(2, 11, 0, 9, 'what is perfect design?', 1416303188, '221.4.190.120'),
(3, 1, 0, 9, 'what is perfect design?', 1416303470, '221.4.190.120'),
(4, 1, 0, 9, 'what is perfect design?', 1416303539, '221.4.190.120'),
(6, 19, 0, 12, '我也是', 1416377393, '221.4.190.91'),
(7, 19, 0, 12, '你才是', 1416377403, '221.4.190.91'),
(8, 19, 0, 12, '你才是', 1416377408, '221.4.190.91'),
(9, 19, 0, 12, '别不说了', 1416377421, '221.4.190.91'),
(11, 34, 0, 12, '很方便回家吧', 1416454988, '221.4.190.91'),
(12, 34, 0, 12, '很方便回家吧', 1416454988, '221.4.190.91'),
(13, 34, 0, 12, '很方便回家吧', 1416454989, '221.4.190.91'),
(14, 34, 0, 12, '很方便回家吧', 1416454989, '221.4.190.91'),
(15, 34, 0, 12, '很方便回家吧', 1416454989, '221.4.190.91'),
(16, 34, 0, 12, '很方便回家吧', 1416454990, '221.4.190.91'),
(17, 34, 0, 12, '很方便回家吧', 1416454990, '221.4.190.91'),
(18, 34, 0, 12, '很方便回家吧', 1416454990, '221.4.190.91'),
(20, 34, 0, 12, '很方便回家吧', 1416454991, '221.4.190.91'),
(21, 34, 0, 12, '很方便回家吧', 1416454991, '221.4.190.91'),
(22, 34, 0, 12, '很方便回家吧', 1416454991, '221.4.190.91'),
(23, 34, 0, 12, '很方便回家吧', 1416454991, '221.4.190.91'),
(24, 34, 0, 12, '很方便回家吧', 1416454992, '221.4.190.91'),
(25, 34, 0, 12, '很方便回家吧', 1416454992, '221.4.190.91'),
(26, 34, 0, 12, '很方便回家吧', 1416454992, '221.4.190.91'),
(27, 34, 0, 12, '很方便回家吧', 1416454995, '221.4.190.91'),
(28, 34, 0, 12, '很方便回家吧', 1416454996, '221.4.190.91'),
(29, 34, 0, 12, '很方便回家吧', 1416454998, '221.4.190.91'),
(30, 34, 0, 12, '很方便回家吧', 1416454998, '221.4.190.91'),
(31, 34, 0, 12, '很方便回家吧', 1416454999, '221.4.190.91'),
(32, 34, 0, 12, '很方便回家吧', 1416454999, '221.4.190.91'),
(33, 34, 0, 12, '很方便回家吧', 1416454999, '221.4.190.91'),
(34, 34, 0, 12, '很方便回家吧', 1416454999, '221.4.190.91'),
(35, 34, 0, 12, '很方便回家吧', 1416455000, '221.4.190.91'),
(36, 34, 0, 12, '很方便回家吧', 1416455000, '221.4.190.91'),
(37, 34, 0, 12, '很方便回家吧', 1416455000, '221.4.190.91'),
(38, 34, 0, 12, '很方便回家吧', 1416455000, '221.4.190.91'),
(39, 34, 0, 12, '很方便回家吧', 1416455001, '221.4.190.91'),
(40, 34, 0, 12, '很方便回家吧', 1416455001, '221.4.190.91'),
(41, 34, 0, 12, '很方便回家吧', 1416455105, '221.4.190.91'),
(42, 34, 0, 12, '很方便回家吧', 1416455105, '221.4.190.91'),
(43, 34, 0, 12, '很方便回家吧', 1416455106, '221.4.190.91'),
(44, 34, 0, 12, '很方便回家吧', 1416455106, '221.4.190.91'),
(45, 34, 0, 12, '很方便回家吧', 1416455106, '221.4.190.91'),
(46, 34, 0, 12, '很方便回家吧', 1416455107, '221.4.190.91'),
(47, 34, 0, 12, '很方便回家吧', 1416455107, '221.4.190.91'),
(48, 34, 0, 12, '很方便回家吧', 1416455107, '221.4.190.91'),
(49, 34, 0, 12, '很方便回家吧', 1416455107, '221.4.190.91'),
(50, 34, 0, 12, '很方便回家吧', 1416455107, '221.4.190.91'),
(51, 34, 0, 12, '很方便回家吧', 1416455108, '221.4.190.91'),
(52, 34, 0, 12, '很方便回家吧', 1416455108, '221.4.190.91'),
(53, 34, 0, 12, '很方便回家吧', 1416455108, '221.4.190.91'),
(54, 34, 0, 12, '很方便回家吧', 1416455109, '221.4.190.91'),
(55, 34, 0, 12, '很方便回家吧', 1416455109, '221.4.190.91'),
(56, 34, 0, 12, '很方便回家吧', 1416455109, '221.4.190.91'),
(57, 34, 0, 12, '很方便回家吧', 1416455109, '221.4.190.91'),
(58, 34, 0, 12, '很方便回家吧', 1416455244, '221.4.190.91'),
(59, 34, 0, 12, '很方便回家吧', 1416455244, '221.4.190.91'),
(60, 34, 0, 12, '很方便回家吧', 1416455245, '221.4.190.91'),
(61, 34, 0, 12, '很方便回家吧', 1416455246, '221.4.190.91'),
(62, 34, 0, 12, '很方便回家吧', 1416455247, '221.4.190.91'),
(63, 34, 0, 12, '很方便回家吧', 1416455248, '221.4.190.91'),
(64, 34, 0, 12, '很方便回家吧', 1416455249, '221.4.190.91'),
(65, 34, 0, 12, '很方便回家吧', 1416455249, '221.4.190.91'),
(66, 34, 0, 12, '很方便回家吧', 1416455250, '221.4.190.91'),
(67, 34, 0, 12, '很方便回家吧', 1416455251, '221.4.190.91'),
(68, 34, 0, 12, '很方便回家吧', 1416455252, '221.4.190.91'),
(69, 34, 0, 12, '很方便回家吧', 1416455252, '221.4.190.91'),
(70, 34, 0, 12, '很方便回家吧', 1416455253, '221.4.190.91'),
(71, 34, 0, 12, '很方便回家吧', 1416455254, '221.4.190.91'),
(72, 34, 0, 12, '航天员今天', 1416455348, '221.4.190.91'),
(73, 34, 0, 12, '航天员今天', 1416455350, '221.4.190.91'),
(74, 34, 0, 12, '航天员今天', 1416455351, '221.4.190.91'),
(75, 19, 0, 12, '观看过库房', 1416455864, '221.4.190.91'),
(76, 19, 0, 12, '观看过库房', 1416455864, '221.4.190.91'),
(77, 19, 0, 12, '观看过库房', 1416455865, '221.4.190.91'),
(78, 19, 0, 12, '观看过库房', 1416455865, '221.4.190.91'),
(79, 19, 0, 12, '观看过库房', 1416455866, '221.4.190.91'),
(80, 19, 0, 12, '观看过库房', 1416455868, '221.4.190.91'),
(81, 19, 0, 12, '观看过库房', 1416455869, '221.4.190.91'),
(82, 19, 0, 12, '观看过库房', 1416455869, '221.4.190.91'),
(83, 19, 0, 12, '观看过库房', 1416455869, '221.4.190.91'),
(84, 19, 0, 12, '观看过库房', 1416455869, '221.4.190.91'),
(85, 19, 0, 12, '观看过库房', 1416455870, '221.4.190.91'),
(86, 19, 0, 12, '观看过库房', 1416455871, '221.4.190.91'),
(87, 19, 0, 12, '观看过库房', 1416455872, '221.4.190.91'),
(88, 19, 0, 12, '观看过库房', 1416455873, '221.4.190.91'),
(89, 19, 0, 12, '观看过库房', 1416455873, '221.4.190.91'),
(90, 19, 0, 12, '观看过库房', 1416455874, '221.4.190.91'),
(91, 19, 0, 12, '观看过库房', 1416455875, '221.4.190.91'),
(92, 19, 0, 12, '观看过库房', 1416455876, '221.4.190.91'),
(93, 19, 0, 12, '观看过库房', 1416455876, '221.4.190.91'),
(94, 19, 0, 12, '观看过库房', 1416455877, '221.4.190.91'),
(95, 19, 0, 12, '观看过库房', 1416455878, '221.4.190.91'),
(96, 19, 0, 12, '观看过库房', 1416455879, '221.4.190.91'),
(97, 19, 0, 12, '观看过库房', 1416455880, '221.4.190.91'),
(98, 19, 0, 12, '观看过库房', 1416455881, '221.4.190.91'),
(99, 19, 0, 12, '观看过库房', 1416455882, '221.4.190.91'),
(100, 19, 0, 12, '观看过库房', 1416455882, '221.4.190.91'),
(101, 19, 0, 12, '你妹', 1416485282, '221.4.190.120'),
(102, 34, 0, 12, '碉堡', 1416488169, '221.4.190.48'),
(103, 19, 0, 26, '你妈逼', 1416629158, '221.4.190.108'),
(104, 25, 0, 26, '摩擦', 1416629206, '221.4.190.108');

-- --------------------------------------------------------

--
-- 表的结构 `qc_discuss`
--

CREATE TABLE IF NOT EXISTS `qc_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讨论id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `memberid` int(11) NOT NULL COMMENT '发布人id',
  `title` varchar(128) NOT NULL COMMENT '讨论标题',
  `content` text NOT NULL COMMENT '讨论内容',
  `ctime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='讨论表' AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `qc_discuss`
--

INSERT INTO `qc_discuss` (`id`, `meetid`, `memberid`, `title`, `content`, `ctime`) VALUES
(1, 1, 10, 'product design', 'How to design a product', 1416299784),
(2, 1, 9, 'product design', 'How to design a product', 1416299851),
(3, 1, 9, 'product design', 'How to design a product', 1416301494),
(4, 1, 9, 'product design', 'How to design a product', 1416301519),
(5, 2, 9, 'product design', 'How to design a product', 1416302308),
(6, 1, 9, 'product design', 'How to design a product', 1416303047),
(7, 0, 11, '摩擦擦', '摩擦擦', 1416318005),
(8, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375718),
(9, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375739),
(10, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375739),
(11, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375739),
(12, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375739),
(13, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375739),
(14, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375740),
(15, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375741),
(16, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375741),
(17, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375741),
(18, 125, 11, '炼哥是傻逼？', '炼哥是傻逼', 1416375741),
(19, 126, 12, '讨论', '我我as', 1416376152),
(25, 126, 12, '我的滑板鞋', '摩擦摩擦', 1416376320),
(26, 126, 12, '我的滑板鞋', '摩擦摩擦', 1416376322),
(27, 126, 12, '谁最大', '天下最大', 1416376478),
(28, 126, 12, '谁最大', '天下最大', 1416376481),
(29, 126, 12, '卧槽', '麻袋去', 1416376501),
(30, 126, 12, '卧槽', '麻袋去', 1416376503),
(31, 125, 11, '炼哥都比', '炼哥都比', 1416400076),
(32, 126, 12, '你摸', '你女', 1416400505),
(33, 126, 12, '炼哥都比', '炼哥都比', 1416400604),
(34, 126, 12, '灭火', '你儿子', 1416400647);

-- --------------------------------------------------------

--
-- 表的结构 `qc_document`
--

CREATE TABLE IF NOT EXISTS `qc_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `meetid` int(11) NOT NULL COMMENT '会议id',
  `memberid` int(11) NOT NULL COMMENT '发布人id',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '文档内容',
  `ctime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `qc_document`
--

INSERT INTO `qc_document` (`id`, `meetid`, `memberid`, `title`, `content`, `ctime`) VALUES
(3, 126, 12, '时间', '会给你答案', 1416376720),
(4, 126, 12, '碉堡了', '我我我我我去', 1416376760),
(5, 126, 12, '酷炫', '吊炸天', 1416376786),
(6, 126, 12, '酷炫', '吊炸天', 1416376793),
(7, 126, 12, '酷炫', '吊炸天', 1416376794),
(8, 126, 12, 'ios很封闭', 'android很开放', 1416376832),
(9, 126, 12, 'ios很封闭', 'android很开放', 1416376835),
(10, 126, 12, '擦擦擦', '你知己去', 1416376859),
(11, 126, 12, '擦擦擦', '你知己去', 1416376861),
(12, 126, 12, '十五的月亮', '圆圆', 1416376905),
(13, 126, 12, '十五的月亮', '圆圆', 1416376906),
(14, 126, 12, 'github', 'pull与push', 1416376936),
(16, 20, 10, 'topic', 'what do we talk today?', 1416387793),
(17, 15, 10, 'topic', 'what do we talk today?', 1416387799),
(18, 126, 12, '吃饭', '睡觉', 1416627143);

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
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `qc_joinmeet`
--

INSERT INTO `qc_joinmeet` (`id`, `meetid`, `memberid`, `powerid`, `stime`, `etime`) VALUES
(4, 1, 11, 0, 1416319788, NULL),
(5, 124, 11, 0, 1416375149, NULL),
(6, 125, 11, 0, 1416375599, NULL),
(7, 126, 12, 0, 1416375890, NULL),
(9, 127, 9, 0, 1416451128, NULL),
(12, 126, 26, 0, 1416629119, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=128 ;

--
-- 转存表中的数据 `qc_meet`
--

INSERT INTO `qc_meet` (`id`, `title`, `intro`, `address`, `createmember`, `weight`, `starttime`, `endtime`) VALUES
(11, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(12, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(13, 'No need', '你妹', '北主楼1609', 11, 0, 1415710825, 1415714425),
(14, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(16, 'No need', '你妹', '北主楼1609', 11, 0, 1415710825, 1415714425),
(17, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(18, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(19, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(20, 'No need', '第一次', '北主楼1609', 11, 0, 1415710825, 1415714425),
(21, '会议', '第一次', '江门', 11, 0, 1411651825, 1411651825),
(22, 'No need', '第一次', '北主楼1609', 11, 0, 1415710825, 1415714425),
(23, '会议', '第一次', '江门', 11, 0, 1411651825, 1411651825),
(24, '会议', '第一次', '江门', 11, 0, 1411651825, 1411651825),
(25, '第一次会议', '', '工作室', 11, 0, 1411651825, 1411655425),
(26, '第一次会议', '', '工作室', 11, 0, 1411651825, 1411655425),
(27, '第一次会议', '', '工作室', 11, 0, 1411651825, 1411655425),
(28, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(29, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(30, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(31, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(32, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(33, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(34, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(35, '开源', '', '江门', 11, 0, 1411655425, 1411651825),
(36, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(37, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(38, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(39, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(40, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(41, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(42, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(43, '好的', '你妹', '没做', 11, 0, 1411651825, 1411657200),
(44, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(45, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(46, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(47, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(48, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(49, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(50, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(51, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(52, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(53, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(54, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(55, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(56, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(57, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(58, '会偶', '', '这里', 11, 0, 1411651825, 1411655425),
(59, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(60, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(61, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(62, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(63, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(64, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(65, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(66, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(67, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(68, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(69, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(70, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(71, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(72, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(73, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(74, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(75, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(76, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(77, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(78, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(79, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(80, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(81, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(82, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(83, '开始', '', '这里', 11, 0, 1411651825, 1411651825),
(84, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(85, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(86, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(87, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(88, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(89, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(90, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(91, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(92, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(93, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(94, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(95, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(96, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(97, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(98, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(99, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(100, '开始', '', '这里', 11, 0, 1411651825, 1411655425),
(101, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(102, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(103, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(104, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(105, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(106, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(107, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(108, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(109, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(110, '开始前会议', '', '滑板鞋', 11, 0, 1411651825, 1411655425),
(111, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(112, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(113, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(114, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(115, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(116, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(117, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(118, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(119, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(120, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(121, '开会', '', '卧槽', 11, 0, 1411651825, 1411651825),
(122, 'nice', '', 'wyu', 11, 0, 1356969600, 1356969600),
(123, 'nice', '', 'wyu', 11, 0, 1356969600, 1356969600),
(125, '炼哥', '', '炼哥逗比', 11, 0, 1304438400, 1307462400),
(126, '开始回忆', '', '无语', 12, 0, 1416368460, 1416454860),
(127, 'the meeting', '', '北主楼1608', 9, 0, 1415635200, 1415635200);

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
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `qc_member`
--

INSERT INTO `qc_member` (`id`, `username`, `nickname`, `password`, `sex`, `company`, `position`, `phone`, `email`, `birth`, `ctime`, `cIP`, `lasttime`, `lastIP`) VALUES
(9, 'admine', 'admine', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, '123456@qq.com', 1356969600, 1416295788, '221.4.190.120', 1416295788, '221.4.190.120'),
(10, 'admine1', 'admine1', 'e10adc3949ba59abbe56e057f20f883e', 'm', NULL, NULL, NULL, '123456@qq.com', 1356969600, 1416295865, '221.4.190.120', 1416295865, '221.4.190.120'),
(11, 'jaking', 'jaking', 'b59c67bf196a4758191e42f76670ceba', 'm', NULL, NULL, NULL, '771993313@qq.com', 0, 1416316761, '221.4.190.91', 1416316761, '221.4.190.91'),
(12, 'jacky', 'jacky', 'b59c67bf196a4758191e42f76670ceba', 'f', NULL, NULL, NULL, '771993313@qq.com', 0, 1416366515, '221.4.190.91', 1416366515, '221.4.190.91'),
(13, 'ting', 'jacky', 'b59c67bf196a4758191e42f76670ceba', 'm', NULL, NULL, NULL, '771993313@qq.com', 0, 1416366536, '221.4.190.91', 1416366536, '221.4.190.91'),
(14, 'admin1', 'admin1', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, '123456@qq.com', 1356969600, 1416366553, '221.4.190.48', 1416366553, '221.4.190.48'),
(15, 'admin2', 'nickname2', '202cb962ac59075b964b07152d234b70', 'f', NULL, NULL, NULL, '2333@qq.com', 0, 1416368694, '221.4.190.48', 1416368694, '221.4.190.48'),
(16, 'admine3', 'admine3', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, '', 0, 1416405105, '221.4.190.120', 1416405105, '221.4.190.120'),
(17, 'en', 'en', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, '', 0, 1416405226, '221.4.190.120', 1416405226, '221.4.190.120'),
(18, 'admine5', 'admine3', '202cb962ac59075b964b07152d234b70', 'f', NULL, NULL, NULL, '', 0, 1416447941, '221.4.190.120', 1416447941, '221.4.190.120'),
(19, 'admine6', 'admine3', 'e10adc3949ba59abbe56e057f20f883e', 'm', NULL, NULL, NULL, '123456@qq.com', 1356969600, 1416448425, '221.4.190.120', 1416448425, '221.4.190.120'),
(20, 'jayin', 'jayin ', '82fe2ff113ee6e7a1808161b506eee75', 'm', NULL, NULL, NULL, 'g@qq.com', 0, 1416497503, '120.197.202.41', 1416497503, '120.197.202.41'),
(21, 'jayin1', 'jayin 1', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, 'g@qq.com', 0, 1416497871, '120.197.196.72', 1416497871, '120.197.196.72'),
(22, 'ww', 'ww', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, 'qq@ww.com', 0, 1416535918, '221.4.190.48', 1416535918, '221.4.190.48'),
(23, 'www', 'ww', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, 'ww@qq.comw', 0, 1416536882, '221.4.190.48', 1416536882, '221.4.190.48'),
(24, 'test1', 'jayin', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, 'test@qq.com', 0, 1416537015, '221.4.190.48', 1416537015, '221.4.190.48'),
(25, 'admine61', 'admine61', '202cb962ac59075b964b07152d234b70', 'm', NULL, NULL, NULL, '1234567@qq.com', 1356969600, 1416579479, '221.4.190.78', 1416579479, '221.4.190.78'),
(26, 'zhlhuang', '帅哥振炼', '698d51a19d8a121ce581499d7b701668', 'f', NULL, NULL, NULL, '364626853@qq.com', 0, 1416629070, '221.4.190.108', 1416629070, '221.4.190.108');

-- --------------------------------------------------------

--
-- 表的结构 `qc_push_message`
--

CREATE TABLE IF NOT EXISTS `qc_push_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `to` text NOT NULL COMMENT '发送对象',
  `sendtime` int(10) NOT NULL COMMENT '发送时间',
  `content` text NOT NULL COMMENT '发送内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='推送消息表' AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `qc_push_message`
--

INSERT INTO `qc_push_message` (`id`, `to`, `sendtime`, `content`) VALUES
(18, 'maRuTon', 1416447217, 'hello'),
(19, 'maRuTon2', 1416447834, 'hello2'),
(20, 'maRuTon2', 1416447836, 'hello2'),
(21, 'maRuTon2', 1416447838, 'hello2'),
(22, 'maRuTon2', 1416447839, 'hello2'),
(23, 'maRuTon2', 1416447840, 'hello2'),
(24, 'maRuTon2', 1416447841, 'hello2'),
(25, 'maRuTon2', 1416447842, 'hello2'),
(26, 'maRuTon2', 1416447843, 'hello2'),
(27, 'maRuTon2', 1416447843, 'hello2'),
(28, 'maRuTon2', 1416447844, 'hello2'),
(29, 'maRuTon2', 1416447845, 'hello2'),
(30, 'maRuTon2', 1416447846, 'hello2'),
(31, 'maRuTon2', 1416447847, 'hello2'),
(32, 'maRuTon2', 1416447847, 'hello2'),
(33, 'maRuTon2', 1416447848, 'hello2');

-- --------------------------------------------------------

--
-- 表的结构 `qc_research`
--

CREATE TABLE IF NOT EXISTS `qc_research` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '调查表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(128) NOT NULL COMMENT '调查主题',
  `intro` text NOT NULL COMMENT '调查简介',
  `stime` int(11) NOT NULL COMMENT '起始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='调查表' AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `qc_research`
--

INSERT INTO `qc_research` (`id`, `meetid`, `title`, `intro`, `stime`, `etime`) VALUES
(1, 1, '', '', 0, 0),
(3, 10, 'Research', 'Research sth', 1415635200, 1415635200),
(4, 101, 'Research', 'Research sth', 1415635200, 1415635200),
(5, 126, '选出', '偷我', 1412092800, 1412092800),
(6, 126, '选出', '偷我', 1412092800, 1412092800),
(7, 126, '麦克白咖啡v', '的防控', 1412092800, 1412092800),
(8, 126, '大发光火人', '房管局也', 1412092800, 1412092800),
(9, 126, '热一天', '哥红太阳', 1412092800, 1412092800),
(10, 126, '风哥哥', '湖南方工行', 1412092800, 1412092800),
(11, 126, '房价高', 'gv分工会', 1412092800, 1412092800),
(12, 126, '发的疯狂减肥', '复合风管', 1412092800, 1412092800),
(13, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(14, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(15, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(16, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(17, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(18, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(19, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(20, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(21, 126, '发的疯', '复合风管', 1412092800, 1412092800),
(22, 126, '发的疯', '复合风管', 1412092800, 1412092800);

-- --------------------------------------------------------

--
-- 表的结构 `qc_research_answer`
--

CREATE TABLE IF NOT EXISTS `qc_research_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `questionid` int(11) NOT NULL COMMENT '问题id',
  `optionid` int(11) NOT NULL COMMENT '选项id',
  `option_content` varchar(1024) NOT NULL COMMENT '回答选项内容',
  `author` int(11) NOT NULL COMMENT '发布人id',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='调查回答表' AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `qc_research_answer`
--

INSERT INTO `qc_research_answer` (`id`, `questionid`, `optionid`, `option_content`, `author`, `ctime`) VALUES
(1, 1, 1, 'I dont know', 10, 1416313209),
(3, 7, 1, '后台统一', 12, 1416492796),
(4, 7, 1, '后台统一', 12, 1416492798),
(5, 7, 1, '后台统一', 12, 1416492799),
(6, 7, 1, '后台统一', 12, 1416492800),
(7, 7, 1, '后台统一', 12, 1416492800),
(8, 7, 1, '后台统一', 12, 1416492801),
(9, 7, 1, '后台统一', 12, 1416492802),
(10, 7, 1, '后台统一', 12, 1416492803),
(11, 7, 1, '后台统一', 12, 1416492804),
(12, 7, 1, '后台统一', 12, 1416492805),
(13, 7, 1, '后台统一', 12, 1416492805),
(14, 7, 1, '后台统一', 12, 1416492807),
(15, 7, 1, '后台统一', 12, 1416492807),
(16, 7, 1, '后台统一', 12, 1416492808),
(17, 7, 1, '后台统一', 12, 1416492809),
(18, 7, 1, '后台统一', 12, 1416492810),
(19, 7, 1, '发的功夫管', 12, 1416493099),
(20, 7, 1, '发的功夫管', 12, 1416493101),
(21, 7, 1, '发的功夫管', 12, 1416493102),
(22, 7, 1, '发的功夫管', 12, 1416493102),
(23, 7, 1, '发的功夫管', 12, 1416493468),
(24, 7, 1, '发的功夫管', 12, 1416493469),
(25, 7, 1, '发的功夫管', 12, 1416493470),
(26, 7, 1, '发的功夫管', 12, 1416493471),
(27, 7, 1, '发的功夫管', 12, 1416493471),
(28, 7, 1, '发的功夫管', 12, 1416493472),
(29, 7, 1, '发的功夫管', 12, 1416493473),
(30, 7, 1, '发的功夫管', 12, 1416493474),
(31, 7, 1, '发的功夫管', 12, 1416493474),
(32, 7, 1, '发的功夫管', 12, 1416493475),
(33, 7, 1, '发的功夫管', 12, 1416493475);

-- --------------------------------------------------------

--
-- 表的结构 `qc_research_question`
--

CREATE TABLE IF NOT EXISTS `qc_research_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `researchid` int(11) NOT NULL COMMENT '所属的调查id',
  `title` varchar(128) NOT NULL COMMENT '问题标题',
  `options` text NOT NULL COMMENT '问题选项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='调查问题表' AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `qc_research_question`
--

INSERT INTO `qc_research_question` (`id`, `researchid`, `title`, `options`) VALUES
(4, 3, 'whar do you like?', 'JSON字符串'),
(5, 4, 'whar do you like?', 'JSON字符串'),
(7, 5, '施工方', '{"1":"man","2":"woman"}'),
(8, 5, '大概', '{"1":"man","2":"woman"}'),
(9, 5, '方便国际饭店', '士大夫'),
(10, 5, '方便国际饭店', '士大夫'),
(11, 5, '方便国际饭店', '士大夫'),
(12, 5, '方便国际饭店', '士大夫'),
(13, 5, '方便国际饭店', '士大夫'),
(14, 5, '方便国际饭店', '士大夫'),
(15, 5, '方便国际饭店', '士大夫'),
(16, 5, '方便国际饭店', '士大夫'),
(17, 5, '方便国际饭店', '士大夫'),
(18, 5, '方便国际饭店', '士大夫'),
(19, 5, '方便国际饭店', '士大夫'),
(20, 5, '方便国际饭店', '士大夫'),
(21, 5, '方便国际饭店', '士大夫'),
(22, 5, '方便国际饭店', '士大夫'),
(23, 5, '方便国际饭店', '士大夫'),
(24, 5, '方便国际饭店', '士大夫'),
(25, 5, '今天你吃饭了吗？', '吃了'),
(26, 5, '今天你吃饭了吗？', '吃了'),
(27, 5, '今天你吃饭了吗？', '吃了'),
(28, 5, '今天你吃饭了吗？', '吃了'),
(29, 5, '今天你吃饭了吗？', '吃了'),
(30, 5, '今天你吃饭了吗？', '吃了');

-- --------------------------------------------------------

--
-- 表的结构 `qc_vote`
--

CREATE TABLE IF NOT EXISTS `qc_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投票id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(64) NOT NULL COMMENT '投票主题',
  `intro` varchar(1024) NOT NULL COMMENT '投票简介',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `stime` int(10) NOT NULL COMMENT '起始时间',
  `etime` int(10) NOT NULL COMMENT '终止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='投票表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `qc_vote`
--

INSERT INTO `qc_vote` (`id`, `meetid`, `title`, `intro`, `ctime`, `stime`, `etime`) VALUES
(1, 1, 'about sth', 'the vote of sth ', 1416377413, 1415635200, 1415635200),
(2, 126, '大概', 'vote', 1416383882, 0, 0),
(3, 126, '张家界', '任天堂', 1416386141, 0, 0),
(4, 126, '刚看见后果', '发汇通', 1416407424, 1336233600, 1399305600),
(5, 126, '刚看见后果', '发汇通', 1416407426, 1336233600, 1399305600),
(6, 126, '刚看见后果', '发汇通', 1416407427, 1336233600, 1399305600),
(7, 126, '刚看见后果', '发汇通', 1416407428, 1336233600, 1399305600),
(8, 126, '刚看见后果', '发汇通', 1416407429, 1336233600, 1399305600),
(9, 126, '刚看见后果', '发汇通', 1416407430, 1336233600, 1399305600),
(10, 126, '刚看见后果', '发汇通', 1416407431, 1336233600, 1399305600),
(11, 126, '刚看见后果', '发汇通', 1416407432, 1336233600, 1399305600),
(12, 126, '刚看见后果', '发汇通', 1416407480, 1336233600, 1399305600),
(13, 126, '12', '45', 1416452558, 0, 1416423780);

-- --------------------------------------------------------

--
-- 表的结构 `qc_vote_option`
--

CREATE TABLE IF NOT EXISTS `qc_vote_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '所属投票表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议表id',
  `vpintro` varchar(256) NOT NULL COMMENT '选项 介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='选项表' AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `qc_vote_option`
--

INSERT INTO `qc_vote_option` (`id`, `voteid`, `meetid`, `vpintro`) VALUES
(2, 1, 1, 'objection'),
(3, 1, 1, 'objection'),
(4, 1, 1, 'objection'),
(5, 2, 1, 'objection'),
(6, 3, 1, 'objection'),
(7, 4, 1, 'objection'),
(8, 5, 1, 'objection'),
(9, 3, 1, 'objection'),
(10, 15, 1, 'objection15'),
(12, 3, 126, '风格'),
(13, 3, 126, '官方的口感好地方'),
(14, 3, 126, '官方的口感好地方'),
(15, 3, 126, '方法'),
(16, 2, 126, '恶搞'),
(17, 2, 126, '恶搞'),
(18, 2, 126, '恶搞'),
(19, 2, 126, '恶搞'),
(20, 2, 126, '恶搞'),
(21, 2, 126, '恶搞'),
(22, 2, 126, '恶搞'),
(23, 2, 126, '恶搞'),
(24, 2, 126, '恶搞'),
(25, 2, 126, '恶搞'),
(26, 2, 126, '恶搞'),
(27, 2, 126, '恶搞'),
(28, 2, 126, '恶搞'),
(29, 2, 126, '恶搞'),
(30, 2, 126, '恶搞'),
(31, 2, 126, '恶搞'),
(32, 2, 126, '恶搞'),
(33, 2, 126, '恶搞'),
(34, 2, 126, '恶搞'),
(35, 2, 126, '恶搞'),
(36, 2, 126, '恶搞'),
(37, 2, 126, '恶搞'),
(38, 2, 126, '恶搞'),
(39, 2, 126, '恶搞'),
(40, 2, 126, '恶搞'),
(41, 2, 126, '恶搞'),
(42, 2, 126, '恶搞'),
(43, 2, 126, '恶搞'),
(44, 2, 126, '恶搞'),
(45, 2, 126, '恶搞'),
(46, 2, 126, '恶搞'),
(47, 2, 126, '恶搞'),
(48, 2, 126, '恶搞'),
(49, 2, 126, '恶搞'),
(50, 2, 126, '恶搞'),
(51, 2, 126, '恶搞'),
(52, 2, 126, '恶搞'),
(53, 2, 126, '恶搞'),
(54, 2, 126, '恶搞'),
(55, 2, 126, '恶搞'),
(56, 2, 126, '恶搞'),
(57, 2, 126, '恶搞'),
(58, 2, 126, '恶搞'),
(59, 2, 126, '恶搞'),
(60, 2, 126, '恶搞'),
(61, 2, 126, '恶搞'),
(62, 2, 126, '恶搞'),
(63, 2, 126, '萨克到静安寺件到'),
(64, 2, 126, '萨克到静安寺件到'),
(65, 2, 126, '萨克到静安寺件到'),
(66, 2, 126, '萨克到静安寺件到'),
(67, 2, 126, '萨克到静安寺件到'),
(68, 2, 126, '萨克到静安寺件到'),
(69, 2, 126, '萨克到静安寺件到'),
(70, 2, 126, '萨克到静安寺件到'),
(71, 2, 126, '萨克到静安寺件到'),
(72, 2, 126, '萨克到静安寺件到'),
(73, 2, 126, '萨克到静安寺件到'),
(74, 2, 126, '萨克到静安寺件到'),
(75, 2, 126, '萨克到静安寺件到'),
(76, 2, 126, '萨克到静安寺件到'),
(77, 2, 126, '萨克到静安寺件到'),
(78, 2, 126, '萨克到静安寺件到'),
(79, 2, 126, '萨克到静安寺件到'),
(80, 2, 126, '萨克到静安寺件到'),
(81, 2, 126, '萨克到静安寺件到'),
(82, 2, 126, '萨克到静安寺件到'),
(83, 2, 126, '萨克到静安寺件到'),
(84, 2, 126, '萨克到静安寺件到'),
(85, 2, 126, '萨克到静安寺件到'),
(86, 2, 126, '萨克到静安寺件到');

-- --------------------------------------------------------

--
-- 表的结构 `qc_vote_record`
--

CREATE TABLE IF NOT EXISTS `qc_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一次投票记录标识id',
  `optionsid` int(11) NOT NULL COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '投票id',
  `memberid` int(11) NOT NULL COMMENT '用户id',
  `ctime` int(10) NOT NULL COMMENT '投票时间',
  `ip` varchar(32) NOT NULL COMMENT '投票ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='投票记录' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `qc_vote_record`
--

INSERT INTO `qc_vote_record` (`id`, `optionsid`, `voteid`, `memberid`, `ctime`, `ip`) VALUES
(1, 1, 1, 10, 1416378499, '221.4.190.120'),
(2, 20, 2, 12, 1416471265, '221.4.190.78'),
(3, 5, 2, 26, 1416629237, '221.4.190.108');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;