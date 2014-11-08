--
-- 表的结构 `qc_vote`
--
DROP TABLE IF EXISTS `qc_vote`;
CREATE TABLE `qc_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投票id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(64) NOT NULL COMMENT '投票主题',
  `intro` varchar(1024) NOT NULL COMMENT '投票简介',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `stime` int(10) NOT NULL COMMENT '起始时间',
  `etime` int(10) NOT NULL COMMENT '终止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票表' AUTO_INCREMENT=1 ;

