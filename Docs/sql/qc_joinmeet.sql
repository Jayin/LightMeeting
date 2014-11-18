
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
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=4 ;


