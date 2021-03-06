
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

