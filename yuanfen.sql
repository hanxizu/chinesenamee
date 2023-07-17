# Host: localhost  (Version: 5.5.53)
# Date: 2018-07-21 11:20:11
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "yiqi_feifa"
#

DROP TABLE IF EXISTS `yiqi_feifa`;
CREATE TABLE `yiqi_feifa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

#
# Data for table "yiqi_feifa"
#

/*!40000 ALTER TABLE `yiqi_feifa` DISABLE KEYS */;
INSERT INTO `yiqi_feifa` VALUES (30,'192.168.1.10','2018-07-14 11:02:14','绕过前端提交数据'),(31,'192.168.1.10','2018-07-14 11:03:18','绕过前端提交数据'),(32,'192.168.1.10','2018-07-14 11:04:07','绕过前端提交数据'),(33,'192.168.1.10','2018-07-14 11:05:09','绕过前端提交数据'),(34,'192.168.1.10','2018-07-14 11:05:17','绕过前端提交数据'),(35,'192.168.1.10','2018-07-14 11:06:15','绕过前端提交数据'),(36,'192.168.1.10','2018-07-14 11:06:47','绕过前端提交数据'),(37,'192.168.1.10','2018-07-14 11:29:12','绕过前端提交数据'),(38,'192.168.1.10','2018-07-14 11:29:33','绕过前端提交数据'),(39,'192.168.1.10','2018-07-14 11:29:35','绕过前端提交数据'),(40,'192.168.1.10','2018-07-14 11:29:54','绕过前端提交数据'),(41,'192.168.1.10','2018-07-14 11:31:25','绕过前端提交数据'),(42,'192.168.1.10','2018-07-14 11:31:52','绕过前端提交数据'),(43,'192.168.1.10','2018-07-14 11:32:11','绕过前端提交数据'),(44,'192.168.1.10','2018-07-15 11:05:29','绕过前端提交数据'),(45,'192.168.1.10','2018-07-15 15:23:30','绕过前端提交数据');
/*!40000 ALTER TABLE `yiqi_feifa` ENABLE KEYS */;

#
# Structure for table "yiqi_user"
#

DROP TABLE IF EXISTS `yiqi_user`;
CREATE TABLE `yiqi_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `vip` int(2) DEFAULT '0',
  `zctime` varchar(50) DEFAULT NULL,
  `zcip` varchar(50) DEFAULT NULL,
  `dltime` varchar(50) DEFAULT NULL,
  `dlip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "yiqi_user"
#

/*!40000 ALTER TABLE `yiqi_user` DISABLE KEYS */;
INSERT INTO `yiqi_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','330729121@qq.com',1,'',NULL,'2018-07-21 09:09:43','192.168.1.10'),(2,'admin2','e10adc3949ba59abbe56e057f20f883e','123456',0,'2018-07-20 17:05:34','192.168.1.10',NULL,NULL),(3,'123456','e10adc3949ba59abbe56e057f20f883e','123@qq.com',0,'2018-07-20 17:06:56','192.168.1.10','2018-07-20 17:07:29','192.168.1.10');
/*!40000 ALTER TABLE `yiqi_user` ENABLE KEYS */;

#
# Structure for table "yiqi_user_login_info"
#

DROP TABLE IF EXISTS `yiqi_user_login_info`;
CREATE TABLE `yiqi_user_login_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `ok` int(3) DEFAULT '0',
  `cishu` int(3) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

#
# Data for table "yiqi_user_login_info"
#

/*!40000 ALTER TABLE `yiqi_user_login_info` DISABLE KEYS */;
INSERT INTO `yiqi_user_login_info` VALUES (30,'admin','192.168.1.10','2018-07-14 12:46:17',0,6),(31,'123456','192.168.1.10','2018-07-14 12:32:34',0,0),(32,'admin','192.168.1.10','2018-07-14 13:57:46',1,0),(33,'admin','192.168.1.10','2018-07-14 15:26:58',1,0),(34,'admin','192.168.1.10','2018-07-14 22:04:37',1,0),(35,'admin','192.168.1.10','2018-07-15 09:11:29',1,0),(36,'admin','192.168.1.10','2018-07-15 11:16:03',1,0),(37,'admin','192.168.1.10','2018-07-15 15:58:21',1,0),(38,'admin','192.168.1.10','2018-07-15 22:52:57',1,0),(39,'admin','192.168.1.10','2018-07-16 09:33:38',1,0),(40,'admin','192.168.1.10','2018-07-16 12:31:36',1,1),(41,'admin','192.168.1.10','2018-07-16 13:21:35',1,0),(42,'admin','192.168.1.10','2018-07-16 13:55:26',1,0),(43,'admin','192.168.1.10','2018-07-17 15:53:35',1,0),(44,'admin','192.168.1.10','2018-07-19 15:10:47',1,0),(45,'admin','192.168.1.10','2018-07-20 09:53:00',1,1),(46,'admin','192.168.1.10','2018-07-20 15:14:53',1,0),(47,'123456','192.168.1.10','2018-07-20 17:07:29',1,0),(48,'admin','192.168.1.10','2018-07-21 09:09:43',1,0);
/*!40000 ALTER TABLE `yiqi_user_login_info` ENABLE KEYS */;

#
# Structure for table "yiqi_user_reg_info"
#

DROP TABLE IF EXISTS `yiqi_user_reg_info`;
CREATE TABLE `yiqi_user_reg_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `ok` int(3) DEFAULT '0',
  `cishu` int(3) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "yiqi_user_reg_info"
