/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : carrental

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 04/02/2020 20:52:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_cars
-- ----------------------------
DROP TABLE IF EXISTS `bus_cars`;
CREATE TABLE `bus_cars`  (
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(255, 2) NULL DEFAULT NULL,
  `rentprice` double(255, 2) NULL DEFAULT NULL,
  `deposit` double NULL DEFAULT NULL,
  `isrenting` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`carnumber`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_cars
-- ----------------------------
INSERT INTO `bus_cars` VALUES ('云A666666', 'SUV', '红色', 30000.00, 3000.00, 5000, 1, '骚红绝配', 'BM_I8.jpeg');
INSERT INTO `bus_cars` VALUES ('京A00001', '跑车', '黄色', 9990000.00, 30000.00, 50000, 1, '百公里加速2s', '02.jpeg');
INSERT INTO `bus_cars` VALUES ('川A000000', '面包车', '白色', 50000.00, 500.00, 1000, 1, '拉货超能装', 'BC_CLS.jpeg');
INSERT INTO `bus_cars` VALUES ('桂B12345', '轿车', '黑色', 20000.00, 1000.00, 3000, 1, '领克03轿车', 'fc26747a-413b-426b-ab88-b0994822c0e7.jpeg');
INSERT INTO `bus_cars` VALUES ('沪B99999', '轿车', '黑色', 600000.00, 1000.00, 6000, 1, '奔驰CLS', '5860d4ce-471a-4bd8-9aa5-70fd0968fa25.jpeg');
INSERT INTO `bus_cars` VALUES ('琼B88888', '轿车', '香槟色', 800000.00, 3000.00, 5000, 1, '宝马i8', 'f968133b-ab29-4808-85b3-ed626450a899.jpeg');
INSERT INTO `bus_cars` VALUES ('豫A7UH82', '轿车', '银色', 660000.00, 3000.00, 5000, 1, '超级无敌吊炸天', 'BC_CLS.jpeg');
INSERT INTO `bus_cars` VALUES ('豫D666666', '轿跑', '棕色', 990000.00, 2000.00, 5000, 1, '成功的标志', '71a250c7-cb56-4179-931d-b627c0106533.jpeg');
INSERT INTO `bus_cars` VALUES ('鄂A66666', 'SUV', '白色', 280000.00, 500.00, 5000, 0, '宝马X1', '01.jpg');
INSERT INTO `bus_cars` VALUES ('鄂A88888', '轿车', '黑色', 880000.00, 1000.00, 10000, 0, '保时捷 卡宴', '03.jpg');

-- ----------------------------
-- Table structure for bus_checks
-- ----------------------------
DROP TABLE IF EXISTS `bus_checks`;
CREATE TABLE `bus_checks`  (
  `checkid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checkdate` datetime(0) NULL DEFAULT NULL,
  `checkdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paymoney` double(255, 0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`checkid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_checks
-- ----------------------------
INSERT INTO `bus_checks` VALUES ('JC_1571926971233', '2019-10-24 00:00:00', '无', '没毛病，可以交付', 0, 'admin', 'ZC_1571840858192');
INSERT INTO `bus_checks` VALUES ('JC_20180612_170407_0385_63960', '2018-06-12 00:00:00', '在G50高速超速', '超速', 500, '习大大', 'CZ_20180611_171304_0732_57330');
INSERT INTO `bus_checks` VALUES ('JC_20180612_172559_0323_71959', '2018-06-13 00:00:00', '无', '无', 0, '习大大', 'CZ_20180612_164747_0573_26177');
INSERT INTO `bus_checks` VALUES ('JC_20180718_091454_0191_93480', '2018-07-18 00:00:00', '无', '无', 0, '习大大', 'CZ_20180718_091206_0365_62161');
INSERT INTO `bus_checks` VALUES ('JC_20180721172509547_8735', '2018-07-21 00:00:00', '222', '222', 22, '超级管理员', 'CZ_20180721164647645_6913');

-- ----------------------------
-- Table structure for bus_customers
-- ----------------------------
DROP TABLE IF EXISTS `bus_customers`;
CREATE TABLE `bus_customers`  (
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `custname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` int(255) NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `career` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`identity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_customers
-- ----------------------------
INSERT INTO `bus_customers` VALUES ('123', '张小明', 1, '武昌', '13456788987', '程序员');
INSERT INTO `bus_customers` VALUES ('431321199291331131', '张三', 1, '武昌', '13431334113', '程序员');
INSERT INTO `bus_customers` VALUES ('431321199291331132', '孙中山', 1, '汉口', '134131314131', '总统');
INSERT INTO `bus_customers` VALUES ('431341134191311311', '李四', 0, '汉阳', '13451313113', 'CEO');
INSERT INTO `bus_customers` VALUES ('431341134191311314', '王小明', 1, '蔡甸', '13413131113', 'CEO');

-- ----------------------------
-- Table structure for bus_rents
-- ----------------------------
DROP TABLE IF EXISTS `bus_rents`;
CREATE TABLE `bus_rents`  (
  `rentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `begindate` datetime(0) NULL DEFAULT NULL,
  `returndate` datetime(0) NULL DEFAULT NULL,
  `rentflag` int(11) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bus_rents
-- ----------------------------
INSERT INTO `bus_rents` VALUES ('CZ_20180612_164747_0573_26177', 500.00, '2018-06-13 00:00:00', '2018-06-23 00:00:00', 1, '431321199291331131', '鄂A66666', '习大大');
INSERT INTO `bus_rents` VALUES ('ZC_1571840858192', 3000.00, '2019-10-23 00:00:00', '2019-10-23 00:00:00', 1, '123', '云A666666', 'admin');

-- ----------------------------
-- Table structure for sys_log_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_login`;
CREATE TABLE `sys_log_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 286 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log_login
-- ----------------------------
INSERT INTO `sys_log_login` VALUES (276, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:23:21');
INSERT INTO `sys_log_login` VALUES (277, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:48:19');
INSERT INTO `sys_log_login` VALUES (278, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:49:50');
INSERT INTO `sys_log_login` VALUES (279, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:50:59');
INSERT INTO `sys_log_login` VALUES (280, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:52:47');
INSERT INTO `sys_log_login` VALUES (281, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 09:56:30');
INSERT INTO `sys_log_login` VALUES (282, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 10:04:40');
INSERT INTO `sys_log_login` VALUES (283, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 10:09:37');
INSERT INTO `sys_log_login` VALUES (284, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 11:10:11');
INSERT INTO `sys_log_login` VALUES (285, '登陆账号:admin-用户真名:超级管理员', '127.0.0.1', '2018-07-20 11:10:24');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open` int(255) NULL DEFAULT NULL COMMENT '0不打1打开',
  `isParent` int(255) NULL DEFAULT NULL COMMENT '0非父节点1父节点',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, 0, '汽车出租系统', '', 1, 1, '', 'resources/css/icons/FUNC20082.gif');
INSERT INTO `sys_menus` VALUES (2, 1, '客户管理', '', 1, 1, '', 'resources/css/icons/FUNC20001.gif');
INSERT INTO `sys_menus` VALUES (3, 1, '车辆管理', 'carManager.jsp', 0, 0, '', 'resources/css/icons/FUNC20065.gif');
INSERT INTO `sys_menus` VALUES (4, 1, '业务管理', '', 1, 1, '', 'resources/css/icons/FUNC20024.gif');
INSERT INTO `sys_menus` VALUES (5, 1, '系统管理', '', 1, 1, '', 'resources/css/icons/advancedsettings.png');
INSERT INTO `sys_menus` VALUES (6, 4, '汽车出租', 'busCarRent.jsp', 0, 0, '', 'resources/css/icons/FUNC20088.gif');
INSERT INTO `sys_menus` VALUES (7, 4, '出租单管理', 'busCarRentManager.jsp', 0, 0, '', 'resources/css/icons/drive_edit.png');
INSERT INTO `sys_menus` VALUES (8, 4, '汽车入库', 'busCarCheck.jsp', 0, 0, '', 'resources/css/icons/FUNC55000.gif');
INSERT INTO `sys_menus` VALUES (9, 4, '检查单管理', '../check/toCheckManager.action', 0, 0, '', 'resources/css/icons/feed_edit.png');
INSERT INTO `sys_menus` VALUES (10, 5, '菜单管理', 'menusManage.jsp', 0, 0, '', 'resources/css/icons/page_white_paste_table.png');
INSERT INTO `sys_menus` VALUES (11, 5, '角色管理', 'roleManage.jsp', 0, 0, '', 'resources/css/icons/FUNC241000.gif');
INSERT INTO `sys_menus` VALUES (12, 5, '用户管理', 'userManage.jsp', 0, 0, '', 'resources/css/icons/group_add.png');
INSERT INTO `sys_menus` VALUES (13, 5, '修改密码', '', 0, 0, '', 'resources/css/icons/group_add.png');
INSERT INTO `sys_menus` VALUES (14, 1, '数据统计', '', 1, 1, '', 'resources/css/icons/application_edit.png');
INSERT INTO `sys_menus` VALUES (15, 14, '客户地区统计', '../tjfx/toCountCustomerArea.action', 0, 0, '', 'resources/css/icons/page_white_paste_table.png');
INSERT INTO `sys_menus` VALUES (16, 14, '客户男女比例统计', '', 0, 0, '', 'resources/css/icons/book_addresses_edit.png');
INSERT INTO `sys_menus` VALUES (17, 14, '车辆类型统计', '', 0, 0, '', 'resources/css/icons/book_link.png');
INSERT INTO `sys_menus` VALUES (18, 5, '日志管理', '../syslog/toSysLogManager.action', 0, 0, NULL, 'resources/css/icons/book_link.png');
INSERT INTO `sys_menus` VALUES (20, 14, '车辆颜色统计', '1', 0, 0, '1', 'resources/css/icons/book_link.png');
INSERT INTO `sys_menus` VALUES (21, 5, '系统公告', '../news/toNewsManager.action', 0, 0, '', 'resources/css/icons/application_edit.png');
INSERT INTO `sys_menus` VALUES (23, 2, '普通客户', 'roleManage.jsp', 0, 0, NULL, NULL);
INSERT INTO `sys_menus` VALUES (24, 2, '大客户', 'roleManage.jsp', 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_news
-- ----------------------------
DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_news
-- ----------------------------
INSERT INTO `sys_news` VALUES (4, '12312312', '<p>&nbsp; 				 请输入新闻内容312312312321<img src=\"http://img.baidu.com/hi/jx2/j_0013.gif\"/></p>', '2018-06-14 17:23:52', '习大大');
INSERT INTO `sys_news` VALUES (5, '关系系统升级公告', '<p>关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告关系系统升级公告			</p>', '2018-06-14 18:05:22', '习大大');
INSERT INTO `sys_news` VALUES (6, '12321321', '<p>21312312<img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/></p>', '2018-07-24 14:12:34', '超级管理员');
INSERT INTO `sys_news` VALUES (7, '习近平的基加利时间：中卢共“舞”迎未来', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">这是一个历史性时刻。22日20时50分许，国家主席习近平乘专机抵达基加利国际机场。这是习近平主席首次访问卢旺达，也是中国国家主席首次踏上这片美丽的土地。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><a style=\"outline: none; color: rgb(51, 51, 51); position: relative; display: block;\" href=\"http://undefined\"><img id=\"{B34E7CE7-214C-464B-9B81-286FBE98BC78}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323932476431n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></a></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　习近平主席抵达基加利，开始对卢旺达共和国进行国事访问。新华社记者 李学仁摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　大约20个小时的访问行程中，卢旺达民众一次次为中国贵宾跳起明快昂扬的民族舞蹈。一位卢旺达官员对记者说，这样的舞蹈只献给最好的朋友。伴随这激越节拍、跃动舞步，人们更真切感到中国与卢旺达携手起舞、合作共舞的蓬勃力量。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{DCCBF576-8663-47FF-A2C2-731A0E84FDDB}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323932595921n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　卡加梅总统夫妇在机场等候习近平主席专机。新华社记者 庞兴雷摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><span style=\"font-weight: 600 !important;\">欢舞迎贵客</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-weight: 600 !important;\">　　</span>夜空之下，基加利国际机场。山光点点，笑脸盈盈，乐鼓咚咚。卡加梅总统夫妇在这里为习近平主席和夫人彭丽媛举行隆重的欢迎仪式。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　盛装礼兵英姿挺拔，向尊贵的客人行注目礼。鼓声响起，卢旺达民众身着靓丽民族服装，跳起热情的迎宾舞，时而舒展柔缓，时而刚健有力。两国元首驻足观看，挥手致意。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{E7F8D992-3D23-4388-8C93-FB5469657057}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323932719231n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　夜色中，卢旺达民众跳起热情的民族舞，欢迎习近平主席和夫人彭丽媛。新华社记者 庞兴雷摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　在与卡加梅夫妇交谈时，习近平主席说，我一踏上卢旺达的土地，就深深感受到卢旺达政府和人民对中国人民的友好情谊。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　23日上午，习近平主席乘车前往总统府。热情友好的卢旺达民众涌到街边，高声欢呼，热烈鼓掌，笑容写在每个人的脸上。在随后举行的总统府盛大欢迎仪式上，奔放的鼓乐和激扬的民族舞再次登台，将喜悦和祝福送给最尊贵的客人。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{DD8DA8CF-487E-4B46-B505-6BF39BAAE206}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323932822821n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　23日上午，习近平主席在卡加梅总统陪同下检阅仪仗队。 新华社记者 姚大伟摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{99C4108A-7B1C-4631-A000-E8159772EEF1}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323932961131n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　在总统府举行的盛大欢迎仪式上，当地民众再次跳起民族舞。新华社记者 庞兴雷摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　历经47载，中卢友谊之树日益枝繁叶茂。去年3月，卡加梅总统成功访华。如今，两国元首一年多时间里实现了互访，充分体现了双方对发展中卢关系的信心与诚意。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{4D0684B7-DDF7-4FE0-ACCC-D8345495094F}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933061441n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　会谈开始前，习近平主席和夫人彭丽媛同卡加梅总统和夫人珍妮特合影。新华社记者 庞兴雷摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　在会谈中，习近平主席和卡加梅总统积极评价47年来双边关系发展成就，共同规划中卢友好合作未来，一致同意共同推动双边互利合作结出更加丰硕成果，为中卢人民、中非人民带来更多福祉。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><span style=\"font-weight: 600 !important;\">共舞谋发展</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　非洲朋友常说，独行快，众行远。只有合作共赢才能办大事、办好事、办长久之事。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　访问期间，习近平主席和卡加梅总统共同见证了关于“一带一路”建设等多项双边合作文件的签署，中卢多领域合作驶入新的宽广大道。习近平主席强调，两国要加强发展战略对接，充分发挥互补优势，拓展务实合作广度和深度。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{43AA2FA8-F4DC-4E3C-808C-257214B3F6CF}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933146031n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　习近平主席与卡加梅总统举行会谈。新华社记者 谢环驰摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{436A165A-BD54-4CC7-9321-7B405F0EE29A}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933258181n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　首都基加利一条主干道上的中卢两国国旗。新华社记者 郑开君摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　如今，中国是卢旺达第一大贸易伙伴、第一大工程承包方和主要外资来源地。中国企业修建的公路占卢旺达公路总里程的70%，承建的基加利城市塔、“远景城”综合社区等重大项目，成为城市名片。在建设过程中，中国企业为当地培育了一大批技术和管理人才。卡加梅总统感叹：“中国带给非洲的，正是非洲人需要的。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{8532C4DF-E976-4F93-8A25-641BAA1349AD}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933376101n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　中国公司承建的基加利城市塔，是卢旺达最高的建筑之一。新华社记者王腾摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{AA12802F-B1CE-4C96-8737-5E56D515CE0B}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933455041n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　中国企业承建的“远景城”综合社区项目一期，是卢旺达迄今最大的住宅项目。新华社记者 饶爱民摄</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　当前，卢旺达正在推进“2020远景”发展规划，希望实现跨越式发展。在农业、旅游、交通物流和信息通信技术等领域，中卢务实合作面临前所未有的广阔空间。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　习近平主席说，中方愿同卢方携手努力，推动中卢传统友好转化为更多惠及两国和两国人民的实实在在成果，共同续写两国友好合作关系新篇章。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><span style=\"font-weight: 600 !important;\">起舞中非梦</span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　“非洲正如奔跑的雄狮。”在与卡加梅总统会谈时，习近平主席这样形容这块充满希望的大陆。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\">　　今年，卢旺达任非洲联盟轮值主席国。再过1个多月，中国将主办中非合作论坛北京峰会。“中国梦”与“非洲梦”如何更好地同鸣共振，也是两国元首会谈的重要话题。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"><img id=\"{D0DD312C-6277-4514-9DE3-E1E1F7A063A8}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933540451n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　习近平主席同卡加梅总统举行会谈。新华社记者 庞兴雷摄</span></p><p><span style=\"color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">　　习近平主席说，发展同非洲国家团结合作是中国对外政策重要基础，也是中方长期、坚定的战略选择。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">　　卡加梅总统也从战略高度看待中非关系。在两国元首共同会见记者时，卡加梅说，中国对非洲始终平等相待。中非都把自己和对方视为追求繁荣进步的力量。这在当代国际关系中具有革命性意义。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: center;\"><img id=\"{10DD5F0B-BBF5-4E21-8B15-996DFDC86D23}\" src=\"http://www.xinhuanet.com/world/2018-07/24/129919366_15323933632101n.jpg\" style=\"border: 0px; vertical-align: middle; display: block; width: auto; margin: 0px auto;\"/></p><span style=\"color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"></span><p></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal; text-align: center;\"></p><p><span style=\"color: rgb(64, 64, 64); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, å¾®è½¯é›…é»‘, STHeitiSC-Light, simsun, å®‹ä½“, &quot;WenQuanYi Zen Hei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color:blue;font-family:楷体\">　　在机场举行的欢送仪式上，身着民族服装的卢旺达民众。新华社记者 庞兴雷摄</span></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">　　23日下午，离开基加利时，习近平主席出席卡加梅总统在机场举行的欢送仪式。卢旺达民众再次击鼓而舞，表达对中国贵宾的友好情谊和惜别之情，祝愿中卢、中非共同发展进步的美好未来！（记者：韩墨 魏建华 吴志强）（据新华国际头条微信公众号报道）</p><p></p><p><br/></p>', '2018-07-24 00:00:00', '超级管理员');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `rid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`rid`, `mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 9);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 17);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 5);
INSERT INTO `sys_role_menu` VALUES (3, 10);
INSERT INTO `sys_role_menu` VALUES (3, 11);
INSERT INTO `sys_role_menu` VALUES (3, 12);
INSERT INTO `sys_role_menu` VALUES (3, 13);
INSERT INTO `sys_role_menu` VALUES (3, 18);
INSERT INTO `sys_role_menu` VALUES (3, 21);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 14);
INSERT INTO `sys_role_menu` VALUES (4, 15);
INSERT INTO `sys_role_menu` VALUES (4, 16);
INSERT INTO `sys_role_menu` VALUES (4, 17);
INSERT INTO `sys_role_menu` VALUES (4, 20);
INSERT INTO `sys_role_menu` VALUES (14, 2);
INSERT INTO `sys_role_menu` VALUES (14, 3);
INSERT INTO `sys_role_menu` VALUES (14, 6);
INSERT INTO `sys_role_menu` VALUES (14, 7);
INSERT INTO `sys_role_menu` VALUES (14, 8);
INSERT INTO `sys_role_menu` VALUES (14, 9);
INSERT INTO `sys_role_menu` VALUES (15, 3);
INSERT INTO `sys_role_menu` VALUES (15, 4);
INSERT INTO `sys_role_menu` VALUES (15, 6);
INSERT INTO `sys_role_menu` VALUES (15, 7);
INSERT INTO `sys_role_menu` VALUES (15, 8);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (3, 1);
INSERT INTO `sys_role_user` VALUES (3, 2);
INSERT INTO `sys_role_user` VALUES (3, 3);
INSERT INTO `sys_role_user` VALUES (3, 4);
INSERT INTO `sys_role_user` VALUES (4, 2);
INSERT INTO `sys_role_user` VALUES (5, 3);
INSERT INTO `sys_role_user` VALUES (8, 4);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roledesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, '超级管理员', '拥有所有菜单权限');
INSERT INTO `sys_roles` VALUES (2, '业务管理员', '拥有所以业务菜单');
INSERT INTO `sys_roles` VALUES (3, '系统管理员', '管理系统');
INSERT INTO `sys_roles` VALUES (4, '数据统计管理员', '数据统计管理员');
INSERT INTO `sys_roles` VALUES (15, 'JZJ', 'qq');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(255) NULL DEFAULT NULL COMMENT '0女1男',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(255) NULL DEFAULT 2 COMMENT '1，超级管理员,2，系统用户',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES (1, 'admin', '4313341334413', '超级管理员', 1, '武汉', '134441331311', '123456', 'CEO', 1);
INSERT INTO `sys_users` VALUES (3, 'zhangsan', '3413334134131131', '张三', 1, '武汉', '134131313111', '123456', 'BA', 2);
INSERT INTO `sys_users` VALUES (4, 'lisi', '43311341311314341', '李四', 1, '武汉', '1341314113131', '123456', '扫地的', 2);
INSERT INTO `sys_users` VALUES (5, 'wangwu', '4313133131331312', '王五', 1, '武汉', '13413131131', '123456', '领导', 2);
INSERT INTO `sys_users` VALUES (8, 'zhaoliu', '431333133312221', '赵六', 1, '武汉', '135133331131', '123456', 'BA', 2);

SET FOREIGN_KEY_CHECKS = 1;
