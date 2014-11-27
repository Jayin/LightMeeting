DROP TABLE IF EXISTS `qc_push_message`;
CREATE TABLE  `qc_push_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `to` text NOT NULL COMMENT '发送对象(a:全部,p_xx个人,，m_xx会议群组)',
  `author` int(11) NOT NULL COMMENT '创建人id',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `content` text NOT NULL COMMENT '发送内容',
  `type` int(2) NOT NULL COMMENT '发送对象类型(1全部，2会议群组，3个人)',
  `msg_id` int(11) NOT NULL DEFAULT 0 COMMENT 'jpush返回的推送消息id，若不为0,说明已经发送成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='推送消息表' AUTO_INCREMENT=17 ;

