--
-- 表的结构 `qc_push_message`
--

CREATE TABLE IF NOT EXISTS `qc_push_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `to` text NOT NULL COMMENT '发送对象',
  `sendtime` int(10) NOT NULL COMMENT '发送时间',
  `content` text NOT NULL COMMENT '发送内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='推送消息表' AUTO_INCREMENT=17 ;

