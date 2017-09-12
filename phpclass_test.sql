/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : phpclass_test

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-09-12 11:19:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '4', '107', '31', '2017-05-02 13:24:47');
INSERT INTO `comment` VALUES ('2', '4', '107', '42342', '2017-05-02 13:30:15');
INSERT INTO `comment` VALUES ('3', '4', '107', '43423', '2017-05-02 13:33:12');
INSERT INTO `comment` VALUES ('4', '4', '107', '43423', '2017-05-02 13:33:13');
INSERT INTO `comment` VALUES ('5', '4', '108', '哈哈哈', '2017-05-02 13:33:47');
INSERT INTO `comment` VALUES ('6', '4', '109', '傻逼', '2017-05-02 13:34:09');
INSERT INTO `comment` VALUES ('7', '4', '107', '哦哈哈哈', '2017-05-02 13:34:17');
INSERT INTO `comment` VALUES ('8', '1', '112', '测试', '2017-05-02 13:36:01');
INSERT INTO `comment` VALUES ('9', '1', '111', '试一试', '2017-05-02 13:36:07');
INSERT INTO `comment` VALUES ('11', '2', '113', '这个不错', '2017-05-02 13:41:20');
INSERT INTO `comment` VALUES ('12', '5', '116', '3123131', '2017-05-02 13:58:15');
INSERT INTO `comment` VALUES ('13', '5', '117', '搞定了', '2017-05-02 14:02:29');
INSERT INTO `comment` VALUES ('14', '5', '123', '不错不错', '2017-05-03 08:39:15');
INSERT INTO `comment` VALUES ('15', '5', '125', '好看', '2017-05-03 08:42:29');
INSERT INTO `comment` VALUES ('16', '5', '108', '哈哈哈', '2017-05-12 08:17:09');

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of doc
-- ----------------------------
INSERT INTO `doc` VALUES ('107', '2', '3131Kubernetes部署失败的常见原因', 'Kubernetes部署的无效输入包括指定不存在的容器镜像，或者指定没有访问权限的容器镜像。因为默认注册表是Dockerhub，所以如果使用了其它注册表（如Amazon ECR或Quay.io），则需要指定注册表URL。私有注册表在访问镜像时需要相关证书。 当要拉取的标签名称无效时，镜像拉取也可能遇到错误。比如在latest标签不存在但镜像存在时，镜像拉取就会失败（如果没有特别指定，“latest”就是默认标签）。此外网络问题也可能会导致错误。这类情况下的错误消息彼此间十分相似，因此需要更深入的检查以确定', '2017-05-02 09:40:17');
INSERT INTO `doc` VALUES ('108', '2', '一个创业公司的API网关落地实践', '论模式在领域驱动设计中的重要性', '2017-05-02 09:40:38');
INSERT INTO `doc` VALUES ('109', '2', '论模式在领域驱动设计中的重要性', 'Ward Cunningham因其第一个搭建了wiki网站而为大家熟知，但同时他也是第一批对模式进行描述的人。这第一批模式关注于信息完整性，Martraire认为这些早期的模式都是分析模式，它们用于描述如何从业务层面来更好地理解问题。例如例外值模式，这个模式让开发人员可以从业务的角度来编写代码，而不用考虑特殊情况，如处理非法值或零值。另一个有意思的模式是诊断查询模式，这个模式认为一个对象应该能够描述其成为当前状态的详细过程，诊断功能可以被用来取代输出日志或查看故障的过程。例如，一个账户对象内有一百欧元，可', '2017-05-02 09:40:55');
INSERT INTO `doc` VALUES ('110', '2', '学习机器学习之如何根据需求选择一种算法', '随着机器学习的进一步火热，越来越多的算法已经可以用在许多任务的执行上，并且表现出色。\r\n\r\n但是动手之前到底哪个算法可以解决我们特定的实际问题并且运行效果良好，这个答案很多新手是不知道的。如果你处理问题时间可以很长，你可以逐个调研并且尝试它们，反之则要在最短的时间内解决技术调研任务。\r\n\r\nMichael Beyeler的一篇文章告诉我们整个技术选型过程，一步接着一步，依靠已知的技术，从模型选择到超参数调整。', '2017-05-02 09:41:16');
INSERT INTO `doc` VALUES ('111', '1', 'GitHub推进开发人员知识产权的维护', 'GitHub提出的员工知识产权权衡协议（Balanced Employee Intellectual Property Agreement，BEIPA）是一次探寻将员工工作之外的智慧成果授予员工更多权利的尝试。通过将这个项目开源，GitHub也期望能让这个项目对外部参与者开放。\r\n\r\nGitHub称，BEIPA可以被认为是对员工人身自由以及工作与生活的平衡的承诺，并且任何公司都可以采用它：\r\n\r\n使用BEIPA协议的公司不会试图控制员工空闲时间的知识产权，也不会限制超出劳动合同期限的员工知识产权。\r\n\r\n', '2017-05-02 10:47:25');
INSERT INTO `doc` VALUES ('112', '4', '从单体应用转为分布式系统：来自Deliveroo的实践', '过去一年中，Deliveroo在商业和IT领域成长迅速，这导致它的大型单体应用面对不少的技术挑战。Greg Beech在近期的QCon伦敦大会演讲中指出，Deliveroo对此问题的解决方案并非依靠微服务，而是向分布式转变。Beech介绍了Deliveroo在从单体应用转变为分布式系统过程中的一些做法。\r\n\r\nDeliveroo公司创立于2013年，Beech现任公司的首席工程师。公司起步于采用传统Ruby on Rails开发的单体应用，数据存储使用了PostgreSQL和Redis，通过不断增大数据库', '2017-05-02 10:47:53');
INSERT INTO `doc` VALUES ('113', '2', ' 港媒：少了中国的游客，韩国度假岛五一假日静悄悄', '香港《南华早报》5月1日文章，原题：“萨德”导弹争端致中国游客抵制，韩国度假岛五一假日静悄悄  以往每逢五一假期，韩国济州岛的邮轮码头总是人头攒动，来自上海、天津和青岛各港成千上万的乘客，从大型邮轮上下来、登上旅游大巴。而今年五一这个中国游客的出游旺季，这里却很少听到普通话了。新罗免税店一名营业员说：“以前下午是我们最忙的时段，那时候邮轮上的乘客到济州来买东西。现在，没这回事了。”', '2017-05-02 13:41:06');
INSERT INTO `doc` VALUES ('114', '5', '安徽原副省长陈树隆被双开', '经查，陈树隆严重违反政治纪律和政治规矩，毫无政治信仰，世界观、人生观、价值观严重扭曲，既想当大官、又想发大财，长期利用职权和职务影响进行经商营利活动，大肆攫取巨额经济利益，将商品交换原则带入党内政治生活，政治问题和经济问题交织，严重破坏政治生态，对抗组织审查，长期搞迷信活动；违反中央八项规定精神，公款吃喝；违反组织纪律，不按规定报告个人有关事项，在组织函询时不如实说明问题；违反生活纪律和廉洁纪律，毫无道德底线，大搞权色、钱色交易，收受礼品、礼金，默许亲属利用其职务影响谋取私利；违反工作纪律，违规干预和插手', '2017-05-02 13:49:57');
INSERT INTO `doc` VALUES ('115', '5', '韩国统一部：朝鲜随时可能挑衅 韩维持应对态势', '韩国统一部发言人李德行昨天表示，虽然朝鲜重要纪念日集中的4月已经过去，但政府认为朝方随时都有可能发起挑衅，因此仍维持坚固的应对态势。李德行指出，近来朝媒强调改善韩朝关系的必要性，但朝方应认识到是其接连射弹和核试导致韩朝关系改善的大门被封死。朝鲜若拿出有诚意的态度，韩朝关系能通过多种方法得到改善。就朝鲜4月29号发射导弹一事，李德行表示，朝鲜现在依然严重威胁到半岛的和平与稳定。他敦促朝鲜应尽快适应变化的环境，做出明智的决定。', '2017-05-02 13:50:40');
INSERT INTO `doc` VALUES ('116', '5', '微软今晚举行发布会 新机Surface Laptop曝光', '【PConline 资讯】5月2日，微软将于北京时间21：30在纽约举行新品发布会。据外媒消息称，今晚可能将发布一款名为Surface Laptop的笔记本产品，搭载特殊版的Windows 10 S系统。随着#MicrosoftEDU主题标签和大量关于微软计划在教育市场与Google合作的消息放出，本次发布会与教育的关系必定密不可分，可能发布面向教育市场的笔记本产品。', '2017-05-02 13:56:29');
INSERT INTO `doc` VALUES ('117', '5', '《跑男》无限炒作鹿晗迪丽热巴,终于爆出事了吧', '近日《跑男》由于鹿晗和迪丽热巴两位人气明星的加入而更加的受人关注，而随着节目的热播，鹿晗和迪丽热巴也迅速成为当下娱乐圈最具话题的一对明星之一，当然人红是非多，自从迪丽热巴取代baby加盟《跑男》后，围绕于两人之间的各种话题就纷争不断。', '2017-05-02 13:59:59');
INSERT INTO `doc` VALUES ('118', '5', 'LOL各种骚操集锦都在这，连招原理看完秒懂！', '拿狐狸来说吧，她在前期的消耗主要依赖QA的雷霆效果，在6级后，想要完成击杀，也需要依靠大招多段位移打出多个平A补足伤害。对于AD英雄来说，平A衔接更是在整局游戏都十分重要，QDC是没有前途的(说的就是你，EZ)。', '2017-05-02 14:01:30');
INSERT INTO `doc` VALUES ('119', '2', 'win10下我用了觉得好的三个小软件', '作为懒癌患者，认识张大妈多年，剁手无数，签到750+，竟然只有两篇发现爆料，没有任何原创，每每想起就觉得羞愧不已win10下我用了觉得好的三个小软件 。刚好五一期间没有什么事，静极思动，觉得是时候做点什么了。晒单？最近没剁什么新玩意。EDC？三点一线的我每天除了“伸手要钱”也不带啥。评测？我从来没中过奖啊win10下我用了觉得好的三个小软件 。在电脑前想了半天，突然想起以前值友们推荐过软件，我也收获不少，为何不从这里试试手呢？说干就干，翻了翻电脑里的软件，很多值友推荐过的就算了，挑了三个我觉得不错的小软件', '2017-05-03 08:05:01');
INSERT INTO `doc` VALUES ('120', '2', '李连杰发声支持太极！老态尽显网友直呼不敢认', '有关于太极和拳击之间的争论一直都没有停歇过，而最近有着愈演愈烈的趋势，究其原因是因为此前搏击选手徐晓冬10秒打倒太极选手的视频，这段视频被流传开之后，社会各方面也对两门功夫展开了讨论。功夫巨型李连杰也首度的发声，表明了自己的态度：“支持太极再战徐晓冬”。李连杰在视频中说道，如果昆仑决碰上太极，究竟是不是像网上的视频中表现得那样?观看视频的网友们到底在想些什么？希望大家继续关注太极。', '2017-05-03 08:06:14');
INSERT INTO `doc` VALUES ('121', '2', '美国恋爱界的“在行”：这款软件一对一教你约妹子', '这个世界上，有一种神奇的生物......他们随时用强大的抗压能力承受着外界不断带来的暴击，他们的名字叫做——单身狗！拿小七为例，过年回家，听到最多的一句话就是：“找对象了吗？”本以为我们就这样成为了一个永远没人爱护的群体，但不料，美国一家公司居然专门为单身狗们开发了一款应用——Ona，它的作用，一句话概括就是：教你怎么更好的约会！', '2017-05-03 08:06:57');
INSERT INTO `doc` VALUES ('122', '2', 'LOL主播骚男大婚全程直播：群星云集 伴娘抢眼', 'LOL主播骚男今天大婚，在之前的爆料中就有说过，骚男这次的婚礼排场很大，并且邀请了圈内的很多主播和好友，包括董小飒、徐老师、PDD、卡尔等多位知名主播。今天一大早，骚男的好友就开启了直播，并且全程跟拍骚男的婚礼，而该好友也在直播中回答了很多关于主播能不能来的话题，其中说到PDD的时候，他表示PDD本来说明天才到的，结果就在刚刚，PDD突然空降婚礼现场。', '2017-05-03 08:08:03');
INSERT INTO `doc` VALUES ('125', '5', '国土资源部：新发现大中型及以上金矿70多处', '国土资源部的消息，自2011年实施找矿突破战略行动以来，山东省胶东地区金矿深部勘查取得重大成果，新发现大中型及以上金矿70多处，新增金资源储量2400余吨。其中，储量超百吨的特大型金矿床有莱州市三山岛北部海域金矿、莱州市西岭金矿、招远市水旺庄金矿等。深部金矿勘查的重大成果，实现了我国金矿找矿的历史性突破，形成了以三山岛、焦家和玲珑为代表的3个千吨级金矿田，使胶东地区一跃成为世界第三大金矿区，稳固了全国最大黄金生产基地的地位。（央视记者 谭振华）', '2017-05-03 08:42:17');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `extname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pubtime` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('168', '2', '107', 'image/jpeg', 'IvQYB8O51w', '2017-05-02 09:40:17', 'upload/IvQYB8O51w.jpeg');
INSERT INTO `file` VALUES ('169', '2', '107', 'image/jpeg', 'Q9cCkwJLuG', '2017-05-02 09:40:17', 'upload/Q9cCkwJLuG.jpeg');
INSERT INTO `file` VALUES ('170', '2', '108', 'image/png', 'A2Fszerm83', '2017-05-02 09:40:38', 'upload/A2Fszerm83.png');
INSERT INTO `file` VALUES ('171', '2', '108', 'image/png', 'BCHvT3txc4', '2017-05-02 09:40:38', 'upload/BCHvT3txc4.png');
INSERT INTO `file` VALUES ('172', '2', '110', 'image/png', 'C9fWNn6RFH', '2017-05-02 09:41:16', 'upload/C9fWNn6RFH.png');
INSERT INTO `file` VALUES ('173', '2', '110', 'image/jpeg', 'HgBmaY5rJ1', '2017-05-02 09:41:16', 'upload/HgBmaY5rJ1.jpeg');
INSERT INTO `file` VALUES ('174', '1', '111', 'image/png', 'dtskBpCb8s', '2017-05-02 10:47:25', 'upload/dtskBpCb8s.png');
INSERT INTO `file` VALUES ('175', '4', '112', 'image/png', '3DXM55VA7V', '2017-05-02 10:47:54', 'upload/3DXM55VA7V.png');
INSERT INTO `file` VALUES ('176', '2', '113', 'image/png', 'dChBKxXSau', '2017-05-02 13:41:06', 'upload/dChBKxXSau.png');
INSERT INTO `file` VALUES ('177', '5', '114', 'image/png', 'R5Oolt4sx0', '2017-05-02 13:49:57', 'upload/R5Oolt4sx0.png');
INSERT INTO `file` VALUES ('178', '5', '115', 'image/jpeg', 'F5uvksbl1j', '2017-05-02 13:50:41', 'upload/F5uvksbl1j.jpeg');
INSERT INTO `file` VALUES ('179', '5', '115', 'image/jpeg', 'E9c7MK2Xx3', '2017-05-02 13:50:41', 'upload/E9c7MK2Xx3.jpeg');
INSERT INTO `file` VALUES ('180', '5', '115', 'image/jpeg', '8dsCyoLSo7', '2017-05-02 13:50:41', 'upload/8dsCyoLSo7.jpeg');
INSERT INTO `file` VALUES ('181', '5', '115', 'image/jpeg', 'S44V9FmQNa', '2017-05-02 13:50:41', 'upload/S44V9FmQNa.jpeg');
INSERT INTO `file` VALUES ('182', '5', '115', 'image/jpeg', 'ybU5o9bdxs', '2017-05-02 13:50:41', 'upload/ybU5o9bdxs.jpeg');
INSERT INTO `file` VALUES ('183', '5', '116', 'image/jpeg', 'x3NrAddPwG', '2017-05-02 13:56:30', 'upload/x3NrAddPwG.jpeg');
INSERT INTO `file` VALUES ('184', '5', '116', 'image/jpeg', 'OaZTRurZI1', '2017-05-02 13:56:30', 'upload/OaZTRurZI1.jpeg');
INSERT INTO `file` VALUES ('185', '5', '116', 'image/jpeg', 'YStEvCzdHJ', '2017-05-02 13:56:30', 'upload/YStEvCzdHJ.jpeg');
INSERT INTO `file` VALUES ('186', '5', '116', 'image/jpeg', 'OfM5QmQYML', '2017-05-02 13:56:30', 'upload/OfM5QmQYML.jpeg');
INSERT INTO `file` VALUES ('187', '5', '116', 'image/jpeg', 'MCjyY1PDzZ', '2017-05-02 13:56:30', 'upload/MCjyY1PDzZ.jpeg');
INSERT INTO `file` VALUES ('188', '5', '117', 'image/png', 'kapYxv8q1X', '2017-05-02 13:59:59', 'upload/kapYxv8q1X.png');
INSERT INTO `file` VALUES ('189', '5', '117', 'image/png', 'cPCCUGf32J', '2017-05-02 13:59:59', 'upload/cPCCUGf32J.png');
INSERT INTO `file` VALUES ('190', '5', '117', 'image/jpeg', 'lmrF3RmtlK', '2017-05-02 13:59:59', 'upload/lmrF3RmtlK.jpeg');
INSERT INTO `file` VALUES ('191', '5', '117', 'image/png', 'fTHjpdkP8f', '2017-05-02 14:00:00', 'upload/fTHjpdkP8f.png');
INSERT INTO `file` VALUES ('192', '5', '118', 'image/jpeg', 'sWCNA9xjhm', '2017-05-02 14:01:31', 'upload/sWCNA9xjhm.jpeg');
INSERT INTO `file` VALUES ('193', '5', '118', 'image/jpeg', 'kgkVFKk7dn', '2017-05-02 14:01:31', 'upload/kgkVFKk7dn.jpeg');
INSERT INTO `file` VALUES ('194', '5', '118', 'image/jpeg', 'yuxoLTMGw5', '2017-05-02 14:01:31', 'upload/yuxoLTMGw5.jpeg');
INSERT INTO `file` VALUES ('195', '5', '118', 'image/jpeg', '5pSuGcNIFZ', '2017-05-02 14:01:31', 'upload/5pSuGcNIFZ.jpeg');
INSERT INTO `file` VALUES ('196', '5', '118', 'image/jpeg', '6AKGsbgQdw', '2017-05-02 14:01:31', 'upload/6AKGsbgQdw.jpeg');
INSERT INTO `file` VALUES ('197', '2', '119', 'image/jpeg', 'oSmgyPfmJO', '2017-05-03 08:05:03', 'upload/oSmgyPfmJO.jpeg');
INSERT INTO `file` VALUES ('198', '2', '120', 'image/jpeg', 'EVxvqKdi7z', '2017-05-03 08:06:14', 'upload/EVxvqKdi7z.jpeg');
INSERT INTO `file` VALUES ('199', '2', '120', 'image/jpeg', 'kWRjPwOcBX', '2017-05-03 08:06:14', 'upload/kWRjPwOcBX.jpeg');
INSERT INTO `file` VALUES ('200', '2', '121', 'image/jpeg', '7RWZvx5mqR', '2017-05-03 08:06:57', 'upload/7RWZvx5mqR.jpeg');
INSERT INTO `file` VALUES ('201', '2', '122', 'image/jpeg', 'RY5wnIpxKZ', '2017-05-03 08:08:04', 'upload/RY5wnIpxKZ.jpeg');
INSERT INTO `file` VALUES ('202', '5', '125', 'image/jpeg', 'Gn97HONhri', '2017-05-03 08:42:18', 'upload/Gn97HONhri.jpeg');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('46', '1', '2', 'firend');
INSERT INTO `friends` VALUES ('47', '1', '3', 'firend');
INSERT INTO `friends` VALUES ('48', '1', '4', 'firend');
INSERT INTO `friends` VALUES ('49', '6', '1', 'firend');
INSERT INTO `friends` VALUES ('53', '6', '5', 'firend');
INSERT INTO `friends` VALUES ('55', '6', '2', 'firend');
INSERT INTO `friends` VALUES ('58', '6', '3', 'firend');
INSERT INTO `friends` VALUES ('62', '2', '1', 'firend');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zzz', '111');
INSERT INTO `user` VALUES ('2', 'abc', '111');
INSERT INTO `user` VALUES ('3', 'nnn', '111');
INSERT INTO `user` VALUES ('4', 'xxx', '111');
INSERT INTO `user` VALUES ('5', 'vvv', '111');
INSERT INTO `user` VALUES ('6', 'bbb', '111');
