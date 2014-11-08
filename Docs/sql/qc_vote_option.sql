--
-- 表的结构 `qc_vote_option`
--
DROP TABLE IF EXISTS `qc_vote_option`;
CREATE TABLE `qc_vote_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '所属投票表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议表id',
  `vpintro` varchar(256) NOT NULL COMMENT '选项 介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选项表' AUTO_INCREMENT=1 ;

