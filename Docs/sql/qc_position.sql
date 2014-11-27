CREATE TABLE IF NOT EXISTS `qc_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长',
  `cid` int(11) NOT NULL COMMENT '所属公司的ID',
  `name` varchar(32) NOT NULL COMMENT '职位名称',
  `intro` varchar(256) NOT NULL COMMENT '职位介绍',
  `power` int(11) NOT NULL COMMENT '权',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='职位表' AUTO_INCREMENT=6 ;

