--
-- 表的结构 `qc_comment`
--
DROP TABLE IF EXISTS `qc_comment`;
CREATE TABLE `qc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `discussid` int(11) NOT NULL COMMENT '讨论id',
  `reply_member` int(11) NOT NULL COMMENT '评论对象默认是0',
  `author` int(11) NOT NULL COMMENT '回复(评论)人',
  `content` varchar(1024) NOT NULL COMMENT '评论内容',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `cip` varchar(32) NOT NULL COMMENT '创建ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表' AUTO_INCREMENT=1 ;

