--
-- Current Database: `qcdatabase`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `qcdatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qcdatabase`;

--
-- Table structure for table `qc_comment`
--

DROP TABLE IF EXISTS `qc_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `discussid` int(11) NOT NULL COMMENT '讨论id',
  `reply_member` int(11) NOT NULL COMMENT '评论对象默认是0',
  `author` int(11) NOT NULL COMMENT '回复(评论)人',
  `content` varchar(1024) NOT NULL COMMENT '评论内容',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `cip` varchar(32) NOT NULL COMMENT '创建ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_comment`
--

LOCK TABLES `qc_comment` WRITE;
/*!40000 ALTER TABLE `qc_comment` DISABLE KEYS */;
INSERT INTO `qc_comment` VALUES (1,11,0,9,'what is perfect design?',1416303048,'221.4.190.120'),(2,11,0,9,'what is perfect design?',1416303188,'221.4.190.120'),(3,1,0,9,'what is perfect design?',1416303470,'221.4.190.120'),(4,1,0,9,'what is perfect design?',1416303539,'221.4.190.120'),(6,19,0,12,'我也是',1416377393,'221.4.190.91'),(7,19,0,12,'你才是',1416377403,'221.4.190.91'),(8,19,0,12,'你才是',1416377408,'221.4.190.91'),(9,19,0,12,'别不说了',1416377421,'221.4.190.91'),(11,34,0,12,'很方便回家吧',1416454988,'221.4.190.91'),(12,34,0,12,'很方便回家吧',1416454988,'221.4.190.91'),(13,34,0,12,'很方便回家吧',1416454989,'221.4.190.91'),(14,34,0,12,'很方便回家吧',1416454989,'221.4.190.91'),(15,34,0,12,'很方便回家吧',1416454989,'221.4.190.91'),(16,34,0,12,'很方便回家吧',1416454990,'221.4.190.91'),(17,34,0,12,'很方便回家吧',1416454990,'221.4.190.91'),(18,34,0,12,'很方便回家吧',1416454990,'221.4.190.91'),(20,34,0,12,'很方便回家吧',1416454991,'221.4.190.91'),(21,34,0,12,'很方便回家吧',1416454991,'221.4.190.91'),(22,34,0,12,'很方便回家吧',1416454991,'221.4.190.91'),(23,34,0,12,'很方便回家吧',1416454991,'221.4.190.91'),(24,34,0,12,'很方便回家吧',1416454992,'221.4.190.91'),(25,34,0,12,'很方便回家吧',1416454992,'221.4.190.91'),(26,34,0,12,'很方便回家吧',1416454992,'221.4.190.91'),(27,34,0,12,'很方便回家吧',1416454995,'221.4.190.91'),(28,34,0,12,'很方便回家吧',1416454996,'221.4.190.91'),(29,34,0,12,'很方便回家吧',1416454998,'221.4.190.91'),(30,34,0,12,'很方便回家吧',1416454998,'221.4.190.91'),(31,34,0,12,'很方便回家吧',1416454999,'221.4.190.91'),(32,34,0,12,'很方便回家吧',1416454999,'221.4.190.91'),(33,34,0,12,'很方便回家吧',1416454999,'221.4.190.91'),(34,34,0,12,'很方便回家吧',1416454999,'221.4.190.91'),(35,34,0,12,'很方便回家吧',1416455000,'221.4.190.91'),(36,34,0,12,'很方便回家吧',1416455000,'221.4.190.91'),(37,34,0,12,'很方便回家吧',1416455000,'221.4.190.91'),(38,34,0,12,'很方便回家吧',1416455000,'221.4.190.91'),(39,34,0,12,'很方便回家吧',1416455001,'221.4.190.91'),(40,34,0,12,'很方便回家吧',1416455001,'221.4.190.91'),(41,34,0,12,'很方便回家吧',1416455105,'221.4.190.91'),(42,34,0,12,'很方便回家吧',1416455105,'221.4.190.91'),(43,34,0,12,'很方便回家吧',1416455106,'221.4.190.91'),(44,34,0,12,'很方便回家吧',1416455106,'221.4.190.91'),(45,34,0,12,'很方便回家吧',1416455106,'221.4.190.91'),(46,34,0,12,'很方便回家吧',1416455107,'221.4.190.91'),(47,34,0,12,'很方便回家吧',1416455107,'221.4.190.91'),(48,34,0,12,'很方便回家吧',1416455107,'221.4.190.91'),(49,34,0,12,'很方便回家吧',1416455107,'221.4.190.91'),(50,34,0,12,'很方便回家吧',1416455107,'221.4.190.91'),(51,34,0,12,'很方便回家吧',1416455108,'221.4.190.91'),(52,34,0,12,'很方便回家吧',1416455108,'221.4.190.91'),(53,34,0,12,'很方便回家吧',1416455108,'221.4.190.91'),(54,34,0,12,'很方便回家吧',1416455109,'221.4.190.91'),(55,34,0,12,'很方便回家吧',1416455109,'221.4.190.91'),(56,34,0,12,'很方便回家吧',1416455109,'221.4.190.91'),(57,34,0,12,'很方便回家吧',1416455109,'221.4.190.91'),(58,34,0,12,'很方便回家吧',1416455244,'221.4.190.91'),(59,34,0,12,'很方便回家吧',1416455244,'221.4.190.91'),(60,34,0,12,'很方便回家吧',1416455245,'221.4.190.91'),(61,34,0,12,'很方便回家吧',1416455246,'221.4.190.91'),(62,34,0,12,'很方便回家吧',1416455247,'221.4.190.91'),(63,34,0,12,'很方便回家吧',1416455248,'221.4.190.91'),(64,34,0,12,'很方便回家吧',1416455249,'221.4.190.91'),(65,34,0,12,'很方便回家吧',1416455249,'221.4.190.91'),(66,34,0,12,'很方便回家吧',1416455250,'221.4.190.91'),(67,34,0,12,'很方便回家吧',1416455251,'221.4.190.91'),(68,34,0,12,'很方便回家吧',1416455252,'221.4.190.91'),(69,34,0,12,'很方便回家吧',1416455252,'221.4.190.91'),(70,34,0,12,'很方便回家吧',1416455253,'221.4.190.91'),(71,34,0,12,'很方便回家吧',1416455254,'221.4.190.91'),(72,34,0,12,'航天员今天',1416455348,'221.4.190.91'),(73,34,0,12,'航天员今天',1416455350,'221.4.190.91'),(74,34,0,12,'航天员今天',1416455351,'221.4.190.91'),(75,19,0,12,'观看过库房',1416455864,'221.4.190.91'),(76,19,0,12,'观看过库房',1416455864,'221.4.190.91'),(77,19,0,12,'观看过库房',1416455865,'221.4.190.91'),(78,19,0,12,'观看过库房',1416455865,'221.4.190.91'),(79,19,0,12,'观看过库房',1416455866,'221.4.190.91'),(80,19,0,12,'观看过库房',1416455868,'221.4.190.91'),(81,19,0,12,'观看过库房',1416455869,'221.4.190.91'),(82,19,0,12,'观看过库房',1416455869,'221.4.190.91'),(83,19,0,12,'观看过库房',1416455869,'221.4.190.91'),(84,19,0,12,'观看过库房',1416455869,'221.4.190.91'),(85,19,0,12,'观看过库房',1416455870,'221.4.190.91'),(86,19,0,12,'观看过库房',1416455871,'221.4.190.91'),(87,19,0,12,'观看过库房',1416455872,'221.4.190.91'),(88,19,0,12,'观看过库房',1416455873,'221.4.190.91'),(89,19,0,12,'观看过库房',1416455873,'221.4.190.91'),(90,19,0,12,'观看过库房',1416455874,'221.4.190.91'),(91,19,0,12,'观看过库房',1416455875,'221.4.190.91'),(92,19,0,12,'观看过库房',1416455876,'221.4.190.91'),(93,19,0,12,'观看过库房',1416455876,'221.4.190.91'),(94,19,0,12,'观看过库房',1416455877,'221.4.190.91'),(95,19,0,12,'观看过库房',1416455878,'221.4.190.91'),(96,19,0,12,'观看过库房',1416455879,'221.4.190.91'),(97,19,0,12,'观看过库房',1416455880,'221.4.190.91'),(98,19,0,12,'观看过库房',1416455881,'221.4.190.91'),(99,19,0,12,'观看过库房',1416455882,'221.4.190.91'),(100,19,0,12,'观看过库房',1416455882,'221.4.190.91'),(101,19,0,12,'你妹',1416485282,'221.4.190.120'),(102,34,0,12,'碉堡',1416488169,'221.4.190.48'),(103,19,0,26,'你妈逼',1416629158,'221.4.190.108'),(104,25,0,26,'摩擦',1416629206,'221.4.190.108'),(105,36,0,26,'我还是觉得每天考勤七次比较好！',1416664239,'221.4.190.108'),(106,36,0,28,'放一天假嘛',1416666086,'221.4.190.108'),(107,37,0,21,'碉堡',1416749062,'120.197.196.66'),(108,36,0,28,'有人不\'我试下能不能实时通知',1416834645,'120.197.196.29'),(109,36,0,28,'有人不\'我试下能不能实时通知',1416834646,'120.197.196.20'),(110,36,0,28,'有人不\'我试下能不能实时通知',1416834647,'120.197.196.88'),(111,36,0,28,'评论了一条\'竟然没显示',1416834675,'120.197.196.5'),(112,37,0,28,'没显示',1416834690,'120.197.196.17'),(113,36,0,12,'还实时通知卧槽',1416892675,'221.4.190.78'),(114,36,0,12,'我改一下评论自动刷新',1416892703,'221.4.190.78'),(115,36,0,12,'早上在改评论界面！发送按钮在下面太蛋疼了',1416892749,'221.4.190.78'),(116,36,0,12,'我喜欢',1416894254,'221.4.190.78'),(117,36,0,12,'酷炫的新评论界面',1416898646,'221.4.190.78'),(118,36,0,12,'又改了评论的生成',1416922703,'221.4.190.122'),(119,36,0,12,'好像刷新有bug',1416922745,'221.4.190.122'),(120,36,0,12,'好像刷新有bug',1416922760,'221.4.190.122'),(121,36,0,12,'果然有bug',1416922867,'221.4.190.122'),(122,36,0,12,'bug修好了？',1416923029,'221.4.190.122'),(123,36,0,33,'我靠碉堡了',1417074563,'183.54.70.98'),(124,36,0,33,'66666meizhuo加油',1417074733,'183.54.70.98'),(125,36,0,12,'233333',1417075261,'221.4.190.15');
/*!40000 ALTER TABLE `qc_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_discuss`
--

DROP TABLE IF EXISTS `qc_discuss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讨论id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `memberid` int(11) NOT NULL COMMENT '发布人id',
  `title` varchar(128) NOT NULL COMMENT '讨论标题',
  `content` text NOT NULL COMMENT '讨论内容',
  `ctime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='讨论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_discuss`
--

LOCK TABLES `qc_discuss` WRITE;
/*!40000 ALTER TABLE `qc_discuss` DISABLE KEYS */;
INSERT INTO `qc_discuss` VALUES (1,1,10,'product design','How to design a product',1416299784),(2,1,9,'product design','How to design a product',1416299851),(3,1,9,'product design','How to design a product',1416301494),(4,1,9,'product design','How to design a product',1416301519),(5,2,9,'product design','How to design a product',1416302308),(6,1,9,'product design','How to design a product',1416303047),(7,0,11,'摩擦擦','摩擦擦',1416318005),(8,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375718),(9,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375739),(10,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375739),(11,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375739),(12,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375739),(13,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375739),(14,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375740),(15,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375741),(16,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375741),(17,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375741),(18,125,11,'炼哥是傻逼？','炼哥是傻逼',1416375741),(19,126,12,'讨论','我我as',1416376152),(25,126,12,'我的滑板鞋','摩擦摩擦',1416376320),(26,126,12,'我的滑板鞋','摩擦摩擦',1416376322),(27,126,12,'谁最大','天下最大',1416376478),(28,126,12,'谁最大','天下最大',1416376481),(29,126,12,'卧槽','麻袋去',1416376501),(30,126,12,'卧槽','麻袋去',1416376503),(31,125,11,'炼哥都比','炼哥都比',1416400076),(32,126,12,'你摸','你女',1416400505),(33,126,12,'炼哥都比','炼哥都比',1416400604),(34,126,12,'灭火','你儿子',1416400647),(35,126,26,'我是你爸爸','我就是你爸爸',1416651732),(36,128,26,'考勤制度','1. 每周至少签到六次，连续三周考勤次数不够，负责人将会予以劝退。\n2. 考勤为填表的形式，负责人会不定时检查，严格惩罚弄虚作假。\n3. 切记每次到来工作室填写好考勤表。\n4. 考勤表每周一更换一次，由负责人负责打印出来。',1416664046),(37,128,26,'项目制度','1. 以指导老师以及负责人下达的项目优先，项目进度须每周在会议上总结报告。\n2. 工作室成员自行接项目须向负责人说明，以工作室内部成员为主体展开项目，并且每周在会议上总结报告。\n3. 项目过程由各个小组长协调安排人手，在小组长的带领下完成。如无项目在做，小组长须适当安排学习任务，并且实时跟进。',1416664070),(38,128,26,'开会制度','1. 每周召开部门会议，每两周召开全体会议，开全体会议的一周不强求召开小组会议，全体会议之后，小组长可以自行安排小组会议。\n2. 例会请假需告知负责人，待允许后方可缺席。无故缺席三次者将予以劝退。例会时间：每周五晚10点。\n3. 小组会议由各小组长组织召开，全体会议由负责人组织召开。\n4. 小组会议内容主要为学习进度以及项目进度总结，提出问题，共同商讨解决问题的方案。全体会议上小组长须向负责人报告小组成员的状况，以及在做项目进度等。全体会议上可以提出工作室完善方面的具有建设性的建议。',1416664092);
/*!40000 ALTER TABLE `qc_discuss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_document`
--

DROP TABLE IF EXISTS `qc_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `meetid` int(11) NOT NULL COMMENT '会议id',
  `memberid` int(11) NOT NULL COMMENT '发布人id',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '文档内容',
  `ctime` int(10) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_document`
--

LOCK TABLES `qc_document` WRITE;
/*!40000 ALTER TABLE `qc_document` DISABLE KEYS */;
INSERT INTO `qc_document` VALUES (3,126,12,'时间','会给你答案',1416376720),(4,126,12,'碉堡了','我我我我我去',1416376760),(5,126,12,'酷炫','吊炸天',1416376786),(6,126,12,'酷炫','吊炸天',1416376793),(7,126,12,'酷炫','吊炸天',1416376794),(8,126,12,'ios很封闭','android很开放',1416376832),(9,126,12,'ios很封闭','android很开放',1416376835),(10,126,12,'擦擦擦','你知己去',1416376859),(11,126,12,'擦擦擦','你知己去',1416376861),(12,126,12,'十五的月亮','圆圆',1416376905),(13,126,12,'十五的月亮','圆圆',1416376906),(14,126,12,'github','pull与push',1416376936),(16,20,10,'topic','what do we talk today?',1416387793),(17,15,10,'topic','what do we talk today?',1416387799),(18,126,12,'吃饭','睡觉',1416627143),(19,126,12,'你妹','呵呵',1416654674),(20,128,26,'袂卓制度','<p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">一、日常遵守制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">学习、工作期间</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">不得在工作室大声喧哗</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">，影响他人，需要讨论的问题尽量低声，快速完成。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">个人电脑台面装饰不得影响他人或团队形象</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;<span style=\"font-family:宋体\">有公款报销需出示票据证明。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">4.&nbsp;<span style=\"font-family:宋体\">工作室只限于内部成员使用，禁止外人随意进入，除非有工作需求，须向负责人说明。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">5.&nbsp;<span style=\"font-family:宋体\">每周提交学习或者项目的进度报告，</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">连续三次未提交者，负责人将会予以劝退</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">6.&nbsp;<span style=\"font-family:宋体\">存在意见或分歧者，积极主动沟通或由负责人调解</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">7.&nbsp;<span style=\"font-family:宋体\">不得将个人感情带入工作中，营造良好的工作氛围。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">二、卫生制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>1．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">注重个人区域卫生，每次离开前整理台面，如发现特别不注重卫生者，负责人发现将进行相应惩罚。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>2．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">每日值日采用轮组制，值日人员分组见值日安排表。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>3．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">当天值日人员需要通知下一天值日人员。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>4．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">每日值日范围为工作区、过道。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>5．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">值日内容为扫地、拖地、倒垃圾、清理公共台面垃圾（</span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">注：个人台面个人负责</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">）。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>6．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">每月大清洁，清理范围增加走廊、窗户和门玻璃，牌匾。&nbsp;</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-size:14px;font-family:&#39;宋体&#39;\"><span>7．</span></span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">由卫生部部长安排指挥。（</span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">时间定为每月最后一个星期二</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">）。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">三、财务制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">工作室的所有经费由经济管理学院电子商务专业拨款，包括工作室的设备设施，学习资源，基本生活用品。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">工作室主要由项目成员捐赠，强制收取，但不要求金额数量，视项目的总体收取。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;<span style=\"font-family:宋体\">工作室的经费全部用于工作室的建设，包括不含于报销范畴的物品购置，工作室聚会等等。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">4.&nbsp;<span style=\"font-family:宋体\">工作室财务统一财务部长管理，支出跟收入必须做详细的财务报表，定时公开。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">5.&nbsp;</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">四、考勤制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">每周至少签到六次，</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">连续三周考勤次数不够，负责人将会予以劝退</span><span style=\"font-size: 14px; font-family: &quot;宋体&quot;;\">。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">考勤为填表的形式，负责人会不定时检查，严格惩罚弄虚作假。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;<span style=\"font-family:宋体\">切记每次到来工作室填写好考勤表。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">4.&nbsp;<span style=\"font-family:宋体\">考勤表每周一更换一次，由负责人负责打印出来。</span></span></span> </p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">五、项目制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">以</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">指导老师以及负责人下达的项目优先</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">，项目进度须每周在会议上总结报告。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">工作室成员自行接项目须向负责人说明，以</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">工作室内部成员为主体展开项目</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">，并且每周在会议上总结报告。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;</span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">项目过程由各个小组长协调安排人手，在小组长的带领下完成</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">。如无项目在做，小组长须适当安排学习任务，并且实时跟进。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">六、开会制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">每周召开部门会议，每两周召开全体会议，开全体会议的一周不强求召开小组会议，全体会议之后，小组长可以自行安排小组会议。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">例会请假需告知负责人，待允许后方可缺席。</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">无故缺席三次者将予以劝退</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">。例会时间：每周五晚<span style=\"font-family:Times New Roman\">10</span><span style=\"font-family:宋体\">点。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;<span style=\"font-family:宋体\">小组会议由各小组长组织召开，全体会议由负责人组织召开。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">4.&nbsp;<span style=\"font-family:宋体\">小组会议内容主要为学习进度以及项目进度总结，提出问题，共同商讨解决问题的方案。全体会议上小组长须向负责人报告小组成员的状况，以及在做项目进度等。全体会议上可以提出工作室完善方面的具有建设性的建议。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">&nbsp;</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\"font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\"><span>七、</span></span><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">图书借阅制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">工作室目前两个图书柜，存放的图书严格统计数目。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;.<span style=\"font-family:宋体\">书籍借阅、转借其他队友需严格登记，不得外借。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">3.&nbsp;<span style=\"font-family:宋体\">需要购买报销的书籍须提前向工作室负责人通报审核。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">八、公共财物安全制度</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">进入工作室须配置电梯门口的钥匙（</span></span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">两把，暂且由总负责人携带</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">），以及进入工作室的钥匙（</span><span style=\"font-weight: bold; font-size: 14px; font-family: &quot;宋体&quot;;\">四把，由工作室四位主要负责人携带</span><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">）。</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">最后出门者须检查电器、门窗、并且确保已经锁好了门。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">九、工作室劝退</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">1.&nbsp;<span style=\"font-family:宋体\">违反上述红色标志条例，负责人将予以劝退。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">2.&nbsp;<span style=\"font-family:宋体\">因个人情况可能导致未来自己暂时不符合工作室要求者，需提前申请退出，否则视作自动放弃。</span></span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;黑体&#39;\">&nbsp;</span></span></p><p style=\";margin-top:0;margin-bottom:0;text-autospace:ideograph-numeric;text-autospace:ideograph-other;text-align:justify;line-height:125%;vertical-align:\"><span style=\"color:#000000\"><span style=\";font-size:14px;font-family:&#39;宋体&#39;\">&nbsp;</span></span></p><p><span style=\"color:#000000\"><br/></span></p>',1416663708);
/*!40000 ALTER TABLE `qc_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_joinmeet`
--

DROP TABLE IF EXISTS `qc_joinmeet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_joinmeet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `meetid` int(11) NOT NULL COMMENT '会议id',
  `memberid` int(11) NOT NULL COMMENT '会员id',
  `checkin` int(2) NOT NULL DEFAULT '0' COMMENT '签到(0未签到1已填到)',
  `powerid` int(11) NOT NULL COMMENT '会议中的身份',
  `stime` int(10) NOT NULL COMMENT '参加会议',
  `checkin_time` int(10) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_joinmeet`
--

LOCK TABLES `qc_joinmeet` WRITE;
/*!40000 ALTER TABLE `qc_joinmeet` DISABLE KEYS */;
INSERT INTO `qc_joinmeet` VALUES (4,1,11,0,0,1416319788,NULL),(5,124,11,0,0,1416375149,NULL),(6,125,11,0,0,1416375599,NULL),(9,127,9,0,0,1416451128,NULL),(12,126,26,0,0,1416629119,NULL),(13,0,21,0,0,1416636939,NULL),(14,0,21,0,0,1416636953,NULL),(15,0,21,0,0,1416636963,NULL),(16,0,21,0,0,1416640375,NULL),(17,0,26,0,0,1416642080,NULL),(18,0,26,0,0,1416642101,NULL),(19,0,26,0,0,1416642112,NULL),(21,0,12,0,0,1416665733,NULL),(23,0,28,0,0,1416665830,NULL),(25,128,28,0,0,1416666019,NULL),(29,128,26,0,0,1416668180,NULL),(30,128,21,0,0,1416668479,NULL),(33,128,31,0,0,1416748477,NULL),(36,128,11,0,0,1416750463,NULL),(37,128,12,0,0,1416750498,NULL),(38,128,33,0,0,1417074535,NULL);
/*!40000 ALTER TABLE `qc_joinmeet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_meet`
--

DROP TABLE IF EXISTS `qc_meet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_meet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `title` varchar(256) NOT NULL COMMENT '会议主题',
  `intro` varchar(2048) NOT NULL COMMENT '会议介绍',
  `address` varchar(526) NOT NULL COMMENT '会议地址',
  `createmember` int(11) NOT NULL COMMENT '创建人id',
  `weight` int(11) NOT NULL COMMENT '会议权值',
  `starttime` int(10) NOT NULL COMMENT '会议开始时间',
  `endtime` int(10) NOT NULL COMMENT '会议介绍时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_meet`
--

LOCK TABLES `qc_meet` WRITE;
/*!40000 ALTER TABLE `qc_meet` DISABLE KEYS */;
INSERT INTO `qc_meet` VALUES (11,'好的','你妹','没做',11,0,1411651825,1411657200),(12,'好的','你妹','没做',11,0,1411651825,1411657200),(13,'No need','你妹','北主楼1609',11,0,1415710825,1415714425),(14,'好的','你妹','没做',11,0,1411651825,1411657200),(16,'No need','你妹','北主楼1609',11,0,1415710825,1415714425),(17,'好的','你妹','没做',11,0,1411651825,1411657200),(18,'好的','你妹','没做',11,0,1411651825,1411657200),(19,'好的','你妹','没做',11,0,1411651825,1411657200),(20,'No need','第一次','北主楼1609',11,0,1415710825,1415714425),(21,'会议','第一次','江门',11,0,1411651825,1411651825),(22,'No need','第一次','北主楼1609',11,0,1415710825,1415714425),(23,'会议','第一次','江门',11,0,1411651825,1411651825),(24,'会议','第一次','江门',11,0,1411651825,1411651825),(25,'第一次会议','','工作室',11,0,1411651825,1411655425),(26,'第一次会议','','工作室',11,0,1411651825,1411655425),(27,'第一次会议','','工作室',11,0,1411651825,1411655425),(28,'开源','','江门',11,0,1411655425,1411651825),(29,'开源','','江门',11,0,1411655425,1411651825),(30,'开源','','江门',11,0,1411655425,1411651825),(31,'开源','','江门',11,0,1411655425,1411651825),(32,'开源','','江门',11,0,1411655425,1411651825),(33,'开源','','江门',11,0,1411655425,1411651825),(34,'开源','','江门',11,0,1411655425,1411651825),(35,'开源','','江门',11,0,1411655425,1411651825),(36,'好的','你妹','没做',11,0,1411651825,1411657200),(37,'好的','你妹','没做',11,0,1411651825,1411657200),(38,'好的','你妹','没做',11,0,1411651825,1411657200),(39,'好的','你妹','没做',11,0,1411651825,1411657200),(40,'好的','你妹','没做',11,0,1411651825,1411657200),(41,'好的','你妹','没做',11,0,1411651825,1411657200),(42,'好的','你妹','没做',11,0,1411651825,1411657200),(43,'好的','你妹','没做',11,0,1411651825,1411657200),(44,'会偶','','这里',11,0,1411651825,1411655425),(45,'会偶','','这里',11,0,1411651825,1411655425),(46,'会偶','','这里',11,0,1411651825,1411655425),(47,'会偶','','这里',11,0,1411651825,1411655425),(48,'会偶','','这里',11,0,1411651825,1411655425),(49,'会偶','','这里',11,0,1411651825,1411655425),(50,'会偶','','这里',11,0,1411651825,1411655425),(51,'会偶','','这里',11,0,1411651825,1411655425),(52,'会偶','','这里',11,0,1411651825,1411655425),(53,'会偶','','这里',11,0,1411651825,1411655425),(54,'会偶','','这里',11,0,1411651825,1411655425),(55,'会偶','','这里',11,0,1411651825,1411655425),(56,'会偶','','这里',11,0,1411651825,1411655425),(57,'会偶','','这里',11,0,1411651825,1411655425),(58,'会偶','','这里',11,0,1411651825,1411655425),(59,'开始','','这里',11,0,1411651825,1411651825),(60,'开始','','这里',11,0,1411651825,1411651825),(61,'开始','','这里',11,0,1411651825,1411651825),(62,'开始','','这里',11,0,1411651825,1411651825),(63,'开始','','这里',11,0,1411651825,1411651825),(64,'开始','','这里',11,0,1411651825,1411651825),(65,'开始','','这里',11,0,1411651825,1411651825),(66,'开始','','这里',11,0,1411651825,1411651825),(67,'开始','','这里',11,0,1411651825,1411651825),(68,'开始','','这里',11,0,1411651825,1411651825),(69,'开始','','这里',11,0,1411651825,1411651825),(70,'开始','','这里',11,0,1411651825,1411651825),(71,'开始','','这里',11,0,1411651825,1411651825),(72,'开始','','这里',11,0,1411651825,1411651825),(73,'开始','','这里',11,0,1411651825,1411651825),(74,'开始','','这里',11,0,1411651825,1411651825),(75,'开始','','这里',11,0,1411651825,1411651825),(76,'开始','','这里',11,0,1411651825,1411651825),(77,'开始','','这里',11,0,1411651825,1411651825),(78,'开始','','这里',11,0,1411651825,1411651825),(79,'开始','','这里',11,0,1411651825,1411651825),(80,'开始','','这里',11,0,1411651825,1411651825),(81,'开始','','这里',11,0,1411651825,1411651825),(82,'开始','','这里',11,0,1411651825,1411651825),(83,'开始','','这里',11,0,1411651825,1411651825),(84,'开始','','这里',11,0,1411651825,1411655425),(85,'开始','','这里',11,0,1411651825,1411655425),(86,'开始','','这里',11,0,1411651825,1411655425),(87,'开始','','这里',11,0,1411651825,1411655425),(88,'开始','','这里',11,0,1411651825,1411655425),(89,'开始','','这里',11,0,1411651825,1411655425),(90,'开始','','这里',11,0,1411651825,1411655425),(91,'开始','','这里',11,0,1411651825,1411655425),(92,'开始','','这里',11,0,1411651825,1411655425),(93,'开始','','这里',11,0,1411651825,1411655425),(94,'开始','','这里',11,0,1411651825,1411655425),(95,'开始','','这里',11,0,1411651825,1411655425),(96,'开始','','这里',11,0,1411651825,1411655425),(97,'开始','','这里',11,0,1411651825,1411655425),(98,'开始','','这里',11,0,1411651825,1411655425),(99,'开始','','这里',11,0,1411651825,1411655425),(100,'开始','','这里',11,0,1411651825,1411655425),(101,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(102,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(103,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(104,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(105,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(106,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(107,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(108,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(109,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(110,'开始前会议','','滑板鞋',11,0,1411651825,1411655425),(111,'开会','','卧槽',11,0,1411651825,1411651825),(112,'开会','','卧槽',11,0,1411651825,1411651825),(113,'开会','','卧槽',11,0,1411651825,1411651825),(114,'开会','','卧槽',11,0,1411651825,1411651825),(115,'开会','','卧槽',11,0,1411651825,1411651825),(116,'开会','','卧槽',11,0,1411651825,1411651825),(117,'开会','','卧槽',11,0,1411651825,1411651825),(118,'开会','','卧槽',11,0,1411651825,1411651825),(119,'开会','','卧槽',11,0,1411651825,1411651825),(120,'开会','','卧槽',11,0,1411651825,1411651825),(121,'开会','','卧槽',11,0,1411651825,1411651825),(122,'nice','','wyu',11,0,1356969600,1356969600),(123,'nice','','wyu',11,0,1356969600,1356969600),(125,'炼哥','','炼哥逗比',11,0,1304438400,1307462400),(126,'ThinkPHP分享会','讲述使用ThinkPHP时跳过的坑','北主楼1608',12,0,1416368460,1416454860),(127,'the meeting','','北主楼1608',9,0,1415635200,1415635200);
/*!40000 ALTER TABLE `qc_meet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_member`
--

DROP TABLE IF EXISTS `qc_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_member` (
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_member`
--

LOCK TABLES `qc_member` WRITE;
/*!40000 ALTER TABLE `qc_member` DISABLE KEYS */;
INSERT INTO `qc_member` VALUES (9,'admine','admine','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'123456@qq.com',1356969600,1416295788,'221.4.190.120',1416295788,'221.4.190.120'),(10,'admine1','admine1','e10adc3949ba59abbe56e057f20f883e','m',NULL,NULL,NULL,'123456@qq.com',1356969600,1416295865,'221.4.190.120',1416295865,'221.4.190.120'),(11,'jaking','jaking','b59c67bf196a4758191e42f76670ceba','m',NULL,NULL,NULL,'771993313@qq.com',0,1416316761,'221.4.190.91',1416316761,'221.4.190.91'),(12,'jacky','jacky','b59c67bf196a4758191e42f76670ceba','m',NULL,NULL,NULL,'771993313@qq.com',1416844800,1416366515,'221.4.190.91',1416366515,'221.4.190.91'),(13,'ting','jacky','b59c67bf196a4758191e42f76670ceba','m',NULL,NULL,NULL,'771993313@qq.com',0,1416366536,'221.4.190.91',1416366536,'221.4.190.91'),(14,'admin1','admin1','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'123456@qq.com',1356969600,1416366553,'221.4.190.48',1416366553,'221.4.190.48'),(15,'admin2','nickname2','202cb962ac59075b964b07152d234b70','f',NULL,NULL,NULL,'2333@qq.com',0,1416368694,'221.4.190.48',1416368694,'221.4.190.48'),(16,'admine3','admine3','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'',0,1416405105,'221.4.190.120',1416405105,'221.4.190.120'),(17,'en','en','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'',0,1416405226,'221.4.190.120',1416405226,'221.4.190.120'),(18,'admine5','admine3','202cb962ac59075b964b07152d234b70','f',NULL,NULL,NULL,'',0,1416447941,'221.4.190.120',1416447941,'221.4.190.120'),(19,'admine6','admine3','e10adc3949ba59abbe56e057f20f883e','m',NULL,NULL,NULL,'123456@qq.com',1356969600,1416448425,'221.4.190.120',1416448425,'221.4.190.120'),(20,'jayin','jayin ','82fe2ff113ee6e7a1808161b506eee75','m',NULL,NULL,NULL,'g@qq.com',0,1416497503,'120.197.202.41',1416497503,'120.197.202.41'),(21,'jayin1','jayin 1','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'g@qq.com',0,1416497871,'120.197.196.72',1416497871,'120.197.196.72'),(22,'ww','ww','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'qq@ww.com',0,1416535918,'221.4.190.48',1416535918,'221.4.190.48'),(23,'www','ww','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'ww@qq.comw',0,1416536882,'221.4.190.48',1416536882,'221.4.190.48'),(24,'test1','jayin','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'test@qq.com',0,1416537015,'221.4.190.48',1416537015,'221.4.190.48'),(25,'admine61','admine61','202cb962ac59075b964b07152d234b70','m',NULL,NULL,NULL,'1234567@qq.com',1356969600,1416579479,'221.4.190.78',1416579479,'221.4.190.78'),(26,'zhlhuang','黄振炼','698d51a19d8a121ce581499d7b701668','m',NULL,NULL,'15088132444','364626853@qq.com',729964800,1416629070,'221.4.190.108',1416629070,'221.4.190.108'),(27,'jason','杨先生','b59c67bf196a4758191e42f76670ceba','m',NULL,NULL,NULL,'782394631@qq.com',0,1416662996,'221.4.190.48',1416662996,'221.4.190.48'),(28,'Simon','杨生','827ccb0eea8a706c4c34a16891f84e7b','m',NULL,NULL,NULL,'1944291295@qq.com',0,1416665781,'221.4.190.108',1416665781,'221.4.190.108'),(29,'Lov_MP','梦梦哒','486cd6aaa144f8b8e3e52236a9a504b3','f',NULL,NULL,NULL,'910858020@qq.com',0,1416667542,'27.45.2.22',1416667542,'27.45.2.22'),(30,'qqq','abc','698d51a19d8a121ce581499d7b701668','m',NULL,NULL,NULL,'36666@qq.com',0,1416704461,'27.45.39.94',1416704461,'27.45.39.94'),(31,'zjien','zjien','71e965caeeb88b7eb383d999566e293b','m',NULL,NULL,NULL,'694396727@qq.com',0,1416748360,'221.4.190.108',1416748360,'221.4.190.108'),(32,'zjien1','zjien1','71e965caeeb88b7eb383d999566e293b','m',NULL,NULL,NULL,'1873866421@qq.con',0,1416749081,'221.4.190.108',1416749081,'221.4.190.108'),(33,'xo5506589','huangruichang','2c14e97e90f1f5196f8828e2cec67d67','m',NULL,NULL,NULL,'532079207@qq.com',0,1417073934,'183.54.70.98',1417073934,'183.54.70.98');
/*!40000 ALTER TABLE `qc_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_push_message`
--

DROP TABLE IF EXISTS `qc_push_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_push_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `to` text NOT NULL COMMENT '发送对象',
  `sendtime` int(10) NOT NULL COMMENT '发送时间',
  `content` text NOT NULL COMMENT '发送内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='推送消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_push_message`
--

LOCK TABLES `qc_push_message` WRITE;
/*!40000 ALTER TABLE `qc_push_message` DISABLE KEYS */;
INSERT INTO `qc_push_message` VALUES (18,'maRuTon',1416447217,'hello'),(19,'maRuTon2',1416447834,'hello2'),(20,'maRuTon2',1416447836,'hello2'),(21,'maRuTon2',1416447838,'hello2'),(22,'maRuTon2',1416447839,'hello2'),(23,'maRuTon2',1416447840,'hello2'),(24,'maRuTon2',1416447841,'hello2'),(25,'maRuTon2',1416447842,'hello2'),(26,'maRuTon2',1416447843,'hello2'),(27,'maRuTon2',1416447843,'hello2'),(28,'maRuTon2',1416447844,'hello2'),(29,'maRuTon2',1416447845,'hello2'),(30,'maRuTon2',1416447846,'hello2'),(31,'maRuTon2',1416447847,'hello2'),(32,'maRuTon2',1416447847,'hello2'),(33,'maRuTon2',1416447848,'hello2');
/*!40000 ALTER TABLE `qc_push_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_research`
--

DROP TABLE IF EXISTS `qc_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_research` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '调查表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(128) NOT NULL COMMENT '调查主题',
  `intro` text NOT NULL COMMENT '调查简介',
  `stime` int(11) NOT NULL COMMENT '起始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='调查表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_research`
--

LOCK TABLES `qc_research` WRITE;
/*!40000 ALTER TABLE `qc_research` DISABLE KEYS */;
INSERT INTO `qc_research` VALUES (1,1,'','',0,0),(3,10,'Research','Research sth',1415635200,1415635200),(4,101,'Research','Research sth',1415635200,1415635200),(5,126,'选出','偷我',1412092800,1412092800),(6,126,'选出','偷我',1412092800,1412092800),(7,126,'麦克白咖啡v','的防控',1412092800,1412092800),(8,126,'大发光火人','房管局也',1412092800,1412092800),(9,126,'热一天','哥红太阳',1412092800,1412092800),(10,126,'风哥哥','湖南方工行',1412092800,1412092800),(11,126,'房价高','gv分工会',1412092800,1412092800),(12,126,'发的疯狂减肥','复合风管',1412092800,1412092800),(13,126,'发的疯','复合风管',1412092800,1412092800),(14,126,'发的疯','复合风管',1412092800,1412092800),(15,126,'发的疯','复合风管',1412092800,1412092800),(16,126,'发的疯','复合风管',1412092800,1412092800),(17,126,'发的疯','复合风管',1412092800,1412092800),(18,126,'发的疯','复合风管',1412092800,1412092800),(19,126,'发的疯','复合风管',1412092800,1412092800),(20,126,'发的疯','复合风管',1412092800,1412092800),(21,126,'发的疯','复合风管',1412092800,1412092800),(22,126,'发的疯','复合风管',1412092800,1412092800),(23,128,'你觉得袂卓移动开发工作室是一个什么样的地方?','袂卓移动开发工作室是一个温馨的大家庭',1399305600,1404748800);
/*!40000 ALTER TABLE `qc_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_research_answer`
--

DROP TABLE IF EXISTS `qc_research_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_research_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `questionid` int(11) NOT NULL COMMENT '问题id',
  `optionid` int(11) NOT NULL COMMENT '选项id',
  `option_content` varchar(1024) NOT NULL COMMENT '回答选项内容',
  `author` int(11) NOT NULL COMMENT '发布人id',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='调查回答表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_research_answer`
--

LOCK TABLES `qc_research_answer` WRITE;
/*!40000 ALTER TABLE `qc_research_answer` DISABLE KEYS */;
INSERT INTO `qc_research_answer` VALUES (1,1,1,'I dont know',10,1416313209),(3,7,1,'后台统一',12,1416492796),(4,7,1,'后台统一',12,1416492798),(5,7,1,'后台统一',12,1416492799),(6,7,1,'后台统一',12,1416492800),(7,7,1,'后台统一',12,1416492800),(8,7,1,'后台统一',12,1416492801),(9,7,1,'后台统一',12,1416492802),(10,7,1,'后台统一',12,1416492803),(11,7,1,'后台统一',12,1416492804),(12,7,1,'后台统一',12,1416492805),(13,7,1,'后台统一',12,1416492805),(14,7,1,'后台统一',12,1416492807),(15,7,1,'后台统一',12,1416492807),(16,7,1,'后台统一',12,1416492808),(17,7,1,'后台统一',12,1416492809),(18,7,1,'后台统一',12,1416492810),(19,7,1,'发的功夫管',12,1416493099),(20,7,1,'发的功夫管',12,1416493101),(21,7,1,'发的功夫管',12,1416493102),(22,7,1,'发的功夫管',12,1416493102),(23,7,1,'发的功夫管',12,1416493468),(24,7,1,'发的功夫管',12,1416493469),(25,7,1,'发的功夫管',12,1416493470),(26,7,1,'发的功夫管',12,1416493471),(27,7,1,'发的功夫管',12,1416493471),(28,7,1,'发的功夫管',12,1416493472),(29,7,1,'发的功夫管',12,1416493473),(30,7,1,'发的功夫管',12,1416493474),(31,7,1,'发的功夫管',12,1416493474),(32,7,1,'发的功夫管',12,1416493475),(33,7,1,'发的功夫管',12,1416493475),(34,31,2,'非常喜欢',12,1416809210),(35,31,1,'喜欢',21,1416971518),(36,31,2,'非常喜欢',12,1416984961),(37,31,1,'喜欢',12,1417070083),(38,31,2,'非常喜欢',12,1417070098),(39,31,2,'非常喜欢',33,1417074633);
/*!40000 ALTER TABLE `qc_research_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_research_question`
--

DROP TABLE IF EXISTS `qc_research_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_research_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `researchid` int(11) NOT NULL COMMENT '所属的调查id',
  `title` varchar(128) NOT NULL COMMENT '问题标题',
  `options` text NOT NULL COMMENT '问题选项',
  `option_type` int(2) DEFAULT '1' COMMENT '选项类型(1单选2多选)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='调查问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_research_question`
--

LOCK TABLES `qc_research_question` WRITE;
/*!40000 ALTER TABLE `qc_research_question` DISABLE KEYS */;
INSERT INTO `qc_research_question` VALUES (4,3,'whar do you like?','JSON字符串',1),(5,4,'whar do you like?','JSON字符串',1),(7,5,'施工方','{\"1\":\"man\",\"2\":\"woman\"}',1),(8,5,'大概','{\"1\":\"man\",\"2\":\"woman\"}',1),(9,5,'方便国际饭店','士大夫',1),(10,5,'方便国际饭店','士大夫',1),(11,5,'方便国际饭店','士大夫',1),(12,5,'方便国际饭店','士大夫',1),(13,5,'方便国际饭店','士大夫',1),(14,5,'方便国际饭店','士大夫',1),(15,5,'方便国际饭店','士大夫',1),(16,5,'方便国际饭店','士大夫',1),(17,5,'方便国际饭店','士大夫',1),(18,5,'方便国际饭店','士大夫',1),(19,5,'方便国际饭店','士大夫',1),(20,5,'方便国际饭店','士大夫',1),(21,5,'方便国际饭店','士大夫',1),(22,5,'方便国际饭店','士大夫',1),(23,5,'方便国际饭店','士大夫',1),(24,5,'方便国际饭店','士大夫',1),(25,5,'今天你吃饭了吗？','吃了',1),(26,5,'今天你吃饭了吗？','吃了',1),(27,5,'今天你吃饭了吗？','吃了',1),(28,5,'今天你吃饭了吗？','吃了',1),(29,5,'今天你吃饭了吗？','吃了',1),(30,5,'今天你吃饭了吗？','吃了',1),(31,23,'你喜欢袂卓工作室吗','{\"1\":\"喜欢\",\"2\":\"非常喜欢\"}',1);
/*!40000 ALTER TABLE `qc_research_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_vote`
--

DROP TABLE IF EXISTS `qc_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投票id',
  `meetid` int(11) NOT NULL COMMENT '所属会议id',
  `title` varchar(64) NOT NULL COMMENT '投票主题',
  `intro` varchar(1024) NOT NULL COMMENT '投票简介',
  `ctime` int(10) NOT NULL COMMENT '创建时间',
  `stime` int(10) NOT NULL COMMENT '起始时间',
  `etime` int(10) NOT NULL COMMENT '终止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='投票表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_vote`
--

LOCK TABLES `qc_vote` WRITE;
/*!40000 ALTER TABLE `qc_vote` DISABLE KEYS */;
INSERT INTO `qc_vote` VALUES (1,1,'about sth','the vote of sth ',1416377413,1415635200,1415635200),(2,126,'大概','vote',1416383882,0,0),(3,126,'张家界','任天堂',1416386141,0,0),(4,126,'刚看见后果','发汇通',1416407424,1336233600,1399305600),(5,126,'刚看见后果','发汇通',1416407426,1336233600,1399305600),(6,126,'刚看见后果','发汇通',1416407427,1336233600,1399305600),(7,126,'刚看见后果','发汇通',1416407428,1336233600,1399305600),(8,126,'刚看见后果','发汇通',1416407429,1336233600,1399305600),(9,126,'刚看见后果','发汇通',1416407430,1336233600,1399305600),(10,126,'刚看见后果','发汇通',1416407431,1336233600,1399305600),(11,126,'刚看见后果','发汇通',1416407432,1336233600,1399305600),(12,126,'刚看见后果','发汇通',1416407480,1336233600,1399305600),(13,126,'12','45',1416452558,0,1416423780),(14,128,'关于选取袂卓移动公开发工作室新一任HR','关于选取袂卓测试数据：移动公开发工作室新一任HR，移动公开发工作室新一任HR，移动公开发工作室新一任HR',1416796421,1399392000,1402156800);
/*!40000 ALTER TABLE `qc_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_vote_option`
--

DROP TABLE IF EXISTS `qc_vote_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_vote_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '所属投票表id',
  `meetid` int(11) NOT NULL COMMENT '所属会议表id',
  `vpintro` varchar(256) NOT NULL COMMENT '选项 介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='选项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_vote_option`
--

LOCK TABLES `qc_vote_option` WRITE;
/*!40000 ALTER TABLE `qc_vote_option` DISABLE KEYS */;
INSERT INTO `qc_vote_option` VALUES (2,1,1,'objection'),(3,1,1,'objection'),(4,1,1,'objection'),(5,2,1,'objection'),(6,3,1,'objection'),(7,4,1,'objection'),(8,5,1,'objection'),(9,3,1,'objection'),(10,15,1,'objection15'),(12,3,126,'风格'),(13,3,126,'官方的口感好地方'),(14,3,126,'官方的口感好地方'),(15,3,126,'方法'),(16,2,126,'恶搞'),(17,2,126,'恶搞'),(18,2,126,'恶搞'),(19,2,126,'恶搞'),(20,2,126,'恶搞'),(21,2,126,'恶搞'),(22,2,126,'恶搞'),(23,2,126,'恶搞'),(24,2,126,'恶搞'),(25,2,126,'恶搞'),(26,2,126,'恶搞'),(27,2,126,'恶搞'),(28,2,126,'恶搞'),(29,2,126,'恶搞'),(30,2,126,'恶搞'),(31,2,126,'恶搞'),(32,2,126,'恶搞'),(33,2,126,'恶搞'),(34,2,126,'恶搞'),(35,2,126,'恶搞'),(36,2,126,'恶搞'),(37,2,126,'恶搞'),(38,2,126,'恶搞'),(39,2,126,'恶搞'),(40,2,126,'恶搞'),(41,2,126,'恶搞'),(42,2,126,'恶搞'),(43,2,126,'恶搞'),(44,2,126,'恶搞'),(45,2,126,'恶搞'),(46,2,126,'恶搞'),(47,2,126,'恶搞'),(48,2,126,'恶搞'),(49,2,126,'恶搞'),(50,2,126,'恶搞'),(51,2,126,'恶搞'),(52,2,126,'恶搞'),(53,2,126,'恶搞'),(54,2,126,'恶搞'),(55,2,126,'恶搞'),(56,2,126,'恶搞'),(57,2,126,'恶搞'),(58,2,126,'恶搞'),(59,2,126,'恶搞'),(60,2,126,'恶搞'),(61,2,126,'恶搞'),(62,2,126,'恶搞'),(63,2,126,'萨克到静安寺件到'),(64,2,126,'萨克到静安寺件到'),(65,2,126,'萨克到静安寺件到'),(66,2,126,'萨克到静安寺件到'),(67,2,126,'萨克到静安寺件到'),(68,2,126,'萨克到静安寺件到'),(69,2,126,'萨克到静安寺件到'),(70,2,126,'萨克到静安寺件到'),(71,2,126,'萨克到静安寺件到'),(72,2,126,'萨克到静安寺件到'),(73,2,126,'萨克到静安寺件到'),(74,2,126,'萨克到静安寺件到'),(75,2,126,'萨克到静安寺件到'),(76,2,126,'萨克到静安寺件到'),(77,2,126,'萨克到静安寺件到'),(78,2,126,'萨克到静安寺件到'),(79,2,126,'萨克到静安寺件到'),(80,2,126,'萨克到静安寺件到'),(81,2,126,'萨克到静安寺件到'),(82,2,126,'萨克到静安寺件到'),(83,2,126,'萨克到静安寺件到'),(84,2,126,'萨克到静安寺件到'),(85,2,126,'萨克到静安寺件到'),(86,2,126,'萨克到静安寺件到'),(87,14,128,'杨志海'),(88,14,128,'测试1'),(89,14,128,'测试2');
/*!40000 ALTER TABLE `qc_vote_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_vote_record`
--

DROP TABLE IF EXISTS `qc_vote_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一次投票记录标识id',
  `optionsid` int(11) NOT NULL COMMENT '选项id',
  `voteid` int(11) NOT NULL COMMENT '投票id',
  `memberid` int(11) NOT NULL COMMENT '用户id',
  `ctime` int(10) NOT NULL COMMENT '投票时间',
  `ip` varchar(32) NOT NULL COMMENT '投票ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='投票记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_vote_record`
--

LOCK TABLES `qc_vote_record` WRITE;
/*!40000 ALTER TABLE `qc_vote_record` DISABLE KEYS */;
INSERT INTO `qc_vote_record` VALUES (1,1,1,10,1416378499,'221.4.190.120'),(2,20,2,12,1416471265,'221.4.190.78'),(3,5,2,26,1416629237,'221.4.190.108'),(4,89,14,12,1416800759,'221.4.190.78'),(5,87,14,11,1416816867,'221.4.190.78'),(6,87,14,33,1417074608,'183.54.70.98');
/*!40000 ALTER TABLE `qc_vote_record` ENABLE KEYS */;
UNLOCK TABLES;