#

/*!40000 ALTER TABLE `yiqi_user_reg_info` DISABLE KEYS */;
INSERT INTO `yiqi_user_reg_info` VALUES (3,'192.168.1.10','2018-07-20 17:06:56',1,1);
/*!40000 ALTER TABLE `yiqi_user_reg_info` ENABLE KEYS */;

#
# Structure for table "yuanfen_content"
#

DROP TABLE IF EXISTS `yuanfen_content`;
CREATE TABLE `yuanfen_content` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `biaoshi` int(11) DEFAULT NULL,
  `myname` varchar(50) DEFAULT NULL,
  `youname` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `yuanfen` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

#
# Data for table "yuanfen_content"
#

/*!40000 ALTER TABLE `yuanfen_content` DISABLE KEYS */;
INSERT INTO `yuanfen_content` VALUES (51,0,'哈哈','嘿嘿','2018-07-21 08:58:29','192.168.1.10','天生一对，佳偶天成','你们是如此的匹配，如此和谐，往往是你刚想说“可惜”他已经开始叹惜。你们性格相合，有共同的爱好，品味一致。就是这么默契，令人们羡慕得不得了。',95),(52,0,'嘿嘿','哈哈哈哈','2018-07-21 09:00:06','192.168.1.10','一本好书，只看一半','你们都是很有内秀的人，也都能看穿人的内心。你们的感情甜美却不持久，当对方不能吸引你时，你会决然地放手。他（她）就像一本小说，你打开了，却没能读完。',85);
/*!40000 ALTER TABLE `yuanfen_content` ENABLE KEYS */;

#
# Structure for table "yuanfen_feifa"
#

DROP TABLE IF EXISTS `yuanfen_feifa`;
CREATE TABLE `yuanfen_feifa` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "yuanfen_feifa"
#

/*!40000 ALTER TABLE `yuanfen_feifa` DISABLE KEYS */;
INSERT INTO `yuanfen_feifa` VALUES (1,'','2018-07-08 23:04:22','绕过前端提交数据'),(2,'192.168.1.10','2018-07-09 17:59:16','绕过前端提交数据'),(3,'192.168.1.10','2018-07-09 18:03:28','绕过前端提交数据'),(4,'192.168.1.10','2018-07-09 22:36:46','绕过前端提交数据'),(5,'192.168.1.10','2018-07-09 22:36:48','绕过前端提交数据'),(6,'192.168.1.10','2018-07-09 22:36:49','绕过前端提交数据'),(7,'192.168.1.10','2018-07-09 22:36:50','绕过前端提交数据'),(8,'192.168.1.10','2018-07-09 22:36:50','绕过前端提交数据'),(9,'192.168.1.10','2018-07-09 22:36:50','绕过前端提交数据'),(10,'192.168.1.10','2018-07-09 22:36:51','绕过前端提交数据'),(11,'192.168.1.10','2018-07-09 22:36:58','绕过前端提交数据');
/*!40000 ALTER TABLE `yuanfen_feifa` ENABLE KEYS */;

#
# Structure for table "yuanfen_shuju"
#

DROP TABLE IF EXISTS `yuanfen_shuju`;
CREATE TABLE `yuanfen_shuju` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `vip` int(2) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

#
# Data for table "yuanfen_shuju"
#

