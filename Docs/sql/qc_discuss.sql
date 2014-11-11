--
-- 表的结构 `qc_discuss`
--
DROP TABLE IF EXISTS `qc_discuss`;
CREATE TABLE `qc_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讨论id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `memberid` int(11) NOT NULL COMMENT '发布人id',
  `title` varchar(128) NOT NULL COMMENT '讨论标题',
  `content` text NOT NULL COMMENT '讨论内容',
  `ctime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='讨论表' AUTO_INCREMENT=1 ;

