DROP TABLE IF EXISTS `qc_research_question`;
CREATE TABLE `qc_research_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `researchid` int(11) NOT NULL COMMENT '所属的调查id',
  `title` varchar(128) NOT NULL COMMENT '问题标题',
  `options` text NOT NULL COMMENT '问题选项',
  `option_type` int(2) DEFAULT '1' COMMENT '选项类型(1单选2多选)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='调查问题表' AUTO_INCREMENT=1 ;