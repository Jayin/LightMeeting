--
-- 表的结构 `qc_member`
--

CREATE TABLE IF NOT EXISTS `qc_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `nickname` varchar(32) DEFAULT NULL COMMENT '昵称',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `sex` char(1) NOT NULL COMMENT '性别',
  `company` int(11) DEFAULT NULL COMMENT '公司id',
  `position` int(11) DEFAULT NULL COMMENT '职位id',
  `phone` varchar(64) DEFAULT NULL COMMENT '电话',
  `email` varchar(64) NOT NULL COMMENT '电子邮箱',
  `birth` int(10) DEFAULT NULL COMMENT '生日',
  `ctime` int(10) NOT NULL COMMENT '注册日期',
  `cIP` varchar(32) NOT NULL COMMENT '注册ip',
  `lasttime` int(10) NOT NULL COMMENT '最后一次登录时间',
  `lastIP` varchar(32) NOT NULL COMMENT '最后一次登录ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;
