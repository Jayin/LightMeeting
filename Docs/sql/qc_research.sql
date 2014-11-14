DROP TABLE IF EXISTS `qc_research`;
CREATE TABLE `qc_research` (
`id` int(11) NOT NULL COMMENT '调查表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(128) NOT NULL COMMENT '调查主题',
  `intro` text NOT NULL COMMENT '调查简介',
  `stime` int(11) NOT NULL COMMENT '起始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查表';
