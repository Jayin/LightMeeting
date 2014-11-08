--
-- 表的结构 `qc_vote_member`
--
DROP TABLE IF EXISTS `qc_vote_member`;
CREATE TABLE `qc_vote_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一次投票记录标识id',
  `optionsid` int(11) NOT NULL COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '投票id',
  `memberid` int(11) NOT NULL COMMENT '用户id',
  `ctime` int(10) NOT NULL COMMENT '投票时间',
  `ip` varchar(32) NOT NULL COMMENT '投票ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票记录' AUTO_INCREMENT=1 ;