/*!40000 ALTER TABLE `yuanfen_shuju` DISABLE KEYS */;
INSERT INTO `yuanfen_shuju` VALUES (1,'知心朋友，心灵相通','你们可以无话不谈，你们可以心有灵犀，但是你们却很难成为情侣。因为你们太熟悉彼此，太了解对方了，所以很难擦出火花。其实你们不用遗憾，人生得一知己足矣，就这样一直做朋友也很不错。',0),(2,'天生一对，佳偶天成','你们是如此的匹配，如此和谐，往往是你刚想说“可惜”他已经开始叹惜。你们性格相合，有共同的爱好，品味一致。就是这么默契，令人们羡慕得不得了。',1),(3,'牛郎织女，聚少离多','你们的爱情基础非常深厚，牢不可破，然而却因为求学或工作的原因，使得你们分隔两地，聚少离多。也许是因为相聚短暂而益显珍贵，而聊天来往，qq微信传情给你们平添一份情调。',1),(4,'浓情蜜意，情手难牵','你们真的很合适，总能从对方的一个眼神洞悉心上人心中的一切。但是你们却走不到一起，并不是你们的原因，而是其他的因素，所以你们这段无疾而终的恋情令所有知情者扼腕。',0),(5,'相约黄昏，共赏夕阳','你们或许因为年少轻狂，或许月老作弄，你们错过了年轻时激扬的热情。当你们的缘分到来的时候，你们已经经历了大半辈子的沧桑。好不容易结合的你们会更加珍惜、享受这迟来的爱。',1),(6,'一见钟情，两情相悦','你们在看到对方的第一眼就深深地被吸引，并立刻爱上对方，接着就是干柴烈火般的热。海誓山盟的爱情宣言是你们奉行的金科玉律。她崇拜他，同样她也令他着迷，他们就像磁石与铁一样相互吸引。',1),(7,'水深火热，水火相容','谁水火不相容的，你们就相处得不错。你们一个似水，平和，内殓。一个如火，热情，洒脱。两个性情迥异的人一样可以找到共同点，一样可以谱写爱曲。',1),(9,'执子之手，与子携老','你们是众人眼中的神仙眷侣，站在一起怎么看怎么般配，很有传说中的夫妻相。你们之间或许没有惊天地泣鬼神的爱情神话，或许没有刻骨铭心的激情，但是你的之间的温情和默契却能让你们的心越走越近，一起慢慢变老。',1),(10,'一本好书，只看一半','你们都是很有内秀的人，也都能看穿人的内心。你们的感情甜美却不持久，当对方不能吸引你时，你会决然地放手。他（她）就像一本小说，你打开了，却没能读完。',0),(11,'缘分天定，破镜重圆','你们真是一对打不散的鸳鸯，情投意合，相互吸引。但是或话由于你们都太花心，都想有更多的选择，所以你们的罗曼史都很丰富。但是经历过后都会回头看到彼此，做出最正确的选择。',1),(12,'风雨之后，亮丽彩虹','你们都是性情中人，你们都受过感情的伤，你们都一样脆弱而敏感同。同样的经历，同样的伤痛，让你更容易靠近。你们的感情在相互疗伤中一点一点加深，你们的心痊愈了，你们的爱情也圆满了。',1),(13,'欢喜冤家，分分合合','你们前世是冤家，今生做情侣，所以就难免有一些不和谐的音符出现来折磨你们的爱情。你们的感情大起大落，分分合合，不过你们最终会修成正果，恩爱到老的。',1),(14,'相当理想的一对','彼此的观念、想法、作法都大同小异，也很容易产生共鸣投缘的感觉；一旦来电，进展就会很快而且浓烈，两人都充满了青春活力，是属於“行动派”的火热情侣。',2),(15,'还蛮不错的一对','你们的组合，像是慢郎中碰到急惊风。你总是慢吞吞的跟在他的後面，有点儿像是龟兔赛跑；虽然您总是默默地在一旁收拾因跑得太快而丢三落四的散落物，但您倒也还是无怨无悔。 有时您俩也像是一对孩子，童心都很重，而且您还满依赖的哦...... 永远有他领著头而先有所行动，都不须你去伤脑筋喽！',2),(16,'还蛮不错的一对','你们的组合，好比太阳和月亮，虽然是两种完全不同的类型，一阳一阴、一刚一柔，只要爱的比重没错放，使阴阳得以调和、刚柔亦可并济，那绝对会是最佳拍档。 虽然您们基本的差异很大，但她最需要的安全感和安定感，可以很容易在您身上发现，只要记得做个体贴、浪漫的的情人，她一定会如小鸟依人般的依附著您。',2),(17,'非常理想的一对','在基本上有些类似又不会太像，大方向相同、小地方相合，是温馨平和、优雅细致的一对。 你们的初遇，会有种奇妙的亲切感，虽然彼此不一定赞同对方的观点，却很能了解与体谅且相互鼓励。',2),(18,'两人世界里的好情侣！','在外人眼中，你们是沉闷的一对，没有激情与火花，也不会在一堆朋友伴侣中起眼，但你们却可以做到细水长流，长相厮守。',2);
/*!40000 ALTER TABLE `yuanfen_shuju` ENABLE KEYS */;
