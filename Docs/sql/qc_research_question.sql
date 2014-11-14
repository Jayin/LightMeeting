DROP TABLE IF EXISTS `qc_research_question`;
CREATE TABLE `qc_research_question` (
`id` int(11) NOT NULL COMMENT '回答id',
  `researchid` int(11) NOT NULL COMMENT '问题id',
  `meetid` int(11) NOT NULL COMMENT '选项id',
  `title` varchar(128) NOT NULL COMMENT '回答选项内容',
  `options` text NOT NULL COMMENT '发布人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查问题表';