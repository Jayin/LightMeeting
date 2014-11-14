DROP TABLE IF EXISTS `qc_research_answer`;
CREATE TABLE `qc_research_answer` (
`id` int(11) NOT NULL COMMENT '回答id',
  `questionid` int(11) NOT NULL COMMENT '问题id',
  `optionid` int(11) NOT NULL COMMENT '选项id',
  `option_content` varchar(1024) NOT NULL COMMENT '回答选项内容',
  `author` int(11) NOT NULL COMMENT '发布人id',
  `ctime` int(10) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调查回答表';