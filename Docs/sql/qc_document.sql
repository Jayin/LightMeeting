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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;


