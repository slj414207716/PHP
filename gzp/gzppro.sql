/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : gzppro

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-11-28 16:51:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gzp_aged
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aged`;
CREATE TABLE `gzp_aged` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_aged
-- ----------------------------
INSERT INTO `gzp_aged` VALUES ('1', '革镇堡街道棋盘村居家养老服务中心', '棋盛园小区', '1700', '文体娱乐（棋牌、乒乓球）、康复健身、图书阅览室、书法绘画、日间照料、居家照料、医疗卫生、理疗、餐食加工、小餐桌、餐食配送、商品配送、家政服务、老年用品互换、理发、信息平台、商品展示', '1');

-- ----------------------------
-- Table structure for gzp_aj_category
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_category`;
CREATE TABLE `gzp_aj_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) NOT NULL COMMENT '行业分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='行业分类表';

-- ----------------------------
-- Records of gzp_aj_category
-- ----------------------------
INSERT INTO `gzp_aj_category` VALUES ('1', '家具制造业');
INSERT INTO `gzp_aj_category` VALUES ('2', '木材加工业');
INSERT INTO `gzp_aj_category` VALUES ('3', '化学原料和化学品制造业');
INSERT INTO `gzp_aj_category` VALUES ('4', '通用设备制造业');
INSERT INTO `gzp_aj_category` VALUES ('5', '农副食品加工业（饲草）');
INSERT INTO `gzp_aj_category` VALUES ('6', '农副食品加工业（筛豆、粮食）');
INSERT INTO `gzp_aj_category` VALUES ('7', '农副食品加工业（食品）');
INSERT INTO `gzp_aj_category` VALUES ('8', '纺织服装、服饰业（服装）');
INSERT INTO `gzp_aj_category` VALUES ('9', '橡胶和塑料制品业');
INSERT INTO `gzp_aj_category` VALUES ('10', '建材行业');
INSERT INTO `gzp_aj_category` VALUES ('11', '废弃资源综合利用业');
INSERT INTO `gzp_aj_category` VALUES ('12', '装卸搬运和仓储业');
INSERT INTO `gzp_aj_category` VALUES ('13', '其他行业');

-- ----------------------------
-- Table structure for gzp_aj_comcat
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_comcat`;
CREATE TABLE `gzp_aj_comcat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `jjxz` varchar(20) NOT NULL COMMENT '经济性质',
  `zcdz` varchar(50) NOT NULL COMMENT '注册地址',
  `jyfw` varchar(50) NOT NULL COMMENT '经营范围',
  `dbfzr` varchar(20) NOT NULL COMMENT '法定代表人或企业负责人',
  `glry` varchar(20) NOT NULL COMMENT '专(兼)安全管理人员',
  `pxzsl` varchar(20) NOT NULL COMMENT '安全培训证数量',
  `sx` varchar(20) NOT NULL COMMENT '安全"三同时"手续(类型,日期)',
  `hpsx` varchar(20) NOT NULL COMMENT '环评手续',
  `zdmj` varchar(20) NOT NULL COMMENT '占地面积',
  `cqxz` varchar(20) NOT NULL COMMENT '产权性质',
  `cyry` varchar(20) NOT NULL COMMENT '从业人员',
  `lxdh1` varchar(13) NOT NULL COMMENT '联系电话1',
  `lxdh2` varchar(13) NOT NULL COMMENT '联系电话2',
  `tzzy` varchar(50) NOT NULL COMMENT '特种作业证种类,人数',
  `aqsc` varchar(20) NOT NULL COMMENT '安全生产标准化(日期)',
  `xfsx` varchar(20) NOT NULL COMMENT '消防手续',
  `jzmj` varchar(20) NOT NULL COMMENT '建筑面积',
  `jcsj` varchar(20) NOT NULL COMMENT '建成时间',
  `jzfq` varchar(100) NOT NULL COMMENT '建筑分区',
  `bh` varchar(10) NOT NULL COMMENT '编号',
  `qymc` varchar(20) NOT NULL COMMENT '企业名称',
  `hyfl_id` int(10) unsigned NOT NULL COMMENT '++行业分类',
  `wxdj_id` int(10) unsigned NOT NULL COMMENT '++危险级别',
  `wxys_id` varchar(30) NOT NULL COMMENT '++危险因素',
  `rygm_id` int(10) unsigned NOT NULL COMMENT '++人员规模',
  `ssqy_id` int(10) unsigned NOT NULL COMMENT '++所属区域',
  `lng` varchar(20) NOT NULL COMMENT '经度',
  `lat` varchar(20) NOT NULL COMMENT '纬度',
  `ip` varchar(20) NOT NULL COMMENT 'IP',
  `port` varchar(20) NOT NULL COMMENT '端口',
  `jkusername` varchar(50) NOT NULL COMMENT '监控用户名',
  `jkpassword` varchar(50) NOT NULL COMMENT '监控密码',
  `channelnum` varchar(10) NOT NULL COMMENT '通道编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `hyfl_id` (`hyfl_id`) USING BTREE,
  KEY `wxdj_id` (`wxdj_id`) USING BTREE,
  KEY `wxys_id` (`wxys_id`) USING BTREE,
  KEY `rygm_id` (`rygm_id`) USING BTREE,
  KEY `ssqy_id` (`ssqy_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='公司属性表';

-- ----------------------------
-- Records of gzp_aj_comcat
-- ----------------------------
INSERT INTO `gzp_aj_comcat` VALUES ('24', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '川盛物流', '1', '3', '1,2,4,6,8', '1', '3', '121.491722', '39.005254', '39.152.130.22', '37777', 'admin', 'admin12345', '1');
INSERT INTO `gzp_aj_comcat` VALUES ('25', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '恒源热力管', '1', '3', '1,2,4,6,8', '1', '3', '121.483835', '39.003684', '39.152.130.22', '37777', 'admin', 'admin12345', '5');
INSERT INTO `gzp_aj_comcat` VALUES ('26', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '北方机车', '2', '3', '1,2,4,6,8', '1', '3', '121.489836', '39.000165', '39.152.130.22', '37777', 'admin', 'admin12345', '2,3,4');
INSERT INTO `gzp_aj_comcat` VALUES ('27', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '森林防火', '2', '3', '1,2,4,6,8', '1', '4', '123', '39.018676', '39.152.130.22', '37777', 'admin', 'admin12345', '21,22');
INSERT INTO `gzp_aj_comcat` VALUES ('28', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '易中木业', '2', '3', '1,2,4,6,8', '1', '4', '124', '39.018676', '39.152.130.28', '37777', 'admin', 'admin12345', '1,2,3,4');
INSERT INTO `gzp_aj_comcat` VALUES ('29', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '发的', '2', '3', '1,2,4,6,8', '1', '4', '121', '39.018676', '39.152.130.22', '37777', 'admin', 'admin12345', '2');
INSERT INTO `gzp_aj_comcat` VALUES ('30', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '发的', '2', '3', '1,2,4,6,8', '1', '4', '121', '39.018676', '39.152.130.22', '37777', 'admin', 'admin12345', '2');
INSERT INTO `gzp_aj_comcat` VALUES ('31', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '发的', '2', '3', '1,2,4,6,8', '1', '4', '121', '39.018676', '39.152.130.22', '37777', 'admin', 'admin12345', '2');
INSERT INTO `gzp_aj_comcat` VALUES ('32', '个体', '辽宁省大连市甘井子区革镇堡街道鞍子山村', '家具加工、木雕工艺品；涂料生产', '袁超', '袁超', '无', '无', '无', '800平米', '租赁', '7人', '13504968735', '13504968735', '无', '无', '无', '700平米', '1017年', '仓库2、厂房2、办公室1、锅炉房1', 'AZS1', '发的', '2', '3', '1,2,4,6,8', '1', '4', '121', '39.018676', '39.152.130.22', '37777', 'admin', 'admin12345', '2');
INSERT INTO `gzp_aj_comcat` VALUES ('33', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '9', '2', '11', '4', '6', '121', '31', '39.152.130.22', '37777', 'admin', 'admin12345', '2');
INSERT INTO `gzp_aj_comcat` VALUES ('34', '测试', '测试', '测试', '袁超', '袁超', '无', '测试', '无', '1650㎡', '租赁', '8人', '13504968735', '18940859751', '7人', '1', '无', '300平米', '未知', '仓库2、厂房2、办公室1、锅炉房1', '测试', '测试', '10', '4', '6', '3', '1', '121', '36', '39.152.130.22', '37777', 'admin', 'admin12345', '2');

-- ----------------------------
-- Table structure for gzp_aj_comimgs
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_comimgs`;
CREATE TABLE `gzp_aj_comimgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `img` varchar(150) NOT NULL COMMENT '原图',
  `smallimg` varchar(150) NOT NULL COMMENT '小图',
  `bigimg` varchar(150) NOT NULL COMMENT '大图',
  `comid` int(10) unsigned NOT NULL COMMENT '企业ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comid` (`comid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='企业相册';

-- ----------------------------
-- Records of gzp_aj_comimgs
-- ----------------------------
INSERT INTO `gzp_aj_comimgs` VALUES ('23', './Uploads/images/Safety/gssx/20180614/5aeec2a6bb10f001.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a6bb10f001.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a6bb10f001.jpeg', '24');
INSERT INTO `gzp_aj_comimgs` VALUES ('24', './Uploads/images/Safety/gssx/20180614/5aeec2a7b6710002.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a7b6710002.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a7b6710002.jpeg', '24');
INSERT INTO `gzp_aj_comimgs` VALUES ('25', './Uploads/images/Safety/gssx/20180614/5aeec2a8252ef003.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a8252ef003.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a8252ef003.jpeg', '24');
INSERT INTO `gzp_aj_comimgs` VALUES ('26', './Uploads/images/Safety/gssx/20180614/5aeec2a9141b4004.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a9141b4004.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a9141b4004.jpeg', '24');
INSERT INTO `gzp_aj_comimgs` VALUES ('27', './Uploads/images/Safety/gssx/20180614/5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a9740f2005.jpeg', '25');
INSERT INTO `gzp_aj_comimgs` VALUES ('28', './Uploads/images/Safety/gssx/20180614/5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a9740f2005.jpeg', '25');
INSERT INTO `gzp_aj_comimgs` VALUES ('29', './Uploads/images/Safety/gssx/20180614/5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a9740f2005.jpeg', '25');
INSERT INTO `gzp_aj_comimgs` VALUES ('30', './Uploads/images/Safety/gssx/20180614/5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/small_5aeec2a9740f2005.jpeg', './Uploads/images/Safety/gssx/20180614/20180506/big_5aeec2a9740f2005.jpeg', '25');

-- ----------------------------
-- Table structure for gzp_aj_company_jiankong
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_company_jiankong`;
CREATE TABLE `gzp_aj_company_jiankong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `com_id` int(11) NOT NULL COMMENT 'FK',
  `jk_ip` varchar(15) DEFAULT NULL COMMENT 'IP地址',
  `jk_channel` int(11) DEFAULT NULL COMMENT '监控通道',
  `jk_place` varchar(100) DEFAULT NULL COMMENT '监控位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_aj_company_jiankong
-- ----------------------------
INSERT INTO `gzp_aj_company_jiankong` VALUES ('1', '0', '223.100.198.46', '1', '德信橱柜');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('2', '0', '223.100.198.46', '2', '盛业家具');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('3', '0', '223.100.198.46', '3', '兴盈食品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('4', '0', '223.100.198.46', '4', '滨城阳光');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('5', '0', '223.100.198.46', '5', '滨城阳光');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('6', '0', '223.100.198.46', '6', '达发木旋');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('7', '0', '223.100.198.46', '7', '俊霖食品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('8', '0', '223.100.198.46', '8', '信荣木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('9', '0', '223.100.198.46', '9', '信荣木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('10', '0', '223.100.198.47', '1', '冬冬食品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('11', '0', '223.100.198.47', '2', '蓝海时装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('12', '0', '223.100.198.47', '3', '之心饮品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('13', '0', '223.100.198.47', '4', '中福加油站');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('14', '0', '223.100.198.47', '5', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('15', '0', '223.100.198.47', '6', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('16', '0', '223.100.198.47', '7', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('17', '0', '223.100.198.34', '1', '一佳精密');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('18', '0', '223.100.198.34', '2', '世华木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('19', '0', '223.100.198.34', '3', '世华木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('20', '0', '223.100.198.34', '4', '世华木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('21', '0', '223.100.198.34', '5', '中商库（纸）');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('22', '0', '223.100.198.34', '6', '中商库（地板）');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('23', '0', '223.100.198.34', '7', '中商库（食品）');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('24', '0', '223.100.198.34', '8', '亿丰橡塑');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('25', '0', '223.100.198.34', '9', '亿丰橡塑');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('26', '0', '223.100.198.34', '10', '亿华木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('27', '0', '223.100.198.34', '11', '帝龙泵业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('28', '0', '223.100.198.34', '12', '帝龙泵业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('29', '0', '223.100.198.34', '13', '梓桥装饰');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('30', '0', '223.100.198.34', '14', '正元刨花板');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('31', '0', '223.100.198.34', '15', '正元刨花板');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('32', '0', '223.100.198.34', '16', '食品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('33', '0', '223.100.198.35', '1', '宏才木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('34', '0', '223.100.198.35', '2', '俊豪木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('35', '0', '223.100.198.35', '3', '新源木制品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('36', '0', '223.100.198.35', '4', '新源木制品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('37', '0', '223.100.198.35', '5', '嘉瑞风机');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('38', '0', '223.100.198.35', '6', '康德福豆谷');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('39', '0', '223.100.198.35', '7', '康德福豆谷');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('40', '0', '223.100.198.35', '8', '康德福豆谷');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('41', '0', '223.100.198.35', '9', '风韵木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('42', '0', '223.100.198.35', '10', '风韵木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('43', '0', '223.100.198.35', '11', '亿华橡塑');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('44', '0', '223.100.198.35', '12', '开利金属');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('45', '0', '223.100.198.35', '13', '后革公墓');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('46', '0', '223.100.198.35', '14', '亿华生态园');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('47', '0', '223.100.198.35', '15', '亿华橡塑');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('48', '0', '223.100.198.35', '16', '瑞祥机械');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('49', '0', '223.100.198.35', '17', '恒泰木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('50', '0', '223.100.198.35', '18', '恒泰木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('51', '0', '223.100.198.35', '19', '恒泰木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('52', '0', '39.152.130.27', '1', '炘盛服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('53', '0', '39.152.130.27', '2', '炘盛服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('54', '0', '39.152.130.27', '3', '炘盛服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('55', '0', '39.152.130.27', '4', '大北电器');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('56', '0', '39.152.130.27', '5', '金鹏混凝土');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('57', '0', '39.152.130.27', '6', '金鹏混凝土');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('58', '0', '39.152.130.27', '7', '重工机电');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('59', '0', '39.152.130.27', '8', '重工机电');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('60', '0', '39.152.130.27', '9', '海德仪器');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('61', '0', '39.152.130.27', '10', '格润特建材');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('62', '0', '39.152.130.27', '11', '乾根木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('63', '0', '39.152.130.27', '12', '宏洋服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('64', '0', '39.152.130.27', '13', '宏洋服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('65', '0', '39.152.130.27', '14', '东之美服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('66', '0', '39.152.130.27', '15', '东之美服装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('67', '0', '39.152.130.28', '1', '易中木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('68', '0', '39.152.130.28', '2', '易中木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('69', '0', '39.152.130.28', '3', '易中木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('70', '0', '39.152.130.28', '4', '易中木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('71', '0', '39.152.130.28', '5', '致远木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('72', '0', '39.152.130.28', '6', '天工木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('73', '0', '39.152.130.28', '7', '天工木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('74', '0', '39.152.130.28', '8', '木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('75', '0', '39.152.130.28', '9', '亿都木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('76', '0', '39.152.130.28', '10', '亿都木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('77', '0', '39.152.130.28', '11', '视觉空间');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('78', '0', '39.152.130.28', '12', '视觉空间');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('79', '0', '39.152.130.28', '13', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('80', '0', '39.152.130.28', '14', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('81', '0', '39.152.130.28', '15', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('82', '0', '39.152.130.28', '16', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('83', '0', '39.152.130.22', '1', '川盛物流');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('84', '0', '39.152.130.22', '2', '北方机车');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('85', '0', '39.152.130.22', '3', '北方机车');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('86', '0', '39.152.130.22', '4', '北方机车');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('87', '0', '39.152.130.22', '5', '恒源热力管');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('88', '0', '39.152.130.22', '6', '美珠光学');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('89', '0', '39.152.130.22', '7', '美珠光学');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('90', '0', '39.152.130.22', '8', '隆达壹品理石');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('91', '0', '39.152.130.22', '9', '德胜彩印包装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('92', '0', '39.152.130.22', '10', '大发发动机');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('93', '0', '39.152.130.22', '11', '远陆科技');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('94', '0', '39.152.130.22', '12', '辰鑫照明');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('95', '0', '39.152.130.22', '13', '大通伟业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('96', '0', '39.152.130.22', '14', '威特锐研磨');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('97', '0', '39.152.130.22', '15', '华岳热处理');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('98', '0', '39.152.130.22', '16', '宝星研磨');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('99', '0', '39.152.130.22', '17', '宝星研磨');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('100', '0', '39.152.130.22', '18', '中通石化');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('101', '0', '39.152.130.22', '19', '天达模板');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('102', '0', '39.152.130.22', '20', '红太装饰');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('103', '0', '39.152.130.22', '21', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('104', '0', '39.152.130.22', '22', '森林防火');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('105', '0', '39.152.130.23', '1', '鑫为木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('106', '0', '39.152.130.23', '2', '鑫为木业');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('107', '0', '39.152.130.23', '3', '瑞祥家具');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('108', '0', '39.152.130.23', '4', '瑞祥家具');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('109', '0', '39.152.130.23', '5', '新时代印刷');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('110', '0', '39.152.130.23', '6', '宏伟木门');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('111', '0', '39.152.130.23', '7', '宏伟木门');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('112', '0', '39.152.130.23', '8', '乾辉包装');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('113', '0', '39.152.130.23', '9', '宇杰木门');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('114', '0', '39.152.130.23', '10', '宇杰木门');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('115', '0', '39.152.130.23', '11', '天成木制品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('116', '0', '39.152.130.23', '12', '天成木制品');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('117', '0', '39.152.130.23', '13', '华鑫家具');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('118', '0', '39.152.130.23', '14', '华鑫家具');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('119', '0', '39.152.130.23', '15', '万事成橱柜');
INSERT INTO `gzp_aj_company_jiankong` VALUES ('120', '0', '39.152.130.23', '16', '万事成橱柜');

-- ----------------------------
-- Table structure for gzp_aj_ssqy
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_ssqy`;
CREATE TABLE `gzp_aj_ssqy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(10) NOT NULL COMMENT '所属区域',
  `content` text COMMENT '区域介绍',
  `img` varchar(150) DEFAULT NULL COMMENT '区域图片',
  `area_lng` varchar(15) NOT NULL COMMENT '区域中心经度',
  `area_lat` varchar(15) NOT NULL COMMENT '区域中心纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='所属区域表';

-- ----------------------------
-- Records of gzp_aj_ssqy
-- ----------------------------
INSERT INTO `gzp_aj_ssqy` VALUES ('1', '后革村', '后革村位于革镇堡街道的东北部，南邻中革村，西靠夏家河子村，东至南关岭街道，全村地域面积为658公顷，其中村集体土地215公顷，国有土地443公顷，23家国有企业占地337.35公顷。后革村现有户籍人...', './Uploads/20180509/houge.png', '121.543339', '39.016732');
INSERT INTO `gzp_aj_ssqy` VALUES ('2', '中革村', '中革村位于革镇堡街道的南部，是革镇堡街道党政机关所在地，东临后革，北与夏家河村接壤，地势较低，以丘陵为主。总面积约6.7万平方公里，耕地面积约588亩，林地面积约930亩。中革村常住总人口近4700人...', './Uploads/20180509/zhongge.png', '121.53411', '39.011146');
INSERT INTO `gzp_aj_ssqy` VALUES ('3', '鞍子山村', '鞍子山村依山傍海，地处大连市西北部渤海湾畔，系城乡结合部，总面积8.3平方公里，海岸线长约1500米，地貌以丘陵为主，居民区以普通砖瓦房和楼区居多，管辖6个自然屯（6个居民组）。辖区内有各类生产经营...', './Uploads/20180509/anzishan.png', '121.499351', '39.018676');
INSERT INTO `gzp_aj_ssqy` VALUES ('4', '羊圈子村', '羊圈子村位于革镇堡街道的西北部，东临棋盘新村，西临夏家河子村，南部接壤后革村。占地总面积563公顷，耕地面积约58公顷，林地面积约143公顷，辖区4个自然屯。全村常住总人口约1300人，辖区共有企业125家，其中企...', './Uploads/20180509/yangquanzi.png', '121.555031', '39.043508');
INSERT INTO `gzp_aj_ssqy` VALUES ('5', '棋盘村', '棋盘村位于革镇堡东北方向，东至石灰窑与拉树房交界，西至海洋库与羊圈子交界，南至储运仓库与体育新城交界，北面环海，社区管辖面积9平方公里。棋盘村内现有新村楼院27栋，住户1300户，老楼区12栋，住户...', './Uploads/20180509/qipan.png', '121.572161', '39.053992');
INSERT INTO `gzp_aj_ssqy` VALUES ('6', '夏家河子村', '夏家河子村依山傍海，地处大连市西北部渤海湾畔，系城乡结合部，总面积8.8平方公里，海岸线长约3公里，地貌以丘陵为主，居民区以普通砖瓦房居多，管辖6个自然屯（6个居民组）。社区现有居民1118户，总人...', './Uploads/20180509/xiajiahe.png', '121.515752', '39.026341');

-- ----------------------------
-- Table structure for gzp_aj_wxjb
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_wxjb`;
CREATE TABLE `gzp_aj_wxjb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(10) NOT NULL COMMENT '危险级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='危险级别表';

-- ----------------------------
-- Records of gzp_aj_wxjb
-- ----------------------------
INSERT INTO `gzp_aj_wxjb` VALUES ('1', 'Ⅰ级');
INSERT INTO `gzp_aj_wxjb` VALUES ('2', 'Ⅱ级');
INSERT INTO `gzp_aj_wxjb` VALUES ('3', 'Ⅲ级');
INSERT INTO `gzp_aj_wxjb` VALUES ('4', 'Ⅳ级');

-- ----------------------------
-- Table structure for gzp_aj_wxys
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_wxys`;
CREATE TABLE `gzp_aj_wxys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL COMMENT '危险因素',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='危险因素表';

-- ----------------------------
-- Records of gzp_aj_wxys
-- ----------------------------
INSERT INTO `gzp_aj_wxys` VALUES ('1', '火灾');
INSERT INTO `gzp_aj_wxys` VALUES ('2', '粉尘爆炸');
INSERT INTO `gzp_aj_wxys` VALUES ('3', '物体打击');
INSERT INTO `gzp_aj_wxys` VALUES ('4', '机械伤害');
INSERT INTO `gzp_aj_wxys` VALUES ('5', '有限空间');
INSERT INTO `gzp_aj_wxys` VALUES ('6', '锅炉爆炸');
INSERT INTO `gzp_aj_wxys` VALUES ('7', '车辆伤害');
INSERT INTO `gzp_aj_wxys` VALUES ('8', '触电');
INSERT INTO `gzp_aj_wxys` VALUES ('9', '其他爆炸（化学）');
INSERT INTO `gzp_aj_wxys` VALUES ('10', '容器爆炸');
INSERT INTO `gzp_aj_wxys` VALUES ('11', '中毒和窒息');
INSERT INTO `gzp_aj_wxys` VALUES ('12', '灼伤');

-- ----------------------------
-- Table structure for gzp_aj_ycpc
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_ycpc`;
CREATE TABLE `gzp_aj_ycpc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `comid` int(10) unsigned NOT NULL COMMENT '企业ID',
  `chkdep` varchar(100) NOT NULL COMMENT '检查单位',
  `chktime` varchar(20) NOT NULL COMMENT '检查日期',
  `rechkdep` varchar(100) NOT NULL COMMENT '复查单位',
  `rechktime` varchar(20) NOT NULL COMMENT '复查日期',
  `danger` varchar(300) NOT NULL COMMENT '隐患',
  `danimg` varchar(150) DEFAULT NULL COMMENT '隐患图',
  `rec` varchar(300) NOT NULL COMMENT '整改',
  `recimg` varchar(150) DEFAULT NULL COMMENT '整改图',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comid` (`comid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='隐患排查治理';

-- ----------------------------
-- Records of gzp_aj_ycpc
-- ----------------------------
INSERT INTO `gzp_aj_ycpc` VALUES ('8', '24', 'asdasd ', '2018-05-01 00:00', '', '', 'asd asd ', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '', './Uploads/images/Safety/yhpc/20180615/thumb_5b235effa776f002.png');
INSERT INTO `gzp_aj_ycpc` VALUES ('7', '24', '大连整改', '2018-05-02 00:00', '大连整改', '2018-05-17 00:00', '大幅度', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '第三方第三方', './Uploads/images/Safety/yhpc/20180615/thumb_5b235effa776f002.png');
INSERT INTO `gzp_aj_ycpc` VALUES ('6', '24', '大连注安汇企业服务有限公司', '2018-03-12', '大连注安汇企业服务有限公司', '2018-03-13', '房顶照明灯接线盒无盖。', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '已修复', './Uploads/images/Safety/yhpc/20180615/thumb_5b235effa776f002.png');
INSERT INTO `gzp_aj_ycpc` VALUES ('9', '25', '大连注安汇企业服务有限公司', '2018-03-12', '大连注安汇企业服务有限公司', '2018-03-13', '房顶照明灯接线盒无盖。', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '已修复', './Uploads/images/Safety/yhpc/20180615/thumb_5b235effa776f002.png');
INSERT INTO `gzp_aj_ycpc` VALUES ('10', '25', '大连注安汇企业服务有限公司', '2018-03-12', '大连注安汇企业服务有限公司', '2018-03-13', '房顶照明灯接线盒无盖。', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '已修复', './Uploads/images/Safety/yhpc/20180615/thumb_5b235effa776f002.png');
INSERT INTO `gzp_aj_ycpc` VALUES ('12', '25', '大连检查', '2018-06-15 14:38:21', '大连检查机关', '2018-06-16 00:00:00', '防火工作不足', './Uploads/images/Safety/yhpc/20180615/thumb_5b235eff990f3001.png', '已经整改', '(NULL)');
INSERT INTO `gzp_aj_ycpc` VALUES ('13', '25', '12', '2018-06-27 00:00:00', '', '', '阿萨德', './Uploads/images/Safety/yhpc/20180615/thumb_5b2368f7d0b7e001.png', '', null);
INSERT INTO `gzp_aj_ycpc` VALUES ('14', '25', '22', '2018-06-15 15:34:10', '', '', '阿萨德', './Uploads/images/Safety/yhpc/20180615/thumb_5b236bfa07122001.png', '', null);
INSERT INTO `gzp_aj_ycpc` VALUES ('15', '25', '阿萨德', '2018-06-15 15:36:54', '', '', '阿萨德阿萨德', './Uploads/images/Safety/yhpc/20180615/thumb_5b236c9d68144001.png', '', null);
INSERT INTO `gzp_aj_ycpc` VALUES ('16', '25', '阿萨德', '2018-06-15 15:37:59', '', '', '阿萨德', './Uploads/images/Safety/yhpc/20180615/thumb_5b236cdf543f6001.png', '', null);
INSERT INTO `gzp_aj_ycpc` VALUES ('17', '24', '上传图片测试', '2018-06-20 12:57:35', '阿萨德', '2018-06-20 13:11:36', '阿萨德', './Uploads/images/Safety/yhpc/20180610/thumb_5b1cafd75dcfa001.jpg', '阿萨德', './Uploads/images/Safety/yhpc/20180610/thumb_5b1cb315d23eb001.jpg');

-- ----------------------------
-- Table structure for gzp_aj_yygm
-- ----------------------------
DROP TABLE IF EXISTS `gzp_aj_yygm`;
CREATE TABLE `gzp_aj_yygm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL COMMENT '人员规模',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='人员规模表';

-- ----------------------------
-- Records of gzp_aj_yygm
-- ----------------------------
INSERT INTO `gzp_aj_yygm` VALUES ('1', '微型（1人~9人）');
INSERT INTO `gzp_aj_yygm` VALUES ('2', '小型（10人~19人）');
INSERT INTO `gzp_aj_yygm` VALUES ('3', '中型（20人~29人）');
INSERT INTO `gzp_aj_yygm` VALUES ('4', '大型（30人以上）');

-- ----------------------------
-- Table structure for gzp_birth
-- ----------------------------
DROP TABLE IF EXISTS `gzp_birth`;
CREATE TABLE `gzp_birth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hjsum` bigint(20) DEFAULT NULL,
  `czsum` bigint(20) DEFAULT NULL,
  `ldsum` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_birth
-- ----------------------------
INSERT INTO `gzp_birth` VALUES ('1', '中革村', '4893', '5707', '892');
INSERT INTO `gzp_birth` VALUES ('2', '后革村', '2957', '3267', '336');
INSERT INTO `gzp_birth` VALUES ('3', '棋盘村', '2629', '4266', '545');
INSERT INTO `gzp_birth` VALUES ('4', '羊圈村', '1355', '1527', '320');
INSERT INTO `gzp_birth` VALUES ('5', '夏家河村', '3346', '3080', '432');
INSERT INTO `gzp_birth` VALUES ('6', '鞍子山村', '1999', '2234', '273');
INSERT INTO `gzp_birth` VALUES ('7', '渤海居民委', '659', '664', '227');

-- ----------------------------
-- Table structure for gzp_canji
-- ----------------------------
DROP TABLE IF EXISTS `gzp_canji`;
CREATE TABLE `gzp_canji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `number1` bigint(20) DEFAULT NULL,
  `sum1` bigint(20) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_canji
-- ----------------------------
INSERT INTO `gzp_canji` VALUES ('1', '2018', '中革', '105', '35', '18', '47', '5');
INSERT INTO `gzp_canji` VALUES ('2', '2018', '后革', '72', '22', '14', '32', '4');
INSERT INTO `gzp_canji` VALUES ('3', '2018', '鞍子山', '46', '8', '11', '22', '5');
INSERT INTO `gzp_canji` VALUES ('4', '2018', '夏家河子', '63', '12', '16', '34', '1');
INSERT INTO `gzp_canji` VALUES ('5', '2018', '棋盘', '110', '42', '22', '47', '9');
INSERT INTO `gzp_canji` VALUES ('6', '2018', '羊圈子', '40', '8', '8', '19', '5');
INSERT INTO `gzp_canji` VALUES ('13', '2017', '中革', '105', '97', '11', '40', '65');
INSERT INTO `gzp_canji` VALUES ('14', '2017', '后革', '72', '67', '13', '30', '42');
INSERT INTO `gzp_canji` VALUES ('15', '2017', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_canji` VALUES ('16', '2017', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_canji` VALUES ('17', '2017', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_canji` VALUES ('18', '2017', '羊圈子', '40', '36', '3', '14', '26');
INSERT INTO `gzp_canji` VALUES ('25', '2016', '中革', '100', '32', '11', '21', '23');
INSERT INTO `gzp_canji` VALUES ('26', '2016', '后革', '122', '25', '22', '14', '50');
INSERT INTO `gzp_canji` VALUES ('27', '2016', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_canji` VALUES ('28', '2016', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_canji` VALUES ('29', '2016', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_canji` VALUES ('30', '2016', '羊圈子', '40', '36', '3', '14', '26');
INSERT INTO `gzp_canji` VALUES ('31', '2015', '中革', '105', '97', '11', '40', '65');
INSERT INTO `gzp_canji` VALUES ('32', '2015', '后革', '72', '67', '13', '30', '42');
INSERT INTO `gzp_canji` VALUES ('33', '2015', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_canji` VALUES ('34', '2015', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_canji` VALUES ('35', '2015', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_canji` VALUES ('36', '2015', '羊圈子', '40', '36', '3', '14', '26');

-- ----------------------------
-- Table structure for gzp_city_citybuild
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_citybuild`;
CREATE TABLE `gzp_city_citybuild` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `project` varchar(150) NOT NULL COMMENT '项目',
  `responsible_department` varchar(50) NOT NULL DEFAULT '' COMMENT '责任部门',
  `responsible_leadership` varchar(50) NOT NULL DEFAULT '' COMMENT '责任领导',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '时间',
  `work_content` text NOT NULL COMMENT '工作内容',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='城市管理-城建项目表';

-- ----------------------------
-- Records of gzp_city_citybuild
-- ----------------------------
INSERT INTO `gzp_city_citybuild` VALUES ('1', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-03', '完成设计招投标准备工作，报区发改局立项', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('2', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-03', '完成招标工作，并确定初步设计方案', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('3', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-04', '完成招标工作，并确定初步设计方案', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('4', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-04', '完成方案设计及工程招标准备工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('5', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-05', '完成工程招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('6', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-06', '实施绿化工程', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('7', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-06', '实施基础工程', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('8', '辖区主干道路景观升级改造工程', '城管办', '季立明', '2018-06', '完成施工工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('9', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-03', '准备前期立项相关材料', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('10', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-04', '报送立项材料，进行立项', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('11', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-04', '开展招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('12', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-05', '开展招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('13', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-05', '工程队伍进场', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('14', '实施革中线大修工程', '中革村、城管办', '季立明', '2018-06', '施工', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('15', '协调区城建局启动棋南线体育中心800米段建设工程', '城管办', '季立明', '2018-03', '配合区城建局完成工程设计，协调星海湾管理中心解决周边小区污水处理问题', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('16', '协调区城建局启动棋南线体育中心800米段建设工程', '城管办', '季立明', '2018-04', '配合区城建局开展工程招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('17', '协调区城建局启动棋南线体育中心800米段建设工程', '城管办', '季立明', '2018-05', '争取完成招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('18', '协调区城建局启动棋南线体育中心800米段建设工程', '城管办', '季立明', '2018-06', '争取开工建设', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('19', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-03', '各村（居）委会完成项目选址工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('20', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-04', '各村（居）委会进行项目初步设计', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('21', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-04', '街道对各村（居）设计进行可行性分析，提出存在问题和整改措施', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('22', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-05', '完成项目设计工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('23', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-05', '进行项目招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('24', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-06', '进行项目招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('25', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-06', '完成招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('26', '深化“一村一景”惠民工程建设', '各村居、城管办', '季立明', '2018-06', '进场施工', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('27', '协调市区城建部门，将我街纳入市环卫扫保市场化作业体系', '城管办', '季立明', '2018-03', '完善环卫基础材料', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('28', '协调市区城建部门，将我街纳入市环卫扫保市场化作业体系', '城管办', '季立明', '2018-04', '对部分路段进行测绘、启动立项与招标', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('29', '协调市区城建部门，将我街纳入市环卫扫保市场化作业体系', '城管办', '季立明', '2018-05', '完成招标', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('30', '协调市区城建部门，将我街纳入市环卫扫保市场化作业体系', '城管办', '季立明', '2018-06', '企业进驻街道', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('31', '建设全市首个垃圾分类处理中心', '城管办、环境卫生管理站', '季立明', '2018-03', '调研阶段，到具有先进经验的地区考察，总结梳理，寻找好的建设模式', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('32', '建设全市首个垃圾分类处理中心', '城管办、环境卫生管理站', '季立明', '2018-04', '调研阶段，到具有先进经验的地区考察，总结梳理，寻找好的建设模式', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('33', '建设全市首个垃圾分类处理中心', '城管办、环境卫生管理站', '季立明', '2018-05', '完成初步设计', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('34', '建设全市首个垃圾分类处理中心', '城管办、环境卫生管理站', '季立明', '2018-06', '完善设计并办理相关手续', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('35', '开工建设砬夏河流域污水治理工程', '城管办', '季立明', '2018-03', '穿越铁路段开工建设。\r\n办理中后革段的地勘合格证及施工图审查意见书', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('36', '开工建设砬夏河流域污水治理工程', '城管办', '季立明', '2018-04', '准备中后革段施工、监理招标材料', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('37', '开工建设砬夏河流域污水治理工程', '城管办', '季立明', '2018-04', '完成中后革段施工、监理招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('38', '开工建设砬夏河流域污水治理工程', '城管办', '季立明', '2018-05', '完成中后革段施工、监理招标工作', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('39', '开工建设砬夏河流域污水治理工程', '城管办', '季立明', '2018-06', '中后革段开工建设', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('40', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-03', '确定海滨浴场升级改造设计方案', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('41', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-03', '完成研究论证升级改造方案，并做好开工前的准备工组', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('42', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-04', '完成研究论证升级改造方案，并做好开工前的准备工组', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('43', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-04', '完成一期建设', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('44', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-05', '完成一期建设', '1');
INSERT INTO `gzp_city_citybuild` VALUES ('45', '年内开工建设夏家河子海滨公园升级改造项目', '夏家河子村、城管办', '季立明', '2018-06', '完成一期建设', '1');

-- ----------------------------
-- Table structure for gzp_city_gonglu
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_gonglu`;
CREATE TABLE `gzp_city_gonglu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '道路',
  `xiangxi` varchar(50) NOT NULL DEFAULT '' COMMENT '道路详细',
  `tiaosh` varchar(20) NOT NULL DEFAULT '' COMMENT '条数',
  `changdu` varchar(20) NOT NULL DEFAULT '' COMMENT '长度',
  `mianji` varchar(20) NOT NULL DEFAULT '' COMMENT '面积',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='公路';

-- ----------------------------
-- Records of gzp_city_gonglu
-- ----------------------------
INSERT INTO `gzp_city_gonglu` VALUES ('1', '国家公路', '滨海路', '1', '14.5', '18.85');
INSERT INTO `gzp_city_gonglu` VALUES ('2', '县级公路', '张前路、羊革路、北羊路、西北路、新水泥路', '5', '16.6', '33.85');
INSERT INTO `gzp_city_gonglu` VALUES ('3', '乡级公路', '棋南线、夏鞍线', '2', '11.04', '--');
INSERT INTO `gzp_city_gonglu` VALUES ('4', '村路', '--', '321', '161.8', '--');

-- ----------------------------
-- Table structure for gzp_city_lvhua
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_lvhua`;
CREATE TABLE `gzp_city_lvhua` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '时间',
  `guimo` varchar(50) NOT NULL DEFAULT '' COMMENT '公共绿地规模',
  `renjun` varchar(50) NOT NULL DEFAULT '' COMMENT '人均绿地',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='绿化';

-- ----------------------------
-- Records of gzp_city_lvhua
-- ----------------------------
INSERT INTO `gzp_city_lvhua` VALUES ('1', '2013', '0.934', '0.005189');
INSERT INTO `gzp_city_lvhua` VALUES ('2', '2014', '0.934', '0.005189');
INSERT INTO `gzp_city_lvhua` VALUES ('3', '2015', '0.986', '0.005478');
INSERT INTO `gzp_city_lvhua` VALUES ('4', '2016', '1.009', '0.005606');
INSERT INTO `gzp_city_lvhua` VALUES ('5', '2017', '1.13', '0.006278');

-- ----------------------------
-- Table structure for gzp_city_saobao_car
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_saobao_car`;
CREATE TABLE `gzp_city_saobao_car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `count` varchar(20) NOT NULL DEFAULT '' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扫保-街道环卫车辆情况';

-- ----------------------------
-- Records of gzp_city_saobao_car
-- ----------------------------
INSERT INTO `gzp_city_saobao_car` VALUES ('1', '垃圾收集车辆', '23');
INSERT INTO `gzp_city_saobao_car` VALUES ('2', '洗扫车', '1');
INSERT INTO `gzp_city_saobao_car` VALUES ('3', '清洗车', '1');
INSERT INTO `gzp_city_saobao_car` VALUES ('4', '区间收集车辆', '14');
INSERT INTO `gzp_city_saobao_car` VALUES ('5', '扫路机', '1');
INSERT INTO `gzp_city_saobao_car` VALUES ('6', '城肥专用车', '1');
INSERT INTO `gzp_city_saobao_car` VALUES ('7', '其他车辆', '31');

-- ----------------------------
-- Table structure for gzp_city_saobao_renyuan
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_saobao_renyuan`;
CREATE TABLE `gzp_city_saobao_renyuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `count` varchar(20) NOT NULL DEFAULT '' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扫保-街道环卫人员';

-- ----------------------------
-- Records of gzp_city_saobao_renyuan
-- ----------------------------
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('1', '棋盘村', '30');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('2', '羊圈子村', '19');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('3', '后革村', '27');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('4', '中革村', '10');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('5', '夏家河子村', '11');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('6', '鞍子山村', '8');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('7', '渤海居民委', '1');
INSERT INTO `gzp_city_saobao_renyuan` VALUES ('8', '斌海清洁公司', '53');

-- ----------------------------
-- Table structure for gzp_city_saobao_shuliang
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_saobao_shuliang`;
CREATE TABLE `gzp_city_saobao_shuliang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `count` varchar(20) NOT NULL DEFAULT '' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扫保-果皮箱、垃圾箱、垃圾槽数量';

-- ----------------------------
-- Records of gzp_city_saobao_shuliang
-- ----------------------------
INSERT INTO `gzp_city_saobao_shuliang` VALUES ('1', '果皮箱', '24');
INSERT INTO `gzp_city_saobao_shuliang` VALUES ('2', '垃圾箱', '33');
INSERT INTO `gzp_city_saobao_shuliang` VALUES ('3', '垃圾槽', '248');

-- ----------------------------
-- Table structure for gzp_city_saobao_zhugan
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_saobao_zhugan`;
CREATE TABLE `gzp_city_saobao_zhugan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `area` varchar(20) NOT NULL DEFAULT '' COMMENT '面积',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='扫保-主干路扫保招标面积明细';

-- ----------------------------
-- Records of gzp_city_saobao_zhugan
-- ----------------------------
INSERT INTO `gzp_city_saobao_zhugan` VALUES ('1', '张前路', '151667.2');
INSERT INTO `gzp_city_saobao_zhugan` VALUES ('2', '滨海路', '417890.56');
INSERT INTO `gzp_city_saobao_zhugan` VALUES ('3', '羊革路', '87424.12');
INSERT INTO `gzp_city_saobao_zhugan` VALUES ('4', '北羊路', '42516.25');
INSERT INTO `gzp_city_saobao_zhugan` VALUES ('5', '中航华府北侧', '34157.2');

-- ----------------------------
-- Table structure for gzp_city_weijian
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_weijian`;
CREATE TABLE `gzp_city_weijian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `suosuh` varchar(200) NOT NULL DEFAULT '' COMMENT '所属村委会',
  `zerenren` varchar(200) NOT NULL DEFAULT '' COMMENT '违建责任人',
  `dizhi` varchar(200) NOT NULL DEFAULT '' COMMENT '违建地址',
  `shuliang` varchar(200) NOT NULL DEFAULT '' COMMENT '违建数量',
  `zhanmian` varchar(200) NOT NULL DEFAULT '' COMMENT '违建占地面积（㎡）',
  `jianmian` varchar(200) NOT NULL DEFAULT '' COMMENT '违建建筑面积（㎡）',
  `jiegou` varchar(200) NOT NULL DEFAULT '' COMMENT '违建结构',
  `shijian` varchar(200) NOT NULL DEFAULT '' COMMENT '建设时间',
  `zhuangkuang` varchar(200) NOT NULL DEFAULT '' COMMENT '目前状况',
  `leibie` varchar(200) NOT NULL DEFAULT '' COMMENT '土地类别',
  `hetong` varchar(200) NOT NULL DEFAULT '' COMMENT '合同签订时间及期限',
  `shixian` varchar(200) NOT NULL DEFAULT '' COMMENT '完成时限',
  `beizhu` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='违建';

-- ----------------------------
-- Records of gzp_city_weijian
-- ----------------------------
INSERT INTO `gzp_city_weijian` VALUES ('1', '夏家河子村', '大连高尔夫阳光养老院（大连玮海房地产开发有限公司）', '夏家河子村小刘沟', '13', '8.26万', '20.5万', '砖混', '2007年10月—2009年', '主体完工', '农业、林业、旅游开发、餐饮、娱乐、社会福利院等项目', '30年（2006年6月20日—2036年6月20日）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('2', '夏家河子村', '万锦庄园（崔学伦）', '夏家河子村小刘沟', '12', '8658', '1.6万', '砖混', '2005年—2007年', '主体完工', '建设开发用地，用于别墅开发使用', '50年（2004年3月—2054年3月）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('3', '夏家河子村', '碧海圣府（大连佳领房地产开发有限公司）', '夏家河子村小刘沟', '2', '9324', '1万', '砖混', '2008年破土动工', '主体完工', '旅游、建设开发用地', '50年（2004年1月6日—2054年1月6日）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('4', '夏家河子村', '绿茵庄园（大连益德置业有限公司）', '夏家河子村小刘沟', '70', '7万', '8.23万', '砖混', '2006年3月—2010年10月', '主体完工', '建设用地', '50年(1、2004年3月—2054年3月，2、2007年7月—2057年7月）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('5', '夏家河子村', '碧海一品、圣水溪畔（大连佳领房地产有限公司）', '夏家河子村小刘沟', '9', '1.17万', '1万', '框架', '2004年破土动工', '已封顶', '建设开发用地', '50年（2004年8月—2054年8月）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('6', '夏家河子村', '山水鑫苑小区（大连屹龙置业有限公司）', '夏家河子村小刘沟', '', '2.86万', '3.21万', '砖混', '2007年开始建设', '主体完工', '旅游开发、别墅开发', '50年（2004年5月1日—2054年5月1日', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('7', '夏家河子村', '孙忠源', '夏家河子村小刘沟', '6', '5994', '6000', '砖混', '2007年、2009年', '主体完工', '', '50年(1、2007年—2057年，2、2008年—2058年）', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('8', '夏家河子村', '冯海波', '夏家河子村小刘沟', '5', '5328', '2000', '框架', '2010年开工', '已封顶', '旅游建设开发用地', '50年(2008年7月1日—2058年6月30日)', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('9', '夏家河子村', '博爱老年公寓（李桂英）', '夏家河子村小刘沟', '8', '1.27万', '4.5万', '砖混', '2006年10月开始建设', '主体完工', '建设项目用地', '30年(2006年6月9日—2036年6月9日)', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('10', '夏家河子村', '大连益寿轩养老院（张长胜）', '夏家河子村小刘沟', '14', '12万', '5767', '砖混', '2009年-2010年9月', '主体完工', '', '50年(2007年4月1日—2057年4月1日)', '2020年', '');
INSERT INTO `gzp_city_weijian` VALUES ('11', '夏家河子村', '大连夏田养老院（菊永景）', '夏家河子村五队', '4', '6660', '2万', '砖混', '2005年-2007年', '主体完工', '', '', '2020年', '');

-- ----------------------------
-- Table structure for gzp_city_yicunyijing
-- ----------------------------
DROP TABLE IF EXISTS `gzp_city_yicunyijing`;
CREATE TABLE `gzp_city_yicunyijing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '时间(红色-2016年，黄色2017年)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='一村一景';

-- ----------------------------
-- Records of gzp_city_yicunyijing
-- ----------------------------
INSERT INTO `gzp_city_yicunyijing` VALUES ('1', '2016年', '渤海居委会绿化工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('2', '2016年', '鞍子山村道路两侧亮化工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('3', '2016年', '羊圈子村居民健身广场');
INSERT INTO `gzp_city_yicunyijing` VALUES ('4', '2016年', '后革村居民休闲游园');
INSERT INTO `gzp_city_yicunyijing` VALUES ('5', '2016年', '中革村社会主义核心价值观主题化验花园');
INSERT INTO `gzp_city_yicunyijing` VALUES ('6', '2016年', '棋盘村绿化工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('7', '2017年', '鞍子山村门球场修建工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('8', '2017年', '羊圈子村道路大修工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('9', '2017年', '棋盘村宣传工程');
INSERT INTO `gzp_city_yicunyijing` VALUES ('10', '2017年', '后革村居民休闲游园');

-- ----------------------------
-- Table structure for gzp_class_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_class_column`;
CREATE TABLE `gzp_class_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_class_column
-- ----------------------------
INSERT INTO `gzp_class_column` VALUES ('1', '民生保障', null, '0', null, null, '0');
INSERT INTO `gzp_class_column` VALUES ('2', '社会管理人员', 'address-card', '1', 'People', 'social', '1');
INSERT INTO `gzp_class_column` VALUES ('3', '待遇资格认证人员', 'user-plus', '1', 'People', 'msbz', '2');
INSERT INTO `gzp_class_column` VALUES ('4', '就业和失业', 'frown-o', '1', 'People', 'job', '3');
INSERT INTO `gzp_class_column` VALUES ('5', '残疾程度', 'wheelchair-alt\r\nwheelchair-alt', '1', 'People', 'degree', '4');
INSERT INTO `gzp_class_column` VALUES ('6', '残疾类别', 'wheelchair', '1', 'People', 'canji', '5');
INSERT INTO `gzp_class_column` VALUES ('7', '村（社区）干部', 'suitcase', '1', 'People', 'cadre', '6');
INSERT INTO `gzp_class_column` VALUES ('8', '居家养老中心', 'home', '1', 'People', 'aged', '7');
INSERT INTO `gzp_class_column` VALUES ('9', '60岁及以上老年人口', 'blind', '1', 'People', 'old', '8');
INSERT INTO `gzp_class_column` VALUES ('10', '少数民族统计', 'user-circle', '1', 'People', 'nation', '9');
INSERT INTO `gzp_class_column` VALUES ('11', '文化体育', null, '0', null, null, '0');
INSERT INTO `gzp_class_column` VALUES ('12', '宗教场所', 'bank ', '11', 'Sports', 'religion', '1');
INSERT INTO `gzp_class_column` VALUES ('13', '教育工作', null, '0', null, null, '0');
INSERT INTO `gzp_class_column` VALUES ('14', '教育', 'users', '13', 'Work', 'educ', '1');
INSERT INTO `gzp_class_column` VALUES ('15', '幼儿园基本情况', 'universal-access', '13', 'Work', 'child', '2');
INSERT INTO `gzp_class_column` VALUES ('16', '学校配餐统计', 'flag', '13', 'Work', 'food', '3');
INSERT INTO `gzp_class_column` VALUES ('17', '师生情况统计', 'users', '14', 'Work', 'stude', '1');
INSERT INTO `gzp_class_column` VALUES ('18', '教育投资情况', 'dollar ', '14', 'Work', 'invest', '2');
INSERT INTO `gzp_class_column` VALUES ('19', '办学特色', 'yen ', '14', 'Work', 'tercel', '3');
INSERT INTO `gzp_class_column` VALUES ('20', '教职工情况', 'building', '15', 'Work', 'staff', '1');
INSERT INTO `gzp_class_column` VALUES ('21', '建筑、资源情况', 'road', '15', 'Work', 'qvod', '2');
INSERT INTO `gzp_class_column` VALUES ('22', '小学配餐情况', 'dollar ', '16', 'Work', 'side', '1');
INSERT INTO `gzp_class_column` VALUES ('23', '初中配餐情况', 'yen ', '16', 'Work', 'high', '2');
INSERT INTO `gzp_class_column` VALUES ('24', '医疗卫生', null, '0', null, null, '0');
INSERT INTO `gzp_class_column` VALUES ('25', '卫计', 'hospital-o', '24', 'Health', 'ylwj', '1');
INSERT INTO `gzp_class_column` VALUES ('26', '卫生', 'user-md', '24', 'Health', 'ylws', '2');
INSERT INTO `gzp_class_column` VALUES ('27', '计划生育', 'hospital-o', '25', 'Health', 'birth', '1');
INSERT INTO `gzp_class_column` VALUES ('28', '医院基本情况', 'stethoscope', '26', 'Health', 'hosp', '1');
INSERT INTO `gzp_class_column` VALUES ('29', '卫生一体化', 'hospital-o', '26', 'Health', 'wsyt', '2');
INSERT INTO `gzp_class_column` VALUES ('30', '投入医疗卫生建设', 'stethoscope', '26', 'Health', 'constr', '3');
INSERT INTO `gzp_class_column` VALUES ('31', '单位及注册诊所', 'rmb ', '26', 'Health', 'clinic', '4');
INSERT INTO `gzp_class_column` VALUES ('32', '医养结合', 'medkit', '26', 'Health', 'bond', '5');
INSERT INTO `gzp_class_column` VALUES ('36', '体育队伍', 'grav', '11', 'Sports', 'tydw', '2');
INSERT INTO `gzp_class_column` VALUES ('37', '健身广场', 'meetup', '11', 'Sports', 'jsgc', '3');
INSERT INTO `gzp_class_column` VALUES ('38', '文化队伍', 'wpexplorer', '11', 'Sports', 'whdw', '4');
INSERT INTO `gzp_class_column` VALUES ('39', '农家书屋、社区书屋', 'handshake-o', '11', 'Sports', 'njsw', '5');
INSERT INTO `gzp_class_column` VALUES ('40', '文化活动室', 'envelope-open', '11', 'Sports', 'whhd', '6');
INSERT INTO `gzp_class_column` VALUES ('41', '文化保护名录', 'vcard ', '11', 'Sports', 'whbh', '7');

-- ----------------------------
-- Table structure for gzp_colum
-- ----------------------------
DROP TABLE IF EXISTS `gzp_colum`;
CREATE TABLE `gzp_colum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_colum
-- ----------------------------
INSERT INTO `gzp_colum` VALUES ('1', '社会化管理人员', 'address-card', 'Home', 'people', 'msbz', '1', '10');
INSERT INTO `gzp_colum` VALUES ('2', '待遇资格认证人员', 'user-plus', 'Home', 'people', 'msbz', '2', '10');
INSERT INTO `gzp_colum` VALUES ('3', '失业情况', 'frown-o', 'Home', 'people', 'msbz', '3', '10');
INSERT INTO `gzp_colum` VALUES ('4', '就业情况', 'smile-o', 'Home', 'people', 'msbz', '4', '10');
INSERT INTO `gzp_colum` VALUES ('5', '残疾人（人数）', 'wheelchair', 'Home', 'people', 'msbz', '5', '10');
INSERT INTO `gzp_colum` VALUES ('6', '残疾人（户数）', 'wheelchair', 'Home', 'people', 'msbz', '6', '10');
INSERT INTO `gzp_colum` VALUES ('7', '低保家庭（户数）', 'male', 'Home', 'people', 'msbz', '7', '10');
INSERT INTO `gzp_colum` VALUES ('8', '低保家庭（人数）', 'male', 'Home', 'people', 'msbz', '8', '10');
INSERT INTO `gzp_colum` VALUES ('9', '非低保（户数）', 'child', 'Home', 'people', 'msbz', '9', '10');
INSERT INTO `gzp_colum` VALUES ('10', '非低保（人数）', 'child', 'Home', 'people', 'msbz', '10', '10');
INSERT INTO `gzp_colum` VALUES ('11', '村（社区）干部', 'suitcase', 'Home', 'people', 'msbz', '11', '10');
INSERT INTO `gzp_colum` VALUES ('12', '居家养老中心', 'home', 'Home', 'people', 'msbz', '12', '10');
INSERT INTO `gzp_colum` VALUES ('13', '养老机构（床位数）', 'hotel', 'Home', 'people', 'msbz', '13', '10');
INSERT INTO `gzp_colum` VALUES ('14', '养老机构（入住数）', 'list-alt', 'Home', 'people', 'msbz', '14', '10');
INSERT INTO `gzp_colum` VALUES ('15', '60岁及以上老年人口', 'blind', 'Home', 'people', 'msbz', '15', '10');
INSERT INTO `gzp_colum` VALUES ('16', '少数民族统计', 'user-circle', 'Home', 'people', 'msbz', '16', '10');
INSERT INTO `gzp_colum` VALUES ('17', '中心小学', 'university', 'Home', 'work', 'jygzxx', '1', '20');
INSERT INTO `gzp_colum` VALUES ('18', '棋盘小学', 'university', 'Home', 'work', 'jygzxx', '2', '20');
INSERT INTO `gzp_colum` VALUES ('20', '后革小学', 'university', 'Home', 'work', 'jygzxx', '4', '20');
INSERT INTO `gzp_colum` VALUES ('21', '夏家河子小学', 'university', 'Home', 'work', 'jygzxx', '5', '20');
INSERT INTO `gzp_colum` VALUES ('22', '66初中', 'university', 'Home', 'work', 'jygzxx', '6', '20');
INSERT INTO `gzp_colum` VALUES ('23', '在校生基本情况', 'users', 'Home', 'work', 'jygz', '7', '20');
INSERT INTO `gzp_colum` VALUES ('24', '学校在编教师情况', 'user-secret', 'Home', 'work', 'jygz', '8', '20');
INSERT INTO `gzp_colum` VALUES ('25', '中小学（教学楼）', 'building', 'Home', 'work', 'jygz', '9', '20');
INSERT INTO `gzp_colum` VALUES ('26', '中小学（操场）', 'road', 'Home', 'work', 'jygz', '10', '20');
INSERT INTO `gzp_colum` VALUES ('27', '教育专项经费统计', 'dollar ', 'Home', 'work', 'jygz', '11', '20');
INSERT INTO `gzp_colum` VALUES ('28', '社会力量办学情况', 'flag', 'Home', 'work', 'jygz', '12', '20');
INSERT INTO `gzp_colum` VALUES ('29', '农村非办公教师养老补助发放情况', 'yen ', 'Home', 'work', 'jygz', '13', '20');
INSERT INTO `gzp_colum` VALUES ('30', '各幼儿园教职工情况', 'universal-access', 'Home', 'work', 'jygz', '14', '20');
INSERT INTO `gzp_colum` VALUES ('31', '体育队伍基础情况', 'newspaper-o', 'Home', 'sports', 'whty', '1', '30');
INSERT INTO `gzp_colum` VALUES ('32', '健身广场基础情况（面积）', 'soccer-ball-o', 'Home', 'sports', 'whty', '2', '30');
INSERT INTO `gzp_colum` VALUES ('33', '健身广场基础情况（健身路径）', 'soccer-ball-o', 'Home', 'sports', 'whty', '3', '30');
INSERT INTO `gzp_colum` VALUES ('34', '文化队伍基础情况', 'paint-brush', 'Home', 'sports', 'whty', '4', '30');
INSERT INTO `gzp_colum` VALUES ('35', '书屋基础情况（面积）', 'book', 'Home', 'sports', 'whty', '5', '30');
INSERT INTO `gzp_colum` VALUES ('36', '书屋基础情况（藏书数量）', 'book', 'Home', 'sports', 'whty', '6', '30');
INSERT INTO `gzp_colum` VALUES ('37', '文化活动室基础情况', 'braille', 'Home', 'sports', 'whty', '7', '30');
INSERT INTO `gzp_colum` VALUES ('38', '计划生育基础数据（户籍人口数）', 'hospital-o', 'Home', 'health', 'ylws', '1', '40');
INSERT INTO `gzp_colum` VALUES ('39', '计划生育基础数据（常住人口数）', 'hospital-o', 'Home', 'health', 'ylws', '2', '40');
INSERT INTO `gzp_colum` VALUES ('40', '计划生育基础数据（流动人口数）', 'hospital-o', 'Home', 'health', 'ylws', '3', '40');
INSERT INTO `gzp_colum` VALUES ('41', '计划生育基础数据（出生人数）', 'hospital-o', 'Home', 'health', 'ylws', '4', '40');
INSERT INTO `gzp_colum` VALUES ('50', '地区医院基本情况（科室）', 'user-md', 'Home', 'health', 'ylws', '13', '40');
INSERT INTO `gzp_colum` VALUES ('51', '地区医院基本情况（医资力量）', 'user-md', 'Home', 'health', 'ylws', '14', '40');
INSERT INTO `gzp_colum` VALUES ('54', '街道卫生一体化基本情况（医资力量）', 'stethoscope', 'Home', 'health', 'ylws', '17', '40');
INSERT INTO `gzp_colum` VALUES ('55', '街道卫生一体化基本情况（受众人数）', 'stethoscope', 'Home', 'health', 'ylws', '18', '40');
INSERT INTO `gzp_colum` VALUES ('56', '地区医院及卫生一体化项目投入资金情况', 'rmb ', 'Home', 'health', 'ylws', '19', '40');
INSERT INTO `gzp_colum` VALUES ('57', '医养结合情况（受众人数）', 'medkit', 'Home', 'health', 'ylws', '20', '40');
INSERT INTO `gzp_colum` VALUES ('58', '对标上海', 'file-text-o', 'Home', 'news', 'jour', '1', '50');
INSERT INTO `gzp_colum` VALUES ('59', '对标世界', 'file-text', 'Home', 'news', 'jour', '2', '50');

-- ----------------------------
-- Table structure for gzp_columnclass
-- ----------------------------
DROP TABLE IF EXISTS `gzp_columnclass`;
CREATE TABLE `gzp_columnclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_columnclass
-- ----------------------------
INSERT INTO `gzp_columnclass` VALUES ('1', '民生保障', '1', '60');
INSERT INTO `gzp_columnclass` VALUES ('2', '教育工作', '2', '60');
INSERT INTO `gzp_columnclass` VALUES ('3', '文化体育', '3', '60');
INSERT INTO `gzp_columnclass` VALUES ('4', '医疗卫生', '4', '60');

-- ----------------------------
-- Table structure for gzp_commentmeta
-- ----------------------------
DROP TABLE IF EXISTS `gzp_commentmeta`;
CREATE TABLE `gzp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for gzp_comments
-- ----------------------------
DROP TABLE IF EXISTS `gzp_comments`;
CREATE TABLE `gzp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_comments
-- ----------------------------
INSERT INTO `gzp_comments` VALUES ('1', '1', '一位WordPress评论者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-25 22:47:06', '2018-11-25 14:47:06', '嗨，这是一条评论。\n要开始审核、编辑及删除评论，请访问仪表盘的“评论”页面。\n评论者头像来自<a href=\"https://gravatar.com\">Gravatar</a>。', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for gzp_degree
-- ----------------------------
DROP TABLE IF EXISTS `gzp_degree`;
CREATE TABLE `gzp_degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `number1` bigint(20) DEFAULT NULL,
  `sum1` bigint(20) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_degree
-- ----------------------------
INSERT INTO `gzp_degree` VALUES ('1', '2018', '中革', '105', '97', '11', '40', '65');
INSERT INTO `gzp_degree` VALUES ('2', '2018', '后革', '72', '67', '13', '30', '42');
INSERT INTO `gzp_degree` VALUES ('3', '2018', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_degree` VALUES ('4', '2018', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_degree` VALUES ('5', '2018', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_degree` VALUES ('6', '2018', '羊圈子', '40', '36', '3', '14', '26');
INSERT INTO `gzp_degree` VALUES ('13', '2017', '中革', '105', '97', '11', '40', '65');
INSERT INTO `gzp_degree` VALUES ('14', '2017', '后革', '72', '67', '13', '30', '42');
INSERT INTO `gzp_degree` VALUES ('15', '2017', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_degree` VALUES ('16', '2017', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_degree` VALUES ('17', '2017', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_degree` VALUES ('18', '2017', '羊圈子', '40', '36', '3', '14', '26');
INSERT INTO `gzp_degree` VALUES ('25', '2016', '中革', '100', '32', '11', '21', '23');
INSERT INTO `gzp_degree` VALUES ('26', '2016', '后革', '122', '25', '22', '14', '50');
INSERT INTO `gzp_degree` VALUES ('27', '2016', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_degree` VALUES ('28', '2016', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_degree` VALUES ('29', '2016', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_degree` VALUES ('30', '2016', '羊圈子', '40', '36', '3', '14', '26');
INSERT INTO `gzp_degree` VALUES ('31', '2015', '中革', '105', '97', '11', '40', '65');
INSERT INTO `gzp_degree` VALUES ('32', '2015', '后革', '72', '67', '13', '30', '42');
INSERT INTO `gzp_degree` VALUES ('33', '2015', '鞍子山', '46', '45', '4', '13', '33');
INSERT INTO `gzp_degree` VALUES ('34', '2015', '夏家河子', '63', '57', '5', '12', '51');
INSERT INTO `gzp_degree` VALUES ('35', '2015', '棋盘', '110', '95', '13', '45', '65');
INSERT INTO `gzp_degree` VALUES ('36', '2015', '羊圈子', '40', '36', '3', '14', '26');

-- ----------------------------
-- Table structure for gzp_department_advice
-- ----------------------------
DROP TABLE IF EXISTS `gzp_department_advice`;
CREATE TABLE `gzp_department_advice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `list_id` varchar(150) NOT NULL COMMENT '一级菜单ID',
  `name` varchar(150) NOT NULL COMMENT '题目',
  `people` varchar(50) NOT NULL COMMENT '建议人',
  `content` text NOT NULL COMMENT '建议内容',
  `time` varchar(20) NOT NULL COMMENT '上报时间',
  `reply` text NOT NULL COMMENT '领导批示',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT '批示状态{批示：1，未批示：2}',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `list_id` (`list_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='各一级菜单的部门建议及领导批示表';

-- ----------------------------
-- Records of gzp_department_advice
-- ----------------------------
INSERT INTO `gzp_department_advice` VALUES ('1', '党的建设', '测试', '小张', '按实际但考虑', '1528249170', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('2', '党的建设', '测试', '小张', '按实际但考虑', '1528249170', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('3', '党的建设', '测试', '小张', '阿萨德', '1528249910', '同意', '1');
INSERT INTO `gzp_department_advice` VALUES ('4', '安全生产', '测试', '小张', '啥的', '1528253066', '阿萨德阿萨德是', '1');
INSERT INTO `gzp_department_advice` VALUES ('5', '安全生产', '测试', '小张', '啥的', '1528253483', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('6', '安全生产', '测试', '小张', '啥的', '1528253483', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('7', '安全生产', '测试', '小张', '啥的', '1528253483', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('8', '安全生产', '测试', '小张', '阿萨德', '1528259997', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('9', '安全生产', '测试', '小张', '啥的', '1528260076', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('10', '安全生产', '类型列表下级', '小张', '阿萨德', '1528260122', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('11', '安全生产', '重新测试', '王三', '&lt;p&gt;；京东方赶快来非动手但是&lt;br/&gt;&lt;/p&gt;', '1528262184', '可以', '1');
INSERT INTO `gzp_department_advice` VALUES ('12', '安全生产', '厂内易燃区域建议', '小李子', '&lt;p&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;易燃液体的火灾特性及其防范措施&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: right;&quot;&gt;&lt;font color=&quot;#444444&quot; face=&quot;Tahoma, Microsoft Yahei, Simsun&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180607/1528335646.jpg&quot; title=&quot;1528335646.jpg&quot; alt=&quot;wKhQc1TJ9D6ENwZVAAAAAMQxOpE948.jpg&quot; width=&quot;630&quot; height=&quot;316&quot;/&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;易燃液体是指在常温下极易着火燃烧的液态物质,这类物质大都是有机化合物,其中很多属于石油化工产品.我国规定,凡是闪点低于61℃的都属于易燃液体.&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;(一)&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体的火灾特性&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;1.&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体的危险性质&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;(1)&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 高度易燃性&amp;nbsp;&amp;nbsp;易燃液体的主要特性是具有高度易燃性.这类物品非常易燃烧,其主要原因如下.&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;①&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 由于易燃液体的闪点低,其燃点也低(燃点一般约高于1∽5℃),因此接触火源极易着火持续燃烧.&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;②&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体多数是有机化合物,分子组成中含有碳原子和氢原子,易和氧反应而燃烧.另外,大多数有机化合物不能电离,少数能电离的,电离度极小,因此绝大多数有机化合物的导电率极小,在流动,晃动时容易积聚静电，静电放电产生火花则引起燃烧。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;③&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 大多数易燃液体分子量小，沸点低，容易挥发，蒸汽压大。由于挥发性大，这些液体液面的蒸汽浓度也较大，遇明火或火花即易着火燃烧。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;④&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体着火所需能量小，只要极小能量的火花即可燃烧。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;⑤&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体的蒸汽一般比空气重，易沉积在低洼处所或地下室内，经久不散，更增加了着火的危险性。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（2）易爆性 易燃液体挥发性大，当挥发出来的易燃蒸汽与空气混合，浓度达到一定范围，既达到该易燃液体的爆炸极限的上下限之间时，遇明火或火花即能引起爆炸。凡是爆炸范围越大，爆炸下限越低的易燃液体，它的危险性就越大。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（3）高度流动扩散性 易燃液体的粘度一般都很小，不仅本身极易流动，还因渗透，浸润及毛细现象等作用即使容器只有极细微裂纹，易燃液体也会、渗出容器壁外，扩大其表面积，并源源不断地挥发，使空气中的易燃蒸汽浓度高，从而增加了着火爆炸的危险性。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（4）受热膨胀性 易燃液体的膨胀系数比较大，受热后体积易膨胀，同时其蒸汽压亦随之升高，从而使密封容器中内部压力增大，造成“鼓桶”，甚至爆裂。此时如遇火花（在容器爆裂时也可能产生火花）即会引起燃烧爆炸。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（5）忌氧化剂和酸 易燃液体与氧化剂或有氧化性的酸类（特别是硝酸）接触，能发生剧烈反应而引起着火爆炸。这是因为易燃液体都是有机化合物，容易氧化，能与氧化剂发生氧化反应并产生大量的热，使温度升高到燃点引起着火爆炸。如松节油遇浓硝酸时便立即会燃烧。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2．易燃液体火灾特性与其化学结构和物理性质的关系&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（1）&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 易燃液体的闪点越低，火灾危险性就越大；比重（相对密度）越小，沸点越低，其蒸发速度越快，火灾危险性就越大。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（2）&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 在同一类有机化合物中，一般是分子量越小，其火灾危险性越大如醇类化合物中，甲醛的火灾危险性要比分子量越大的乙醇，丙醇为高。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（3）&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 在脂肪族碳氢化合物中，醚的火灾危险性最大，醛，酮，酯次之，醇类又次之，羟酸类较低。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（4）&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 在芳香族碳氢化合物中，以某种基团（如氯基，羟基，氨基，羧基等）取代了苯环中的氢而形成的各种衍生物，火灾危险性一般是下降的；取代的基团数越多，则火灾危险性越低。但硝基取代物则相反，苯环上硝基越多，其火灾和爆炸危险性越大。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Tahoma, &amp;quot;Microsoft Yahei&amp;quot;, Simsun; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;（5）&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 可燃性不饱和羟酸的分子结构中具有共 键结构，易被空气中氧所氧化，而且分子容易聚合发热，因而具有易燃性。液体分子中不饱和键越多，其火灾危险性越大。&lt;/span&gt;&lt;/p&gt;', '1528335406', 'sdf ', '1');
INSERT INTO `gzp_department_advice` VALUES ('13', '重点督办', '重点督办建议626', '小张', '&lt;p&gt;626重点督办建议内容&lt;/p&gt;', '1529975035', '同意', '1');
INSERT INTO `gzp_department_advice` VALUES ('14', '重点督办', '重点督办6.26第二次测试', '想', '&lt;p&gt;四大皆空辣椒粉是&lt;/p&gt;', '1529975242', '', '2');
INSERT INTO `gzp_department_advice` VALUES ('15', '重点督办', '重点督办6.26第三次测试', '爱神的箭看', '&lt;p&gt;阿萨德阿萨德阿萨德&lt;/p&gt;', '1529975343', '', '2');

-- ----------------------------
-- Table structure for gzp_department_list
-- ----------------------------
DROP TABLE IF EXISTS `gzp_department_list`;
CREATE TABLE `gzp_department_list` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` varchar(15) NOT NULL COMMENT '部门名称',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='部门列表';

-- ----------------------------
-- Records of gzp_department_list
-- ----------------------------
INSERT INTO `gzp_department_list` VALUES ('1', '教育办', '1');
INSERT INTO `gzp_department_list` VALUES ('2', '城管办', '1');
INSERT INTO `gzp_department_list` VALUES ('3', '建设办', '1');
INSERT INTO `gzp_department_list` VALUES ('4', '动迁办', '1');
INSERT INTO `gzp_department_list` VALUES ('5', '经济办', '1');
INSERT INTO `gzp_department_list` VALUES ('6', '食安办', '1');
INSERT INTO `gzp_department_list` VALUES ('7', '行政办', '1');
INSERT INTO `gzp_department_list` VALUES ('8', '社事办', '1');
INSERT INTO `gzp_department_list` VALUES ('9', '卫计办', '1');
INSERT INTO `gzp_department_list` VALUES ('10', '综治办', '1');
INSERT INTO `gzp_department_list` VALUES ('11', '安监站', '1');
INSERT INTO `gzp_department_list` VALUES ('12', '村委会', '1');
INSERT INTO `gzp_department_list` VALUES ('13', '文化中心', '1');
INSERT INTO `gzp_department_list` VALUES ('14', '劳动保障', '1');
INSERT INTO `gzp_department_list` VALUES ('15', '环境卫生管理站', '1');
INSERT INTO `gzp_department_list` VALUES ('16', '农业综合服务中心', '1');
INSERT INTO `gzp_department_list` VALUES ('17', '中革村', '1');
INSERT INTO `gzp_department_list` VALUES ('18', '后革村', '1');
INSERT INTO `gzp_department_list` VALUES ('19', '棋盘村', '1');
INSERT INTO `gzp_department_list` VALUES ('20', '鞍子山村', '1');
INSERT INTO `gzp_department_list` VALUES ('21', '夏家河子村', '1');
INSERT INTO `gzp_department_list` VALUES ('22', '中航华府', '1');
INSERT INTO `gzp_department_list` VALUES ('23', '党政办', '1');
INSERT INTO `gzp_department_list` VALUES ('24', '财政办', '1');

-- ----------------------------
-- Table structure for gzp_event
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event`;
CREATE TABLE `gzp_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `type` varchar(10) NOT NULL COMMENT '项目类型',
  `name` varchar(50) NOT NULL COMMENT '项目名称',
  `leader` varchar(20) NOT NULL COMMENT '责任领导',
  `add_time` varchar(20) NOT NULL COMMENT '添加时间',
  `finish_time_plan` varchar(20) NOT NULL COMMENT '预计完成时间',
  `delay_time` varchar(20) NOT NULL COMMENT '延期完成时间',
  `more_department` varchar(100) NOT NULL COMMENT '跨部门',
  `zhenggai_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '整改 0无整改 1完成整改 2整改中',
  `status` tinyint(3) unsigned NOT NULL COMMENT '0-未完成 1-已完成',
  `comment` varchar(200) NOT NULL COMMENT '评论',
  `description` varchar(300) NOT NULL COMMENT '项目简述',
  `problem` varchar(200) NOT NULL COMMENT '存在的问题',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点督办事项表';

-- ----------------------------
-- Records of gzp_event
-- ----------------------------
INSERT INTO `gzp_event` VALUES ('1', '', '实施鞍子山旧区改造D地块电缆迁移工程项目', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('2', '', '完成张前路西侧地块改造项目C、D地块动迁工作', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('3', '', '完成张前路东侧地块改造项目一期摘牌', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('4', '', '实施鞍子山旧区改造D地块电缆迁移工程', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('5', '', '大显南侧地块改造项目', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('6', '', '开工建设河周路辅路项目', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('7', '', '推进中航华府配套小学校建项目前期手续办理工作', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('8', '', '新建大连市第66中学体育馆', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('9', '', '鞍子山新居工程', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('10', '', '土羊高速南侧地块改造项目', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('11', '', '开建砬夏河流域污水治理工程', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('12', '', '实施革中线道路大修工程', '季立明', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('13', '', '扎实推进社区组织建设工作', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('14', '', '对辖区村主干路及危险路段安装标牌标线', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('15', '', '辖区主干道路景观升级改造工程', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('16', '', '节日亮化工程', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('17', '', '深化“一村一景”惠民工程建设', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('18', '', '农村集体产权制度改革', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('19', '', '创建国家食品安全城市验收工作', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('20', '', '招商海德公园', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('21', '', '万科新都会', '袁永刚', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('22', '', '夏家河子小学云机房建设工程', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('23', '', '夏家河子小学大门改造工程', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('24', '', '中心小学操场改造工程', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('25', '', '后革小学桌椅、物品柜更换工作', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('26', '', '地区医院门窗及外立面改造工程', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('27', '', '革镇堡街道“邻里一家亲”文艺晚会', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('28', '', '革镇堡街道第二届地区足球联赛', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('29', '', '甘井子区国民体质监测', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('30', '', '革镇堡街道文体节开幕式暨第十五届地区运动会', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('31', '', '实施“49、59”灵活就业人员社保补贴', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('32', '', '新开发就业岗位1200余个', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');
INSERT INTO `gzp_event` VALUES ('33', '', '新增实名制就业700余人', '陈宏', '', '', '', '', '0', '0', '', '', '', '1');

-- ----------------------------
-- Table structure for gzp_event_delay
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_delay`;
CREATE TABLE `gzp_event_delay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `event_id` int(10) unsigned NOT NULL COMMENT '督办事项ID',
  `add_time` varchar(20) NOT NULL COMMENT '添加时间',
  `delay_time` varchar(20) NOT NULL COMMENT '延期时间',
  `delay_reason` varchar(200) NOT NULL COMMENT '延期原因',
  `approver_id` int(10) unsigned NOT NULL COMMENT '审批人ID',
  `approve_time` varchar(20) NOT NULL COMMENT '审批时间',
  `approve_status` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '审批状态 0-未通过 1-通过 2-待审核',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点督办延期表';

-- ----------------------------
-- Records of gzp_event_delay
-- ----------------------------
INSERT INTO `gzp_event_delay` VALUES ('1', '3', '1525603483', '1543161599', '延期原因延期原因延期原因延期原因延期原因延期原因延期原因延期原因', '1', '', '2', '1');
INSERT INTO `gzp_event_delay` VALUES ('4', '13', '1529896083', '1538991261', '再次测试1111', '2', '1529911565', '0', '1');

-- ----------------------------
-- Table structure for gzp_event_department
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_department`;
CREATE TABLE `gzp_event_department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `department_id` tinyint(3) unsigned NOT NULL COMMENT '部门ID',
  `event_id` int(10) unsigned NOT NULL COMMENT '重点工作ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点督办事项所属部门表';

-- ----------------------------
-- Records of gzp_event_department
-- ----------------------------
INSERT INTO `gzp_event_department` VALUES ('1', '4', '1');
INSERT INTO `gzp_event_department` VALUES ('2', '17', '2');
INSERT INTO `gzp_event_department` VALUES ('3', '17', '3');
INSERT INTO `gzp_event_department` VALUES ('4', '20', '4');
INSERT INTO `gzp_event_department` VALUES ('5', '18', '5');
INSERT INTO `gzp_event_department` VALUES ('6', '20', '6');
INSERT INTO `gzp_event_department` VALUES ('7', '3', '6');
INSERT INTO `gzp_event_department` VALUES ('8', '4', '2');
INSERT INTO `gzp_event_department` VALUES ('9', '4', '3');
INSERT INTO `gzp_event_department` VALUES ('10', '4', '4');
INSERT INTO `gzp_event_department` VALUES ('11', '3', '5');
INSERT INTO `gzp_event_department` VALUES ('12', '3', '7');
INSERT INTO `gzp_event_department` VALUES ('13', '22', '7');
INSERT INTO `gzp_event_department` VALUES ('14', '3', '8');
INSERT INTO `gzp_event_department` VALUES ('15', '20', '9');
INSERT INTO `gzp_event_department` VALUES ('16', '3', '9');
INSERT INTO `gzp_event_department` VALUES ('17', '3', '10');
INSERT INTO `gzp_event_department` VALUES ('18', '2', '11');
INSERT INTO `gzp_event_department` VALUES ('19', '2', '12');
INSERT INTO `gzp_event_department` VALUES ('20', '8', '13');
INSERT INTO `gzp_event_department` VALUES ('21', '2', '14');
INSERT INTO `gzp_event_department` VALUES ('22', '2', '15');
INSERT INTO `gzp_event_department` VALUES ('23', '2', '16');
INSERT INTO `gzp_event_department` VALUES ('24', '2', '17');
INSERT INTO `gzp_event_department` VALUES ('25', '16', '18');
INSERT INTO `gzp_event_department` VALUES ('26', '6', '19');
INSERT INTO `gzp_event_department` VALUES ('27', '5', '20');
INSERT INTO `gzp_event_department` VALUES ('28', '5', '21');
INSERT INTO `gzp_event_department` VALUES ('29', '1', '22');
INSERT INTO `gzp_event_department` VALUES ('30', '1', '23');
INSERT INTO `gzp_event_department` VALUES ('31', '1', '24');
INSERT INTO `gzp_event_department` VALUES ('32', '1', '25');
INSERT INTO `gzp_event_department` VALUES ('33', '1', '26');
INSERT INTO `gzp_event_department` VALUES ('34', '13', '27');
INSERT INTO `gzp_event_department` VALUES ('35', '13', '28');
INSERT INTO `gzp_event_department` VALUES ('36', '13', '29');
INSERT INTO `gzp_event_department` VALUES ('37', '13', '30');
INSERT INTO `gzp_event_department` VALUES ('38', '14', '31');
INSERT INTO `gzp_event_department` VALUES ('39', '14', '32');
INSERT INTO `gzp_event_department` VALUES ('40', '14', '33');

-- ----------------------------
-- Table structure for gzp_event_images
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_images`;
CREATE TABLE `gzp_event_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `log_id` int(10) unsigned NOT NULL COMMENT '日志ID',
  `URL` varchar(200) NOT NULL COMMENT '资源路径',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否 1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点工作图片表';

-- ----------------------------
-- Records of gzp_event_images
-- ----------------------------
INSERT INTO `gzp_event_images` VALUES ('14', '1', './Uploads/images/Supervision/log/20180622/5b2c4a161177d001.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('15', '2', './Uploads/images/Supervision/log/20180622/5b2c4a21684bf001.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('16', '3', './Uploads/images/Supervision/log/20180622/5b2c4a2cc0589001.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('17', '4', './Uploads/images/Supervision/log/20180622/5b2c7e78b64cd001.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('18', '4', './Uploads/images/Supervision/log/20180622/5b2c7e78cb8aa002.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('19', '4', './Uploads/images/Supervision/log/20180622/5b2c7e78cd402003.jpeg', '1');
INSERT INTO `gzp_event_images` VALUES ('20', '5', './Uploads/images/Supervision/log/20180625/5b309a98d66d5001.jpeg', '1');

-- ----------------------------
-- Table structure for gzp_event_important_ratio
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_important_ratio`;
CREATE TABLE `gzp_event_important_ratio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `event_id` int(10) unsigned NOT NULL COMMENT '督办工作ID',
  `name` varchar(10) NOT NULL COMMENT '指标名称',
  `value` varchar(10) NOT NULL COMMENT '指标值',
  `update_time` varchar(20) NOT NULL COMMENT '更新时间',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否 1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='督办工作重点指标表';

-- ----------------------------
-- Records of gzp_event_important_ratio
-- ----------------------------
INSERT INTO `gzp_event_important_ratio` VALUES ('3', '1', '计划进度', '71', '1525765240', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('4', '1', '实际进度', '67', '1525765240', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('5', '10', '实际进度', '66', '1529544398', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('9', '10', '计划进度', '88', '1529548468', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('10', '12', '实际完成', '10', '1529647535', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('11', '12', '计划进度', '20', '1529647556', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('12', '13', '实际进度', '55', '1529647571', '1');
INSERT INTO `gzp_event_important_ratio` VALUES ('13', '13', '计划进度', '99', '1529647586', '1');

-- ----------------------------
-- Table structure for gzp_event_log
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_log`;
CREATE TABLE `gzp_event_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `event_id` int(10) unsigned NOT NULL COMMENT '督办工作ID',
  `submitter_id` int(10) unsigned NOT NULL COMMENT '提交人ID',
  `contents` text NOT NULL COMMENT '日志内容',
  `add_time` varchar(20) NOT NULL COMMENT '提交时间',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='督办工作日志表';

-- ----------------------------
-- Records of gzp_event_log
-- ----------------------------
INSERT INTO `gzp_event_log` VALUES ('1', '1', '10', '进行了第一次整改：整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改。', '1525401321', '1');
INSERT INTO `gzp_event_log` VALUES ('2', '1', '11', '进行了第二次整改：整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改。', '1525484401', '1');
INSERT INTO `gzp_event_log` VALUES ('3', '1', '21', '进行了第三次整改：整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改、整改。', '1525670577', '1');
INSERT INTO `gzp_event_log` VALUES ('4', '10', '0', '6月22日反馈进展：需整改问题已经整改完毕', '1529642576', '1');
INSERT INTO `gzp_event_log` VALUES ('5', '13', '0', '沙口路经历过后就开始的后方可受打击了', '1529911945', '1');

-- ----------------------------
-- Table structure for gzp_event_zhenggai
-- ----------------------------
DROP TABLE IF EXISTS `gzp_event_zhenggai`;
CREATE TABLE `gzp_event_zhenggai` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `event_id` int(10) unsigned NOT NULL COMMENT '项目ID',
  `add_time` varchar(20) NOT NULL COMMENT '添加时间',
  `contents` varchar(200) NOT NULL COMMENT '整改内容',
  `log_id` int(10) unsigned NOT NULL COMMENT '日志ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '整改状态 0-待整改 1-已整改 2-待批复',
  `confirm_time` varchar(20) NOT NULL COMMENT '批复时间',
  `confirm_id` int(10) unsigned NOT NULL COMMENT '批复人ID',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否 1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点督办整改记录表';

-- ----------------------------
-- Records of gzp_event_zhenggai
-- ----------------------------
INSERT INTO `gzp_event_zhenggai` VALUES ('1', '7', '1525656158', '再改改', '2', '0', '', '2', '1');
INSERT INTO `gzp_event_zhenggai` VALUES ('2', '7', '1525761164', '再改改2', '2', '0', '', '2', '1');
INSERT INTO `gzp_event_zhenggai` VALUES ('4', '10', '1529645512', '改的不好，在改改', '4', '0', '', '2', '1');
INSERT INTO `gzp_event_zhenggai` VALUES ('5', '13', '1529912283', '625测试整改的不好', '5', '0', '', '2', '1');

-- ----------------------------
-- Table structure for gzp_fdclpro
-- ----------------------------
DROP TABLE IF EXISTS `gzp_fdclpro`;
CREATE TABLE `gzp_fdclpro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '项目名称',
  `zdmj` varchar(50) NOT NULL DEFAULT '' COMMENT '2：占地面积',
  `jzmj` varchar(50) NOT NULL DEFAULT '' COMMENT '2：建筑面积',
  `jhtz` varchar(50) NOT NULL DEFAULT '' COMMENT '2.3：计划投资',
  `category` int(11) NOT NULL COMMENT '类型{1：续建；2：新开工；3：推进前期}',
  `content` text NOT NULL COMMENT '个案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='房地产个案';

-- ----------------------------
-- Records of gzp_fdclpro
-- ----------------------------
INSERT INTO `gzp_fdclpro` VALUES ('1', '万科新都会', '5.3', '19.2', '', '1', '&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/image/20180925/1537839524.png&quot; title=&quot;1537839524.png&quot; alt=&quot;image.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;项目于2017年1月摘牌，3月正式开工，2018年3月上旬复工。截至目前，C1标段16栋单体有13栋封顶，其余3栋预计6月末前封顶，封顶的单体目前正在进行二次结构和内部装修施工。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;目前已完成固投1.36亿元、税收约2480万元，完成序时进度60%的任务量，超出计划25%，进展顺利。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span class=&quot;label&quot; style=&quot;color: rgb(51, 51, 51); display: inline-block; float: left; font-weight: 700; vertical-align: top; width: 100px; font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;项目地址：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;大连市甘井子区体育中心旁&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;售楼处地址：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;大连市甘井子区中华西路72号-7（华南广场西行200米）（接待时间 9:00 - 18:00）&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;开发商：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;大连新都会置业有限公司&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;物业公司：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;万科物业&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;最新开盘：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2017-09-18&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;物业类型：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;住宅&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;交房时间：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2019-06-30&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;容积率：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2.40&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;产权年限：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;70年&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;绿化率：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;40.00&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;规划户数：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;1440&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;物业费用：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2.9~2.98元/m²/月&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;车位情况：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;地下车位数1124&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;供暖方式：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;集中供暖&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;供水方式：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;民水&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;供电方式：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;民电&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;建筑类型：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;板楼&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;嫌恶设施：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;暂无&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;占地面积：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;53,352㎡&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; font-weight: 700; background-color: rgb(255, 255, 255);&quot;&gt;建筑面积：&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;312&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;color: rgb(136, 136, 136); font-family: &amp;quot;Hiragino Sans GB&amp;quot;, &amp;quot;Microsoft Yahei UI&amp;quot;, &amp;quot;Microsoft Yahei&amp;quot;, 微软雅黑, &amp;quot;Segoe UI&amp;quot;, Tahoma, 宋体b8b体, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;191,252㎡&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/image/20180925/1537839825.png&quot; title=&quot;1537839825.png&quot; alt=&quot;image.png&quot;/&gt;&lt;/p&gt;');
INSERT INTO `gzp_fdclpro` VALUES ('2', '招商海德公园', '', '', '', '1', '');
INSERT INTO `gzp_fdclpro` VALUES ('3', '棋盘新居工程二期', '', '', '', '1', '');
INSERT INTO `gzp_fdclpro` VALUES ('4', '鞍子山新居工程', '', '', '', '1', '');
INSERT INTO `gzp_fdclpro` VALUES ('5', '夏家河子滨海主题公园项目   （一期）', '', '', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('6', '大显南侧地块改造项目  （A1A2地块）', '', '', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('7', '砬夏河流域污水治理工程（革镇堡段）', '', '', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('8', '张前路西侧地块改造项目一期', '', '', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('9', '鞍子山旧区改造工程     周家沟宗地地块项目', '71.2', '61.2', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('10', '河周路北段东侧区域道路新建工程', '', '', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('11', '共和经济有限公司地块改造项目', '0.82', '3', '', '2', '');
INSERT INTO `gzp_fdclpro` VALUES ('12', '榆山石矿地块改造(中南VTP小镇）项目', '273', '', '300', '3', '');
INSERT INTO `gzp_fdclpro` VALUES ('13', '夏家河水库周边地块改造项目（恒大颐养足球小镇）', '', '', '300', '3', '');
INSERT INTO `gzp_fdclpro` VALUES ('14', '后革村土羊高速以南地块改造项目', '', '', '', '3', '');
INSERT INTO `gzp_fdclpro` VALUES ('15', '测试续建项目', '', '', '', '1', '&lt;p&gt;啥的建行卡拉三等奖asldklasjdl佳世客领导看是阿萨德阿萨德&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/image/20181117/1542437194926733.jpg&quot; title=&quot;1542437194926733.jpg&quot; alt=&quot;海新项目.jpg&quot;/&gt;&lt;/p&gt;');

-- ----------------------------
-- Table structure for gzp_fdclpros
-- ----------------------------
DROP TABLE IF EXISTS `gzp_fdclpros`;
CREATE TABLE `gzp_fdclpros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) unsigned NOT NULL COMMENT '项目ID',
  `gt` varchar(50) NOT NULL DEFAULT '' COMMENT '1：完成固投',
  `ss` varchar(50) NOT NULL DEFAULT '' COMMENT '1：完成税收',
  `completion` int(10) unsigned NOT NULL COMMENT '完成百分比',
  `plan` text NOT NULL COMMENT '计划',
  `problem` text NOT NULL COMMENT '存在问题',
  `addtime` varchar(20) NOT NULL DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='房地产项目跟进表';

-- ----------------------------
-- Records of gzp_fdclpros
-- ----------------------------
INSERT INTO `gzp_fdclpros` VALUES ('1', '1', '1.3', '53', '84', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿...', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1526941122');
INSERT INTO `gzp_fdclpros` VALUES ('2', '1', '2.1', '19', '99', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1527823498');
INSERT INTO `gzp_fdclpros` VALUES ('3', '1', '3.2', '99', '77', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1533814152');
INSERT INTO `gzp_fdclpros` VALUES ('4', '1', '1.1', '49', '56', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1530859476');
INSERT INTO `gzp_fdclpros` VALUES ('5', '1', '09', '20', '100', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1529858319');
INSERT INTO `gzp_fdclpros` VALUES ('6', '2', '1.3', '53', '84', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1526941122');
INSERT INTO `gzp_fdclpros` VALUES ('7', '2', '1.1', '49', '56', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1530859476');
INSERT INTO `gzp_fdclpros` VALUES ('8', '2', '09', '20', '100', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1529858319');
INSERT INTO `gzp_fdclpros` VALUES ('9', '5', '1.3', '53', '84', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1526941122');
INSERT INTO `gzp_fdclpros` VALUES ('10', '14', '1.3', '53', '84', '啥速度快加速度快浪费就垃圾毒素了但考虑是甲方莱克斯顿', '地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题地块拆问题...', '1526941122');
INSERT INTO `gzp_fdclpros` VALUES ('11', '1', '0.5', '39', '97', '12#13#14#楼体主体完工', '&lt;p style=&quot;text-align: left;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 0, 0); color: rgb(255, 255, 255); font-size: 24px;&quot;&gt;现阶段存在问题&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img src=&quot;/Uploads/ueditor/image/20180926/1537923318.png&quot; title=&quot;1537923318.png&quot; alt=&quot;image.png&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;地块手续未全&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;土地没有平整结束&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left;&quot;&gt;拆迁问题&lt;/p&gt;', '1537923219');

-- ----------------------------
-- Table structure for gzp_h_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_h_column`;
CREATE TABLE `gzp_h_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `logo` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='首页导航';

-- ----------------------------
-- Records of gzp_h_column
-- ----------------------------
INSERT INTO `gzp_h_column` VALUES ('1', '经济发展', '/Public/Home/Static/images/jjfz.png', 'Home', 'Economic', 'lst', '10');
INSERT INTO `gzp_h_column` VALUES ('2', '党的建设', '/Public/Home/Static/images/ddjs.png', 'Home', 'Party', 'lst', '20');
INSERT INTO `gzp_h_column` VALUES ('3', '土地规划', '/Public/Home/Static/images/tdgh.png', 'Home', 'Land', 'lst', '30');
INSERT INTO `gzp_h_column` VALUES ('4', '安全生产', '/Public/Home/Static/images/aqsc.png', 'Home', 'Safety', 'lst', '40');
INSERT INTO `gzp_h_column` VALUES ('5', '城市管理', '/Public/Home/Static/images/csgl.png', 'Home', 'City', 'lst', '50');
INSERT INTO `gzp_h_column` VALUES ('6', '民生保障', '/Public/Home/Static/images/msbz.png', 'Home', 'People', 'lst', '60');
INSERT INTO `gzp_h_column` VALUES ('7', '重点督办', '/Public/Home/Static/images/zddb.png', 'Home', 'Focus', 'lst', '70');
INSERT INTO `gzp_h_column` VALUES ('8', '对标数据', '/Public/Home/Static/images/aqsc.png', 'Home', 'News', 'lst', '80');
INSERT INTO `gzp_h_column` VALUES ('9', '退出登录', '/Public/Home/Static/images/out.png', 'Home', 'Login', 'logout', '90');

-- ----------------------------
-- Table structure for gzp_invest
-- ----------------------------
DROP TABLE IF EXISTS `gzp_invest`;
CREATE TABLE `gzp_invest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tzxm` varchar(255) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `wgqk` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_invest
-- ----------------------------
INSERT INTO `gzp_invest` VALUES ('1', '后革小学护栏更换项目', '6.30', '1', '');
INSERT INTO `gzp_invest` VALUES ('2', '后革小学监控更换项目', '6.90', '1', '');
INSERT INTO `gzp_invest` VALUES ('3', '后革小学旱厕改库房项目', '7.70', '1', '');
INSERT INTO `gzp_invest` VALUES ('4', '后革小学桌椅、物品柜更换项目', '45.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('5', '夏家河子小学云机房项目', '34.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('6', '夏家河子小学大门、操场改造项目', '29.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('7', '夏家河小学楼顶防水、灯具更换项目', '3.70', '1', '');
INSERT INTO `gzp_invest` VALUES ('8', '中心小学操场跑道维修改造项目', '58.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('9', '中学小学组建管弦乐队', '36.00', '0', '');
INSERT INTO `gzp_invest` VALUES ('10', '66中学校园文化建设', '20.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('11', '夏家河小学艺术家', '5.00', '1', '');
INSERT INTO `gzp_invest` VALUES ('12', '棋盘小学双棋文化', '2.00', '1', '');

-- ----------------------------
-- Table structure for gzp_jobs
-- ----------------------------
DROP TABLE IF EXISTS `gzp_jobs`;
CREATE TABLE `gzp_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `syzy` bigint(20) DEFAULT NULL,
  `bqjy` bigint(20) DEFAULT NULL,
  `qtyy` bigint(20) DEFAULT NULL,
  `qmsy` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_jobs
-- ----------------------------
INSERT INTO `gzp_jobs` VALUES ('1', '革镇堡街道', '1856', '1285', '298', '362', '3');

-- ----------------------------
-- Table structure for gzp_jsgc
-- ----------------------------
DROP TABLE IF EXISTS `gzp_jsgc`;
CREATE TABLE `gzp_jsgc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `gcmc` varchar(255) DEFAULT NULL,
  `area` bigint(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_jsgc
-- ----------------------------
INSERT INTO `gzp_jsgc` VALUES ('1', '羊圈子村', '富华广场', '6000', '23');
INSERT INTO `gzp_jsgc` VALUES ('2', '棋盘村', '童乐广场', '4700', '45');
INSERT INTO `gzp_jsgc` VALUES ('3', '棋盘村', '平安广场', '4700', '22');
INSERT INTO `gzp_jsgc` VALUES ('4', '后革村', '铁道北广场1', '500', '11');
INSERT INTO `gzp_jsgc` VALUES ('5', '后革村', '铁道北广场2', '200', '6');
INSERT INTO `gzp_jsgc` VALUES ('6', '后革村', '铁道北广场3', '300', null);
INSERT INTO `gzp_jsgc` VALUES ('7', '鞍子山村', '鞍子山村广场', '2000', null);
INSERT INTO `gzp_jsgc` VALUES ('14', '棋盘村', '生态河公园健身路径', '300', '9');
INSERT INTO `gzp_jsgc` VALUES ('15', '羊圈子村', '羊圈子第三村民小组', '280', '10');
INSERT INTO `gzp_jsgc` VALUES ('16', '夏家河子村', '夏家河子村三队小广场', '150', '5');
INSERT INTO `gzp_jsgc` VALUES ('13', '渤海居民委', '', null, '9');
INSERT INTO `gzp_jsgc` VALUES ('17', '羊圈子村', '党团活动室门前', '120', '5');

-- ----------------------------
-- Table structure for gzp_jygz
-- ----------------------------
DROP TABLE IF EXISTS `gzp_jygz`;
CREATE TABLE `gzp_jygz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `girl` bigint(20) DEFAULT NULL,
  `lend_outer` bigint(20) DEFAULT NULL,
  `lend_inner` bigint(20) DEFAULT NULL,
  `boor_outer` bigint(20) DEFAULT NULL,
  `boor_inner` bigint(20) DEFAULT NULL,
  `stay` bigint(20) DEFAULT NULL,
  `select_outer` bigint(20) DEFAULT NULL,
  `select_inner` bigint(20) DEFAULT NULL,
  `talents` bigint(20) DEFAULT NULL,
  `foreig` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_jygz
-- ----------------------------
INSERT INTO `gzp_jygz` VALUES ('1', '中心小学', '一（1）班', '43', '18', '34', '4', '28', '4', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('2', '中心小学', '一（2）班', '43', '18', '36', '2', '33', '2', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('3', '中心小学', '一（3）班', '42', '17', '31', '6', '28', '5', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('4', '中心小学', '一（4）班', '42', '17', '35', '0', '32', '0', '0', '1', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('5', '中心小学', '二（1）班', '43', '24', '37', '0', '34', '0', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('6', '中心小学', '二（2）班', '46', '25', '34', '4', '33', '3', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('7', '中心小学', '二（3）班', '45', '25', '37', '2', '36', '2', '0', '0', '0', '0', '0', '1');
INSERT INTO `gzp_jygz` VALUES ('8', '中心小学', '二（4）班', '44', '23', '34', '2', '32', '0', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for gzp_land_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_column`;
CREATE TABLE `gzp_land_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '2.3级栏目名称',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT '图标',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级别',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'sid',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='土地栏目表';

-- ----------------------------
-- Records of gzp_land_column
-- ----------------------------
INSERT INTO `gzp_land_column` VALUES ('1', '土地基本', '', '0', '', '0');
INSERT INTO `gzp_land_column` VALUES ('2', '规划', 'exchange', '1', 'map', '1');
INSERT INTO `gzp_land_column` VALUES ('3', '数据', 'scribd', '1', 'map', '2');
INSERT INTO `gzp_land_column` VALUES ('4', '地块相关', '', '0', '', '0');
INSERT INTO `gzp_land_column` VALUES ('5', '地块信息', 'sticky-note-o', '4', 'plot', '1');
INSERT INTO `gzp_land_column` VALUES ('6', '林地分布', 'envira', '4', 'plot', '2');
INSERT INTO `gzp_land_column` VALUES ('7', '拟出让地块', '', '0', '', '0');
INSERT INTO `gzp_land_column` VALUES ('8', '空间战略规划', 'object-group', '7', 'plan', '1');
INSERT INTO `gzp_land_column` VALUES ('9', '拟出让地块详情', 'object-ungroup', '7', 'plan', '2');
INSERT INTO `gzp_land_column` VALUES ('10', '项目个案', 'qrcode', '7', 'plan', '3');

-- ----------------------------
-- Table structure for gzp_land_count
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_count`;
CREATE TABLE `gzp_land_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `year` varchar(10) NOT NULL DEFAULT '' COMMENT '年份',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '类型',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='土地合计表';

-- ----------------------------
-- Records of gzp_land_count
-- ----------------------------
INSERT INTO `gzp_land_count` VALUES ('1', '2017', '水浇地', '37');
INSERT INTO `gzp_land_count` VALUES ('2', '2017', '旱地', '317');
INSERT INTO `gzp_land_count` VALUES ('3', '2017', '果园', '271');
INSERT INTO `gzp_land_count` VALUES ('4', '2017', '有林地', '563');
INSERT INTO `gzp_land_count` VALUES ('5', '2017', '其他林地', '335');
INSERT INTO `gzp_land_count` VALUES ('6', '2017', '其他草地', '320');
INSERT INTO `gzp_land_count` VALUES ('7', '2017', '城市', '14');
INSERT INTO `gzp_land_count` VALUES ('8', '2017', '建制镇', '1303');
INSERT INTO `gzp_land_count` VALUES ('9', '2017', '村庄', '884');
INSERT INTO `gzp_land_count` VALUES ('10', '2017', '采矿用地', '206');
INSERT INTO `gzp_land_count` VALUES ('11', '2017', '风景名胜及特殊用地', '196');
INSERT INTO `gzp_land_count` VALUES ('12', '2017', '铁路用地', '58');
INSERT INTO `gzp_land_count` VALUES ('13', '2017', '公路用地', '105');
INSERT INTO `gzp_land_count` VALUES ('14', '2018', '水浇地', '38');
INSERT INTO `gzp_land_count` VALUES ('15', '2018', '旱地', '317');
INSERT INTO `gzp_land_count` VALUES ('16', '2018', '果园', '271');
INSERT INTO `gzp_land_count` VALUES ('17', '2018', '有林地', '563');
INSERT INTO `gzp_land_count` VALUES ('18', '2018', '其他林地', '335');
INSERT INTO `gzp_land_count` VALUES ('19', '2018', '其他草地', '320');
INSERT INTO `gzp_land_count` VALUES ('20', '2018', '城市', '14');
INSERT INTO `gzp_land_count` VALUES ('21', '2018', '建制镇', '1303');
INSERT INTO `gzp_land_count` VALUES ('22', '2018', '村庄', '884');
INSERT INTO `gzp_land_count` VALUES ('23', '2018', '采矿用地', '206');
INSERT INTO `gzp_land_count` VALUES ('24', '2018', '风景名胜及特殊用地', '196');
INSERT INTO `gzp_land_count` VALUES ('25', '2018', '铁路用地', '58');
INSERT INTO `gzp_land_count` VALUES ('26', '2018', '公路用地', '105');

-- ----------------------------
-- Table structure for gzp_land_dikuai
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_dikuai`;
CREATE TABLE `gzp_land_dikuai` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `own` varchar(200) NOT NULL DEFAULT '' COMMENT '所属区域',
  `cat` varchar(200) NOT NULL DEFAULT '' COMMENT '土地性质',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '地块名称',
  `area` varchar(200) NOT NULL DEFAULT '' COMMENT '面积',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='土地地块信息表';

-- ----------------------------
-- Records of gzp_land_dikuai
-- ----------------------------
INSERT INTO `gzp_land_dikuai` VALUES ('1', '鞍子山村', '居住用地', '鞍子山旧区地块', '61.2', '鞍子山旧区');
INSERT INTO `gzp_land_dikuai` VALUES ('2', '夏家河子村', '建设用地', '夏家河子海滨公园地块', '1.3', '夏家河子');
INSERT INTO `gzp_land_dikuai` VALUES ('3', '棋盘村', '居住用地', '中南VTP地块', '272.8', '棋盘村榆山石矿');
INSERT INTO `gzp_land_dikuai` VALUES ('4', '夏家河子', '建设用地', '夏家河水库周边地块', '462.9', '夏家河水库');

-- ----------------------------
-- Table structure for gzp_land_guihua
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_guihua`;
CREATE TABLE `gzp_land_guihua` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `cycle` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所需时间',
  `addtime` varchar(20) NOT NULL DEFAULT '' COMMENT '上传时间',
  `qid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属村分类',
  `cid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '地块类型分类',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `qid` (`qid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='土地规划批文表';

-- ----------------------------
-- Records of gzp_land_guihua
-- ----------------------------
INSERT INTO `gzp_land_guihua` VALUES ('1', '鞍子山220', '220', '1542697220', '3', '2');
INSERT INTO `gzp_land_guihua` VALUES ('2', '后革整售', '23', '1542698723', '1', '2');
INSERT INTO `gzp_land_guihua` VALUES ('3', '羊已发', '1111', '1542698742', '4', '3');
INSERT INTO `gzp_land_guihua` VALUES ('5', '鞍子山符合', '12', '1542702885', '3', '1');

-- ----------------------------
-- Table structure for gzp_land_listen_list
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_listen_list`;
CREATE TABLE `gzp_land_listen_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` varchar(50) NOT NULL COMMENT '批文名称',
  `time_consume` tinyint(3) unsigned NOT NULL COMMENT '预计耗时',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='土地批文表';

-- ----------------------------
-- Records of gzp_land_listen_list
-- ----------------------------
INSERT INTO `gzp_land_listen_list` VALUES ('1', '规划批文1', '2', '1', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('2', '规划批文2', '4', '1', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('3', '征地批文1', '3', '2', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('4', '征地批文2', '1', '2', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('5', '征地批文3', '7', '2', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('6', '发证批文1', '6', '3', '1');
INSERT INTO `gzp_land_listen_list` VALUES ('7', '发证批文2', '4', '3', '1');

-- ----------------------------
-- Table structure for gzp_land_zhanlue
-- ----------------------------
DROP TABLE IF EXISTS `gzp_land_zhanlue`;
CREATE TABLE `gzp_land_zhanlue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cat1` varchar(200) NOT NULL DEFAULT '' COMMENT '用地类型1',
  `cat2` varchar(200) NOT NULL DEFAULT '' COMMENT '用地类型2',
  `area` varchar(200) NOT NULL DEFAULT '' COMMENT '用地面积',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'sid',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='战略用地表';

-- ----------------------------
-- Records of gzp_land_zhanlue
-- ----------------------------
INSERT INTO `gzp_land_zhanlue` VALUES ('1', 'G2', '防护绿地', '1.1807468934', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('2', 'G2', '防护绿地', '0.0484636007853', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('3', 'G2', '防护绿地', '0.529935383044', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('4', 'B1', '商业用地', '0.000115474738022', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('5', 'G1', '公园绿地', '0.325616645089', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('6', 'B1', '商业用地', '0.785766778954', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('7', 'U22', '环卫用地', '0.307078354832', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('8', 'RB', '商住综合用地', '1.50488669185', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('9', 'R2', '二类居住用地', '5.21904528287', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('10', 'G1', '公园绿地', '0.585831466606', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('11', 'G1', '公园绿地', '0.897540072091', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('12', 'G1', '公园绿地', '0.248124934826', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('13', 'A33', '中小学用地', '0.264859333607', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('14', 'G1', '公园绿地', '0.61240975382', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('15', 'RB', '商住综合用地', '1.62565496288', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('16', 'G1', '公园绿地', '0.582908963564', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('17', 'B1', '商业用地', '0.488295920262', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('18', 'G1', '公园绿地', '2.58507712119', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('19', 'G1', '公园绿地', '0.320250435561', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('20', 'G1', '公园绿地', '0.865259866155', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('21', 'G1', '公园绿地', '0.394219419344', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('22', 'G1', '公园绿地', '0.659034902933', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('23', 'G1', '公园绿地', '0.227095336551', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('24', 'G1', '公园绿地', '0.2091807102', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('25', 'U21', '排水用地', '14.5911503278', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('26', 'B31', '娱乐用地', '1.27371436143', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('27', 'G2', '防护绿地', '0.231650928975', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('28', 'S41', '公共交通场站用地', '3.439882747', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('29', 'U12', '供电用地', '0.559397386703', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('30', 'R2', '二类居住用地', '2.35553657068', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('31', 'B41', '加油加气站用地', '0.300958493008', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('32', 'B1', '商业用地', '0.479284423256', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('33', 'G1', '公园绿地', '0.288485132649', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('34', 'B14', '旅馆用地', '4.19828586973', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('35', 'G1', '公园绿地', '0.58763660577', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('36', 'G1', '公园绿地', '1.77078546102', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('37', 'U21', '排水用地', '17.2758784153', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('38', 'G2', '防护绿地', '1.19845939168', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('39', 'B31', '娱乐用地', '5.11133409003', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('40', 'G2', '防护绿地', '0.913981499227', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('41', 'B31', '娱乐用地', '6.80325171032', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('42', 'G2', '防护绿地', '4.10445603389', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('43', 'R2', '二类居住用地', '5.27449223373', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('44', 'G1', '公园绿地', '0.264809229608', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('45', 'A33', '中小学用地', '1.82053375098', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('46', 'G2', '防护绿地', '0.0107117268998', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('47', 'G2', '防护绿地', '0.0108418893434', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('48', 'G2', '防护绿地', '0.169124298971', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('49', 'G2', '防护绿地', '0.0191848321066', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('50', 'G2', '防护绿地', '0.0180089692208', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('51', 'G1', '公园绿地', '5.55886100054', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('52', 'G2', '防护绿地', '1.18383439216', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('53', 'G2', '防护绿地', '0.428808313076', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('54', 'G2', '防护绿地', '1.2798691125', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('55', 'G1', '公园绿地', '1.55694545832', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('56', 'G1', '公园绿地', '0.800573738076', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('57', 'G1', '公园绿地', '1.26733078793', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('58', 'G2', '发展备用地', '1.3900890172', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('59', 'G2', '发展备用地', '1.79846306939', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('60', 'G2', '防护绿地', '2.58681519468', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('61', 'G1', '公园绿地', '0.63585668361', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('62', 'B1', '商业用地', '1.65369008118', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('63', 'B31', '发展备用地', '5.0848276164', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('64', 'B31', '发展备用地', '5.26685272368', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('65', 'G1', '公园绿地', '1.0621373157', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('66', 'G1', '公园绿地', '0.731304699304', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('67', 'G1', '发展备用地', '0.993044615545', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('68', 'G1', '公园绿地', '0.0667827244898', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('69', 'G1', '公园绿地', '1.05917149155', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('70', 'G1', '发展备用地', '0.696682367517', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('71', 'G1', '发展备用地', '0.232945756491', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('72', 'G1', '发展备用地', '0.256499413767', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('73', 'G1', '发展备用地', '0.464111446178', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('74', 'G1', '发展备用地', '1.23827909629', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('75', 'G1', '发展备用地', '0.411950067051', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('76', 'G1', '公园绿地', '0.328981764637', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('77', 'G1', '公园绿地', '0.298518989362', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('78', 'G1', '公园绿地', '0.131913254638', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('79', 'G1', '公园绿地', '0.654245713411', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('80', 'G1', '发展备用地', '0.445381683352', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('81', 'G1', '公园绿地', '0.409262985423', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('82', 'B1', '发展备用地', '0.874837589132', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('83', 'B1', '发展备用地', '0.874837589143', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('84', 'G2', '防护绿地', '0.816833445934', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('85', 'B31', '娱乐用地', '3.41792072781', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('86', 'B31', '娱乐用地', '3.23950403461', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('87', 'R2', '二类居住用地', '13.2815139432', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('88', 'G1', '公园绿地', '0.790994922708', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('89', 'G1', '公园绿地', '0.854816656892', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('90', 'G1', '公园绿地', '0.570060936336', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('91', 'G1', '公园绿地', '1.14185073414', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('92', 'G1', '公园绿地', '0.482340825164', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('93', 'G2', '防护绿地', '0.579377941283', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('94', 'G1', '公园绿地', '0.134628318893', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('95', 'G2', '防护绿地', '0.148865347605', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('96', 'U21', '排水用地', '5.30585140006', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('97', 'RB', '商住综合用地', '2.51386778413', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('98', 'RB', '商住综合用地', '4.26516566801', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('99', 'RB', '商住综合用地', '6.36044733578', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('100', 'RB', '商住综合用地', '3.25459743203', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('101', 'RB', '发展备用地', '2.67881643302', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('102', 'RB', '发展备用地', '3.21947251499', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('103', 'RB', '商住综合用地', '1.6675765754', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('104', 'B1', '发展备用地', '5.12403844101', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('105', 'B1', '发展备用地', '3.06873950386', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('106', 'B1', '商业用地', '5.85987040461', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('107', 'B1', '商业用地', '6.90796774028', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('108', 'U21', '排水用地', '0.0499999999991', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('109', 'B41', '加油加气站用地', '0.269947954893', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('110', 'U22', '环卫用地', '1.16562308097', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('111', 'B1', '商业用地', '2.7590962606', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('112', 'U13', '供燃气用地', '0.352085908418', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('113', 'B1', '商业用地', '10.1349797409', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('114', 'G1', '公园绿地', '9.07078803522', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('115', 'G1', '公园绿地', '0.984274983897', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('116', 'G1', '公园绿地', '0.228172982178', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('117', 'G1', '公园绿地', '0.130942762648', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('118', 'G1', '公园绿地', '0.284494261969', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('119', 'G1', '公园绿地', '0.743643193449', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('120', 'G1', '公园绿地', '5.56405724691', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('121', 'G1', '公园绿地', '0.169654048055', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('122', 'G1', '公园绿地', '0.178740395637', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('123', 'S4', '交通场站用地', '1.12945078309', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('124', 'B1', '商业用地', '1.15222794698', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('125', 'G2', '防护绿地', '0.0000597109751739', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('126', 'G2', '防护绿地', '0.00235283890664', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('127', 'RB', '商住综合用地', '0.000000502467820325', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('128', 'G1', '公园绿地', '0.328981764637', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('129', 'G1', '公园绿地', '0.298518989362', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('130', 'G1', '公园绿地', '0.328981764637', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('131', 'RB', '商住综合用地', '3.25459743203', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('132', 'G2', '防护绿地', '0.00000855015657191', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('133', 'G2', '防护绿地', '0.00000855015657191', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('134', 'G1', '公园绿地', '0.0000558920885909', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('135', 'RB', '商住综合用地', '0.0000558920885909', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('136', 'G1', '公园绿地', '0.000161927736677', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('137', 'R2', '二类居住用地', '0.000161927736677', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('138', 'G1', '公园绿地', '0.407557899645', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('139', 'G1', '公园绿地', '0.407557899645', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('140', 'U12', '供电用地', '0.407557899645', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('141', 'G1', '公园绿地', '6.37835473274', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('142', 'G1', '公园绿地', '6.37835473274', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('143', 'B2', '商务用地', '6.37835473274', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('144', 'G1', '公园绿地', '0.123154440864', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('145', 'G1', '公园绿地', '0.123154440864', '1');
INSERT INTO `gzp_land_zhanlue` VALUES ('146', 'U11', '供水用地', '0.123154440864', '1');

-- ----------------------------
-- Table structure for gzp_links
-- ----------------------------
DROP TABLE IF EXISTS `gzp_links`;
CREATE TABLE `gzp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_links
-- ----------------------------

-- ----------------------------
-- Table structure for gzp_manager
-- ----------------------------
DROP TABLE IF EXISTS `gzp_manager`;
CREATE TABLE `gzp_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_manager
-- ----------------------------
INSERT INTO `gzp_manager` VALUES ('1', '2018', '1', '4497', '1');
INSERT INTO `gzp_manager` VALUES ('2', '2018', '2', '4518', '1');
INSERT INTO `gzp_manager` VALUES ('3', '2018', '3', '4558', '1');
INSERT INTO `gzp_manager` VALUES ('4', '2018', '4', '3000', '1');
INSERT INTO `gzp_manager` VALUES ('5', '2018', '5', '4050', '1');
INSERT INTO `gzp_manager` VALUES ('6', '2018', '6', '4720', '1');
INSERT INTO `gzp_manager` VALUES ('7', '2018', '7', '4823', '1');
INSERT INTO `gzp_manager` VALUES ('8', '2018', '8', '3900', '1');
INSERT INTO `gzp_manager` VALUES ('9', '2018', '9', '3650', '1');
INSERT INTO `gzp_manager` VALUES ('10', '2018', '10', '3600', '1');
INSERT INTO `gzp_manager` VALUES ('11', '2018', '11', '3500', '1');
INSERT INTO `gzp_manager` VALUES ('12', '2017', '1', '2000', '1');
INSERT INTO `gzp_manager` VALUES ('13', '2017', '2', '6500', '1');
INSERT INTO `gzp_manager` VALUES ('14', '2017', '3', '2100', '1');
INSERT INTO `gzp_manager` VALUES ('15', '2017', '4', '1360', '1');
INSERT INTO `gzp_manager` VALUES ('16', '2017', '5', '2200', '1');
INSERT INTO `gzp_manager` VALUES ('17', '2017', '6', '2800', '1');
INSERT INTO `gzp_manager` VALUES ('18', '2017', '7', '3600', '1');
INSERT INTO `gzp_manager` VALUES ('19', '2017', '8', '3900', '1');
INSERT INTO `gzp_manager` VALUES ('20', '2017', '9', '4100', '1');
INSERT INTO `gzp_manager` VALUES ('21', '2017', '10', '4200', '1');
INSERT INTO `gzp_manager` VALUES ('22', '2017', '11', '4300', '1');
INSERT INTO `gzp_manager` VALUES ('23', '2017', '12', '4400', '1');
INSERT INTO `gzp_manager` VALUES ('24', '2016', '1', '3500', '1');
INSERT INTO `gzp_manager` VALUES ('25', '2016', '2', '3600', '1');
INSERT INTO `gzp_manager` VALUES ('26', '2016', '3', '3700', '1');
INSERT INTO `gzp_manager` VALUES ('27', '2016', '4', '3800', '1');
INSERT INTO `gzp_manager` VALUES ('28', '2016', '5', '3900', '1');
INSERT INTO `gzp_manager` VALUES ('29', '2016', '6', '4000', '1');
INSERT INTO `gzp_manager` VALUES ('30', '2016', '7', '4100', '1');
INSERT INTO `gzp_manager` VALUES ('31', '2016', '8', '4200', '1');
INSERT INTO `gzp_manager` VALUES ('32', '2016', '9', '4300', '1');
INSERT INTO `gzp_manager` VALUES ('33', '2016', '10', '4400', '1');
INSERT INTO `gzp_manager` VALUES ('34', '2016', '11', '4500', '1');
INSERT INTO `gzp_manager` VALUES ('35', '2016', '12', '4600', '1');
INSERT INTO `gzp_manager` VALUES ('36', '2015', '1', '2000', '1');
INSERT INTO `gzp_manager` VALUES ('37', '2015', '2', '2100', '1');
INSERT INTO `gzp_manager` VALUES ('38', '2015', '3', '2200', '1');
INSERT INTO `gzp_manager` VALUES ('39', '2015', '4', '2300', '1');
INSERT INTO `gzp_manager` VALUES ('40', '2015', '5', '2400', '1');
INSERT INTO `gzp_manager` VALUES ('41', '2015', '6', '2500', '1');
INSERT INTO `gzp_manager` VALUES ('42', '2015', '7', '2600', '1');
INSERT INTO `gzp_manager` VALUES ('43', '2015', '8', '2700', '1');
INSERT INTO `gzp_manager` VALUES ('44', '2015', '9', '2800', '1');
INSERT INTO `gzp_manager` VALUES ('45', '2015', '10', '2900', '1');
INSERT INTO `gzp_manager` VALUES ('46', '2015', '11', '3000', '1');
INSERT INTO `gzp_manager` VALUES ('47', '2015', '12', '3100', '1');
INSERT INTO `gzp_manager` VALUES ('71', '2018', '1', '2482', '2');
INSERT INTO `gzp_manager` VALUES ('72', '2018', '2', '2474', '2');
INSERT INTO `gzp_manager` VALUES ('73', '2018', '3', '2462', '2');
INSERT INTO `gzp_manager` VALUES ('74', '2018', '4', '3500', '2');
INSERT INTO `gzp_manager` VALUES ('75', '2018', '5', '2500', '2');
INSERT INTO `gzp_manager` VALUES ('76', '2018', '6', '2600', '2');
INSERT INTO `gzp_manager` VALUES ('77', '2018', '7', '2700', '2');
INSERT INTO `gzp_manager` VALUES ('78', '2018', '8', '2800', '2');
INSERT INTO `gzp_manager` VALUES ('79', '2018', '9', '2900', '2');
INSERT INTO `gzp_manager` VALUES ('80', '2018', '10', '3000', '2');
INSERT INTO `gzp_manager` VALUES ('81', '2018', '11', '3100', '2');
INSERT INTO `gzp_manager` VALUES ('82', '2017', '1', '2130', '2');
INSERT INTO `gzp_manager` VALUES ('83', '2017', '2', '2120', '2');
INSERT INTO `gzp_manager` VALUES ('84', '2017', '3', '2204', '2');
INSERT INTO `gzp_manager` VALUES ('85', '2017', '4', '2025', '2');
INSERT INTO `gzp_manager` VALUES ('86', '2017', '5', '3520', '2');
INSERT INTO `gzp_manager` VALUES ('87', '2017', '6', '3602', '2');
INSERT INTO `gzp_manager` VALUES ('88', '2017', '7', '3210', '2');
INSERT INTO `gzp_manager` VALUES ('89', '2017', '8', '3621', '2');
INSERT INTO `gzp_manager` VALUES ('90', '2017', '9', '2650', '2');
INSERT INTO `gzp_manager` VALUES ('91', '2017', '10', '2310', '2');
INSERT INTO `gzp_manager` VALUES ('92', '2017', '11', '3321', '2');
INSERT INTO `gzp_manager` VALUES ('93', '2017', '12', '2142', '2');
INSERT INTO `gzp_manager` VALUES ('94', '2016', '1', '3200', '2');
INSERT INTO `gzp_manager` VALUES ('95', '2016', '2', '2451', '2');
INSERT INTO `gzp_manager` VALUES ('96', '2016', '3', '2120', '2');
INSERT INTO `gzp_manager` VALUES ('97', '2016', '4', '2240', '2');
INSERT INTO `gzp_manager` VALUES ('98', '2016', '5', '2612', '2');
INSERT INTO `gzp_manager` VALUES ('99', '2016', '6', '2710', '2');
INSERT INTO `gzp_manager` VALUES ('100', '2016', '7', '2810', '2');
INSERT INTO `gzp_manager` VALUES ('101', '2016', '8', '2310', '2');
INSERT INTO `gzp_manager` VALUES ('102', '2016', '9', '3120', '2');
INSERT INTO `gzp_manager` VALUES ('103', '2016', '10', '3230', '2');
INSERT INTO `gzp_manager` VALUES ('104', '2016', '11', '3310', '2');
INSERT INTO `gzp_manager` VALUES ('105', '2016', '12', '3230', '2');
INSERT INTO `gzp_manager` VALUES ('106', '2015', '1', '3610', '2');
INSERT INTO `gzp_manager` VALUES ('107', '2015', '2', '3250', '2');
INSERT INTO `gzp_manager` VALUES ('108', '2015', '3', '3123', '2');
INSERT INTO `gzp_manager` VALUES ('109', '2015', '4', '3360', '2');
INSERT INTO `gzp_manager` VALUES ('110', '2015', '5', '3640', '2');
INSERT INTO `gzp_manager` VALUES ('111', '2015', '6', '3640', '2');
INSERT INTO `gzp_manager` VALUES ('112', '2015', '7', '3645', '2');
INSERT INTO `gzp_manager` VALUES ('113', '2015', '8', '3750', '2');
INSERT INTO `gzp_manager` VALUES ('114', '2015', '9', '3465', '2');
INSERT INTO `gzp_manager` VALUES ('115', '2015', '10', '4100', '2');
INSERT INTO `gzp_manager` VALUES ('116', '2015', '11', '4120', '2');
INSERT INTO `gzp_manager` VALUES ('117', '2015', '12', '4230', '2');
INSERT INTO `gzp_manager` VALUES ('118', '2018', '1', '271', '3');
INSERT INTO `gzp_manager` VALUES ('119', '2018', '2', '133', '3');
INSERT INTO `gzp_manager` VALUES ('120', '2018', '3', '127', '3');
INSERT INTO `gzp_manager` VALUES ('121', '2018', '4', '150', '3');
INSERT INTO `gzp_manager` VALUES ('122', '2018', '5', '130', '3');
INSERT INTO `gzp_manager` VALUES ('123', '2018', '6', '142', '3');
INSERT INTO `gzp_manager` VALUES ('124', '2018', '7', '210', '3');
INSERT INTO `gzp_manager` VALUES ('125', '2018', '8', '156', '3');
INSERT INTO `gzp_manager` VALUES ('126', '2018', '9', '168', '3');
INSERT INTO `gzp_manager` VALUES ('127', '2018', '10', '153', '3');
INSERT INTO `gzp_manager` VALUES ('128', '2018', '11', '142', '3');
INSERT INTO `gzp_manager` VALUES ('129', '2017', '1', '130', '3');
INSERT INTO `gzp_manager` VALUES ('130', '2017', '2', '126', '3');
INSERT INTO `gzp_manager` VALUES ('131', '2017', '3', '180', '3');
INSERT INTO `gzp_manager` VALUES ('132', '2017', '4', '192', '3');
INSERT INTO `gzp_manager` VALUES ('133', '2017', '5', '149', '3');
INSERT INTO `gzp_manager` VALUES ('134', '2017', '6', '152', '3');
INSERT INTO `gzp_manager` VALUES ('135', '2017', '7', '163', '3');
INSERT INTO `gzp_manager` VALUES ('136', '2017', '8', '177', '3');
INSERT INTO `gzp_manager` VALUES ('137', '2017', '9', '171', '3');
INSERT INTO `gzp_manager` VALUES ('138', '2017', '10', '182', '3');
INSERT INTO `gzp_manager` VALUES ('139', '2017', '11', '163', '3');
INSERT INTO `gzp_manager` VALUES ('140', '2017', '12', '166', '3');
INSERT INTO `gzp_manager` VALUES ('141', '21018', '1', '64', '4');
INSERT INTO `gzp_manager` VALUES ('142', '2018', '2', '121', '4');
INSERT INTO `gzp_manager` VALUES ('143', '2018', '3', '192', '4');
INSERT INTO `gzp_manager` VALUES ('144', '2018', '4', '150', '4');
INSERT INTO `gzp_manager` VALUES ('145', '2018', '5', '136', '4');
INSERT INTO `gzp_manager` VALUES ('146', '2018', '6', '142', '4');
INSERT INTO `gzp_manager` VALUES ('147', '2018', '7', '153', '4');
INSERT INTO `gzp_manager` VALUES ('148', '2018', '8', '136', '4');
INSERT INTO `gzp_manager` VALUES ('149', '2018', '9', '210', '4');
INSERT INTO `gzp_manager` VALUES ('150', '2018', '10', '203', '4');
INSERT INTO `gzp_manager` VALUES ('151', '2018', '11', '220', '4');
INSERT INTO `gzp_manager` VALUES ('152', '2017', '1', '99', '4');
INSERT INTO `gzp_manager` VALUES ('153', '2017', '2', '109', '4');
INSERT INTO `gzp_manager` VALUES ('154', '2017', '3', '159', '4');
INSERT INTO `gzp_manager` VALUES ('155', '2017', '4', '110', '4');
INSERT INTO `gzp_manager` VALUES ('156', '2017', '5', '109', '4');
INSERT INTO `gzp_manager` VALUES ('157', '2017', '6', '142', '4');
INSERT INTO `gzp_manager` VALUES ('158', '2017', '7', '136', '4');
INSERT INTO `gzp_manager` VALUES ('159', '2017', '8', '163', '4');
INSERT INTO `gzp_manager` VALUES ('160', '2017', '9', '123', '4');
INSERT INTO `gzp_manager` VALUES ('161', '2017', '10', '124', '4');
INSERT INTO `gzp_manager` VALUES ('162', '2017', '11', '126', '4');
INSERT INTO `gzp_manager` VALUES ('163', '2017', '12', '230', '4');
INSERT INTO `gzp_manager` VALUES ('164', '2017', '  中革村', '103', '5');
INSERT INTO `gzp_manager` VALUES ('165', '2017', '  后革村', '71', '5');
INSERT INTO `gzp_manager` VALUES ('166', '2017', '鞍子山村', '47', '5');
INSERT INTO `gzp_manager` VALUES ('167', '2017', '夏家河子村', '61', '5');
INSERT INTO `gzp_manager` VALUES ('168', '2017', '棋盘村', '101', '5');
INSERT INTO `gzp_manager` VALUES ('169', '2017', '羊圈子', '39', '5');
INSERT INTO `gzp_manager` VALUES ('170', '2016', '中革村', '102', '5');
INSERT INTO `gzp_manager` VALUES ('171', '2016', '后革村', '96', '5');
INSERT INTO `gzp_manager` VALUES ('172', '2016', '鞍子山村', '112', '5');
INSERT INTO `gzp_manager` VALUES ('173', '2016', '夏家河子村', '107', '5');
INSERT INTO `gzp_manager` VALUES ('174', '2016', '棋盘村', '88', '5');
INSERT INTO `gzp_manager` VALUES ('175', '2016', '羊圈子', '50', '5');
INSERT INTO `gzp_manager` VALUES ('176', '2018', '中革村', '30', '5');
INSERT INTO `gzp_manager` VALUES ('177', '2018', '后革村', '90', '5');
INSERT INTO `gzp_manager` VALUES ('178', '2018', '鞍子山村', '102', '5');

-- ----------------------------
-- Table structure for gzp_msbz_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_msbz_column`;
CREATE TABLE `gzp_msbz_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_msbz_column
-- ----------------------------
INSERT INTO `gzp_msbz_column` VALUES ('1', '民生保障', null, '0', '', '0', null);
INSERT INTO `gzp_msbz_column` VALUES ('25', '文化体育', null, '0', null, '0', null);
INSERT INTO `gzp_msbz_column` VALUES ('26', '宗教场所', 'bank ', '25', 'religion', '1', 'sports');
INSERT INTO `gzp_msbz_column` VALUES ('27', '教育工作', null, '0', null, '0', null);
INSERT INTO `gzp_msbz_column` VALUES ('28', '中心小学', 'university', '27', 'jygzxx', '1', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('6', '残疾程度', 'wheelchair-alt\r\nwheelchair-alt', '1', 'canji', '1', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('7', '残疾类别', 'wheelchair', '1', 'canji', '2', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('29', '棋盘小学', 'university', '27', 'jygzxx', '2', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('30', '后革小学', 'university', '27', 'jygzxx', '4', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('31', '夏家河子小学', 'university', '27', 'jygzxx', '5', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('12', '村（社区）干部', 'suitcase', '1', 'cadre', '3', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('13', '居家养老中心', 'home', '1', 'aged', '4', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('32', '66初中', 'university', '27', 'jygzxx', '6', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('16', '60岁及以上老年人口', 'blind', '1', 'old', '5', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('17', '少数民族统计', 'user-circle', '1', 'nation', '6', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('33', '在校生基本情况', 'users', '27', 'jygz', '7', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('34', '学校在编教师情况', 'user-secret', '27', 'jygz', '8', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('35', '中小学（教学楼）', 'building', '27', 'jygz', '9', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('36', '中小学（操场）', 'road', '27', 'jygz', '10', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('37', '教育专项经费统计', 'dollar ', '27', 'jygz', '11', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('38', '社会力量办学情况', 'flag', '27', 'jygz', '12', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('39', '农村非办公教师养老补助发放情况', 'yen ', '27', 'jygz', '13', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('40', '各幼儿园教职工情况', 'universal-access', '27', 'jygz', '14', 'work');
INSERT INTO `gzp_msbz_column` VALUES ('41', '医疗卫生', null, '0', null, '0', null);
INSERT INTO `gzp_msbz_column` VALUES ('42', '计划生育基础数据（户籍人口数）', 'hospital-o', '41', 'ylws', '1', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('43', '计划生育基础数据（常住人口数）', 'hospital-o', '41', 'ylws', '2', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('44', '计划生育基础数据（流动人口数）', 'hospital-o', '41', 'ylws', '3', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('45', '计划生育基础数据（出生人数）', 'hospital-o', '41', 'ylws', '4', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('46', '地区医院基本情况（科室）', 'user-md', '41', 'ylws', '13', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('47', '地区医院基本情况（医资力量）', 'user-md', '41', 'ylws', '14', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('48', '街道卫生一体化基本情况（医资力量）', 'stethoscope', '41', 'ylws', '17', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('49', '街道卫生一体化基本情况（受众人数）', 'stethoscope', '41', 'ylws', '18', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('50', '地区医院及卫生一体化项目投入资金情况', 'rmb ', '41', 'ylws', '19', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('51', '医养结合情况（受众人数）', 'medkit', '41', 'ylws', '20', 'health');
INSERT INTO `gzp_msbz_column` VALUES ('53', '社会化管理人员', 'address-card', '1', 'msbz', '7', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('54', '待遇资格认证人员', 'user-plus', '1', 'msbz', '8', 'people');
INSERT INTO `gzp_msbz_column` VALUES ('55', '就业和失业', 'frown-o', '1', 'job', '9', 'people');

-- ----------------------------
-- Table structure for gzp_nation
-- ----------------------------
DROP TABLE IF EXISTS `gzp_nation`;
CREATE TABLE `gzp_nation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `man` bigint(20) DEFAULT NULL,
  `zhuang` bigint(20) DEFAULT NULL,
  `meng` bigint(20) DEFAULT NULL,
  `hui` bigint(20) DEFAULT NULL,
  `chaoxian` bigint(20) DEFAULT NULL,
  `xibo` bigint(20) DEFAULT NULL,
  `dhe` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_nation
-- ----------------------------
INSERT INTO `gzp_nation` VALUES ('1', '渤海社区', '23', '1', '0', '0', '0', '0', '0');
INSERT INTO `gzp_nation` VALUES ('2', '中革村', '23', '0', '2', '0', '0', '0', '0');
INSERT INTO `gzp_nation` VALUES ('3', '后革村', '108', '0', '30', '2', '5', '2', '0');
INSERT INTO `gzp_nation` VALUES ('4', '夏家河村', '41', '0', '2', '0', '0', '2', '0');
INSERT INTO `gzp_nation` VALUES ('5', '羊圈村', '34', '0', '2', '0', '0', '2', '0');
INSERT INTO `gzp_nation` VALUES ('6', '棋盘村', '44', '0', '1', '1', '7', '0', '0');
INSERT INTO `gzp_nation` VALUES ('7', '鞍子山村', '25', '0', '2', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for gzp_new
-- ----------------------------
DROP TABLE IF EXISTS `gzp_new`;
CREATE TABLE `gzp_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_new
-- ----------------------------
INSERT INTO `gzp_new` VALUES ('1', '用数据说话', '用数据说话——奉贤区新型城镇化建设快速发展', '用数据说话——奉贤区新型城镇化建设快速发展', null, '1', '2017-11-17');
INSERT INTO `gzp_new` VALUES ('2', '上海绿化面积公示', '上海绿化面积公示', '上海绿化面积公示', null, '1', '2017-11-17');
INSERT INTO `gzp_new` VALUES ('3', '上海市生产总值', '上海市生产总值', '上海市生产总值', null, '1', '2017-11-17');
INSERT INTO `gzp_new` VALUES ('4', '建筑业企业生产情况', '建筑业企业生产情况', '建筑业企业生产情况', null, '2', '2017-11-17');
INSERT INTO `gzp_new` VALUES ('5', '革镇堡街道', '革镇堡街道挂图系统', '&lt;p&gt;今年革镇堡街道人口普查&lt;/p&gt;', null, '1', '2018-12-19');
INSERT INTO `gzp_new` VALUES ('8', '大连革镇堡', '革镇堡街道', '&lt;p&gt;大连市甘井子区革镇堡&lt;/p&gt;', null, '1', '2018-11-19');
INSERT INTO `gzp_new` VALUES ('9', '全球经济', '全球经济情况', '&lt;p&gt;2018年全球经济详细情况&lt;/p&gt;', null, '2', '2018-01-19');
INSERT INTO `gzp_new` VALUES ('10', '大连甘井子区', '革镇堡街道', '&lt;p&gt;大连市甘井子区革镇堡&lt;/p&gt;', null, '1', '2018-11-19');

-- ----------------------------
-- Table structure for gzp_news_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_news_column`;
CREATE TABLE `gzp_news_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_news_column
-- ----------------------------
INSERT INTO `gzp_news_column` VALUES ('1', '对标数据', null, '0', null, '0');
INSERT INTO `gzp_news_column` VALUES ('2', '对标上海', 'file-text-o', '1', 'jour', '1');
INSERT INTO `gzp_news_column` VALUES ('3', '对标世界', 'file-text', '1', 'jour', '2');

-- ----------------------------
-- Table structure for gzp_njsw
-- ----------------------------
DROP TABLE IF EXISTS `gzp_njsw`;
CREATE TABLE `gzp_njsw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `area` bigint(20) DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_njsw
-- ----------------------------
INSERT INTO `gzp_njsw` VALUES ('1', '中革村', '1', '20', '3358', '范旭原');
INSERT INTO `gzp_njsw` VALUES ('2', '后革村', '1', '20', '2363', '王聪');
INSERT INTO `gzp_njsw` VALUES ('3', '棋盘村', '1', '202', '2386', '周健');
INSERT INTO `gzp_njsw` VALUES ('4', '夏家河子村', '1', '40', '3000', '王越');
INSERT INTO `gzp_njsw` VALUES ('5', '羊圈子村', '1', '300', '4482', '王玲');
INSERT INTO `gzp_njsw` VALUES ('6', '鞍子山村', '1', '100', '884', '孙成翠');
INSERT INTO `gzp_njsw` VALUES ('7', '渤海居民委', '1', '200', '2600', '常义江');

-- ----------------------------
-- Table structure for gzp_options
-- ----------------------------
DROP TABLE IF EXISTS `gzp_options`;
CREATE TABLE `gzp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_options
-- ----------------------------
INSERT INTO `gzp_options` VALUES ('1', 'siteurl', 'http://localhost', 'yes');
INSERT INTO `gzp_options` VALUES ('2', 'home', 'http://localhost', 'yes');
INSERT INTO `gzp_options` VALUES ('3', 'blogname', '革镇堡', 'yes');
INSERT INTO `gzp_options` VALUES ('4', 'blogdescription', '又一个WordPress站点', 'yes');
INSERT INTO `gzp_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('6', 'admin_email', '414207716@qq.com', 'yes');
INSERT INTO `gzp_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `gzp_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `gzp_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `gzp_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `gzp_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `gzp_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `gzp_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `gzp_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `gzp_options` VALUES ('23', 'date_format', 'Y年n月j日', 'yes');
INSERT INTO `gzp_options` VALUES ('24', 'time_format', 'ag:i', 'yes');
INSERT INTO `gzp_options` VALUES ('25', 'links_updated_date_format', 'Y年n月j日ag:i', 'yes');
INSERT INTO `gzp_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `gzp_options` VALUES ('29', 'rewrite_rules', 'a:75:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `gzp_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `gzp_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `gzp_options` VALUES ('33', 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO `gzp_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `gzp_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `gzp_options` VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO `gzp_options` VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO `gzp_options` VALUES ('40', 'template', 'twentyseventeen', 'yes');
INSERT INTO `gzp_options` VALUES ('41', 'stylesheet', 'twentyseventeen', 'yes');
INSERT INTO `gzp_options` VALUES ('42', 'comment_whitelist', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('43', 'blacklist_keys', '', 'no');
INSERT INTO `gzp_options` VALUES ('44', 'comment_registration', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('45', 'html_type', 'text/html', 'yes');
INSERT INTO `gzp_options` VALUES ('46', 'use_trackback', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('47', 'default_role', 'subscriber', 'yes');
INSERT INTO `gzp_options` VALUES ('48', 'db_version', '38590', 'yes');
INSERT INTO `gzp_options` VALUES ('49', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('50', 'upload_path', '', 'yes');
INSERT INTO `gzp_options` VALUES ('51', 'blog_public', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('52', 'default_link_category', '2', 'yes');
INSERT INTO `gzp_options` VALUES ('53', 'show_on_front', 'posts', 'yes');
INSERT INTO `gzp_options` VALUES ('54', 'tag_base', '', 'yes');
INSERT INTO `gzp_options` VALUES ('55', 'show_avatars', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('56', 'avatar_rating', 'G', 'yes');
INSERT INTO `gzp_options` VALUES ('57', 'upload_url_path', '', 'yes');
INSERT INTO `gzp_options` VALUES ('58', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `gzp_options` VALUES ('59', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `gzp_options` VALUES ('60', 'thumbnail_crop', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('61', 'medium_size_w', '300', 'yes');
INSERT INTO `gzp_options` VALUES ('62', 'medium_size_h', '300', 'yes');
INSERT INTO `gzp_options` VALUES ('63', 'avatar_default', 'mystery', 'yes');
INSERT INTO `gzp_options` VALUES ('64', 'large_size_w', '1024', 'yes');
INSERT INTO `gzp_options` VALUES ('65', 'large_size_h', '1024', 'yes');
INSERT INTO `gzp_options` VALUES ('66', 'image_default_link_type', 'none', 'yes');
INSERT INTO `gzp_options` VALUES ('67', 'image_default_size', '', 'yes');
INSERT INTO `gzp_options` VALUES ('68', 'image_default_align', '', 'yes');
INSERT INTO `gzp_options` VALUES ('69', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('70', 'close_comments_days_old', '14', 'yes');
INSERT INTO `gzp_options` VALUES ('71', 'thread_comments', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('72', 'thread_comments_depth', '5', 'yes');
INSERT INTO `gzp_options` VALUES ('73', 'page_comments', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('74', 'comments_per_page', '50', 'yes');
INSERT INTO `gzp_options` VALUES ('75', 'default_comments_page', 'newest', 'yes');
INSERT INTO `gzp_options` VALUES ('76', 'comment_order', 'asc', 'yes');
INSERT INTO `gzp_options` VALUES ('77', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `gzp_options` VALUES ('78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('79', 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:12:\"联系我们\";s:4:\"text\";s:168:\"<strong>地址</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>营业时间</strong>\n星期一&mdash;五：9:00&ndash;17:00\n星期六&mdash;日：11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:12:\"关于本站\";s:4:\"text\";s:108:\"这里也许是个介绍您自己的好地方，也能介绍您的网站或放进一些工作人员名单。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"联系我们\";s:4:\"text\";s:168:\"<strong>地址</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>营业时间</strong>\n星期一&mdash;五：9:00&ndash;17:00\n星期六&mdash;日：11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:12:\"关于本站\";s:4:\"text\";s:108:\"这里也许是个介绍您自己的好地方，也能介绍您的网站或放进一些工作人员名单。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('80', 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('81', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `gzp_options` VALUES ('82', 'timezone_string', 'Asia/Shanghai', 'yes');
INSERT INTO `gzp_options` VALUES ('83', 'page_for_posts', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('84', 'page_on_front', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('85', 'default_post_format', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('86', 'link_manager_enabled', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('87', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('88', 'site_icon', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('89', 'medium_large_size_w', '768', 'yes');
INSERT INTO `gzp_options` VALUES ('90', 'medium_large_size_h', '0', 'yes');
INSERT INTO `gzp_options` VALUES ('91', 'initial_db_version', '38590', 'yes');
INSERT INTO `gzp_options` VALUES ('92', 'gzp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `gzp_options` VALUES ('93', 'fresh_site', '1', 'yes');
INSERT INTO `gzp_options` VALUES ('94', 'WPLANG', 'zh_CN', 'yes');
INSERT INTO `gzp_options` VALUES ('95', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('96', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('97', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('98', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('99', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('100', 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `gzp_options` VALUES ('101', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('102', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('103', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('104', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('105', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('106', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('107', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('108', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('109', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('110', 'cron', 'a:3:{i:1543200427;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543243649;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `gzp_options` VALUES ('111', 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes');
INSERT INTO `gzp_options` VALUES ('126', '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1543200462', 'no');
INSERT INTO `gzp_options` VALUES ('125', 'can_compress_scripts', '1', 'no');
INSERT INTO `gzp_options` VALUES ('115', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-4.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-4.zip\";}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1543157239;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `gzp_options` VALUES ('116', 'auto_updater.lock', '1543157239', 'no');
INSERT INTO `gzp_options` VALUES ('118', '_site_transient_timeout_theme_roots', '1543159043', 'no');
INSERT INTO `gzp_options` VALUES ('119', '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `gzp_options` VALUES ('121', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543157307;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.0.2\";s:7:\"updated\";s:19:\"2017-11-10 03:23:38\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.2/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-03-20 01:42:43\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `gzp_options` VALUES ('122', 'core_updater.lock', '1543157251', 'no');
INSERT INTO `gzp_options` VALUES ('123', '_site_transient_timeout_browser_ca81f4584823fbff592e88470c6a057c', '1543762053', 'no');
INSERT INTO `gzp_options` VALUES ('124', '_site_transient_browser_ca81f4584823fbff592e88470c6a057c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.67\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `gzp_options` VALUES ('127', '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no');
INSERT INTO `gzp_options` VALUES ('128', '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543157275;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentyfifteen.2.0.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/theme/twentysixteen.1.5.zip\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.9\";s:7:\"updated\";s:19:\"2018-02-27 15:47:07\";s:7:\"package\";s:76:\"http://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.4\";s:7:\"updated\";s:19:\"2017-12-15 16:35:19\";s:7:\"package\";s:78:\"http://downloads.wordpress.org/translation/theme/twentyseventeen/1.4/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}}', 'no');
INSERT INTO `gzp_options` VALUES ('129', '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1543200477', 'no');
INSERT INTO `gzp_options` VALUES ('130', '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1543200477', 'no');
INSERT INTO `gzp_options` VALUES ('131', '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1543157277', 'no');
INSERT INTO `gzp_options` VALUES ('132', '_transient_timeout_dash_v2_5438fb5baf31c513fff2b9a1067656a6', '1543200477', 'no');
INSERT INTO `gzp_options` VALUES ('133', '_transient_dash_v2_5438fb5baf31c513fff2b9a1067656a6', '<div class=\"rss-widget\"><p><strong>RSS错误：</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 186839 bytes received</p></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/11/wordpress-5-0-release-candidate/\'>Dev Blog: WordPress 5.0 Release Candidate</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-5-0-rc-expected-on-u-s-thanksgiving-holiday-despite-last-minute-pushback-from-contributors\'>WPTavern: WordPress 5.0 RC Expected on U.S. Thanksgiving Holiday, despite Last-Minute Pushback from Contributors</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/expressionengine-goes-open-source-after-16-years\'>WPTavern: ExpressionEngine Goes Open Source after 16 Years</a></li></ul></div>', 'no');
INSERT INTO `gzp_options` VALUES ('135', '_transient_is_multi_author', '0', 'yes');

-- ----------------------------
-- Table structure for gzp_party
-- ----------------------------
DROP TABLE IF EXISTS `gzp_party`;
CREATE TABLE `gzp_party` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `year` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '年份',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '类型',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属类型ID',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `nid` (`sid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='党建数据表';

-- ----------------------------
-- Records of gzp_party
-- ----------------------------
INSERT INTO `gzp_party` VALUES ('1', '2013', '大专以下', '1', '32');
INSERT INTO `gzp_party` VALUES ('2', '2013', '大专及以上', '1', '65');
INSERT INTO `gzp_party` VALUES ('3', '2014', '大专以下', '1', '99');
INSERT INTO `gzp_party` VALUES ('4', '2014', '大专及以上', '1', '88');
INSERT INTO `gzp_party` VALUES ('5', '2015', '大专以下', '1', '99');
INSERT INTO `gzp_party` VALUES ('6', '2015', '大专及以上', '1', '88');
INSERT INTO `gzp_party` VALUES ('7', '2016', '大专以下', '1', '44');
INSERT INTO `gzp_party` VALUES ('8', '2016', '大专及以上', '1', '55');
INSERT INTO `gzp_party` VALUES ('9', '2017', '大专以下', '1', '66');
INSERT INTO `gzp_party` VALUES ('10', '2017', '大专及以上', '1', '43');
INSERT INTO `gzp_party` VALUES ('11', '2018', '大专以下', '1', '45');
INSERT INTO `gzp_party` VALUES ('12', '2018', '大专及以上', '1', '99');
INSERT INTO `gzp_party` VALUES ('13', '2013', '男', '2', '600');
INSERT INTO `gzp_party` VALUES ('14', '2013', '女', '2', '100');
INSERT INTO `gzp_party` VALUES ('15', '2014', '男', '2', '610');
INSERT INTO `gzp_party` VALUES ('16', '2014', '女', '2', '80');
INSERT INTO `gzp_party` VALUES ('17', '2015', '男', '2', '700');
INSERT INTO `gzp_party` VALUES ('18', '2015', '女', '2', '150');
INSERT INTO `gzp_party` VALUES ('19', '2016', '男', '2', '720');
INSERT INTO `gzp_party` VALUES ('20', '2016', '女', '2', '220');
INSERT INTO `gzp_party` VALUES ('21', '2017', '男', '2', '800');
INSERT INTO `gzp_party` VALUES ('22', '2017', '女', '2', '260');
INSERT INTO `gzp_party` VALUES ('23', '2018', '男', '2', '805');
INSERT INTO `gzp_party` VALUES ('24', '2018', '女', '2', '293');
INSERT INTO `gzp_party` VALUES ('25', '2013', '60岁以下', '3', '400');
INSERT INTO `gzp_party` VALUES ('26', '2013', '60岁及以上', '3', '200');
INSERT INTO `gzp_party` VALUES ('27', '2014', '60岁以下', '3', '500');
INSERT INTO `gzp_party` VALUES ('28', '2014', '60岁及以上', '3', '300');
INSERT INTO `gzp_party` VALUES ('29', '2015', '60岁以下', '3', '550');
INSERT INTO `gzp_party` VALUES ('30', '2015', '60岁及以上', '3', '220');
INSERT INTO `gzp_party` VALUES ('31', '2016', '60岁以下', '3', '400');
INSERT INTO `gzp_party` VALUES ('32', '2016', '60岁及以上', '3', '300');
INSERT INTO `gzp_party` VALUES ('33', '2017', '60岁以下', '3', '613');
INSERT INTO `gzp_party` VALUES ('34', '2017', '60岁及以上', '3', '485');
INSERT INTO `gzp_party` VALUES ('35', '2018', '60岁以下', '3', '630');
INSERT INTO `gzp_party` VALUES ('36', '2018', '60岁及以上', '3', '450');
INSERT INTO `gzp_party` VALUES ('37', '2013', '机关事业单位', '4', '1');
INSERT INTO `gzp_party` VALUES ('38', '2013', '农村', '4', '3');
INSERT INTO `gzp_party` VALUES ('39', '2013', '非公企', '4', '1');
INSERT INTO `gzp_party` VALUES ('40', '2014', '机关事业单位', '4', '1');
INSERT INTO `gzp_party` VALUES ('41', '2014', '农村', '4', '4');
INSERT INTO `gzp_party` VALUES ('42', '2014', '非公企', '4', '1');
INSERT INTO `gzp_party` VALUES ('43', '2015', '机关事业单位', '4', '1');
INSERT INTO `gzp_party` VALUES ('44', '2015', '农村', '4', '5');
INSERT INTO `gzp_party` VALUES ('45', '2015', '非公企', '4', '1');
INSERT INTO `gzp_party` VALUES ('46', '2016', '机关事业单位', '4', '1');
INSERT INTO `gzp_party` VALUES ('47', '2016', '农村', '4', '6');
INSERT INTO `gzp_party` VALUES ('48', '2016', '非公企', '4', '1');
INSERT INTO `gzp_party` VALUES ('49', '2017', '机关事业单位', '4', '2');
INSERT INTO `gzp_party` VALUES ('50', '2017', '农村', '4', '6');
INSERT INTO `gzp_party` VALUES ('51', '2017', '非公企', '4', '2');
INSERT INTO `gzp_party` VALUES ('52', '2018', '机关事业单位', '4', '3');
INSERT INTO `gzp_party` VALUES ('53', '2018', '农村', '4', '6');
INSERT INTO `gzp_party` VALUES ('54', '2018', '非公企', '4', '3');
INSERT INTO `gzp_party` VALUES ('55', '2013', '机关事业单位', '5', '28');
INSERT INTO `gzp_party` VALUES ('56', '2013', '农村', '5', '320');
INSERT INTO `gzp_party` VALUES ('57', '2013', '非公企', '5', '34');
INSERT INTO `gzp_party` VALUES ('58', '2014', '机关事业单位', '5', '36');
INSERT INTO `gzp_party` VALUES ('59', '2014', '农村', '5', '350');
INSERT INTO `gzp_party` VALUES ('60', '2014', '非公企', '5', '44');
INSERT INTO `gzp_party` VALUES ('61', '2015', '机关事业单位', '5', '27');
INSERT INTO `gzp_party` VALUES ('62', '2015', '农村', '5', '290');
INSERT INTO `gzp_party` VALUES ('63', '2015', '非公企', '5', '25');
INSERT INTO `gzp_party` VALUES ('64', '2016', '机关事业单位', '5', '25');
INSERT INTO `gzp_party` VALUES ('65', '2016', '农村', '5', '300');
INSERT INTO `gzp_party` VALUES ('66', '2016', '非公企', '5', '30');
INSERT INTO `gzp_party` VALUES ('67', '2017', '机关事业单位', '5', '28');
INSERT INTO `gzp_party` VALUES ('68', '2017', '农村', '5', '320');
INSERT INTO `gzp_party` VALUES ('69', '2017', '非公企', '5', '34');
INSERT INTO `gzp_party` VALUES ('70', '2018', '机关事业单位', '5', '31');
INSERT INTO `gzp_party` VALUES ('71', '2018', '农村', '5', '340');
INSERT INTO `gzp_party` VALUES ('72', '2018', '非公企', '5', '36');
INSERT INTO `gzp_party` VALUES ('73', '2013', '机关事业单位', '6', '6');
INSERT INTO `gzp_party` VALUES ('74', '2013', '农村', '6', '24');
INSERT INTO `gzp_party` VALUES ('75', '2013', '非公企', '6', '11');
INSERT INTO `gzp_party` VALUES ('76', '2014', '机关事业单位', '6', '1');
INSERT INTO `gzp_party` VALUES ('77', '2014', '农村', '6', '24');
INSERT INTO `gzp_party` VALUES ('78', '2014', '非公企', '6', '15');
INSERT INTO `gzp_party` VALUES ('79', '2015', '机关事业单位', '6', '7');
INSERT INTO `gzp_party` VALUES ('80', '2015', '农村', '6', '32');
INSERT INTO `gzp_party` VALUES ('81', '2015', '非公企', '6', '17');
INSERT INTO `gzp_party` VALUES ('82', '2016', '机关事业单位', '6', '4');
INSERT INTO `gzp_party` VALUES ('83', '2016', '农村', '6', '22');
INSERT INTO `gzp_party` VALUES ('84', '2016', '非公企', '6', '11');
INSERT INTO `gzp_party` VALUES ('85', '2017', '机关事业单位', '6', '5');
INSERT INTO `gzp_party` VALUES ('86', '2017', '农村', '6', '24');
INSERT INTO `gzp_party` VALUES ('87', '2017', '非公企', '6', '15');
INSERT INTO `gzp_party` VALUES ('88', '2018', '机关事业单位', '6', '7');
INSERT INTO `gzp_party` VALUES ('89', '2018', '农村', '6', '30');
INSERT INTO `gzp_party` VALUES ('90', '2018', '非公企', '6', '20');
INSERT INTO `gzp_party` VALUES ('91', '2013', '机关事业单位', '7', '1');
INSERT INTO `gzp_party` VALUES ('92', '2013', '农村', '7', '5');
INSERT INTO `gzp_party` VALUES ('93', '2013', '非公企', '7', '9');
INSERT INTO `gzp_party` VALUES ('94', '2014', '机关事业单位', '7', '1');
INSERT INTO `gzp_party` VALUES ('95', '2014', '农村', '7', '4');
INSERT INTO `gzp_party` VALUES ('96', '2014', '非公企', '7', '12');
INSERT INTO `gzp_party` VALUES ('97', '2015', '机关事业单位', '7', '2');
INSERT INTO `gzp_party` VALUES ('98', '2015', '农村', '7', '7');
INSERT INTO `gzp_party` VALUES ('99', '2015', '非公企', '7', '9');
INSERT INTO `gzp_party` VALUES ('100', '2016', '机关事业单位', '7', '3');
INSERT INTO `gzp_party` VALUES ('101', '2016', '农村', '7', '4');
INSERT INTO `gzp_party` VALUES ('102', '2016', '非公企', '7', '13');
INSERT INTO `gzp_party` VALUES ('103', '2017', '机关事业单位', '7', '1');
INSERT INTO `gzp_party` VALUES ('104', '2017', '农村', '7', '6');
INSERT INTO `gzp_party` VALUES ('105', '2017', '非公企', '7', '11');
INSERT INTO `gzp_party` VALUES ('106', '2018', '机关事业单位', '7', '1');
INSERT INTO `gzp_party` VALUES ('107', '2018', '农村', '7', '5');
INSERT INTO `gzp_party` VALUES ('108', '2018', '非公企', '7', '12');
INSERT INTO `gzp_party` VALUES ('109', '2013', '机关事业单位', '8', '5');
INSERT INTO `gzp_party` VALUES ('110', '2013', '农村', '8', '20');
INSERT INTO `gzp_party` VALUES ('111', '2013', '非公企', '8', '47');
INSERT INTO `gzp_party` VALUES ('112', '2014', '机关事业单位', '8', '5');
INSERT INTO `gzp_party` VALUES ('113', '2014', '农村', '8', '22');
INSERT INTO `gzp_party` VALUES ('114', '2014', '非公企', '8', '39');
INSERT INTO `gzp_party` VALUES ('115', '2015', '机关事业单位', '8', '8');
INSERT INTO `gzp_party` VALUES ('116', '2015', '农村', '8', '11');
INSERT INTO `gzp_party` VALUES ('117', '2015', '非公企', '8', '55');
INSERT INTO `gzp_party` VALUES ('118', '2016', '机关事业单位', '8', '3');
INSERT INTO `gzp_party` VALUES ('119', '2016', '农村', '8', '22');
INSERT INTO `gzp_party` VALUES ('120', '2016', '非公企', '8', '39');
INSERT INTO `gzp_party` VALUES ('121', '2017', '机关事业单位', '8', '6');
INSERT INTO `gzp_party` VALUES ('122', '2017', '农村', '8', '19');
INSERT INTO `gzp_party` VALUES ('123', '2017', '非公企', '8', '46');
INSERT INTO `gzp_party` VALUES ('124', '2018', '机关事业单位', '8', '7');
INSERT INTO `gzp_party` VALUES ('125', '2018', '农村', '8', '20');
INSERT INTO `gzp_party` VALUES ('126', '2018', '非公企', '8', '44');
INSERT INTO `gzp_party` VALUES ('127', '2013', '机关事业单位', '9', '1');
INSERT INTO `gzp_party` VALUES ('128', '2013', '农村', '9', '9');
INSERT INTO `gzp_party` VALUES ('129', '2013', '非公企', '9', '10');
INSERT INTO `gzp_party` VALUES ('130', '2014', '机关事业单位', '9', '2');
INSERT INTO `gzp_party` VALUES ('131', '2014', '农村', '9', '8');
INSERT INTO `gzp_party` VALUES ('132', '2014', '非公企', '9', '9');
INSERT INTO `gzp_party` VALUES ('133', '2015', '机关事业单位', '9', '3');
INSERT INTO `gzp_party` VALUES ('134', '2015', '农村', '9', '11');
INSERT INTO `gzp_party` VALUES ('135', '2015', '非公企', '9', '8');
INSERT INTO `gzp_party` VALUES ('136', '2016', '机关事业单位', '9', '2');
INSERT INTO `gzp_party` VALUES ('137', '2016', '农村', '9', '7');
INSERT INTO `gzp_party` VALUES ('138', '2016', '非公企', '9', '11');
INSERT INTO `gzp_party` VALUES ('139', '2017', '机关事业单位', '9', '1');
INSERT INTO `gzp_party` VALUES ('140', '2017', '农村', '9', '8');
INSERT INTO `gzp_party` VALUES ('141', '2017', '非公企', '9', '11');
INSERT INTO `gzp_party` VALUES ('142', '2018', '机关事业单位', '9', '2');
INSERT INTO `gzp_party` VALUES ('143', '2018', '农村', '9', '9');
INSERT INTO `gzp_party` VALUES ('144', '2018', '非公企', '9', '12');
INSERT INTO `gzp_party` VALUES ('145', '2013', '机关事业单位', '10', '1');
INSERT INTO `gzp_party` VALUES ('146', '2013', '农村', '10', '3');
INSERT INTO `gzp_party` VALUES ('147', '2013', '非公企', '10', '1');
INSERT INTO `gzp_party` VALUES ('148', '2014', '机关事业单位', '10', '1');
INSERT INTO `gzp_party` VALUES ('149', '2014', '农村', '10', '4');
INSERT INTO `gzp_party` VALUES ('150', '2014', '非公企', '10', '1');
INSERT INTO `gzp_party` VALUES ('151', '2015', '机关事业单位', '10', '1');
INSERT INTO `gzp_party` VALUES ('152', '2015', '农村', '10', '5');
INSERT INTO `gzp_party` VALUES ('153', '2015', '非公企', '10', '1');
INSERT INTO `gzp_party` VALUES ('154', '2016', '机关事业单位', '10', '1');
INSERT INTO `gzp_party` VALUES ('155', '2016', '农村', '10', '6');
INSERT INTO `gzp_party` VALUES ('156', '2016', '非公企', '10', '1');
INSERT INTO `gzp_party` VALUES ('157', '2017', '机关事业单位', '10', '2');
INSERT INTO `gzp_party` VALUES ('158', '2017', '农村', '10', '6');
INSERT INTO `gzp_party` VALUES ('159', '2017', '非公企', '10', '2');
INSERT INTO `gzp_party` VALUES ('160', '2018', '机关事业单位', '10', '3');
INSERT INTO `gzp_party` VALUES ('161', '2018', '农村', '10', '6');
INSERT INTO `gzp_party` VALUES ('162', '2018', '非公企', '10', '3');
INSERT INTO `gzp_party` VALUES ('163', '2013', '机关事业单位', '11', '77');
INSERT INTO `gzp_party` VALUES ('164', '2013', '农村', '11', '500');
INSERT INTO `gzp_party` VALUES ('165', '2013', '非公企', '11', '44');
INSERT INTO `gzp_party` VALUES ('166', '2014', '机关事业单位', '11', '76');
INSERT INTO `gzp_party` VALUES ('167', '2014', '农村', '11', '555');
INSERT INTO `gzp_party` VALUES ('168', '2014', '非公企', '11', '36');
INSERT INTO `gzp_party` VALUES ('169', '2015', '机关事业单位', '11', '67');
INSERT INTO `gzp_party` VALUES ('170', '2015', '农村', '11', '540');
INSERT INTO `gzp_party` VALUES ('171', '2015', '非公企', '11', '61');
INSERT INTO `gzp_party` VALUES ('172', '2016', '机关事业单位', '11', '89');
INSERT INTO `gzp_party` VALUES ('173', '2016', '农村', '11', '600');
INSERT INTO `gzp_party` VALUES ('174', '2016', '非公企', '11', '66');
INSERT INTO `gzp_party` VALUES ('175', '2017', '机关事业单位', '11', '85');
INSERT INTO `gzp_party` VALUES ('176', '2017', '农村', '11', '580');
INSERT INTO `gzp_party` VALUES ('177', '2017', '非公企', '11', '67');
INSERT INTO `gzp_party` VALUES ('178', '2018', '机关事业单位', '11', '90');
INSERT INTO `gzp_party` VALUES ('179', '2018', '农村', '11', '270');
INSERT INTO `gzp_party` VALUES ('180', '2018', '非公企', '11', '66');
INSERT INTO `gzp_party` VALUES ('181', '2013', '机关事业单位', '12', '39');
INSERT INTO `gzp_party` VALUES ('182', '2013', '农村', '12', '66');
INSERT INTO `gzp_party` VALUES ('183', '2013', '非公企', '12', '21');
INSERT INTO `gzp_party` VALUES ('184', '2014', '机关事业单位', '12', '55');
INSERT INTO `gzp_party` VALUES ('185', '2014', '农村', '12', '70');
INSERT INTO `gzp_party` VALUES ('186', '2014', '非公企', '12', '20');
INSERT INTO `gzp_party` VALUES ('187', '2015', '机关事业单位', '12', '33');
INSERT INTO `gzp_party` VALUES ('188', '2015', '农村', '12', '69');
INSERT INTO `gzp_party` VALUES ('189', '2015', '非公企', '12', '25');
INSERT INTO `gzp_party` VALUES ('190', '2016', '机关事业单位', '12', '51');
INSERT INTO `gzp_party` VALUES ('191', '2016', '农村', '12', '63');
INSERT INTO `gzp_party` VALUES ('192', '2016', '非公企', '12', '11');
INSERT INTO `gzp_party` VALUES ('193', '2017', '机关事业单位', '12', '43');
INSERT INTO `gzp_party` VALUES ('194', '2017', '农村', '12', '70');
INSERT INTO `gzp_party` VALUES ('195', '2017', '非公企', '12', '22');
INSERT INTO `gzp_party` VALUES ('196', '2018', '机关事业单位', '12', '45');
INSERT INTO `gzp_party` VALUES ('197', '2018', '农村', '12', '73');
INSERT INTO `gzp_party` VALUES ('198', '2018', '非公企', '12', '23');

-- ----------------------------
-- Table structure for gzp_party_column
-- ----------------------------
DROP TABLE IF EXISTS `gzp_party_column`;
CREATE TABLE `gzp_party_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '2.3级栏目名称',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT '图标',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级别',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'sid',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='党建栏目表';

-- ----------------------------
-- Records of gzp_party_column
-- ----------------------------
INSERT INTO `gzp_party_column` VALUES ('1', '党员基本情况', '', '0', '', '0');
INSERT INTO `gzp_party_column` VALUES ('2', '学历', 'mortar-board', '1', 'party', '1');
INSERT INTO `gzp_party_column` VALUES ('3', '性别', 'transgender-alt', '1', 'party', '2');
INSERT INTO `gzp_party_column` VALUES ('4', '年龄', 'vcard', '1', 'party', '3');
INSERT INTO `gzp_party_column` VALUES ('5', '妇联基本情况', '', '0', '', '0');
INSERT INTO `gzp_party_column` VALUES ('6', '数量', 'user-plus', '5', 'party', '4');
INSERT INTO `gzp_party_column` VALUES ('7', '人数', 'group', '5', 'party', '5');
INSERT INTO `gzp_party_column` VALUES ('8', '妇女部', 'female', '5', 'party', '6');
INSERT INTO `gzp_party_column` VALUES ('9', '共青团基本情况', '', '0', '', '0');
INSERT INTO `gzp_party_column` VALUES ('10', '团支部数', 'clone', '9', 'party', '7');
INSERT INTO `gzp_party_column` VALUES ('11', '团员总数', 'address-book', '9', 'party', '8');
INSERT INTO `gzp_party_column` VALUES ('12', '团干部数', 'address-book-o', '9', 'party', '9');
INSERT INTO `gzp_party_column` VALUES ('13', '科协基本情况', '', '0', '', '0');
INSERT INTO `gzp_party_column` VALUES ('14', '数量', 'user-plus', '13', 'party', '10');
INSERT INTO `gzp_party_column` VALUES ('15', '人数', 'group', '13', 'party', '11');
INSERT INTO `gzp_party_column` VALUES ('16', '干部', 'user-circle-o', '13', 'party', '12');

-- ----------------------------
-- Table structure for gzp_permission
-- ----------------------------
DROP TABLE IF EXISTS `gzp_permission`;
CREATE TABLE `gzp_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `logo` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(20) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(20) NOT NULL DEFAULT '' COMMENT '方法',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级别',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '{1：显示；2：不显示}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='左侧栏目表';

-- ----------------------------
-- Records of gzp_permission
-- ----------------------------
INSERT INTO `gzp_permission` VALUES ('1', '权限管理', 'glyphicon glyphicon-user', '', '', '', '0', '0', '10', '1');
INSERT INTO `gzp_permission` VALUES ('2', '用户列表', '', 'Admin', 'User', 'lst', '1', '1', '10', '1');
INSERT INTO `gzp_permission` VALUES ('3', '用户添加', '', 'Admin', 'User', 'add', '1', '1', '11', '0');
INSERT INTO `gzp_permission` VALUES ('7', '角色添加', '', 'Admin', 'Role', 'add', '1', '1', '21', '0');
INSERT INTO `gzp_permission` VALUES ('8', '角色修改', '', 'Admin', 'Role', 'edit', '1', '1', '22', '0');
INSERT INTO `gzp_permission` VALUES ('4', '用户修改', '', 'Admin', 'User', 'edit', '1', '1', '12', '0');
INSERT INTO `gzp_permission` VALUES ('5', '用户删除', '', 'Admin', 'User', 'del', '1', '1', '13', '0');
INSERT INTO `gzp_permission` VALUES ('6', '角色列表', '', 'Admin', 'Role', 'lst', '1', '1', '20', '1');
INSERT INTO `gzp_permission` VALUES ('9', '角色删除', '', 'Admin', 'Role', 'del', '1', '1', '23', '0');
INSERT INTO `gzp_permission` VALUES ('10', '经济发展', 'glyphicon glyphicon-th-list', '', '', '', '0', '0', '20', '1');
INSERT INTO `gzp_permission` VALUES ('11', '基本指标', '', 'Admin', 'Economic', 'jbzb', '10', '1', '10', '1');
INSERT INTO `gzp_permission` VALUES ('12', '重点项目', '', 'Admin', 'Economic', 'zdxm', '10', '1', '20', '1');
INSERT INTO `gzp_permission` VALUES ('13', '招商引资', '', 'Admin', 'Economic', '', '10', '1', '30', '1');
INSERT INTO `gzp_permission` VALUES ('14', '重点企业', '', 'Admin', 'Economic', '', '10', '1', '40', '1');
INSERT INTO `gzp_permission` VALUES ('15', '房地产类', '', 'Admin', 'Economic', 'fdcl', '12', '2', '21', '1');
INSERT INTO `gzp_permission` VALUES ('16', '城市建设类', '', 'Admin', 'Economic', '', '12', '2', '22', '1');
INSERT INTO `gzp_permission` VALUES ('17', '民生类', '', 'Admin', 'Economic', '', '12', '2', '23', '1');

-- ----------------------------
-- Table structure for gzp_plan_list
-- ----------------------------
DROP TABLE IF EXISTS `gzp_plan_list`;
CREATE TABLE `gzp_plan_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` varchar(50) NOT NULL COMMENT '批文名称',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `is_show` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示（0-否；1-是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='应急预案表';

-- ----------------------------
-- Records of gzp_plan_list
-- ----------------------------
INSERT INTO `gzp_plan_list` VALUES ('1', '火灾预案1', '1', '1');
INSERT INTO `gzp_plan_list` VALUES ('2', '火灾预案2', '1', '1');
INSERT INTO `gzp_plan_list` VALUES ('3', '车祸预案1', '2', '1');
INSERT INTO `gzp_plan_list` VALUES ('4', '车祸预案2', '2', '1');
INSERT INTO `gzp_plan_list` VALUES ('5', '车祸预案3', '2', '1');
INSERT INTO `gzp_plan_list` VALUES ('6', '群体性事件1', '3', '1');
INSERT INTO `gzp_plan_list` VALUES ('7', '群体性事件2', '3', '1');
INSERT INTO `gzp_plan_list` VALUES ('8', '污染泄漏预案1', '4', '1');
INSERT INTO `gzp_plan_list` VALUES ('9', '塌方预案1', '5', '1');
INSERT INTO `gzp_plan_list` VALUES ('10', '塌方预案2', '5', '1');
INSERT INTO `gzp_plan_list` VALUES ('11', '爆炸预案1', '6', '1');
INSERT INTO `gzp_plan_list` VALUES ('12', '爆炸预案2', '6', '1');
INSERT INTO `gzp_plan_list` VALUES ('13', '爆炸预案3', '6', '1');
INSERT INTO `gzp_plan_list` VALUES ('14', '其他预案1', '7', '1');
INSERT INTO `gzp_plan_list` VALUES ('15', '其他预案2', '7', '1');

-- ----------------------------
-- Table structure for gzp_postmeta
-- ----------------------------
DROP TABLE IF EXISTS `gzp_postmeta`;
CREATE TABLE `gzp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_postmeta
-- ----------------------------
INSERT INTO `gzp_postmeta` VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `gzp_postmeta` VALUES ('2', '4', '_wp_attached_file', '2018/11/espresso.jpg');
INSERT INTO `gzp_postmeta` VALUES ('3', '4', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/11/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `gzp_postmeta` VALUES ('4', '4', '_starter_content_theme', 'twentyseventeen');
INSERT INTO `gzp_postmeta` VALUES ('5', '4', '_customize_draft_post_name', '%e6%b5%93%e7%bc%a9%e5%92%96%e5%95%a1');
INSERT INTO `gzp_postmeta` VALUES ('6', '5', '_wp_attached_file', '2018/11/sandwich.jpg');
INSERT INTO `gzp_postmeta` VALUES ('7', '5', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/11/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `gzp_postmeta` VALUES ('8', '5', '_starter_content_theme', 'twentyseventeen');
INSERT INTO `gzp_postmeta` VALUES ('9', '5', '_customize_draft_post_name', '%e4%b8%89%e6%98%8e%e6%b2%bb');
INSERT INTO `gzp_postmeta` VALUES ('10', '6', '_wp_attached_file', '2018/11/coffee.jpg');
INSERT INTO `gzp_postmeta` VALUES ('11', '6', '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/11/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `gzp_postmeta` VALUES ('12', '6', '_starter_content_theme', 'twentyseventeen');
INSERT INTO `gzp_postmeta` VALUES ('13', '6', '_customize_draft_post_name', '%e5%92%96%e5%95%a1');
INSERT INTO `gzp_postmeta` VALUES ('14', '7', '_customize_draft_post_name', '%e9%a6%96%e9%a1%b5');
INSERT INTO `gzp_postmeta` VALUES ('15', '7', '_customize_changeset_uuid', '23bc9220-575f-42e6-af14-627a8ae32462');
INSERT INTO `gzp_postmeta` VALUES ('16', '8', '_thumbnail_id', '5');
INSERT INTO `gzp_postmeta` VALUES ('17', '8', '_customize_draft_post_name', '%e5%85%b3%e4%ba%8e');
INSERT INTO `gzp_postmeta` VALUES ('18', '8', '_customize_changeset_uuid', '23bc9220-575f-42e6-af14-627a8ae32462');
INSERT INTO `gzp_postmeta` VALUES ('19', '9', '_thumbnail_id', '4');
INSERT INTO `gzp_postmeta` VALUES ('20', '9', '_customize_draft_post_name', '%e8%81%94%e7%b3%bb');
INSERT INTO `gzp_postmeta` VALUES ('21', '9', '_customize_changeset_uuid', '23bc9220-575f-42e6-af14-627a8ae32462');
INSERT INTO `gzp_postmeta` VALUES ('22', '10', '_thumbnail_id', '6');
INSERT INTO `gzp_postmeta` VALUES ('23', '10', '_customize_draft_post_name', '%e5%8d%9a%e5%ae%a2');
INSERT INTO `gzp_postmeta` VALUES ('24', '10', '_customize_changeset_uuid', '23bc9220-575f-42e6-af14-627a8ae32462');
INSERT INTO `gzp_postmeta` VALUES ('25', '11', '_thumbnail_id', '4');
INSERT INTO `gzp_postmeta` VALUES ('26', '11', '_customize_draft_post_name', '%e4%b8%bb%e9%a1%b5%e7%ab%a0%e8%8a%82');
INSERT INTO `gzp_postmeta` VALUES ('27', '11', '_customize_changeset_uuid', '23bc9220-575f-42e6-af14-627a8ae32462');

-- ----------------------------
-- Table structure for gzp_posts
-- ----------------------------
DROP TABLE IF EXISTS `gzp_posts`;
CREATE TABLE `gzp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_posts
-- ----------------------------
INSERT INTO `gzp_posts` VALUES ('1', '1', '2018-11-25 22:47:06', '2018-11-25 14:47:06', '欢迎使用WordPress。这是您的第一篇文章。编辑或删除它，然后开始写作吧！', '世界，您好！', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-11-25 22:47:06', '2018-11-25 14:47:06', '', '0', 'http://localhost/?p=1', '0', 'post', '', '1');
INSERT INTO `gzp_posts` VALUES ('2', '1', '2018-11-25 22:47:06', '2018-11-25 14:47:06', '这是示范页面。页面和博客文章不同，它的位置是固定的，通常会在站点导航栏显示。很多用户都创建一个“关于”页面，向访客介绍自己。例如：\n\n<blockquote>欢迎！我白天是个邮递员，晚上就是个有抱负的演员。这是我的博客。我住在天朝的帝都，有条叫做Jack的狗。</blockquote>\n\n……或这个：\n\n<blockquote>XYZ Doohickey公司成立于1971年，自从建立以来，我们一直向社会贡献着优秀doohickies。我们的公司总部位于天朝魔都，有着超过两千名员工，对魔都政府税收有着巨大贡献。</blockquote>\n\n而您，作为一个WordPress用户，我们建议您访问<a href=\"http://localhost/wp-admin/\">控制板</a>，删除本页面，然后添加您自己的页面。祝您使用愉快！', '示例页面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-11-25 22:47:06', '2018-11-25 14:47:06', '', '0', 'http://localhost/?page_id=2', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('3', '1', '2018-11-25 22:47:36', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-25 22:47:36', '0000-00-00 00:00:00', '', '0', 'http://localhost/?p=3', '0', 'post', '', '0');
INSERT INTO `gzp_posts` VALUES ('4', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '浓缩咖啡', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-11-25 22:48:21', '0000-00-00 00:00:00', '', '0', 'http://localhost/wp-content/uploads/2018/11/espresso.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `gzp_posts` VALUES ('5', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '三明治', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-11-25 22:48:22', '0000-00-00 00:00:00', '', '0', 'http://localhost/wp-content/uploads/2018/11/sandwich.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `gzp_posts` VALUES ('6', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '咖啡', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-11-25 22:48:23', '0000-00-00 00:00:00', '', '0', 'http://localhost/wp-content/uploads/2018/11/coffee.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `gzp_posts` VALUES ('7', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '欢迎来到您的站点！这是您的主页，也就是大多数访客第一次造访时看到的页面。', '首页', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?page_id=7', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('8', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '您也许是位创作者，想要在这里介绍自己和自己的作品；或者您是一位商务人士，想在这里谈谈您的业务。', '关于', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?page_id=8', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('9', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '这个页面包含了一些基本的联系资料，像是地址和联系电话。您也可以尝试使用插件增加联系表单。', '联系', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?page_id=9', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('10', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '博客', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?page_id=10', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('11', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '这是首页章节的范例。首页章节可以是除了首页本身以外的任何其他页面，包括显示最新博客文章的页面。', '主页章节', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?page_id=11', '0', 'page', '', '0');
INSERT INTO `gzp_posts` VALUES ('12', '1', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '{\"widget_text[2]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLogZTns7vmiJHku6wiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+5Zyw5Z2APC9zdHJvbmc+CjEyMyBNYWluIFN0cmVldApOZXcgWW9yaywgTlkgMTAwMDEKCjxzdHJvbmc+6JCl5Lia5pe26Ze0PC9zdHJvbmc+CuaYn+acn+S4gCZtZGFzaDvkupTvvJo5OjAwJm5kYXNoOzE3OjAwCuaYn+acn+WFrSZtZGFzaDvml6XvvJoxMTowMCZuZGFzaDsxNTowMCI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"5ec4ab2797cd80d0e928d4d10c3c4f2b\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"widget_search[3]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YToxOntzOjU6InRpdGxlIjtzOjY6IuaQnOe0oiI7fQ==\",\"title\":\"\\u641c\\u7d22\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"5f97d5963f3dc77964ee439069cadb35\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"widget_text[3]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLlhbPkuo7mnKznq5kiO3M6NDoidGV4dCI7czoxMDg6Iui\\/memHjOS5n+iuuOaYr+S4quS7i+e7jeaCqOiHquW3seeahOWlveWcsOaWue+8jOS5n+iDveS7i+e7jeaCqOeahOe9keermeaIluaUvui\\/m+S4gOS6m+W3peS9nOS6uuWRmOWQjeWNleOAgiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\"title\":\"\\u5173\\u4e8e\\u672c\\u7ad9\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"c89c61b8920e742fe04505eeac9ccc95\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"sidebars_widgets[sidebar-1]\":{\"starter_content\":true,\"value\":[\"text-2\",\"search-3\",\"text-3\"],\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"widget_text[4]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLogZTns7vmiJHku6wiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+5Zyw5Z2APC9zdHJvbmc+CjEyMyBNYWluIFN0cmVldApOZXcgWW9yaywgTlkgMTAwMDEKCjxzdHJvbmc+6JCl5Lia5pe26Ze0PC9zdHJvbmc+CuaYn+acn+S4gCZtZGFzaDvkupTvvJo5OjAwJm5kYXNoOzE3OjAwCuaYn+acn+WFrSZtZGFzaDvml6XvvJoxMTowMCZuZGFzaDsxNTowMCI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"5ec4ab2797cd80d0e928d4d10c3c4f2b\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"sidebars_widgets[sidebar-2]\":{\"starter_content\":true,\"value\":[\"text-4\"],\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"widget_text[5]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLlhbPkuo7mnKznq5kiO3M6NDoidGV4dCI7czoxMDg6Iui\\/memHjOS5n+iuuOaYr+S4quS7i+e7jeaCqOiHquW3seeahOWlveWcsOaWue+8jOS5n+iDveS7i+e7jeaCqOeahOe9keermeaIluaUvui\\/m+S4gOS6m+W3peS9nOS6uuWRmOWQjeWNleOAgiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\"title\":\"\\u5173\\u4e8e\\u672c\\u7ad9\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"c89c61b8920e742fe04505eeac9ccc95\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"widget_search[4]\":{\"starter_content\":true,\"value\":{\"encoded_serialized_instance\":\"YToxOntzOjU6InRpdGxlIjtzOjY6IuaQnOe0oiI7fQ==\",\"title\":\"\\u641c\\u7d22\",\"is_widget_customizer_js_value\":true,\"instance_hash_key\":\"5f97d5963f3dc77964ee439069cadb35\"},\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"sidebars_widgets[sidebar-3]\":{\"starter_content\":true,\"value\":[\"text-5\",\"search-4\"],\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menus_created_posts\":{\"starter_content\":true,\"value\":[4,5,6,7,8,9,10,11],\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu[-1]\":{\"starter_content\":true,\"value\":{\"name\":\"\\u9876\\u90e8\\u83dc\\u5355\"},\"type\":\"nav_menu\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-1]\":{\"starter_content\":true,\"value\":{\"type\":\"custom\",\"title\":\"\\u9996\\u9875\",\"url\":\"http:\\/\\/localhost\\/\",\"position\":0,\"nav_menu_term_id\":-1,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-2]\":{\"starter_content\":true,\"value\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":8,\"position\":1,\"nav_menu_term_id\":-1,\"title\":\"\\u5173\\u4e8e\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-3]\":{\"starter_content\":true,\"value\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":10,\"position\":2,\"nav_menu_term_id\":-1,\"title\":\"\\u535a\\u5ba2\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-4]\":{\"starter_content\":true,\"value\":{\"type\":\"post_type\",\"object\":\"page\",\"object_id\":9,\"position\":3,\"nav_menu_term_id\":-1,\"title\":\"\\u8054\\u7cfb\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::nav_menu_locations[top]\":{\"starter_content\":true,\"value\":-1,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu[-5]\":{\"starter_content\":true,\"value\":{\"name\":\"\\u793e\\u4ea4\\u7f51\\u7edc\\u94fe\\u63a5\\u83dc\\u5355\"},\"type\":\"nav_menu\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-5]\":{\"starter_content\":true,\"value\":{\"title\":\"Yelp\",\"url\":\"https:\\/\\/www.yelp.com\",\"position\":0,\"nav_menu_term_id\":-5,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-6]\":{\"starter_content\":true,\"value\":{\"title\":\"Facebook\",\"url\":\"https:\\/\\/www.facebook.com\\/wordpress\",\"position\":1,\"nav_menu_term_id\":-5,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-7]\":{\"starter_content\":true,\"value\":{\"title\":\"Twitter\",\"url\":\"https:\\/\\/twitter.com\\/wordpress\",\"position\":2,\"nav_menu_term_id\":-5,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-8]\":{\"starter_content\":true,\"value\":{\"title\":\"Instagram\",\"url\":\"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/\",\"position\":3,\"nav_menu_term_id\":-5,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"nav_menu_item[-9]\":{\"starter_content\":true,\"value\":{\"title\":\"\\u7535\\u90ae\",\"url\":\"mailto:wordpress@example.com\",\"position\":4,\"nav_menu_term_id\":-5,\"object_id\":0},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::nav_menu_locations[social]\":{\"starter_content\":true,\"value\":-5,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"show_on_front\":{\"starter_content\":true,\"value\":\"page\",\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"page_on_front\":{\"starter_content\":true,\"value\":7,\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"page_for_posts\":{\"starter_content\":true,\"value\":10,\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::panel_1\":{\"starter_content\":true,\"value\":11,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::panel_2\":{\"starter_content\":true,\"value\":8,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::panel_3\":{\"starter_content\":true,\"value\":10,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"},\"twentyseventeen::panel_4\":{\"starter_content\":true,\"value\":9,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2018-11-25 14:48:24\"}}', '', '', 'auto-draft', 'closed', 'closed', '', '23bc9220-575f-42e6-af14-627a8ae32462', '', '', '2018-11-25 22:48:24', '0000-00-00 00:00:00', '', '0', 'http://localhost/?p=12', '0', 'customize_changeset', '', '0');

-- ----------------------------
-- Table structure for gzp_qita_jygz
-- ----------------------------
DROP TABLE IF EXISTS `gzp_qita_jygz`;
CREATE TABLE `gzp_qita_jygz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_qita_jygz
-- ----------------------------
INSERT INTO `gzp_qita_jygz` VALUES ('1', '2017', '第六十六中学', '1007', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('2', '2017', '革镇堡中心小学', '1097', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('3', '2017', '后革小学', '763', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('4', '2017', '夏家河子小学', '208', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('5', '2017', '鞍子山小学', '16', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('6', '2017', '棋盘子小学', '233', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('7', '2016', '第六十六中学', '998', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('8', '2016', '革镇堡中心小学', '1020', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('9', '2016', '后革小学', '802', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('10', '2016', '夏家河子小学', '203', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('11', '2016', '鞍子山小学', '20', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('12', '2016', '棋盘子小学', '201', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('13', '2015', '第六十六中学', '1203', '7');
INSERT INTO `gzp_qita_jygz` VALUES ('14', '2017', '第六十六中学', '1021', '8');
INSERT INTO `gzp_qita_jygz` VALUES ('15', '2017', '革镇堡中心小学', '1009', '8');

-- ----------------------------
-- Table structure for gzp_religion
-- ----------------------------
DROP TABLE IF EXISTS `gzp_religion`;
CREATE TABLE `gzp_religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `area` bigint(20) DEFAULT NULL,
  `areas` bigint(20) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `xintu` varchar(255) DEFAULT NULL,
  `hdqk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_religion
-- ----------------------------
INSERT INTO `gzp_religion` VALUES ('1', '中革基督教聚会点', '基督教', '1100', '650', '徐建华', '注册信众约800人，经常参加活动400人左右。信众来源主要是革镇堡地区', '每周三、周日上午举行集会活动。每年圣诞节是基督教的重要节日，参与活动人数比较多。');
INSERT INTO `gzp_religion` VALUES ('2', '甘井子区安山寺', '佛教', '20000', '12000', '释妙闻', '信众来源于不同地区。', '寺院每年固定活动18次。');

-- ----------------------------
-- Table structure for gzp_role
-- ----------------------------
DROP TABLE IF EXISTS `gzp_role`;
CREATE TABLE `gzp_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '角色表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of gzp_role
-- ----------------------------
INSERT INTO `gzp_role` VALUES ('1', '超级管理员');

-- ----------------------------
-- Table structure for gzp_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `gzp_role_permission`;
CREATE TABLE `gzp_role_permission` (
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  `permission_id` int(10) unsigned NOT NULL COMMENT '权限ID',
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `permission_id` (`permission_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED COMMENT='角色-权限（栏目）中间表';

-- ----------------------------
-- Records of gzp_role_permission
-- ----------------------------
INSERT INTO `gzp_role_permission` VALUES ('1', '16');
INSERT INTO `gzp_role_permission` VALUES ('1', '15');
INSERT INTO `gzp_role_permission` VALUES ('1', '12');
INSERT INTO `gzp_role_permission` VALUES ('1', '11');
INSERT INTO `gzp_role_permission` VALUES ('1', '10');
INSERT INTO `gzp_role_permission` VALUES ('1', '9');
INSERT INTO `gzp_role_permission` VALUES ('1', '8');
INSERT INTO `gzp_role_permission` VALUES ('1', '7');
INSERT INTO `gzp_role_permission` VALUES ('1', '6');
INSERT INTO `gzp_role_permission` VALUES ('1', '5');
INSERT INTO `gzp_role_permission` VALUES ('1', '4');
INSERT INTO `gzp_role_permission` VALUES ('1', '3');
INSERT INTO `gzp_role_permission` VALUES ('1', '2');
INSERT INTO `gzp_role_permission` VALUES ('1', '1');
INSERT INTO `gzp_role_permission` VALUES ('1', '17');
INSERT INTO `gzp_role_permission` VALUES ('1', '13');
INSERT INTO `gzp_role_permission` VALUES ('1', '14');

-- ----------------------------
-- Table structure for gzp_safety_aqmb
-- ----------------------------
DROP TABLE IF EXISTS `gzp_safety_aqmb`;
CREATE TABLE `gzp_safety_aqmb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(150) NOT NULL COMMENT '企业名称',
  `level` varchar(50) NOT NULL COMMENT '安全级别',
  `target` varchar(300) NOT NULL COMMENT '安全目标',
  `danger` text NOT NULL COMMENT '安全隐患',
  `time` varchar(10) NOT NULL COMMENT '月份',
  `add_time` varchar(10) NOT NULL COMMENT '上报时间',
  `year` varchar(10) NOT NULL COMMENT '年',
  `lng` varchar(30) NOT NULL COMMENT '经度',
  `lat` varchar(30) NOT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='区内重大安全目标工作';

-- ----------------------------
-- Records of gzp_safety_aqmb
-- ----------------------------
INSERT INTO `gzp_safety_aqmb` VALUES ('1', '一厂', '4', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('2', '二厂', '1', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('3', '三厂', '3', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('4', '四厂', '2', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('5', '五厂', '5', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('6', '六厂', '2', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('8', '七厂', '1', '其它', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '', '');
INSERT INTO `gzp_safety_aqmb` VALUES ('9', '八厂', '5', '危险化学品', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;大风厂安全隐患问题&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;苹果和三星，他们在2013年前后的对决如史诗般波澜壮阔，Galaxy和iPhone是这个星球上唯二的明星机型，二者惺惺相惜又互为对手、相互拆台，乔布斯曾亲手制作PPT，讽刺三星是年度最佳跟风者，而坊间也流传着李健熙确定手机方案的奇葩思路：三星的设计团队，不乏天才，在推出新产品之前，他们都会向高层提供上百个手机设计方案，然后，李健熙连同他的总裁办公室，都毫无例外地选择了同iPhone最相似的那一款，于是，如你所见，Galaxy越来越像苹果手机&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 尴尬的是，&lt;/span&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188);&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;background-color: rgb(215, 227, 188); font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;只有形似，内涵相差太远。三星也在一些特定的时期领先过苹果，比如他们率先推出大屏幕&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;strong&gt;&lt;em&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; text-decoration: underline;&quot;&gt;，&lt;/span&gt;&lt;/em&gt;&lt;/strong&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;推出防水功能。笔者记得有一年，冰桶挑战在全世界范围内非常流行，三星公关团队借机炒作，让他们的旗舰手机Galaxy接受挑战，以突显自己的防水能力，随后他们点名iPhone，自然，苹果没有理会，彼时的iPhone摔不坏、砸不坏、烧不坏，但就是不能泡在水里，当然，这些往事都随风而去了，几年的时间内，苹果推出了大屏幕，&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify; color: rgb(255, 0, 0);&quot;&gt;持续地扩大市场份额&lt;/span&gt;，刚刚发布的iPhone7也增加了防水功能，照现在苹果的发展势头，他们在智能手机市场一统天下的日子，已经不远了。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft Yahei&amp;quot;, SimSun, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;&lt;img src=&quot;/Uploads/image/20180605/1528177113.jpg&quot; title=&quot;1528177113.jpg&quot; alt=&quot;timg.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;', '6', '1528176997', '2018', '121.483804', '39.021459');
INSERT INTO `gzp_safety_aqmb` VALUES ('10', '九厂', '3', '危险化学品', '&lt;p&gt;阿萨德啥的阿萨德&lt;/p&gt;', '10', '1528185700', '2018', '121.502561', '39.027906');
INSERT INTO `gzp_safety_aqmb` VALUES ('11', '十厂', '5', '重大危险源', '&lt;p&gt;阿萨德阿萨德&lt;/p&gt;', '9', '1528185754', '2018', '121.509029', '39.026728');
INSERT INTO `gzp_safety_aqmb` VALUES ('12', '乙木众业', '5', '重大危险源', '&lt;p&gt;卡视角点开链接案例个个都是安防但是&lt;/p&gt;', '6', '1530162033', '2018', '121.52412', '39.009573');
INSERT INTO `gzp_safety_aqmb` VALUES ('13', '鞍子山小超市', '2', '九小场所', '&lt;p&gt;鞍子山村的九小场所超市&lt;/p&gt;', '6', '1530162468', '2018', '121.492141', '39.01417');
INSERT INTO `gzp_safety_aqmb` VALUES ('14', '鞍子山村幼儿园', '3', '九小场所', '&lt;p&gt;鞍子山村幼儿园&lt;/p&gt;', '6', '1530162672', '2018', '121.492931', '39.019272');

-- ----------------------------
-- Table structure for gzp_safety_aqmb_check
-- ----------------------------
DROP TABLE IF EXISTS `gzp_safety_aqmb_check`;
CREATE TABLE `gzp_safety_aqmb_check` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` varchar(150) NOT NULL COMMENT '企业ID',
  `time` varchar(20) NOT NULL COMMENT '检查时间',
  `check` text NOT NULL COMMENT '检查情况',
  `status` int(11) NOT NULL DEFAULT '2' COMMENT '领导批示状态{批示：1，未批示：2}',
  `recheck` text NOT NULL COMMENT '领导批示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='检查上报及领导批示';

-- ----------------------------
-- Records of gzp_safety_aqmb_check
-- ----------------------------
INSERT INTO `gzp_safety_aqmb_check` VALUES ('1', '9', '2018-06-05 14:41', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '1', '完成的很好');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('2', '9', '2018-06-05 14:41', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '1', '继续整改');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('3', '9', '2018-06-05 14:41', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '1', '继续整改，工作不到位');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('4', '8', '2018-06-05 14:41', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '2', '');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('5', '5', '2018-06-05 14:41', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '1', '水电费');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('6', '9', '2018-06-05 15:25', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '2', '');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('7', '8', '2018-06-06 00:00', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '2', '');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('8', '9', '2018-06-05 15:28', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '1', '阿萨德');
INSERT INTO `gzp_safety_aqmb_check` VALUES ('9', '9', '2018-06-05 15:29', '&lt;p&gt;&lt;strong&gt;检查内容：&lt;/strong&gt;厂内易燃易爆角落&lt;/p&gt;&lt;p&gt;&lt;strong&gt;现场图片：&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180605/1528180913.jpg&quot; title=&quot;1528180913.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;303&quot; height=&quot;192&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;整改后&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;/Uploads/image/20180605/1528180933.png&quot; title=&quot;1528180933.png&quot; alt=&quot;TIM截图20180605094433.png&quot; width=&quot;281&quot; height=&quot;195&quot;/&gt;&lt;/p&gt;', '2', '');

-- ----------------------------
-- Table structure for gzp_safety_aqmb_checkwarn
-- ----------------------------
DROP TABLE IF EXISTS `gzp_safety_aqmb_checkwarn`;
CREATE TABLE `gzp_safety_aqmb_checkwarn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` varchar(150) NOT NULL COMMENT '企业ID',
  `time` varchar(20) NOT NULL COMMENT '提醒时间',
  `content` text NOT NULL COMMENT '提醒内容',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='检查提醒';

-- ----------------------------
-- Records of gzp_safety_aqmb_checkwarn
-- ----------------------------
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('1', '9', '2018-06-15', '检查防火');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('2', '9', '2018-06-13', '检查上次拐角处');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('3', '9', '2018-06-14', '检查水管');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('4', '8', '2018-06-16', '检查易燃处');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('5', '6', '2018-06-12', '检查防冻');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('6', '4', '2018-06-12', '检查消防');
INSERT INTO `gzp_safety_aqmb_checkwarn` VALUES ('7', '9', '2018-06-26', '检查防火情况');

-- ----------------------------
-- Table structure for gzp_safety_net
-- ----------------------------
DROP TABLE IF EXISTS `gzp_safety_net`;
CREATE TABLE `gzp_safety_net` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `lng` varchar(20) NOT NULL COMMENT '经度',
  `lat` varchar(20) NOT NULL COMMENT '纬度',
  `bdid` varchar(20) NOT NULL COMMENT '百度ID',
  `bdnameqy` varchar(100) NOT NULL COMMENT '百度name中的区域',
  `bdnamedh` varchar(20) NOT NULL COMMENT '百度name中的电话',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示{1-显示，2-不显示}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='安全员网络';

-- ----------------------------
-- Records of gzp_safety_net
-- ----------------------------
INSERT INTO `gzp_safety_net` VALUES ('8', '121.491722', '39.004444', '孙七', '东山', '13333333333', '1');
INSERT INTO `gzp_safety_net` VALUES ('9', '121.547738', '39.043414', '赵六', '小南山', '15555555555', '1');
INSERT INTO `gzp_safety_net` VALUES ('10', '121.556141', '39.035051', '王五', '大南山', '15555555555', '1');
INSERT INTO `gzp_safety_net` VALUES ('11', '121.514637', '39.026723', '李四', '鞍子山', '13333333333', '1');
INSERT INTO `gzp_safety_net` VALUES ('12', '121.50264', '39.001195', '张三', '鞍子山', '13333333333', '1');

-- ----------------------------
-- Table structure for gzp_safety_xwlb
-- ----------------------------
DROP TABLE IF EXISTS `gzp_safety_xwlb`;
CREATE TABLE `gzp_safety_xwlb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `childid` int(10) unsigned NOT NULL COMMENT '二级菜单ID',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `time` varchar(10) NOT NULL COMMENT '上传时间',
  `maincontent` varchar(200) NOT NULL COMMENT '内容摘要',
  `maindep` varchar(50) NOT NULL COMMENT '责任部门',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `childid` (`childid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='安全生产-新闻列表';

-- ----------------------------
-- Records of gzp_safety_xwlb
-- ----------------------------
INSERT INTO `gzp_safety_xwlb` VALUES ('1', '182', '安全的认识阶段', '&lt;p&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;一、无知（不自觉）的安全认识阶段&lt;/span&gt;&lt;/p&gt;&lt;p&gt;指工业革命以前，生产力和仅有的自然科学都处于自然和分散的状态&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;二、局部的安全认识阶段&lt;/span&gt;&lt;/p&gt;&lt;p&gt;指工业革命以后，生产中已使用大型动力机械和能源，导致生产力与危害因素的同步增长，促使人们局部认识安全并采取措施。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;三、系统的安全认识阶段&lt;/span&gt;&lt;/p&gt;&lt;p&gt;系统的安全认识阶段是由于形成了军事工业、航天工业、特别是原子能和航天技术等复杂的大型生产系统和机器系统，局部安全认识已无法满足生产生活中对安全的需要，必须发展与生产力相适应的生产系统并采取安全措施。&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;四、动态的安全认识阶段&lt;/span&gt;&lt;/p&gt;&lt;p&gt;动态的安全认识阶段是当今生产和科学技术的发展，特别是高科技的发展，静态的安全系统安全技术措施和系统的安全认识即系统安全工程理论已不能满足动态过程中发生的，具有随机性的安全问题，必须采用更加深刻的安全技术措施和安全系统认识。&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180606/1528264789.jpg&quot; title=&quot;1528264789.jpg&quot; alt=&quot;9e3df8dcd100baa1330cb6564510b912c8fc2e3f.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1528264809', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('4', '182', '测试1', '&lt;p&gt;啊速度快和开两间按时健身房第三方水电费&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/image/20180606/1528268402.jpg&quot; title=&quot;1528268402.jpg&quot; alt=&quot;timg.jpg&quot; width=&quot;397&quot; height=&quot;231&quot;/&gt;&lt;/p&gt;&lt;p&gt;1&lt;br/&gt;&lt;/p&gt;', '1528267783', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('5', '184', '确保高考安全平稳', '&lt;p style=&quot;margin-top: 25px; margin-bottom: 25px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 32.4px; font-family: 微软雅黑; text-indent: 2em; color: rgb(34, 34, 34); white-space: normal;&quot;&gt;高考前夕，中共中央政治局委员、国务院副总理孙春兰来到教育部考试中心检查2018年高考准备工作，通过国家教育考试考务指挥系统了解有关地方考场、试卷保管和分发场所等情况，看望高考值班工作人员，并向全国奋战在高考一线的教师、同学们致以诚挚问候，向为高考提供服务保障的各个方面表示感谢。&lt;/p&gt;&lt;p style=&quot;margin-top: 25px; margin-bottom: 25px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 32.4px; font-family: 微软雅黑; text-indent: 2em; color: rgb(34, 34, 34); white-space: normal;&quot;&gt;孙春兰指出，高考是实现教育公平乃至社会公平的重要制度，承载为国选人育人的重大使命。党中央十分重视高考工作，习近平总书记强调，深化考试招生制度改革，维护和增强全国统一高考在人才选拔培养中的核心地位。各级党委政府要深入贯彻习近平总书记重要指示精神，认真落实党中央、国务院决策部署，建立中国特色的高考招生制度，充分发挥高考在促进学生成长、国家选才、社会公平方面的重要作用。&lt;/p&gt;&lt;p style=&quot;margin-top: 25px; margin-bottom: 25px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 32.4px; font-family: 微软雅黑; text-indent: 2em; color: rgb(34, 34, 34); white-space: normal;&quot;&gt;孙春兰强调，2014年启动的新一轮考试招生制度改革已取得积极成效，当前要牢牢把握“有利于推进素质教育、有利于促进教育公平、有利于科学选拔人才”的改革方向，着力解决“唯分数论”“应试教育”等社会反映强烈的突出问题。要落实立德树人根本任务，积极推进考试内容改革，突出对综合素质和能力的考查，发挥好高考的导向作用。要稳步扩大高考综合改革省份，逐步形成分类考试、综合评价、多元录取的考试招生模式，促进学生全面、有个性地发展&lt;/p&gt;&lt;p style=&quot;margin-top: 25px; margin-bottom: 25px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: 32.4px; font-family: 微软雅黑; text-indent: 2em; color: rgb(34, 34, 34); white-space: normal;&quot;&gt;&lt;br/&gt;&lt;/p&gt;', '1528269535', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('6', '185', '食品安全基本常识', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px;&quot;&gt;食品安全知识宣传资料&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　一、&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E9%A3%9F%E5%93%81%E5%AE%89%E5%85%A8%E5%B8%B8%E8%AF%86&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;食品安全常识&lt;/a&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　1、购买食物时，注意&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E9%A3%9F%E5%93%81%E5%8C%85%E8%A3%85&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;食品包装&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;有无生产厂家、生产日期，是否过保质期，食品原料、营养成分是否标明，有无QS标识，不能购买&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E4%B8%89%E6%97%A0%E4%BA%A7%E5%93%81&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;三无产品&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　2、打开食品包装，检查食品是否具有它应有的感官性状。不能食用腐败变质、油脂酸败、霉变、生虫、污秽不洁、混有异物或者其他感官性状异常的食品，若蛋白质类食品发粘，渍脂类食品有嚎味，碳水化合物有发酵的气味或饮料有异常沉淀物等等均不能食用。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　3、不到无证摊贩处购买盒饭或食物，减少&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E9%A3%9F%E7%89%A9%E4%B8%AD%E6%AF%92&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;食物中毒&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;的隐患。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　4、注意个人卫生，饭前便后洗手，自己的餐具洗净消毒，不用不洁容器盛装食品，不乱扔垃圾防止蚊蝇孳生。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　5、少吃油炸、油煎食品&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　二、什么是食品掺假、掺杂和伪造？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（1）“掺假”是指食品中添加了廉价或没有营养价值的物品，或从食品中抽去了有营养的物质或替换进次等物质，从而降低了质量，如蜂蜜中加入转化糖，&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E5%B7%A7%E5%85%8B%E5%8A%9B%E9%A5%BC%E5%B9%B2&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;巧克力饼干&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;加入了色素，全脂奶粉中抽掉脂肪等。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（2）“掺杂”即在食品中加入一些杂物，如腐竹中加入硅酸钠或硼砂；辣椒粉中加入了红砖木等。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（3）“伪造”是指包装标识或产品说明与内容物不符。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　掺假、掺杂、伪造的食品，一般应由工商行政部门处理。对影响营养卫生的，应由&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E5%8D%AB%E7%94%9F%E8%A1%8C%E6%94%BF%E9%83%A8%E9%97%A8&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;卫生行政部门&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;依法进行处理。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　三、禁止生产经营的食品包括哪些种类？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　禁止生产经营的食品包括下列类别：&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（1）腐败变质、油脂酸败、霉变、生虫、污秽不洁、混有异物或者其他感官性状异常，可能对人体健康有害的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（2）含有毒、有害物质或者被有毒、有害物质污染，可能对人体健康有害的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（3）含有致病性寄生虫、微生物，或者微生物毒素含量超过国家限定标准的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（4）未经卫生检验或者检验不合格的肉类及其制品；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（5）病死、毒死或者死因不明的禽、畜、兽、水产动物等及其制品；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（6）容器包装污秽不洁、严重破损或者运输工具不洁造成污染的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（7）掺假、掺杂、伪造、，影响营养、卫生的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（8）用非食品原料加工的，加入非食品用化学物质的或者将非食品当作食品的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（9）超过保质期限的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（10）为防病等特殊需要，国务院卫生行政部门或者省、自治区、直辖市人民政府专门规定禁止出售的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（11）含有未经过国务院卫生行政部门批准使用的添加剂的或者农药残留超过国家规定容许量的；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（12）其他不符合&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E9%A3%9F%E5%93%81%E5%8D%AB%E7%94%9F%E6%A0%87%E5%87%86&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;食品卫生标准&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;和卫生要求的。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　四、如何判别伪劣食品？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　伪劣食品犹如过街老鼠，人人喊打。但人们在日常购物时却难以识别。&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E3%80%8A%E4%BC%AA%E5%8A%A3%E9%A3%9F%E5%93%81%E9%98%B2%E8%8C%83%E2%80%9C%E4%B8%83%E5%AD%97%E6%B3%95%E2%80%9D%E3%80%8B&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;《伪劣食品防范“七字法”》&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;，以通俗易懂易记的方式引导消费者强化食品安全自我防范，以期使伪劣食品因缺乏市场而退出市场。防范“七字法”：即防“艳、白、反、长、散、低、小”。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　一防“艳”。对颜色过分艳丽的食品要提防，如目前上市的草莓象蜡果一样又大又红又亮、咸菜梗亮黄诱人、瓶装的蕨菜鲜绿不褪色等，要留个心眼，是不是在添加色素上有问题？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　二防“白”。凡是食品呈不正常不自然的白色，十有八九会有漂白剂、增白剂、面粉处理剂等化学品的危害。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　三防“长”。尽量少吃保质期过长的食品，3℃贮藏的包装熟肉禽类产品采用&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E5%B7%B4%E6%B0%8F%E6%9D%80%E8%8F%8C&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;巴氏杀菌&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;的，保质期一般为7—30天。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　四防“反”。就是防反自然生长的食物，如果食用过多可能对身体产生影响。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　五防“小”。要提防小作坊式加工企业的产品，这类企业的食品平均抽样合格率最低，触目惊心的&lt;/span&gt;&lt;a href=&quot;https://www.baidu.com/s?wd=%E9%A3%9F%E5%93%81%E5%AE%89%E5%85%A8%E4%BA%8B%E4%BB%B6&amp;tn=SE_PcZhidaonwhc_ngpagmjz&amp;rsv_dl=gh_pc_zhidao&quot; target=&quot;_blank&quot; class=&quot;baidu-highlight&quot; style=&quot;color: rgb(63, 136, 191); text-decoration-line: none; font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;食品安全事件&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;往往在这些企业出现。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　六防“低”。“低”是指在价格上明显低于一般价格水平的食品，价格太低的食品大多有“猫腻”。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　七防“散”。散就是散装食品，有些集贸市场销售的散装豆制品、散装熟食、酱菜等可能来自地下加工厂。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　五、食品储存应注意哪些问题?&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　应建立出入库制度,做到先进先出;各类食品分类存放,标志明显,防止交叉污染;做到离墙离地,做到“四防”：防霉或防腐、防鼠、防虫、防蝇。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　六、如何清洗果蔬上的残留农药？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（1）水洗浸泡法（用清水洗干净后浸泡）：蔬菜污染的农药品种主要有机磷杀虫剂，有机磷杀虫剂难溶于水，此种方法仅能除去部分污染的农药，但水洗是清除蔬菜水果上其他污物和去除残留农药的基础方法。主要用于叶类蔬菜。一般先用水冲洗掉表面污物，否则等于将果蔬浸泡在稀释的农药里。然后用清水浸泡，浸泡不少于10分钟，果蔬清洗剂可增加农药的溶出，所以浸泡时可以加入少量果蔬清洗剂，浸泡后要用流水冲洗2-3遍。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（2）清洗后碱水浸泡法：有机磷杀虫剂在碱性环境下分解迅速，所以此方法是有效地去除农药污染的措施，可用于各类蔬菜瓜果。方法是先将表面污物冲洗干净，浸泡到碱水中（一般500m1水中加入碱面5g-10g）5-15分钟，然后用清水冲洗3-5遍。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（3）去皮法：外表不平或多细毛的蔬菜瓜果，较易沾染农药，所以削去外皮是一种较好的去除残留农药的方法。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（4）储存法：农药随着时间能缓慢分解为对人体无害的物质（空气中的氧与蔬菜中的酶对残留农药有一定的分解作用），所以对易于保存的瓜果蔬菜可以通过一定时间的存放，减少农药残留量。一般应存放15天以上，同时建议不要立即食用新采摘的未削皮的瓜果。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（5）加热法：氨基甲酸酯类杀虫剂随着温度升高，分解加快，所以对一些其他方法难以处理的蔬菜瓜果可通过加热去除部分农药。此法常用于芹菜、菠菜、小白菜、圆白菜、青椒、菜花、豆角等，先用清水将表面污染物洗净，放入沸水中2-5分钟捞出，然后用清水冲洗1-2遍。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（6）阳光晒：经日光照射晒干后的蔬菜，农药残留较少。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　七、怎样识别用激素促进成熟的蔬菜？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　有的菜农为了使蔬菜生长加快、生长的多就用激素喷洒，吃了这种菜对健康不利，怎样识别呢？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　西红柿表皮光滑，当菜农对它喷洒催大、催肥、催熟激素后，激素药液一部分流至下端，致使该部位特别长肉，形成“尖屁股”。这种西红柿当然不能吃。此外，个头很大，红绿斑驳，摸起来发硬，切开后没汁或汁很少，这也是催熟剂催熟的，不宜购买。生长怪异的如冬瓜、黄瓜、茄子之类，冬瓜、茄子上小下大，黄瓜则全身长坨，都是喷洒激素的结果。有的水果细皮嫩肉，有的芹菜体大身长，均不要吃为好。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　8.如何采购食用油,应索取哪些证件?&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　采购食用油时，一定要采购标有“QS”标志的桶装食用油，若采购散装食用油，极易购买到潲水油及问题食用油，质量得不到保障。应索取的证件有：销售商的卫生许可证、工商营业执照、食用油的“质量检测报告”复印件。若不按要求对食用油进行采购和索证，一经油出了问题，找不到销售商，责任由自己全负。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　八、怎样健康饮用桶装水？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　桶装水一旦打开，应尽量在短期内使用完，通常在一周内用完为宜，否则应加热煮开再饮用。桶装水送上门后，即便是质量较好的桶装饮用水，放置时间太长也易滋生细菌。尤其是在炎热的夏季，温度高，细菌繁殖速度也加快，更不能久存。桶装矿泉水，最好放在避光、通风阴凉的地方，避免在阳光下曝晒。同时还要警惕饮水机的二次污染，注意定期清洗饮水机。要求厂家每隔一段时间上门负责清洗饮水机。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　购买桶装水要注意先看包装桶是否晶莹透明，质感硬。质量较好的桶（瓶）应由PC材质制成，桶体透明度高，表面光滑清亮，而使用或添加回收废旧垃圾塑料为原料制成的桶，俗称：“黑桶”，颜色发黑、发暗、透明性差。有部分厂家为降低成本，仍在使用这种明令禁止使用的包装桶装水，消费者应仔细选择鉴别。水桶盖应鲜亮光洁，硬度较高。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　另外，消费者可尝试倒置水桶，应不漏水。当把水桶从饮水机上拔出时，水桶的内应恰好将水桶再次堵上。合格的饮用水应该无色、透明、清澈、无异味和异臭，没有肉眼可见物。颜色发黄、浑浊、有絮状沉淀或杂质，有异味的水产品一定不能饮用。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　九、哪些原因可导致食物中毒等食源性疾病发生？&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（1）冷藏方法不正确，如将煮熟的食品长时间存放于室温下冷却，把大块食物贮存于冰柜中，或冷藏温度不够。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（2）从烹调到食用的间隔时间太长，使细菌有足够的繁殖时间。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（3）烹调或加热方法不正确，加热不彻底，食物中心温度低于70℃。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（4）由病原携带者或感染者加工食品。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（5）使用受污染的生食品或原辅料。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（6）生熟食品交叉污染。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（7）在室温条件下解冻食物。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（8）厨房设备、餐具清洗、消毒方法不正确。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（9）使用了来源不安全的食物。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　（10）加工制备后的食物受污染。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　十、预防食源性疾病的十项建议&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　1、不买不食腐败变质、污秽不洁及其它含有害物质的食品；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　2、不食用来历不明的食品；不购买无厂名厂址和保质期等标识不全的食品；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　3、不光顾无证无照的流动摊档和卫生条件不佳的饮食店；不随意购买、食用街头小摊贩出售的劣质食品、饮料。这些劣质食品、饮料往往卫生质量不合格，食用会危害健康。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　4、不食用在室温条件下放置超过2小时的熟食和剩余食品；&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　5、不随便吃野菜、野果。野菜、野果的种类很多，其中有的含有对人体有害的毒素，缺乏经验的人很难辨别清楚，只有不随便吃野菜、野果，才能避免中毒，确保安全。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　6、生吃瓜果要洗净。瓜果蔬菜在生长过程中不仅会沾染病菌、病毒、寄生虫卵，还有残留的农药、杀虫剂等，如果不清洗干净，不仅可能染上疾病，还可能造成农药中毒。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　7、不饮用不洁净的水或者未煮沸的自来水；水是否干净，仅凭肉眼很难分清，清澈透明的水也可能含有病菌、病毒，喝开水最安全&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　8、直接食用的瓜果应用洁净的水彻底清洗并尽可能去皮；不吃腐烂变质的食物，食物腐烂变质，就会味道变酸、变苦；散发出异味儿，这是因为细菌大量繁殖引起的，吃了这些食物会造成食物中毒。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　9、进食前或便后应将双手洗净；养成吃东西以前洗手的习惯。人的双手每天干这干那，接触各种各样的东西。会沾染病菌、病毒和寄生虫卵。吃东西以前认真用肥皂洗净双手，才能减少“病从口入”的可能。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　10、在进食的过程中如发现感官性状异常，应立即停止进食。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　十一、八种常见的饮食卫生误区如下：&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　1 、好热闹喜聚餐：每当节假日，人们大多喜欢三三两两到餐馆“撮一顿”，或是亲朋好友在家聚餐，又热闹又便于交流感情。这样做不利于健康，不符合饮食卫生，特别是当前这一非常时期，最好实行分餐制。分餐的做法是对别人和自己生命健康的负责和尊重。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　2 、用白纸包食物：有些人喜欢用白纸包食品，因为白纸看上去好像干干净净的。可事实上，白纸在生产过程中，会加用许多漂白剂及带有腐蚀作用的化工原料，纸浆虽然经过冲洗过滤，仍含有不少化学成分，会污染食物。至于用报纸来包食品，则更不可取，因为印刷报纸时，会用许多油墨或其他有毒物质，对人体危害极大。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　3 、用酒消毒碗筷：一些人常用白酒来擦拭碗筷，以为这样可以达到消毒的目的。殊不知，医学上用于消毒的酒精度数为 75°，而一般白酒的酒精含量多在 56°以下，并且白酒毕竟不同于医用酒精。所以，用白酒擦拭碗筷，根本达不到消毒的目的。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　4 、抹布清洗不及时：实验显示，在家里使用一周后的全新抹布，滋生的细菌数会让你大吃一惊；如果在餐馆或大排档，情况会更差。因此，在用抹布擦饭桌之前，应当先充分清洗。抹布每隔三四天应该用开水煮沸消毒一下，以避免因抹布使用不当而给健康带来危害。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　5 、用卫生纸擦拭餐具：化验证明，许多卫生纸（尤其是非正规厂家生产的卫生纸）消毒状况并不好，这些卫生纸因消毒不彻底而含有大量细菌；即使消毒较好，卫生纸也会在摆放的过程中被污染。因此，用普通的卫生纸擦拭碗筷或水果，不但不能将食物擦拭干净，反而会在擦拭的过程中，给食品带来更多的污染机会。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　6 、用毛巾擦干餐具或水果：人们往往认为自来水是生水、不卫生，因此在用自来水冲洗过餐具或水果之后，常常再用毛巾擦干。这样做看似卫生细心，实则反之。须知，干毛巾上常常会存活着许多病菌。目前，我国城市自来水大都经过严格的消毒处理，所以说用洗洁剂和自来水彻底冲洗过的食品基本上是洁净的，可以放心食用，无须再用干毛巾擦拭。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　7 、将变质食物煮沸后再吃：有些家庭主妇比较节俭，有时将轻微变质的食物经高温煮过后再吃，以为这样就可以彻底消灭细菌。医学实验证明，细菌在进入人体之前分泌的毒素，是非常耐高温的，不易被破坏分解。因此，这种用加热方法处理剩余食物的方法是不可取的。&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　8 、把水果烂掉的部分剜掉再吃：有些人吃水果时，习惯把水果烂掉的部分削了再吃，以为这样就比较卫生了。然而，微生物学专家认为：即使把水果上面已烂掉的部分削去，剩余的部分也已通过果汁传入了细菌的代谢物，甚至还有微生物开始繁殖，其中的霉菌可导致人体细胞突变而致癌。因此，水果只要是已经烂了一部分，就不宜吃，还是扔掉为好。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　宣传标语&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　1、国以民为本，民以食为天，食以安为先&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　2、群众利益无小事，食品安全是大事&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　3、实施食品放心工程，促进经济社会协调发展&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　4、关注食品安全，关爱健康人生&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　5、建立诚信体系，保障食品安全&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　6、加强农村食品监管，建设社会主义新农村&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　7、提高食品安全意识，创造幸福美好生活&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　8、以人为本，确保饮食安全&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　9、从源头抓质量，确保食品安全&lt;/span&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;PingFang SC&amp;quot;, &amp;quot;Lantinghei SC&amp;quot;, &amp;quot;Microsoft YaHei&amp;quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;　　10、食品安全，人人有责&lt;/span&gt;&lt;/p&gt;', '1528269900', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('7', '186', '交通安全', '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;交通安全（The traffic safety），是指人们在道路上进行活动、玩耍时，要按照交通法规的规定，安全地行车、走路，避免发生人身伤亡或财物损失。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;儿童交通安全（2016—2017）是家长们最为关注的，除了学龄前及中小学教育对儿童交通安全教育进行普及之外，不少地区也举办了生动的体验教育课程，或修建专业的体验馆，针对儿童或生在特定的场馆内，参加丰富多彩的体验活动，以&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%AD%A5%E8%A1%8C%E8%80%85&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;步行者&lt;/a&gt;和驾驶者的身份进行体验，从而正确理解交通安全知识，并培养在危险状态下的应变能力。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1528270238', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('8', '187', '居家安全不可不知的100件事', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;《居家安全不可不知的100件事》内容简介：在日常生活中，每天都会发生一些不同的安全事故，这些事故不仅打破了我们平静的生活，同时也威胁到了我们的生命安全，所以不得不时刻警惕。 《居家安全不可不知的100件事》以简洁的语言，讲述了平常生活中人们经常遇到的居家安全问题，根据不同情况，阐述了居家安全不可不知的100件事，阅读本书不仅可以了解影响居家安全的不利因素，而且还能从中发现影响居家安全的潜在危险，让大家从根本上杜绝安全隐患，做到真正的安全。 虽然我们对未来发生的安全事故无法预知，但可以利用所掌握的知识把隐患扼杀在萌芽状态，让居家变得更加安全、更加放心，衷心希望本书能为普通大众带来帮助。&lt;/span&gt;&lt;/p&gt;', '1528270540', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('9', '188', '社会安全', '&lt;ol class=&quot;custom_num list-paddingleft-1&quot;&gt;&lt;li class=&quot;list-num-1-1 list-num-paddingleft-1&quot;&gt;&lt;p&gt;社会安全是中小学公共安全教育指导纲要中指出的公共安全教育六个模块之一。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-2 list-num-paddingleft-1&quot;&gt;&lt;p&gt;公共安全教育的主要内容包括预防和应对社会安全、 公共卫生、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%84%8F%E5%A4%96%E4%BC%A4%E5%AE%B3/2472739&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;意外伤害&lt;/a&gt;、网络、信息安全、自然灾害以及影响学生安全的其他事故或事件六个模块。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-3 list-num-paddingleft-1&quot;&gt;&lt;p&gt;社会安全是针对社会事件的安全措施、对策、知识等。社会事件主要包括恐怖袭击事件，民族宗教事件，经济安全事件，涉外突发事件和&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BE%A4%E4%BD%93%E6%80%A7%E4%BA%8B%E4%BB%B6&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;群体性事件&lt;/a&gt;等。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-4 list-num-paddingleft-1&quot;&gt;&lt;p&gt;社会事件举例：如遇到&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E6%8A%A2%E5%8A%AB&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;抢劫&lt;/a&gt;、小偷、骗子、他人遇险等；意外走失；学生踩踏等。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-5 list-num-paddingleft-1&quot;&gt;&lt;p&gt;社会整体安全程度取决于一国社会发展程度。&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%BB%8F%E6%B5%8E%E5%8F%91%E5%B1%95%E9%80%9F%E5%BA%A6/12610111&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;经济发展速度&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%A4%BE%E4%BC%9A%E5%85%AC%E5%B9%B3/7821810&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;社会公平&lt;/a&gt;程度、政治体制、历史文化原因等都有可能对社会安全程度产生影响。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-6 list-num-paddingleft-1&quot;&gt;&lt;p&gt;当我们关注安全问题的时候，实际关注的是安全风险及其防范。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-7 list-num-paddingleft-1&quot;&gt;&lt;p&gt;必须明白，安全作为人们追求的一种价值，其内在可能是与效率、自由、创新发展、人权等价值相冲突的，对任何一种价值的追求程度不是越高越好，关键是把握度内的千变万化。&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-8 list-num-paddingleft-1&quot;&gt;&lt;p&gt;&lt;a class=&quot;lemma-anchor para-title&quot; style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot;&gt;&lt;/a&gt;&lt;a class=&quot;lemma-anchor &quot; style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot;&gt;&lt;/a&gt;&lt;a class=&quot;lemma-anchor &quot; style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;&lt;li class=&quot;list-num-1-9 list-num-paddingleft-1&quot;&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;', '1528270814', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('10', '190', '2018年6月份第一次培训', '&lt;p&gt;安全生产培训&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1528271139', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('11', '196', '6月任务下达', '&lt;p&gt;通知：做好防火防汛工作！！！&lt;/p&gt;', '1528953398', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('13', '196', '6月任务下达', '&lt;p&gt;通知：做好防火防汛工作！！！&lt;/p&gt;', '1529164800', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('14', '196', '6月任务下达', '&lt;p&gt;通知：做好防火防汛工作！！！&lt;/p&gt;', '1528992000', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('19', '196', '阿萨德', '&lt;p&gt;阿萨德阿萨德阿萨德&lt;/p&gt;', '1530089426', '要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要', '责任部门');
INSERT INTO `gzp_safety_xwlb` VALUES ('20', '198', '城市安全', '&lt;p&gt;城市安全&lt;/p&gt;', '1530153923', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('21', '200', '民生安全', '&lt;p&gt;民生安全内容&lt;/p&gt;', '1530154571', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('22', '201', '教育工作安全', '&lt;p&gt;教育工作安全内容&lt;/p&gt;', '1530154897', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('23', '202', '文体行业安全', '&lt;p&gt;问题行业安全内容&lt;/p&gt;', '1530155200', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('24', '203', '医疗安全', '&lt;p&gt;医疗安全内容&lt;/p&gt;', '1530155480', '', '');
INSERT INTO `gzp_safety_xwlb` VALUES ('18', '196', '啥的', '&lt;p&gt;阿萨德&lt;/p&gt;', '1530089381', '内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要内容摘要', '责任部门');
INSERT INTO `gzp_safety_xwlb` VALUES ('25', '196', '', '&lt;table width=&quot;821&quot;&gt;&lt;colgroup&gt;&lt;col width=&quot;40&quot; style=&quot;width:30.00pf&quot;/&gt;&lt;col width=&quot;89&quot; style=&quot;width:66.75pf&quot;/&gt;&lt;col width=&quot;45&quot; style=&quot;width:33.75pf&quot;/&gt;&lt;col width=&quot;71&quot; style=&quot;width:53.25pf&quot;/&gt;&lt;col width=&quot;72&quot; style=&quot;width:54.00pf&quot;/&gt;&lt;col width=&quot;59&quot; style=&quot;width:44.25pf&quot;/&gt;&lt;col width=&quot;56&quot; style=&quot;width:42.00pf&quot;/&gt;&lt;col width=&quot;52&quot; style=&quot;width:39.00pf&quot;/&gt;&lt;col width=&quot;63&quot; style=&quot;width:47.25pf&quot;/&gt;&lt;col width=&quot;64&quot; style=&quot;width:48.00pf&quot;/&gt;&lt;col width=&quot;59&quot; style=&quot;width:44.25pf&quot;/&gt;&lt;col width=&quot;55&quot; style=&quot;width:41.25pf&quot;/&gt;&lt;col width=&quot;96&quot; style=&quot;width:72.00pf&quot;/&gt;&lt;/colgroup&gt;&lt;tbody&gt;&lt;tr style=&quot;height:25.50pf&quot; class=&quot;firstRow&quot;&gt;&lt;td colspan=&quot;13&quot; width=&quot;765&quot; style=&quot;color: rgb(0, 0, 0); font-size: 19px; font-weight: 700; font-style: normal; text-align: center; vertical-align: middle;&quot;&gt;&amp;nbsp;&amp;nbsp;2018&amp;nbsp;年社会化管理人员情况统计报表&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; rowspan=&quot;3&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;position:absolute;margin-left:66;margin-top:15&quot;&gt;&lt;img width=&quot;45&quot; height=&quot;20&quot; src=&quot;http://www.gzppro.com/Public/Common/ueditor/themes/default/images/spacer.gif&quot;/&gt; &lt;/span&gt;&lt;/td&gt;&lt;td colspan=&quot;10&quot; width=&quot;586&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;人员变动情况统计&lt;/td&gt;&lt;td rowspan=&quot;3&quot; width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;本月末管理人数&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;4&quot; width=&quot;233&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;其中：增加人数&lt;/td&gt;&lt;td colspan=&quot;6&quot; width=&quot;350&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;其中：减少人数&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;小计&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;新接收人数&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;跨区转入&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;区内转入&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;其他&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;小计&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;死亡&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;跨区转出&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;区内转出&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;其他&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;甲&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;2&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;3&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;4&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;5&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;6&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;7&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;8&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;9&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;10&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;11&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;12&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;退休人员&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;50&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;2&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;5&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;1&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;4635&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;遗属&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;88&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;40&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;89&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;退休人员&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;40&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;破&lt;/td&gt;&lt;td width=&quot;89&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;离休人员&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;40&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;89&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;遗属&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;40&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;产&lt;/td&gt;&lt;td width=&quot;89&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;退养&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;40&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;89&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;精简&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;小计&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;52&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;50&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;2&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;6&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;5&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;1&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;4723&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;事业单位退休&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;80&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;合计&lt;/td&gt;&lt;td width=&quot;45&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;71&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;72&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;56&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;52&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;63&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;64&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;59&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;55&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;96&quot; style=&quot;color: rgb(0, 0, 0); font-size: 13px; font-weight: 400; font-style: normal; text-align: center; vertical-align: middle; border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1543282590', '', '');

-- ----------------------------
-- Table structure for gzp_shxf
-- ----------------------------
DROP TABLE IF EXISTS `gzp_shxf`;
CREATE TABLE `gzp_shxf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `year` varchar(10) NOT NULL DEFAULT '' COMMENT '年份',
  `month` varchar(10) NOT NULL DEFAULT '' COMMENT '月份',
  `real` varchar(50) NOT NULL DEFAULT '' COMMENT '实际完成',
  `plan` varchar(50) NOT NULL DEFAULT '' COMMENT '计划完成',
  `sid` int(10) unsigned NOT NULL COMMENT '数据类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='社会消费品';

-- ----------------------------
-- Records of gzp_shxf
-- ----------------------------
INSERT INTO `gzp_shxf` VALUES ('1', '2018', '1', '12', '10', '5');
INSERT INTO `gzp_shxf` VALUES ('2', '2018', '2', '11', '17', '5');
INSERT INTO `gzp_shxf` VALUES ('3', '2018', '3', '18', '29', '5');
INSERT INTO `gzp_shxf` VALUES ('4', '2018', '4', '33', '40', '5');
INSERT INTO `gzp_shxf` VALUES ('5', '2018', '5', '13', '20', '5');
INSERT INTO `gzp_shxf` VALUES ('6', '2018', '6', '22', '20', '5');
INSERT INTO `gzp_shxf` VALUES ('7', '2018', '7', '28', '28', '5');
INSERT INTO `gzp_shxf` VALUES ('8', '2018', '8', '45', '43', '5');
INSERT INTO `gzp_shxf` VALUES ('9', '2018', '9', '35', '52', '5');
INSERT INTO `gzp_shxf` VALUES ('10', '2018', '10', '44', '59', '5');
INSERT INTO `gzp_shxf` VALUES ('11', '2018', '11', '41', '50', '5');
INSERT INTO `gzp_shxf` VALUES ('13', '2017', '1', '45', '75', '5');
INSERT INTO `gzp_shxf` VALUES ('14', '2017', '2', '17', '18', '5');
INSERT INTO `gzp_shxf` VALUES ('15', '2017', '3', '63', '68', '5');
INSERT INTO `gzp_shxf` VALUES ('16', '2017', '4', '41', '43', '5');
INSERT INTO `gzp_shxf` VALUES ('17', '2017', '5', '51', '52', '5');
INSERT INTO `gzp_shxf` VALUES ('18', '2017', '6', '11', '30', '5');
INSERT INTO `gzp_shxf` VALUES ('19', '2017', '7', '22', '55', '5');
INSERT INTO `gzp_shxf` VALUES ('20', '2017', '8', '29', '30', '5');
INSERT INTO `gzp_shxf` VALUES ('21', '2017', '9', '55', '55', '5');
INSERT INTO `gzp_shxf` VALUES ('22', '2017', '10', '30', '31', '5');
INSERT INTO `gzp_shxf` VALUES ('23', '2017', '11', '40', '43', '5');
INSERT INTO `gzp_shxf` VALUES ('24', '2017', '12', '50', '52', '5');
INSERT INTO `gzp_shxf` VALUES ('25', '2016', '1', '11', '22', '5');
INSERT INTO `gzp_shxf` VALUES ('34', '2016', '2', '43', '55', '5');
INSERT INTO `gzp_shxf` VALUES ('37', '2016', '3', '23', '30', '5');
INSERT INTO `gzp_shxf` VALUES ('41', '2016', '12', '11', '18', '5');
INSERT INTO `gzp_shxf` VALUES ('40', '2016', '11', '12', '76', '5');
INSERT INTO `gzp_shxf` VALUES ('32', '2016', '4', '31', '55', '5');
INSERT INTO `gzp_shxf` VALUES ('33', '2016', '5', '18', '20', '5');
INSERT INTO `gzp_shxf` VALUES ('35', '2016', '6', '17', '20', '5');
INSERT INTO `gzp_shxf` VALUES ('36', '2016', '7', '12', '20', '5');
INSERT INTO `gzp_shxf` VALUES ('38', '2016', '8', '55', '76', '5');
INSERT INTO `gzp_shxf` VALUES ('39', '2016', '9', '54', '18', '5');
INSERT INTO `gzp_shxf` VALUES ('28', '2016', '10', '54', '88', '5');
INSERT INTO `gzp_shxf` VALUES ('58', '2017', '6', '11', '30', '1');
INSERT INTO `gzp_shxf` VALUES ('57', '2017', '5', '51', '52', '1');
INSERT INTO `gzp_shxf` VALUES ('56', '2017', '4', '41', '43', '1');
INSERT INTO `gzp_shxf` VALUES ('55', '2017', '3', '63', '68', '1');
INSERT INTO `gzp_shxf` VALUES ('54', '2017', '2', '17', '18', '1');
INSERT INTO `gzp_shxf` VALUES ('53', '2017', '1', '45', '76', '1');
INSERT INTO `gzp_shxf` VALUES ('52', '2018', '11', '11', '11', '1');
INSERT INTO `gzp_shxf` VALUES ('51', '2018', '10', '44', '59', '1');
INSERT INTO `gzp_shxf` VALUES ('50', '2018', '9', '35', '52', '1');
INSERT INTO `gzp_shxf` VALUES ('49', '2018', '8', '45', '43', '1');
INSERT INTO `gzp_shxf` VALUES ('48', '2018', '7', '28', '28', '1');
INSERT INTO `gzp_shxf` VALUES ('47', '2018', '6', '22', '20', '1');
INSERT INTO `gzp_shxf` VALUES ('45', '2018', '4', '33', '40', '1');
INSERT INTO `gzp_shxf` VALUES ('44', '2018', '3', '18', '29', '1');
INSERT INTO `gzp_shxf` VALUES ('46', '2018', '5', '13', '20', '1');
INSERT INTO `gzp_shxf` VALUES ('43', '2018', '2', '11', '17', '1');
INSERT INTO `gzp_shxf` VALUES ('42', '2018', '1', '12', '10', '1');
INSERT INTO `gzp_shxf` VALUES ('59', '2017', '7', '22', '55', '1');
INSERT INTO `gzp_shxf` VALUES ('60', '2017', '8', '29', '30', '1');
INSERT INTO `gzp_shxf` VALUES ('61', '2017', '9', '55', '55', '1');
INSERT INTO `gzp_shxf` VALUES ('62', '2017', '10', '30', '31', '1');
INSERT INTO `gzp_shxf` VALUES ('63', '2017', '11', '40', '43', '1');
INSERT INTO `gzp_shxf` VALUES ('64', '2017', '12', '50', '52', '1');
INSERT INTO `gzp_shxf` VALUES ('65', '2016', '1', '11', '22', '1');
INSERT INTO `gzp_shxf` VALUES ('66', '2016', '2', '43', '55', '1');
INSERT INTO `gzp_shxf` VALUES ('67', '2016', '3', '23', '30', '1');
INSERT INTO `gzp_shxf` VALUES ('68', '2016', '12', '11', '18', '1');
INSERT INTO `gzp_shxf` VALUES ('69', '2016', '11', '12', '76', '1');
INSERT INTO `gzp_shxf` VALUES ('70', '2016', '4', '31', '55', '1');
INSERT INTO `gzp_shxf` VALUES ('71', '2016', '5', '18', '20', '1');
INSERT INTO `gzp_shxf` VALUES ('72', '2016', '6', '17', '20', '1');
INSERT INTO `gzp_shxf` VALUES ('73', '2016', '7', '12', '20', '1');
INSERT INTO `gzp_shxf` VALUES ('74', '2016', '8', '55', '76', '1');
INSERT INTO `gzp_shxf` VALUES ('75', '2016', '9', '54', '18', '1');
INSERT INTO `gzp_shxf` VALUES ('76', '2016', '10', '54', '88', '1');
INSERT INTO `gzp_shxf` VALUES ('77', '2018', '1', '12', '10', '2');
INSERT INTO `gzp_shxf` VALUES ('78', '2018', '2', '11', '17', '2');
INSERT INTO `gzp_shxf` VALUES ('79', '2018', '3', '18', '29', '2');
INSERT INTO `gzp_shxf` VALUES ('80', '2018', '4', '33', '40', '2');
INSERT INTO `gzp_shxf` VALUES ('81', '2018', '5', '13', '20', '2');
INSERT INTO `gzp_shxf` VALUES ('82', '2018', '6', '22', '20', '2');
INSERT INTO `gzp_shxf` VALUES ('83', '2018', '7', '28', '28', '2');
INSERT INTO `gzp_shxf` VALUES ('84', '2018', '8', '45', '43', '2');
INSERT INTO `gzp_shxf` VALUES ('85', '2018', '9', '35', '52', '2');
INSERT INTO `gzp_shxf` VALUES ('86', '2018', '10', '44', '59', '2');
INSERT INTO `gzp_shxf` VALUES ('87', '2018', '11', '22', '22', '2');
INSERT INTO `gzp_shxf` VALUES ('88', '2017', '1', '45', '76', '2');
INSERT INTO `gzp_shxf` VALUES ('89', '2017', '2', '17', '18', '2');
INSERT INTO `gzp_shxf` VALUES ('90', '2017', '3', '63', '68', '2');
INSERT INTO `gzp_shxf` VALUES ('91', '2017', '4', '41', '43', '2');
INSERT INTO `gzp_shxf` VALUES ('92', '2017', '5', '51', '52', '2');
INSERT INTO `gzp_shxf` VALUES ('93', '2017', '6', '11', '30', '2');
INSERT INTO `gzp_shxf` VALUES ('94', '2017', '7', '22', '55', '2');
INSERT INTO `gzp_shxf` VALUES ('95', '2017', '8', '29', '30', '2');
INSERT INTO `gzp_shxf` VALUES ('96', '2017', '9', '55', '55', '2');
INSERT INTO `gzp_shxf` VALUES ('97', '2017', '10', '30', '31', '2');
INSERT INTO `gzp_shxf` VALUES ('98', '2017', '11', '40', '43', '2');
INSERT INTO `gzp_shxf` VALUES ('99', '2017', '12', '50', '52', '2');
INSERT INTO `gzp_shxf` VALUES ('100', '2016', '1', '11', '22', '2');
INSERT INTO `gzp_shxf` VALUES ('101', '2016', '2', '43', '55', '2');
INSERT INTO `gzp_shxf` VALUES ('102', '2016', '3', '23', '30', '2');
INSERT INTO `gzp_shxf` VALUES ('103', '2016', '12', '11', '18', '2');
INSERT INTO `gzp_shxf` VALUES ('104', '2016', '11', '12', '76', '2');
INSERT INTO `gzp_shxf` VALUES ('105', '2016', '4', '31', '55', '2');
INSERT INTO `gzp_shxf` VALUES ('106', '2016', '5', '18', '20', '2');
INSERT INTO `gzp_shxf` VALUES ('107', '2016', '6', '17', '20', '2');
INSERT INTO `gzp_shxf` VALUES ('108', '2016', '7', '12', '20', '2');
INSERT INTO `gzp_shxf` VALUES ('109', '2016', '8', '55', '76', '2');
INSERT INTO `gzp_shxf` VALUES ('110', '2016', '9', '54', '18', '2');
INSERT INTO `gzp_shxf` VALUES ('111', '2016', '10', '54', '88', '2');
INSERT INTO `gzp_shxf` VALUES ('112', '2018', '1', '12', '10', '3');
INSERT INTO `gzp_shxf` VALUES ('113', '2018', '2', '11', '17', '3');
INSERT INTO `gzp_shxf` VALUES ('114', '2018', '3', '18', '29', '3');
INSERT INTO `gzp_shxf` VALUES ('115', '2018', '4', '33', '40', '3');
INSERT INTO `gzp_shxf` VALUES ('116', '2018', '5', '13', '20', '3');
INSERT INTO `gzp_shxf` VALUES ('117', '2018', '6', '22', '20', '3');
INSERT INTO `gzp_shxf` VALUES ('118', '2018', '7', '28', '28', '3');
INSERT INTO `gzp_shxf` VALUES ('119', '2018', '8', '45', '43', '3');
INSERT INTO `gzp_shxf` VALUES ('120', '2018', '9', '35', '52', '3');
INSERT INTO `gzp_shxf` VALUES ('121', '2018', '10', '44', '59', '3');
INSERT INTO `gzp_shxf` VALUES ('122', '2018', '11', '33', '33', '3');
INSERT INTO `gzp_shxf` VALUES ('123', '2017', '1', '45', '76', '3');
INSERT INTO `gzp_shxf` VALUES ('124', '2017', '2', '17', '18', '3');
INSERT INTO `gzp_shxf` VALUES ('125', '2017', '3', '63', '68', '3');
INSERT INTO `gzp_shxf` VALUES ('126', '2017', '4', '41', '43', '3');
INSERT INTO `gzp_shxf` VALUES ('127', '2017', '5', '51', '52', '3');
INSERT INTO `gzp_shxf` VALUES ('128', '2017', '6', '11', '30', '3');
INSERT INTO `gzp_shxf` VALUES ('129', '2017', '7', '22', '55', '3');
INSERT INTO `gzp_shxf` VALUES ('130', '2017', '8', '29', '30', '3');
INSERT INTO `gzp_shxf` VALUES ('131', '2017', '9', '55', '55', '3');
INSERT INTO `gzp_shxf` VALUES ('132', '2017', '10', '30', '31', '3');
INSERT INTO `gzp_shxf` VALUES ('133', '2017', '11', '40', '43', '3');
INSERT INTO `gzp_shxf` VALUES ('134', '2017', '12', '50', '52', '3');
INSERT INTO `gzp_shxf` VALUES ('135', '2016', '1', '11', '22', '3');
INSERT INTO `gzp_shxf` VALUES ('136', '2016', '2', '43', '55', '3');
INSERT INTO `gzp_shxf` VALUES ('137', '2016', '3', '23', '30', '3');
INSERT INTO `gzp_shxf` VALUES ('138', '2016', '12', '11', '18', '3');
INSERT INTO `gzp_shxf` VALUES ('139', '2016', '11', '12', '76', '3');
INSERT INTO `gzp_shxf` VALUES ('140', '2016', '4', '31', '55', '3');
INSERT INTO `gzp_shxf` VALUES ('141', '2016', '5', '18', '20', '3');
INSERT INTO `gzp_shxf` VALUES ('142', '2016', '6', '17', '20', '3');
INSERT INTO `gzp_shxf` VALUES ('143', '2016', '7', '12', '20', '3');
INSERT INTO `gzp_shxf` VALUES ('144', '2016', '8', '55', '76', '3');
INSERT INTO `gzp_shxf` VALUES ('145', '2016', '9', '54', '18', '3');
INSERT INTO `gzp_shxf` VALUES ('146', '2016', '10', '54', '88', '3');
INSERT INTO `gzp_shxf` VALUES ('147', '2018', '1', '12', '10', '4');
INSERT INTO `gzp_shxf` VALUES ('148', '2018', '2', '11', '17', '4');
INSERT INTO `gzp_shxf` VALUES ('149', '2018', '3', '18', '29', '4');
INSERT INTO `gzp_shxf` VALUES ('150', '2018', '4', '33', '40', '4');
INSERT INTO `gzp_shxf` VALUES ('151', '2018', '5', '13', '20', '4');
INSERT INTO `gzp_shxf` VALUES ('152', '2018', '6', '22', '20', '4');
INSERT INTO `gzp_shxf` VALUES ('153', '2018', '7', '28', '28', '4');
INSERT INTO `gzp_shxf` VALUES ('154', '2018', '8', '45', '43', '4');
INSERT INTO `gzp_shxf` VALUES ('155', '2018', '9', '35', '52', '4');
INSERT INTO `gzp_shxf` VALUES ('156', '2018', '10', '44', '59', '4');
INSERT INTO `gzp_shxf` VALUES ('157', '2018', '11', '44', '44', '4');
INSERT INTO `gzp_shxf` VALUES ('158', '2017', '1', '45', '76', '4');
INSERT INTO `gzp_shxf` VALUES ('159', '2017', '2', '17', '18', '4');
INSERT INTO `gzp_shxf` VALUES ('160', '2017', '3', '63', '68', '4');
INSERT INTO `gzp_shxf` VALUES ('161', '2017', '4', '41', '43', '4');
INSERT INTO `gzp_shxf` VALUES ('162', '2017', '5', '51', '52', '4');
INSERT INTO `gzp_shxf` VALUES ('163', '2017', '6', '11', '30', '4');
INSERT INTO `gzp_shxf` VALUES ('164', '2017', '7', '22', '55', '4');
INSERT INTO `gzp_shxf` VALUES ('165', '2017', '8', '29', '30', '4');
INSERT INTO `gzp_shxf` VALUES ('166', '2017', '9', '55', '55', '4');
INSERT INTO `gzp_shxf` VALUES ('167', '2017', '10', '30', '31', '4');
INSERT INTO `gzp_shxf` VALUES ('168', '2017', '11', '40', '43', '4');
INSERT INTO `gzp_shxf` VALUES ('169', '2017', '12', '50', '52', '4');
INSERT INTO `gzp_shxf` VALUES ('170', '2016', '1', '11', '22', '4');
INSERT INTO `gzp_shxf` VALUES ('171', '2016', '2', '43', '55', '4');
INSERT INTO `gzp_shxf` VALUES ('172', '2016', '3', '23', '30', '4');
INSERT INTO `gzp_shxf` VALUES ('173', '2016', '12', '11', '18', '4');
INSERT INTO `gzp_shxf` VALUES ('174', '2016', '11', '12', '76', '4');
INSERT INTO `gzp_shxf` VALUES ('175', '2016', '4', '31', '55', '4');
INSERT INTO `gzp_shxf` VALUES ('176', '2016', '5', '18', '20', '4');
INSERT INTO `gzp_shxf` VALUES ('177', '2016', '6', '17', '20', '4');
INSERT INTO `gzp_shxf` VALUES ('178', '2016', '7', '12', '20', '4');
INSERT INTO `gzp_shxf` VALUES ('179', '2016', '8', '55', '76', '4');
INSERT INTO `gzp_shxf` VALUES ('180', '2016', '9', '54', '18', '4');
INSERT INTO `gzp_shxf` VALUES ('181', '2016', '10', '54', '88', '4');
INSERT INTO `gzp_shxf` VALUES ('182', '2018', '1', '12', '10', '6');
INSERT INTO `gzp_shxf` VALUES ('183', '2018', '2', '11', '17', '6');
INSERT INTO `gzp_shxf` VALUES ('184', '2018', '3', '18', '29', '6');
INSERT INTO `gzp_shxf` VALUES ('185', '2018', '4', '33', '40', '6');
INSERT INTO `gzp_shxf` VALUES ('186', '2018', '5', '13', '20', '6');
INSERT INTO `gzp_shxf` VALUES ('187', '2018', '6', '22', '20', '6');
INSERT INTO `gzp_shxf` VALUES ('188', '2018', '7', '28', '28', '6');
INSERT INTO `gzp_shxf` VALUES ('189', '2018', '8', '45', '43', '6');
INSERT INTO `gzp_shxf` VALUES ('190', '2018', '9', '35', '52', '6');
INSERT INTO `gzp_shxf` VALUES ('191', '2018', '10', '44', '59', '6');
INSERT INTO `gzp_shxf` VALUES ('192', '2018', '11', '66', '66', '6');
INSERT INTO `gzp_shxf` VALUES ('193', '2017', '1', '45', '76', '6');
INSERT INTO `gzp_shxf` VALUES ('194', '2017', '2', '17', '18', '6');
INSERT INTO `gzp_shxf` VALUES ('195', '2017', '3', '63', '68', '6');
INSERT INTO `gzp_shxf` VALUES ('196', '2017', '4', '41', '43', '6');
INSERT INTO `gzp_shxf` VALUES ('197', '2017', '5', '51', '52', '6');
INSERT INTO `gzp_shxf` VALUES ('198', '2017', '6', '11', '30', '6');
INSERT INTO `gzp_shxf` VALUES ('199', '2017', '7', '22', '55', '6');
INSERT INTO `gzp_shxf` VALUES ('200', '2017', '8', '29', '30', '6');
INSERT INTO `gzp_shxf` VALUES ('201', '2017', '9', '55', '55', '6');
INSERT INTO `gzp_shxf` VALUES ('202', '2017', '10', '30', '31', '6');
INSERT INTO `gzp_shxf` VALUES ('203', '2017', '11', '40', '43', '6');
INSERT INTO `gzp_shxf` VALUES ('204', '2017', '12', '50', '52', '6');
INSERT INTO `gzp_shxf` VALUES ('205', '2016', '1', '11', '22', '6');
INSERT INTO `gzp_shxf` VALUES ('206', '2016', '2', '43', '55', '6');
INSERT INTO `gzp_shxf` VALUES ('207', '2016', '3', '23', '30', '6');
INSERT INTO `gzp_shxf` VALUES ('208', '2016', '12', '11', '18', '6');
INSERT INTO `gzp_shxf` VALUES ('209', '2016', '11', '12', '76', '6');
INSERT INTO `gzp_shxf` VALUES ('210', '2016', '4', '31', '55', '6');
INSERT INTO `gzp_shxf` VALUES ('211', '2016', '5', '18', '20', '6');
INSERT INTO `gzp_shxf` VALUES ('212', '2016', '6', '17', '20', '6');
INSERT INTO `gzp_shxf` VALUES ('213', '2016', '7', '12', '20', '6');
INSERT INTO `gzp_shxf` VALUES ('214', '2016', '8', '55', '76', '6');
INSERT INTO `gzp_shxf` VALUES ('215', '2016', '9', '54', '18', '6');
INSERT INTO `gzp_shxf` VALUES ('216', '2016', '10', '54', '88', '6');
INSERT INTO `gzp_shxf` VALUES ('217', '2018', '1', '12', '10', '7');
INSERT INTO `gzp_shxf` VALUES ('218', '2018', '2', '11', '17', '7');
INSERT INTO `gzp_shxf` VALUES ('219', '2018', '3', '18', '29', '7');
INSERT INTO `gzp_shxf` VALUES ('220', '2018', '4', '33', '40', '7');
INSERT INTO `gzp_shxf` VALUES ('221', '2018', '5', '13', '20', '7');
INSERT INTO `gzp_shxf` VALUES ('222', '2018', '6', '22', '20', '7');
INSERT INTO `gzp_shxf` VALUES ('223', '2018', '7', '28', '28', '7');
INSERT INTO `gzp_shxf` VALUES ('224', '2018', '8', '45', '43', '7');
INSERT INTO `gzp_shxf` VALUES ('225', '2018', '9', '35', '52', '7');
INSERT INTO `gzp_shxf` VALUES ('226', '2018', '10', '44', '59', '7');
INSERT INTO `gzp_shxf` VALUES ('227', '2018', '11', '50', '50', '7');
INSERT INTO `gzp_shxf` VALUES ('228', '2017', '1', '45', '76', '7');
INSERT INTO `gzp_shxf` VALUES ('229', '2017', '2', '17', '18', '7');
INSERT INTO `gzp_shxf` VALUES ('230', '2017', '3', '63', '68', '7');
INSERT INTO `gzp_shxf` VALUES ('231', '2017', '4', '41', '43', '7');
INSERT INTO `gzp_shxf` VALUES ('232', '2017', '5', '51', '52', '7');
INSERT INTO `gzp_shxf` VALUES ('233', '2017', '6', '11', '30', '7');
INSERT INTO `gzp_shxf` VALUES ('234', '2017', '7', '22', '55', '7');
INSERT INTO `gzp_shxf` VALUES ('235', '2017', '8', '29', '30', '7');
INSERT INTO `gzp_shxf` VALUES ('236', '2017', '9', '55', '55', '7');
INSERT INTO `gzp_shxf` VALUES ('237', '2017', '10', '30', '31', '7');
INSERT INTO `gzp_shxf` VALUES ('238', '2017', '11', '40', '43', '7');
INSERT INTO `gzp_shxf` VALUES ('239', '2017', '12', '50', '50', '7');
INSERT INTO `gzp_shxf` VALUES ('240', '2016', '1', '11', '22', '7');
INSERT INTO `gzp_shxf` VALUES ('241', '2016', '2', '43', '55', '7');
INSERT INTO `gzp_shxf` VALUES ('242', '2016', '3', '23', '30', '7');
INSERT INTO `gzp_shxf` VALUES ('243', '2016', '12', '11', '18', '7');
INSERT INTO `gzp_shxf` VALUES ('244', '2016', '11', '12', '76', '7');
INSERT INTO `gzp_shxf` VALUES ('245', '2016', '4', '31', '55', '7');
INSERT INTO `gzp_shxf` VALUES ('246', '2016', '5', '18', '20', '7');
INSERT INTO `gzp_shxf` VALUES ('247', '2016', '6', '17', '20', '7');
INSERT INTO `gzp_shxf` VALUES ('248', '2016', '7', '12', '20', '7');
INSERT INTO `gzp_shxf` VALUES ('249', '2016', '8', '55', '76', '7');
INSERT INTO `gzp_shxf` VALUES ('250', '2016', '9', '54', '18', '7');
INSERT INTO `gzp_shxf` VALUES ('251', '2016', '10', '54', '88', '7');

-- ----------------------------
-- Table structure for gzp_side
-- ----------------------------
DROP TABLE IF EXISTS `gzp_side`;
CREATE TABLE `gzp_side` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hzdw` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `htqd` varchar(255) DEFAULT NULL,
  `zgzz` int(11) DEFAULT NULL,
  `zywt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_side
-- ----------------------------
INSERT INTO `gzp_side` VALUES ('1', '革镇堡中心小学', '大连滨成阳光营养食品有限公司', '9元', '签订', '1', '无');
INSERT INTO `gzp_side` VALUES ('2', '后革小学', '大连渊东科技有限公司', '9元/人', '每年签一次', '1', '19中没有配送资质');
INSERT INTO `gzp_side` VALUES ('3', '棋盘小学', '大连香禾配餐公司', '每生每天9元', '每年签订', '1', '无');
INSERT INTO `gzp_side` VALUES ('4', '夏家河小学', '大连香禾餐饮管理有限公司', '9元/人', '每年一签', '1', '无');

-- ----------------------------
-- Table structure for gzp_subcatalog
-- ----------------------------
DROP TABLE IF EXISTS `gzp_subcatalog`;
CREATE TABLE `gzp_subcatalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_subcatalog
-- ----------------------------
INSERT INTO `gzp_subcatalog` VALUES ('1', '社会化管理人员情况', 'fa fa-bar-chart fa-2x', 'Home', 'people', 'msbz', '1', '10');
INSERT INTO `gzp_subcatalog` VALUES ('2', '待遇资格认证人员情况', 'fa fa-cny fa-2x', 'Home', 'people', 'msbz', '2', '10');
INSERT INTO `gzp_subcatalog` VALUES ('3', '失业、就业情况', 'fa fa-area-chart fa-2x', 'Home', 'people', 'msbz', '3', '10');
INSERT INTO `gzp_subcatalog` VALUES ('4', '残疾人情况', 'fa fa-external-link fa-2x', 'Home', 'people', 'msbz', '4', '10');
INSERT INTO `gzp_subcatalog` VALUES ('5', '低保家庭情况数据（非低保）', 'fa fa-external-link fa-2x', 'Home', 'people', 'msbz', '5', '10');
INSERT INTO `gzp_subcatalog` VALUES ('6', '村（社区）干部数据', 'fa fa-external-link fa-2x', 'Home', 'people', 'msbz', '6', '10');
INSERT INTO `gzp_subcatalog` VALUES ('7', '革镇堡少数民族统计数据', 'fa fa-external-link fa-2x', 'Home', 'people', 'msbz', '7', '10');
INSERT INTO `gzp_subcatalog` VALUES ('8', '革镇堡各小学人数', 'fa fa-bar-chart fa-2x', 'Home', 'people', 'jygz', '1', '20');
INSERT INTO `gzp_subcatalog` VALUES ('9', '革镇堡各小学设备', 'fa fa-cny fa-2x', 'Home', 'people', 'jygz', '2', '20');
INSERT INTO `gzp_subcatalog` VALUES ('10', '教育专项经费统计', 'fa fa-bar-chart fa-2x', 'Home', 'people', 'jygz', '3', '20');
INSERT INTO `gzp_subcatalog` VALUES ('11', '社会办学情况', 'fa fa-bar-chart fa-2x', 'Home', 'people', 'jygz', '4', '20');
INSERT INTO `gzp_subcatalog` VALUES ('12', '农村非公办教师养老补助发放情况', 'fa fa-cny fa-2x', 'Home', 'people', 'jygz', '5', '20');
INSERT INTO `gzp_subcatalog` VALUES ('13', '各幼儿园教职工情况', 'fa fa-area-chart fa-2x', 'Home', 'people', 'jygz', '6', '20');
INSERT INTO `gzp_subcatalog` VALUES ('14', '革镇堡街道文体队伍基础情况', 'fa fa-area-chart fa-2x', 'Home', 'people', 'whty', '1', '30');
INSERT INTO `gzp_subcatalog` VALUES ('15', '革镇堡街道健身广场基础情况(面积)', 'fa fa-area-chart fa-2x', 'Home', 'people', 'whty', '2', '30');
INSERT INTO `gzp_subcatalog` VALUES ('16', '革镇堡街道健身广场基础情况(健身路径)', 'fa fa-area-chart fa-2x', 'Home', 'people', 'whty', '3', '30');
INSERT INTO `gzp_subcatalog` VALUES ('17', '革镇堡街道农家、社区书屋基础情况', 'fa fa-area-chart fa-2x', 'Home', 'people', 'whty', '4', '30');
INSERT INTO `gzp_subcatalog` VALUES ('18', '革镇堡街道文化活动室基础情况', 'fa fa-area-chart fa-2x', 'Home', 'people', 'whty', '5', '30');
INSERT INTO `gzp_subcatalog` VALUES ('19', '计划生育（户籍人口）', 'fa fa-area-chart fa-2x', 'Home', 'people', 'ylws', '1', '40');

-- ----------------------------
-- Table structure for gzp_tercel
-- ----------------------------
DROP TABLE IF EXISTS `gzp_tercel`;
CREATE TABLE `gzp_tercel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tsmc` varchar(255) DEFAULT NULL,
  `xmjj` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `honor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_tercel
-- ----------------------------
INSERT INTO `gzp_tercel` VALUES ('1', '66中学', '科技教育', '科技创新、机器人、3D打印', '743', '1、机器人大赛辽宁省一等奖国家级三等奖、大连市科技运动会团体第一名、3D比赛大连市一等奖、第32届辽宁省创新大赛金宗俊老师获得一等奖。');
INSERT INTO `gzp_tercel` VALUES ('2', '66中学', '学生舞蹈', '舞蹈', '1094', '在大型活动中展演');
INSERT INTO `gzp_tercel` VALUES ('3', '革镇堡中心小学', '关心教育', null, '1180', '大连市特色示范学校');
INSERT INTO `gzp_tercel` VALUES ('4', '革镇堡中心小学', '篆刻特色', null, '880', '全国少儿美术教育示范单位');
INSERT INTO `gzp_tercel` VALUES ('5', '革镇堡中心小学', '校园足球', null, '1180', '全国校园足球特色学校');
INSERT INTO `gzp_tercel` VALUES ('6', '后革小学', '校园篮球', null, '744', '全国校园篮球特色学校');
INSERT INTO `gzp_tercel` VALUES ('7', '后革小学', '版画', null, '700', '辽宁省学生艺术展演二等奖');
INSERT INTO `gzp_tercel` VALUES ('8', '棋盘小学', '双棋教育', null, '210', '辽宁省象棋比赛优秀奖');
INSERT INTO `gzp_tercel` VALUES ('9', '棋盘小学', '纸艺画', null, '210', '纸艺画大连日报报道，获区艺术节二等奖');
INSERT INTO `gzp_tercel` VALUES ('10', '夏家河小学', '竹笛 ', null, '144', '区艺术表演二等奖');
INSERT INTO `gzp_tercel` VALUES ('11', '夏家河小学', '古筝', null, '25', null);

-- ----------------------------
-- Table structure for gzp_termmeta
-- ----------------------------
DROP TABLE IF EXISTS `gzp_termmeta`;
CREATE TABLE `gzp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for gzp_terms
-- ----------------------------
DROP TABLE IF EXISTS `gzp_terms`;
CREATE TABLE `gzp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_terms
-- ----------------------------
INSERT INTO `gzp_terms` VALUES ('1', '未分类', 'uncategorized', '0');

-- ----------------------------
-- Table structure for gzp_term_relationships
-- ----------------------------
DROP TABLE IF EXISTS `gzp_term_relationships`;
CREATE TABLE `gzp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_term_relationships
-- ----------------------------
INSERT INTO `gzp_term_relationships` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for gzp_term_taxonomy
-- ----------------------------
DROP TABLE IF EXISTS `gzp_term_taxonomy`;
CREATE TABLE `gzp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_term_taxonomy
-- ----------------------------
INSERT INTO `gzp_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '1');

-- ----------------------------
-- Table structure for gzp_timeline
-- ----------------------------
DROP TABLE IF EXISTS `gzp_timeline`;
CREATE TABLE `gzp_timeline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `event_id` int(10) unsigned NOT NULL COMMENT '重点工作ID',
  `contents` varchar(255) NOT NULL COMMENT '阶段工作内容',
  `start_time` varchar(20) NOT NULL COMMENT '阶段开始时间   XXXXYYA/B/C - X：年，Y：月，ABC表示上中下旬',
  `end_time` varchar(20) NOT NULL COMMENT '阶段结束时间   XXXXYYA/B/C - X：年，Y：月，ABC表示上中下旬',
  `is_complete` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '是否完成（0-未完成；1-完成；2-进行中）',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `start` varchar(20) NOT NULL COMMENT '开始时间',
  `end` varchar(20) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点工督办事项时间轴';

-- ----------------------------
-- Records of gzp_timeline
-- ----------------------------
INSERT INTO `gzp_timeline` VALUES ('1', '1', '进行电缆迁改工程', '201808A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('2', '2', '完成区域内居民、企业动迁工作', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('3', '2', '准备报审材料', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('4', '2', '报区开发建设中心审核', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('5', '2', '招、拍、挂', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('6', '3', '完成区域内居民、企业动迁工作', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('7', '3', '准备报审材料', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('8', '3', '报区开发建设中心审核', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('9', '3', '招、拍、挂', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('10', '4', '进行电缆迁改工程', '201808A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('11', '5', '完成招、拍、挂', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('12', '5', '办理摘牌后的相关手续', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('13', '5', '开工建设', '201810A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('14', '6', '完成林地征占前期手续准备工作', '201808A', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('15', '6', '林地征占手续报农海局', '201808C', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('16', '6', '办理林地征占手续及土地征占手续', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('17', '7', '办结环评审批（环保分局）；办结规划设计条件（区规划分局）；办结用地确权及土地预审（区国土分局）；办结可研报告的批复（区发改局）', '201808A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('18', '7', '办结建设用地规划批复（区规划分局）；办结市教育局建筑方案审核意见（市教育局）；申报市本级补助资金（市发改委）；完成设计单位、勘察单位招标工作（招标代理）', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('19', '7', '办结土地二次确权（区国土分局）；确定建设用地他项权力（市国土局信息查询中心）；办结划拨建设用地批复（市国土局）', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('20', '8', '办结环评审批（环保分局）；办结规划设计条件（区规划分局）；办结用地确权及土地预审（区国土分局）；办结项目建议书的批复（区发改局）', '201808A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('21', '8', '办结可研报告的批复（区发改局）；办结建设用地规划批复（区规划分局）；完成设计单位、勘察单位招标工作（招标代理）', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('22', '8', '办结土地二次确权（区国土分局）；确定建设用地他项权力（市国土局信息查询中心）', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('23', '9', '进行开工建设', '201808A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('24', '10', '提出土地收储计划', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('25', '10', '经开建中心会议确定，报区政府会议审定', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('26', '10', '办理储备土地规划批复', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('27', '11', '完成穿越铁路段施工、中后革段施工及监理招标工作', '201808A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('28', '11', '中后革段施工单位办理相关手续，并完成施工', '201810A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('29', '12', '完成施工招标前期准备工作', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('30', '12', '与砬夏河中后革段同时进行招标', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('31', '12', '施工单位进场施工并完工', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('32', '13', '根据区民政局工作安排，进行社区工作者招聘工作', '201808A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('33', '14', '聘请专业单位进行设计', '201808A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('34', '14', '完成招标工作', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('35', '14', '完成施工', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('36', '15', '完成工程招标', '201808B', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('37', '15', '施工单位进场，进行部分绿化施工及部分景观建设', '201810A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('38', '16', '开展设计工作', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('39', '16', '完成施工招标', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('40', '17', '完成中革村“一村一景”工程设计工作', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('41', '17', '完成中革村“一村一景”工程可行性分析', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('42', '17', '完成中革村“一村一景”工程招标', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('43', '17', '完成中革村“一村一景”工程施工', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('44', '18', '研究成员身份二榜', '201808B', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('45', '18', '完成成员身份二榜公示，研究股权设置', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('46', '18', '完成成员身份三榜定案；确定股权设置方案', '201809A', '201809A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('47', '18', '制定章程', '201809B', '201809B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('48', '18', '选举董事会、监事会', '201809C', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('49', '18', '完成档案归档及总结', '201810A', '201810A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('50', '19', '准备市创建办验收工作', '201808A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('51', '19', '准备省创建办验收工作', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('52', '19', '准备国家创建办验收工作', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('53', '20', '二期5层主体完工', '201808A', '201808A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('54', '20', '二期7层主体完工', '201808B', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('55', '20', '二期9层主体完工', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('56', '20', '二期11层主体完工', '201809A', '201809A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('57', '20', '二期13层主体完工', '201809B', '201809B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('58', '20', '二期15层主体完工', '201809C', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('59', '20', '二期17层主体完工', '201810A', '201810A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('60', '20', '二期19层主体完工', '201810B', '201810B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('61', '20', '二期21层主体完工', '201810C', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('62', '20', '二期23层主体完工', '201811A', '201811A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('63', '20', '二期25层主体完工', '201811B', '201811B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('64', '20', '二期27层主体完工', '201811C', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('65', '21', 'C1区35层、C2区地下一层完工', '201808A', '201808A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('66', '21', 'C2区1层主体完工', '201808B', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('67', '21', 'C2区2层主体完工', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('68', '21', 'C2区3层主体完工', '201809A', '201809A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('69', '21', 'C2区5层主体完工', '201809B', '201809B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('70', '21', 'C2区6层主体完工', '201809C', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('71', '21', 'C2区7层主体完工', '201810A', '201810A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('72', '21', 'C2区8层主体完工', '201810B', '201810B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('73', '21', 'C2区10层主体完工', '201810C', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('74', '21', 'C2区12层主体完工', '201811A', '201811A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('75', '21', 'C2区14层主体完工', '201811B', '201811B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('76', '21', 'C2区15层主体完工', '201811C', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('77', '22', '开工建设', '201808A', '201808A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('78', '22', '完成工程建设并验收', '201808B', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('79', '22', '完成结算', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('80', '23', '组织施工队开工建设', '201808B', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('81', '23', '工程完工', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('82', '23', '验收结算', '201809A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('83', '24', '完成招标', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('84', '24', '开工建设', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('85', '24', '工程验收结算', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('86', '25', '完成桌椅和物品柜更换工作', '201808A', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('87', '25', '工程验收结算', '201808C', '201809A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('88', '26', '完成招投标工作', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('89', '26', '启动门窗及外立面改造工作', '201809A', '201811B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('90', '27', '研究设计方案、节目；安排场地；组织人员排练', '201808A', '201808B', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('91', '27', '举办晚会', '201808C', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('92', '28', '研究设计比赛方案', '201808A', '201808A', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('93', '28', '召开各队领队会，安排赛程、场地，组织裁判员队伍', '201808B', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('94', '28', '举办足球联赛', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('95', '29', '等待区文体局统一安排人员进行全民体质监测工作', '201809A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('96', '30', '文体节运动会正式开幕', '201809C', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('97', '31', '完成办理8月份退休人员补贴', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('98', '31', '完成办理9月份退休人员补贴', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('99', '31', '完成办理10月份退休人员补贴', '201810A', '201810C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('100', '31', '完成办理11月份退休人员补贴', '201811A', '201811C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('101', '32', '新增就业岗位300个', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('102', '32', '新增就业岗位300个', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('103', '33', '完成560人左右', '201808A', '201808C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('104', '33', '完成630人左右', '201809A', '201809C', '2', '暂无', '', '');
INSERT INTO `gzp_timeline` VALUES ('105', '33', '完成700人左右', '201810A', '201810C', '2', '暂无', '', '');

-- ----------------------------
-- Table structure for gzp_tydw
-- ----------------------------
DROP TABLE IF EXISTS `gzp_tydw`;
CREATE TABLE `gzp_tydw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `dwmc` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_tydw
-- ----------------------------
INSERT INTO `gzp_tydw` VALUES ('1', '棋盘村', '足球队', '20', '2017', '周健');
INSERT INTO `gzp_tydw` VALUES ('2', '棋盘村', '门球一队', '6', '1994', '李长安');
INSERT INTO `gzp_tydw` VALUES ('3', '棋盘村', '门球二队', '6', '1994', '李长安');
INSERT INTO `gzp_tydw` VALUES ('4', '夏家河村', '夏家河子村足球队', '20', '2017', '王越');
INSERT INTO `gzp_tydw` VALUES ('5', '夏家河村', '夏家河子中老年舞蹈队', '20', '2017', '王越');
INSERT INTO `gzp_tydw` VALUES ('6', '夏家河村', '夏家河子村门球队', '16', '2000', '张月琴');
INSERT INTO `gzp_tydw` VALUES ('7', '羊圈子村', '羊圈子村足球队', '18', '2015', '金栋');
INSERT INTO `gzp_tydw` VALUES ('8', '羊圈子村', '羊圈子村乒乓球队', '8', '2012', '金栋');
INSERT INTO `gzp_tydw` VALUES ('9', '羊圈子村', '羊圈子村羽毛球队', '8', '2015', '金栋');
INSERT INTO `gzp_tydw` VALUES ('10', '鞍子山村', '鞍子山村足球队', '18', '2017', '孙佳成');
INSERT INTO `gzp_tydw` VALUES ('11', '鞍子山村', '鞍子山村门球队', '8', '2010', '郑立美');
INSERT INTO `gzp_tydw` VALUES ('12', '鞍子山村', '鞍子山村乒乓球队', '5', '2011', '孙佳成');
INSERT INTO `gzp_tydw` VALUES ('13', '渤海居民委', '门球队', '14', '2011', '常义江');
INSERT INTO `gzp_tydw` VALUES ('14', '渤海居民委', '乒乓球队', '8', '2014', '常义江');
INSERT INTO `gzp_tydw` VALUES ('15', '中革村', '中革村老年门球队', '12', '1992', '金广玲');
INSERT INTO `gzp_tydw` VALUES ('16', '后革村', '后革村门球队', '13', '1995', '李克学');

-- ----------------------------
-- Table structure for gzp_user
-- ----------------------------
DROP TABLE IF EXISTS `gzp_user`;
CREATE TABLE `gzp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(10) NOT NULL DEFAULT '' COMMENT '用户名',
  `phone` varchar(15) NOT NULL DEFAULT '' COMMENT '联系方式',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码md5加密',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '盐（添加时间）',
  `last_time` varchar(10) NOT NULL DEFAULT '' COMMENT '最后登录时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `is_show` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '{1：显示；2：不显示}',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of gzp_user
-- ----------------------------
INSERT INTO `gzp_user` VALUES ('1', 'admin', '13333333333', '888@163.com', 'ea852c5d11398c94ab57637ce23e986e', '1535607388', '1543365228', '65', '1');
INSERT INTO `gzp_user` VALUES ('2', 'jking', '', '', 'b918eb4371802589b6864f3adb70609f', '1537239565', '1537240480', '1', '1');

-- ----------------------------
-- Table structure for gzp_usermeta
-- ----------------------------
DROP TABLE IF EXISTS `gzp_usermeta`;
CREATE TABLE `gzp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_usermeta
-- ----------------------------
INSERT INTO `gzp_usermeta` VALUES ('1', '1', 'nickname', 'www.gzp.com');
INSERT INTO `gzp_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `gzp_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `gzp_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `gzp_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `gzp_usermeta` VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO `gzp_usermeta` VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO `gzp_usermeta` VALUES ('8', '1', 'admin_color', 'fresh');
INSERT INTO `gzp_usermeta` VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO `gzp_usermeta` VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO `gzp_usermeta` VALUES ('11', '1', 'locale', '');
INSERT INTO `gzp_usermeta` VALUES ('12', '1', 'gzp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `gzp_usermeta` VALUES ('13', '1', 'gzp_user_level', '10');
INSERT INTO `gzp_usermeta` VALUES ('14', '1', 'dismissed_wp_pointers', '');
INSERT INTO `gzp_usermeta` VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO `gzp_usermeta` VALUES ('16', '1', 'session_tokens', 'a:2:{s:64:\"5bfacb1f1bccb15fa2019eae4eaf290ad6c0a4db3a6952f9c3652dd2fcaf59e8\";a:4:{s:10:\"expiration\";i:1543330048;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36\";s:5:\"login\";i:1543157248;}s:64:\"ea482886736a3d83ec4bcae31827183d2d6e9ff6518e2d775a18b744639a8411\";a:4:{s:10:\"expiration\";i:1543330050;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36\";s:5:\"login\";i:1543157250;}}');
INSERT INTO `gzp_usermeta` VALUES ('17', '1', 'gzp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `gzp_usermeta` VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}');

-- ----------------------------
-- Table structure for gzp_users
-- ----------------------------
DROP TABLE IF EXISTS `gzp_users`;
CREATE TABLE `gzp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_users
-- ----------------------------
INSERT INTO `gzp_users` VALUES ('1', 'www.gzp.com', '$P$BWem66KhBzosRezupBcolrVEOv0x0t.', 'www-gzp-com', '414207716@qq.com', '', '2018-11-25 14:47:06', '', '0', 'www.gzp.com');

-- ----------------------------
-- Table structure for gzp_user_role
-- ----------------------------
DROP TABLE IF EXISTS `gzp_user_role`;
CREATE TABLE `gzp_user_role` (
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=FIXED COMMENT='用户-角色中间表';

-- ----------------------------
-- Records of gzp_user_role
-- ----------------------------
INSERT INTO `gzp_user_role` VALUES ('1', '1');
INSERT INTO `gzp_user_role` VALUES ('2', '1');

-- ----------------------------
-- Table structure for gzp_whdw
-- ----------------------------
DROP TABLE IF EXISTS `gzp_whdw`;
CREATE TABLE `gzp_whdw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `dumc` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_whdw
-- ----------------------------
INSERT INTO `gzp_whdw` VALUES ('1', '渤海居民委', '舞蹈队', '14', '2014', '朱晶华');
INSERT INTO `gzp_whdw` VALUES ('2', '渤海居民委', '乐队', '20', '2014', '郑忠平');
INSERT INTO `gzp_whdw` VALUES ('3', '渤海居民委', '语言节目队', '6', '2018', '常义江');
INSERT INTO `gzp_whdw` VALUES ('4', '中革村', '中革村老年合唱团', '30', '2001', '金秀琴');
INSERT INTO `gzp_whdw` VALUES ('5', '中革村', '夕阳红舞蹈团', '10', '2010', '范燕');
INSERT INTO `gzp_whdw` VALUES ('6', '棋盘村', '夕阳红舞蹈队', '50', '2010', '周健');
INSERT INTO `gzp_whdw` VALUES ('7', '棋盘村', '太极队', '50', '2013', '周健');
INSERT INTO `gzp_whdw` VALUES ('8', '夏家河子村', '滨海老年艺术团', '20', '2015', '王越');
INSERT INTO `gzp_whdw` VALUES ('9', '夏家河子村', '夏家河子中老年舞蹈队', '20', '2017', '王越');
INSERT INTO `gzp_whdw` VALUES ('10', '鞍子山村', '三队舞蹈队', '10', '2017', '魏秀娟');
INSERT INTO `gzp_whdw` VALUES ('11', '鞍子山村', '四队舞蹈队', '9', '2015', '孙成翠');
INSERT INTO `gzp_whdw` VALUES ('12', '后革村', '后革村锣鼓队', '74', '2007', '潘玉红');
INSERT INTO `gzp_whdw` VALUES ('13', '羊圈子村', '羊圈子村健身舞蹈队', '40', '2008', '金栋');

-- ----------------------------
-- Table structure for gzp_whhd
-- ----------------------------
DROP TABLE IF EXISTS `gzp_whhd`;
CREATE TABLE `gzp_whhd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `area` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gzp_whhd
-- ----------------------------
INSERT INTO `gzp_whhd` VALUES ('1', '革镇堡街道文化中心', '1', '500');
INSERT INTO `gzp_whhd` VALUES ('2', '中革村', '2', '300');
INSERT INTO `gzp_whhd` VALUES ('3', '鞍子山村', '2', '200');
INSERT INTO `gzp_whhd` VALUES ('4', '后革村', '1', '300');
INSERT INTO `gzp_whhd` VALUES ('5', '棋盘村', '1', '220');
INSERT INTO `gzp_whhd` VALUES ('6', '夏家河子村', '1', '200');
INSERT INTO `gzp_whhd` VALUES ('7', '羊圈子村', '1', '300');
INSERT INTO `gzp_whhd` VALUES ('8', '渤海居民委', '1', '200');

-- ----------------------------
-- Table structure for gzp_whty
-- ----------------------------
DROP TABLE IF EXISTS `gzp_whty`;
CREATE TABLE `gzp_whty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_whty
-- ----------------------------
INSERT INTO `gzp_whty` VALUES ('1', '2017', '足球队', '4', '1');
INSERT INTO `gzp_whty` VALUES ('2', '2017', '门球队', '6', '1');
INSERT INTO `gzp_whty` VALUES ('3', '2017', '舞蹈队', '1', '1');
INSERT INTO `gzp_whty` VALUES ('4', '2017', '兵乓球队', '3', '1');
INSERT INTO `gzp_whty` VALUES ('5', '2017', '羽毛球队', '1', '1');
INSERT INTO `gzp_whty` VALUES ('6', '2016', '足球队', '3', '1');
INSERT INTO `gzp_whty` VALUES ('7', '2016', '门球队', '3', '1');
INSERT INTO `gzp_whty` VALUES ('8', '2016', '舞蹈队', '0', '1');
INSERT INTO `gzp_whty` VALUES ('9', '2016', '兵乓球队', '2', '1');
INSERT INTO `gzp_whty` VALUES ('10', '2016', '羽毛球队', '2', '1');

-- ----------------------------
-- Table structure for gzp_work_details_tmp
-- ----------------------------
DROP TABLE IF EXISTS `gzp_work_details_tmp`;
CREATE TABLE `gzp_work_details_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `year` int(10) unsigned NOT NULL COMMENT '年份',
  `work_id` int(10) unsigned NOT NULL COMMENT '工作事项ID',
  `name` varchar(40) NOT NULL COMMENT '统计名称',
  `value` varchar(15) NOT NULL COMMENT '统计指标',
  `unit` varchar(10) NOT NULL COMMENT '单位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='工作详情表（临时）';

-- ----------------------------
-- Records of gzp_work_details_tmp
-- ----------------------------
INSERT INTO `gzp_work_details_tmp` VALUES ('1', '2017', '1', '挥发性有机物企业治理', '13', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('2', '2017', '2', '中革村', '6', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('3', '2017', '2', '后革村', '11', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('4', '2017', '2', '夏家河子村', '40', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('5', '2017', '3', '10吨以上提标改造', '6', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('6', '2017', '3', '蓝碳锅炉', '24', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('7', '2017', '3', '醇基燃料锅炉', '12', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('8', '2017', '3', '生物质锅炉', '11', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('9', '2017', '3', '电锅炉', '12', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('10', '2017', '3', '燃气锅炉', '1', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('11', '2017', '3', '拆除', '7', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('12', '2017', '4', '水污染', '8', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('13', '2017', '4', '大气污染', '7', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('14', '2017', '4', '噪声问题', '2', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('15', '2017', '4', '垃圾问题', '3', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('16', '2017', '4', '扬尘问题', '3', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('17', '2017', '4', '生态环境问题', '1', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('18', '2017', '4', '其他问题', '3', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('19', '2017', '5', '中革村', '136', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('20', '2017', '5', '后革村', '65', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('21', '2017', '5', '夏家河村', '337', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('22', '2017', '5', '羊圈村', '230', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('23', '2017', '5', '棋盘村', '442', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('24', '2017', '5', '鞍子山村', '453', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('25', '2017', '6', '中革村', '558', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('26', '2017', '6', '后革村', '558', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('27', '2017', '6', '夏家河村', '422', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('28', '2017', '6', '羊圈村', '260', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('29', '2017', '6', '棋盘村', '654', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('30', '2017', '6', '鞍子山村', '275', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('31', '2017', '7', '中革村', '42', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('32', '2017', '7', '后革村', '27', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('33', '2017', '7', '夏家河村', '212', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('34', '2017', '7', '羊圈村', '73', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('35', '2017', '7', '棋盘村', '145', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('36', '2017', '7', '鞍子山村', '197', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('37', '2017', '8', '中革村', '736', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('38', '2017', '8', '后革村', '650', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('39', '2017', '8', '夏家河村', '971', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('40', '2017', '8', '羊圈村', '563', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('41', '2017', '8', '棋盘村', '1241', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('42', '2017', '8', '鞍子山村', '926', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('43', '2017', '9', '水浇地', '37.94', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('44', '2017', '9', '旱地', '316.91', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('45', '2017', '9', '果园', '271.02', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('46', '2017', '9', '有林地', '563.1', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('47', '2017', '9', '其他林地', '334.76', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('48', '2017', '9', '其他草地', '319.7', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('49', '2017', '9', '城市', '14.4', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('50', '2017', '9', '建制镇', '1303', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('51', '2017', '9', '村庄', '884.45', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('52', '2017', '9', '采矿用地', '206.29', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('53', '2017', '9', '风景名胜及特殊用地', '195.76', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('54', '2017', '9', '铁路用地', '58.19', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('55', '2017', '9', '公路用地', '105.16', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('56', '2017', '10', '中革村', '595', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('57', '2017', '10', '后革村', '546', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('58', '2017', '10', '夏家河村', '296', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('59', '2017', '10', '羊圈村', '232', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('60', '2017', '10', '棋盘村', '901', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('61', '2017', '10', '鞍子山村', '322', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('62', '2017', '11', '中革村', '141', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('63', '2017', '11', '后革村', '104', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('64', '2017', '11', '夏家河村', '675', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('65', '2017', '11', '羊圈村', '331', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('66', '2017', '11', '棋盘村', '340', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('67', '2017', '11', '鞍子山村', '604', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('68', '2017', '12', '中革村', '301', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('69', '2017', '12', '后革村', '331', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('70', '2017', '12', '夏家河村', '180', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('71', '2017', '12', '羊圈村', '116', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('72', '2017', '12', '棋盘村', '400', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('73', '2017', '12', '鞍子山村', '119', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('74', '2017', '13', '中革村', '214', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('75', '2017', '13', '后革村', '221', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('76', '2017', '13', '夏家河村', '152', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('77', '2017', '13', '羊圈村', '88', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('78', '2017', '13', '棋盘村', '228', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('79', '2017', '13', '鞍子山村', '52', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('80', '2017', '14', '招源海德公园', '160000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('81', '2017', '14', '万科新都会', '120000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('82', '2017', '14', '中航华府项目', '215365', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('83', '2017', '14', '棋盘新居工程二期', '155000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('84', '2017', '14', '伊电林溪花园', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('85', '2017', '15', '招源海德公园', '40484', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('86', '2017', '15', '万科新都会', '74650', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('87', '2017', '15', '中航华府项目', '112370', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('88', '2017', '15', '棋盘新居工程二期', '119790', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('89', '2017', '15', '伊电林溪花园', '11100', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('90', '2017', '16', '招源海德公园', '16818', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('91', '2017', '16', '万科新都会', '11383', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('92', '2017', '16', '棋盘新居工程二期', '800', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('93', '2017', '16', '伊电林溪花园', '57', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('94', '2017', '17', '限上批发零售企业', '24', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('95', '2017', '18', '限上服务业企业', '13', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('96', '2017', '19', '房地产建筑业企业', '13', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('97', '2017', '20', '一季度', '9039', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('98', '2017', '20', '二季度', '35192', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('99', '2017', '20', '三季度', '65288', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('100', '2017', '20', '四季度', '72631', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('101', '2017', '21', '一季度', '166.1', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('102', '2017', '21', '二季度', '7', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('103', '2017', '21', '三季度', '8.6', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('104', '2017', '21', '四季度', '8.1', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('105', '2017', '22', '大连金途服饰有限公司', '1780', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('106', '2017', '22', '大连锶洋商贸有限公司', '442', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('107', '2017', '22', '大连夏燕加油站', '373', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('108', '2017', '22', '大连齐邦板材有限公司', '231', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('109', '2017', '22', '大连聚隆商贸有限责任公司', '112', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('110', '2018', '23', '2月', '4800', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('111', '2018', '23', '3月', '18000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('112', '2018', '23', '4月', '6000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('113', '2018', '23', '5月', '60000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('114', '2018', '23', '6月', '34000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('115', '2018', '23', '7月', '20000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('116', '2018', '23', '8月', '60000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('117', '2018', '23', '9月', '20000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('118', '2018', '23', '10月', '2400', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('119', '2018', '23', '11月', '2400', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('120', '2018', '24', '1月', '35000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('121', '2018', '24', '2月', '49000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('122', '2018', '24', '3月', '49000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('123', '2018', '24', '4月', '44000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('124', '2018', '24', '5月', '40000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('125', '2018', '24', '6月', '40000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('126', '2018', '24', '7月', '40000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('127', '2018', '24', '8月', '44000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('128', '2018', '24', '9月', '44000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('129', '2018', '24', '10月', '48000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('130', '2018', '24', '11月', '48000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('131', '2018', '24', '12月', '48000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('132', '2018', '25', '1季度', '10000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('133', '2018', '25', '2季度', '29000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('134', '2018', '25', '3季度', '27000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('135', '2018', '25', '4季度', '13000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('136', '2018', '26', '1月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('137', '2018', '26', '2月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('138', '2018', '26', '3月', '16000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('139', '2018', '26', '4月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('140', '2018', '26', '5月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('141', '2018', '26', '6月', '16000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('142', '2018', '26', '7月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('143', '2018', '26', '8月', '17000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('144', '2018', '26', '9月', '16000', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('145', '2017', '27', '房地产开发', '5', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('146', '2017', '27', '工业', '25', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('147', '2017', '27', '建筑安装工程', '8', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('148', '2017', '27', '钢材批发、销售', '13', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('149', '2017', '27', '再生物资回收与批发', '7', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('150', '2017', '27', '成品油零售', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('151', '2017', '27', '食品批发、零售', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('152', '2017', '27', '服装批发、零售', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('153', '2017', '27', '粮食批发、收购', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('154', '2017', '27', '仓储运输物流', '10', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('155', '2017', '27', '殡葬、骨灰存放', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('156', '2017', '27', '高尔夫球场', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('157', '2017', '27', '物业管理', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('158', '2017', '28', '民警', '42', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('159', '2017', '28', '协警', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('160', '2017', '28', '文职警员', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('161', '2017', '28', '农民巡防队伍', '80', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('162', '2017', '28', '志愿者队伍', '103', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('163', '2017', '28', '综治网格长', '30', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('164', '2017', '29', '综治维稳中心', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('165', '2017', '29', '派出所监控中心', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('166', '2017', '29', '边防所监控中心', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('167', '2017', '29', '平安锁具', '200', '余个');
INSERT INTO `gzp_work_details_tmp` VALUES ('168', '2017', '29', '微视频', '128', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('169', '2017', '29', '视频监控探头', '290', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('170', '2017', '30', '标准警务室', '5', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('171', '2017', '30', '精品样本警务室', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('172', '2017', '31', '常住人口', '17708', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('173', '2017', '31', '流动人口', '10892', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('174', '2017', '31', '精神智障人员', '25', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('175', '2017', '31', '社区矫正人员', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('176', '2017', '31', '两劳释解人员', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('177', '2017', '31', '“610”办公室管控人员', '20', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('178', '2017', '32', '小学', '4', '所');
INSERT INTO `gzp_work_details_tmp` VALUES ('179', '2017', '32', '中学', '1', '所');
INSERT INTO `gzp_work_details_tmp` VALUES ('180', '2017', '32', '大学', '1', '所');
INSERT INTO `gzp_work_details_tmp` VALUES ('181', '2017', '33', '棋盘子村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('182', '2017', '33', '羊圈子村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('183', '2017', '33', '中革村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('184', '2017', '33', '后革村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('185', '2017', '33', '夏家河子村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('186', '2017', '33', '鞍子山村', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('187', '2017', '34', '命案数', '0', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('188', '2017', '34', '刑事案件发案数', '284', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('189', '2017', '34', '刑事查破数', '98', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('190', '2017', '34', '治安发案数', '1270', '起');
INSERT INTO `gzp_work_details_tmp` VALUES ('191', '2017', '34', '治安发案数同比（下降）', '3.3', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('192', '2017', '34', '查破数同比（上升）', '2.3', '%');
INSERT INTO `gzp_work_details_tmp` VALUES ('193', '2017', '35', '学前教育', '179.9', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('194', '2017', '35', '教师教育', '52', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('195', '2017', '35', '社区教育', '120', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('196', '2017', '35', '办学设施和校舍维修改造', '243', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('197', '2017', '35', '生均公用经费', '430', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('198', '2017', '35', '计算机维护专项资金', '240', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('199', '2017', '35', '其他', '591.14', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('200', '2017', '36', '社会力量办学', '30', '所');
INSERT INTO `gzp_work_details_tmp` VALUES ('201', '2017', '37', '第六十六中学', '1007', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('202', '2017', '37', '革镇堡中心小学', '1097', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('203', '2017', '37', '后革小学', '763', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('204', '2017', '37', '夏家河子小学', '208', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('205', '2017', '37', '鞍子山小学', '16', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('206', '2017', '37', '棋盘子小学', '233', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('207', '2017', '38', '中革村', '11', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('208', '2017', '38', '后革村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('209', '2017', '38', '羊圈子村', '9', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('210', '2017', '38', '夏家河子村', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('211', '2017', '38', '棋盘村', '16', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('212', '2017', '38', '非本街道户口', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('213', '2017', '39', '第六十六中学', '9778', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('214', '2017', '39', '革镇堡中心小学', '3777', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('215', '2017', '39', '后革小学', '5456', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('216', '2017', '39', '棋盘子小学', '3518', '平（停用封存）');
INSERT INTO `gzp_work_details_tmp` VALUES ('217', '2017', '39', '夏家河子小学', '1970', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('218', '2017', '39', '鞍子山小学', '2523', '平（停用封存）');
INSERT INTO `gzp_work_details_tmp` VALUES ('219', '2017', '40', '第六十六中学', '14490', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('220', '2017', '40', '革镇堡中心小学', '15075', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('221', '2017', '40', '后革小学', '10800', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('222', '2017', '40', '棋盘子小学', '2728', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('223', '2017', '40', '夏家河子小学', '6000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('224', '2017', '40', '鞍子山小学', '1500', '平（停用封存）');
INSERT INTO `gzp_work_details_tmp` VALUES ('225', '2017', '41', '第六十六中学', '86', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('226', '2017', '41', '革镇堡中心小学', '60', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('227', '2017', '41', '后革小学', '42', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('228', '2017', '41', '棋盘子小学', '20', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('229', '2017', '41', '夏家河子小学', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('230', '2017', '41', '鞍子山小学', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('231', '2017', '42', '中革村幼儿园', '23', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('232', '2017', '42', '海华幼儿园', '22', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('233', '2017', '42', '金凤凰幼儿园', '29', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('234', '2017', '42', '夏家河幼儿园', '13', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('235', '2017', '42', '鋆百合幼儿园', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('236', '2017', '42', '棋盘幼儿园', '13', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('237', '2017', '42', '心蕊幼儿园', '27', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('238', '2017', '42', '春阳幼儿园', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('239', '2017', '42', '祈福娃娃幼儿园', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('240', '2017', '42', '儿童之家幼儿园', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('241', '2017', '43', '国家级公路', '1', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('242', '2017', '43', '县级公路', '6', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('243', '2017', '43', '乡级公路', '8', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('244', '2017', '43', '村路', '318', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('245', '2017', '44', '中革村', '33', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('246', '2017', '44', '后革村', '15', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('247', '2017', '44', '羊圈子村', '6', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('248', '2017', '44', '夏家河子村', '3', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('249', '2017', '44', '棋盘村', '47', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('250', '2017', '44', '渤海居民委', '5', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('251', '2017', '45', '中革物业', '200000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('252', '2017', '45', '绿能供热', '230000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('253', '2017', '45', '金诚供暖', '110000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('254', '2017', '45', '金诺供暖', '13000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('255', '2017', '45', '夏家河小区供暖', '10000', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('256', '2017', '46', '中革物业', '1400', '余户');
INSERT INTO `gzp_work_details_tmp` VALUES ('257', '2017', '46', '绿能供热', '2700', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('258', '2017', '46', '金诚供暖', '1516', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('259', '2017', '46', '金诺供暖', '168', '余户');
INSERT INTO `gzp_work_details_tmp` VALUES ('260', '2017', '46', '夏家河小区供暖', '130', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('261', '2017', '47', '执法人员', '3', '名');
INSERT INTO `gzp_work_details_tmp` VALUES ('262', '2017', '47', '协勤', '22', '名');
INSERT INTO `gzp_work_details_tmp` VALUES ('263', '2017', '47', '后勤辅助人员', '3', '名');
INSERT INTO `gzp_work_details_tmp` VALUES ('264', '2017', '48', '街道办事处投资', '645', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('265', '2017', '48', '各村居委会投资', '308', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('266', '2017', '49', '棋盘村', '30', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('267', '2017', '49', '羊圈子村', '19', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('268', '2017', '49', '后革村', '27', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('269', '2017', '49', '中革村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('270', '2017', '49', '夏家河子村', '11', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('271', '2017', '49', '鞍子山村', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('272', '2017', '49', '渤海居民委', '1', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('273', '2017', '49', '斌海清洁公司', '53', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('274', '2017', '50', '果皮箱', '24', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('275', '2017', '50', '垃圾箱', '33', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('276', '2017', '50', '垃圾槽', '248', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('277', '2017', '51', '垃圾收集车辆', '23', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('278', '2017', '51', '洗扫车', '1', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('279', '2017', '51', '清洗车', '1', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('280', '2017', '51', '区间收集车辆', '14', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('281', '2017', '51', '扫路机', '1', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('282', '2017', '51', '城肥专用车', '1', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('283', '2017', '51', '其他车辆', '31', '辆');
INSERT INTO `gzp_work_details_tmp` VALUES ('284', '2017', '52', '中革物业管理有限公司', '1425', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('285', '2017', '52', '中航物业管理有限公司大连分公司', '1618', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('286', '2017', '52', '大连开成物业', '0', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('287', '2017', '53', '夏家河子村', '220', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('288', '2017', '53', '羊圈子村', '8', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('289', '2017', '53', '中革村', '67', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('290', '2017', '53', '后革村', '8', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('291', '2017', '53', '鞍子山村', '2', '处');
INSERT INTO `gzp_work_details_tmp` VALUES ('292', '2017', '54', '夏家河子村', '361564', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('293', '2017', '54', '羊圈子村', '255', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('294', '2017', '54', '中革村', '1534', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('295', '2017', '54', '后革村', '830', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('296', '2017', '54', '鞍子山村', '4664.88', '平');
INSERT INTO `gzp_work_details_tmp` VALUES ('297', '2017', '55', '中革村', '4812', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('298', '2017', '55', '后革村', '2994', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('299', '2017', '55', '棋盘村', '3352', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('300', '2017', '55', '羊圈村', '1365', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('301', '2017', '55', '夏家河村', '2631', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('302', '2017', '55', '鞍子山村', '2022', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('303', '2017', '55', '渤海居民委', '664', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('304', '2017', '56', '中革村', '5639', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('305', '2017', '56', '后革村', '3304', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('306', '2017', '56', '棋盘村', '4299', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('307', '2017', '56', '羊圈村', '1541', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('308', '2017', '56', '夏家河村', '3077', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('309', '2017', '56', '鞍子山村', '2204', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('310', '2017', '56', '渤海居民委', '664', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('311', '2017', '57', '中革村', '623', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('312', '2017', '57', '后革村', '322', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('313', '2017', '57', '棋盘村', '516', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('314', '2017', '57', '羊圈村', '280', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('315', '2017', '57', '夏家河村', '430', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('316', '2017', '57', '鞍子山村', '237', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('317', '2017', '57', '渤海居民委', '219', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('318', '2017', '58', '中革村', '22', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('319', '2017', '58', '后革村', '11', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('320', '2017', '58', '棋盘村', '17', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('321', '2017', '58', '羊圈村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('322', '2017', '58', '夏家河村', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('323', '2017', '58', '鞍子山村', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('324', '2017', '58', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('325', '2017', '59', '中革村', '13', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('326', '2017', '59', '后革村', '11', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('327', '2017', '59', '棋盘村', '31', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('328', '2017', '59', '羊圈村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('329', '2017', '59', '夏家河村', '20', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('330', '2017', '59', '鞍子山村', '16', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('331', '2017', '59', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('332', '2017', '60', '中革村', '28', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('333', '2017', '60', '后革村', '16', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('334', '2017', '60', '棋盘村', '22', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('335', '2017', '60', '羊圈村', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('336', '2017', '60', '夏家河村', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('337', '2017', '60', '鞍子山村', '16', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('338', '2017', '60', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('339', '2017', '61', '中革村', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('340', '2017', '61', '后革村', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('341', '2017', '61', '棋盘村', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('342', '2017', '61', '羊圈村', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('343', '2017', '61', '夏家河村', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('344', '2017', '61', '鞍子山村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('345', '2017', '61', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('346', '2017', '62', '中革村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('347', '2017', '62', '后革村', '2', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('348', '2017', '62', '棋盘村', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('349', '2017', '62', '羊圈村', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('350', '2017', '62', '夏家河村', '1', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('351', '2017', '62', '鞍子山村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('352', '2017', '62', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('353', '2017', '63', '中革村', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('354', '2017', '63', '后革村', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('355', '2017', '63', '棋盘村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('356', '2017', '63', '羊圈村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('357', '2017', '63', '夏家河村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('358', '2017', '63', '鞍子山村', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('359', '2017', '63', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('360', '2017', '64', '中革村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('361', '2017', '64', '后革村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('362', '2017', '64', '棋盘村', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('363', '2017', '64', '羊圈村', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('364', '2017', '64', '夏家河村', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('365', '2017', '64', '鞍子山村', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('366', '2017', '64', '渤海居民委', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('367', '2017', '65', '中革村', '57600', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('368', '2017', '65', '后革村', '50400', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('369', '2017', '65', '棋盘村', '21600', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('370', '2017', '65', '羊圈村', '21600', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('371', '2017', '65', '夏家河村', '21600', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('372', '2017', '65', '鞍子山村', '28800', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('373', '2017', '66', '中革村', '16200', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('374', '2017', '66', '后革村', '27000', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('375', '2017', '66', '棋盘村', '32400', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('376', '2017', '66', '夏家河村', '21600', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('377', '2017', '66', '鞍子山村', '16200', '元');
INSERT INTO `gzp_work_details_tmp` VALUES ('378', '2017', '67', '功能科室', '13', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('379', '2017', '67', '行政科室', '4', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('380', '2017', '68', '执业医师', '29', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('381', '2017', '68', '执业护士', '17', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('382', '2017', '68', '管理及其他', '24', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('383', '2017', '69', 'DR机', '1', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('384', '2017', '69', '彩超', '1', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('385', '2017', '69', '全自动生化仪', '1', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('386', '2017', '69', '除颤仪', '1', '台');
INSERT INTO `gzp_work_details_tmp` VALUES ('387', '2017', '70', '床位', '60', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('388', '2017', '71', '羊圈村社区卫生服务站', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('389', '2017', '71', '夏家河村社区卫生服务站', '2', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('390', '2017', '71', '鞍子山村社区卫生服务站', '2', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('391', '2017', '71', '棋盘村社区卫生服务站', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('392', '2017', '71', '中革村社区卫生服务站（革镇堡街道预防接种儿童保健中心）', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('393', '2017', '71', '后革村社区卫生服务站', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('394', '2017', '72', '羊圈村社区卫生服务站', '1341', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('395', '2017', '72', '夏家河村社区卫生服务站', '2632', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('396', '2017', '72', '鞍子山村社区卫生服务站', '1996', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('397', '2017', '72', '棋盘村社区卫生服务站', '3309', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('398', '2017', '72', '中革村社区卫生服务站（革镇堡街道预防接种儿童保健中心）', '4797', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('399', '2017', '72', '后革村社区卫生服务站', '2716', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('400', '2017', '73', '新增设备', '59.8', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('401', '2017', '73', '医院建设', '46.25', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('402', '2017', '73', '补助', '48', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('403', '2017', '73', '一体化项目（含革镇堡街道预防接种儿童保健中心项目资金）', '155', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('404', '2017', '74', '金牛山庄休闲养老福利院', '36', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('405', '2017', '74', '革镇堡蓝天养老院', '169', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('406', '2017', '74', '阳光养老中心', '37', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('407', '2017', '74', '春阳养老院', '46', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('408', '2017', '74', '革镇堡镇敬老院', '120', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('409', '2017', '74', '敬爱之乡养老院', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('410', '2017', '75', '棋盘村', '305.2', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('411', '2017', '75', '羊圈村', '127.6', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('412', '2017', '75', '后革村', '75', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('413', '2017', '75', '中革村', '42.4', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('414', '2017', '75', '夏家河子村', '204.1', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('415', '2017', '75', '鞍子山村', '414', '公顷');
INSERT INTO `gzp_work_details_tmp` VALUES ('416', '2017', '76', '棋盘村', '777', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('417', '2017', '76', '夏家河子村', '1001', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('418', '2017', '76', '羊圈子村', '98', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('419', '2017', '77', '鞍子山墓园', '3375', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('420', '2017', '77', '后革村墓园', '2317', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('421', '2017', '77', '棋盘村墓园', '329', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('422', '2017', '77', '夏家河墓园', '4490', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('423', '2017', '77', '羊圈子村墓园', '7846', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('424', '2017', '77', '中革村墓园', '5010', '盔');
INSERT INTO `gzp_work_details_tmp` VALUES ('425', '2017', '78', '水库工程', '1', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('426', '2017', '78', '塘坝工程', '3', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('427', '2017', '78', '大口井工程', '12', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('428', '2017', '78', '水源配套工程', '5', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('429', '2017', '78', '机电井工程', '32', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('430', '2017', '78', '方塘工程', '4', '项');
INSERT INTO `gzp_work_details_tmp` VALUES ('431', '2017', '79', '中革村', '103', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('432', '2017', '79', '后革村', '71', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('433', '2017', '79', '鞍子山村', '47', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('434', '2017', '79', '夏家河子村', '61', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('435', '2017', '79', '棋盘村', '101', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('436', '2017', '79', '羊圈子', '39', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('437', '2017', '80', '中革村', '97', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('438', '2017', '80', '后革村', '67', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('439', '2017', '80', '鞍子山村', '47', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('440', '2017', '80', '夏家河子村', '57', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('441', '2017', '80', '棋盘村', '95', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('442', '2017', '80', '羊圈子村', '36', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('443', '2017', '81', '渤海社区', '5', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('444', '2017', '81', '中革村', '20', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('445', '2017', '81', '后革村', '27', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('446', '2017', '81', '夏家河村', '11', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('447', '2017', '81', '羊圈村', '5', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('448', '2017', '81', '棋盘村', '23', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('449', '2017', '81', '鞍子山村', '14', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('450', '2017', '82', '渤海社区', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('451', '2017', '82', '中革村', '27', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('452', '2017', '82', '后革村', '34', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('453', '2017', '82', '夏家河村', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('454', '2017', '82', '羊圈村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('455', '2017', '82', '棋盘村', '39', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('456', '2017', '82', '鞍子山村', '19', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('457', '2017', '83', '渤海社区', '4', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('458', '2017', '83', '中革村', '261', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('459', '2014', '83', '后革村', '167', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('460', '2017', '83', '夏家河村', '36', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('461', '2014', '83', '羊圈村', '12', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('462', '2017', '83', '棋盘村', '115', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('463', '2017', '83', '鞍子山村', '75', '户');
INSERT INTO `gzp_work_details_tmp` VALUES ('464', '2017', '84', '渤海社区', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('465', '2017', '84', '中革村', '261', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('466', '2017', '84', '后革村', '167', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('467', '2017', '84', '夏家河村', '36', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('468', '2017', '84', '羊圈村', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('469', '2017', '84', '棋盘村', '115', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('470', '2017', '84', '鞍子山村', '75', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('471', '2017', '85', '渤海社区', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('472', '2017', '85', '中革村', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('473', '2017', '85', '后革村', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('474', '2017', '85', '夏家河村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('475', '2017', '85', '羊圈村', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('476', '2017', '85', '棋盘村', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('477', '2017', '85', '鞍子山村', '7', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('478', '2017', '86', '革镇堡街道棋盘村居家养老服务中心', '1700', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('479', '2017', '86', '革镇堡街道夏家河子居家养老服务中心', '980', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('480', '2017', '87', '革镇堡敬老院', '200', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('481', '2017', '87', '大连铁路疗养院老年公寓', '81', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('482', '2017', '87', '大连海滨托老福利院', '280', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('483', '2017', '87', '大连棋盘久久山庄养老院', '276', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('484', '2017', '87', '阳光养老中心', '280', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('485', '2017', '87', '依海居老年人公寓', '360', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('486', '2017', '87', '革镇堡蓝天养老院', '200', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('487', '2017', '87', '金牛山庄休闲养老院', '100', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('488', '2017', '87', '盛程养老休闲山庄', '80', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('489', '2017', '87', '敬爱之乡养老院', '54', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('490', '2017', '87', '春阳养老院', '50', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('491', '2017', '87', '隆达养老院', '100', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('492', '2017', '87', '春阳老年服务中心', '300', '张');
INSERT INTO `gzp_work_details_tmp` VALUES ('493', '2017', '88', '革镇堡敬老院', '120', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('494', '2017', '88', '大连铁路疗养院老年公寓', '14', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('495', '2017', '88', '大连海滨托老福利院', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('496', '2017', '88', '大连棋盘久久山庄养老院', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('497', '2017', '88', '阳光养老中心', '37', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('498', '2017', '88', '依海居老年人公寓', '230', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('499', '2017', '88', '革镇堡蓝天养老院', '169', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('500', '2017', '88', '金牛山庄休闲养老院', '36', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('501', '2017', '88', '盛程养老休闲山庄', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('502', '2017', '88', '敬爱之乡养老院', '10', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('503', '2017', '88', '春阳养老院', '46', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('504', '2017', '88', '隆达养老院', '75', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('505', '2017', '88', '春阳老年服务中心', '170', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('506', '2017', '89', '中革村', '4120', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('507', '2017', '89', '后革村', '2963', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('508', '2017', '89', '夏家河子村', '2623', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('509', '2017', '89', '羊圈子村', '1349', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('510', '2017', '89', '棋盘村', '3346', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('511', '2017', '89', '鞍子山村', '2022', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('512', '2017', '90', '满族', '298', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('513', '2017', '90', '壮族', '1', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('514', '2017', '90', '蒙古族', '39', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('515', '2017', '90', '回族', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('516', '2017', '90', '朝鲜族', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('517', '2017', '90', '锡伯族', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('518', '2017', '90', '达翰尔', '0', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('519', '2017', '91', '足球队', '4', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('520', '2017', '91', '门球队', '6', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('521', '2017', '91', '舞蹈队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('522', '2017', '91', '乒乓球队', '3', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('523', '2017', '91', '羽毛球队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('524', '2017', '92', '羊圈子村', '6400', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('525', '2017', '92', '棋盘村', '10800', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('526', '2017', '92', '鞍子山村', '2000', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('527', '2017', '92', '夏家河村', '850', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('528', '2017', '92', '中革村', '400', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('529', '2017', '92', '后革村', '400', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('530', '2017', '93', '羊圈子村', '38', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('531', '2017', '93', '棋盘村', '88', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('532', '2017', '93', '夏家河子村', '2', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('533', '2017', '93', '中革村', '25', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('534', '2017', '93', '后革村', '3', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('535', '2017', '93', '渤海居民委', '9', '条');
INSERT INTO `gzp_work_details_tmp` VALUES ('536', '2017', '94', '舞蹈队', '7', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('537', '2017', '94', '乐队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('538', '2017', '94', '语言节目队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('539', '2017', '94', '合唱团', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('540', '2017', '94', '太极队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('541', '2017', '94', '艺术团', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('542', '2017', '94', '锣鼓队', '1', '支');
INSERT INTO `gzp_work_details_tmp` VALUES ('543', '2017', '95', '中革村', '20', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('544', '2017', '95', '后革村', '20', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('545', '2017', '95', '棋盘村', '202', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('546', '2017', '95', '夏家河子村', '40', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('547', '2017', '95', '羊圈子村', '300', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('548', '2017', '95', '鞍子山村', '100', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('549', '2017', '95', '渤海居民委', '200', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('550', '2017', '96', '中革村', '3358', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('551', '2017', '96', '后革村', '2363', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('552', '2017', '96', '棋盘村', '2386', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('553', '2017', '96', '夏家河子村', '3000', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('554', '2017', '96', '羊圈子村', '4482', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('555', '2017', '96', '鞍子山村', '884', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('556', '2017', '96', '渤海居民委', '2600', '册');
INSERT INTO `gzp_work_details_tmp` VALUES ('557', '2017', '97', '中革村', '500', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('558', '2017', '97', '鞍子山村', '200', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('559', '2017', '97', '后革村', '300', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('560', '2017', '97', '棋盘村', '220', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('561', '2017', '97', '夏家河子村', '200', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('562', '2017', '97', '羊圈子村', '300', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('563', '2017', '97', '渤海居民委', '200', '平米');
INSERT INTO `gzp_work_details_tmp` VALUES ('564', '2018', '98', '1月', '4497', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('565', '2018', '98', '2月', '4518', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('566', '2018', '98', '3月', '4558', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('567', '2018', '99', '1月', '2482', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('568', '2018', '99', '2月', '2474', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('569', '2018', '99', '3月', '2462', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('570', '2018', '100', '1月', '64', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('571', '2018', '100', '2月', '121', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('572', '2018', '100', '3月', '192', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('573', '2018', '101', '1月', '271', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('574', '2018', '101', '2月', '133', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('575', '2018', '101', '3月', '127', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('576', '2017', '102', '机关事业单位', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('577', '2017', '102', '农村', '6', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('578', '2017', '102', '非公企', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('579', '2017', '103', '机关事业单位', '28', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('580', '2017', '103', '农村', '320', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('581', '2017', '103', '非公企', '34', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('582', '2017', '104', '机关事业单位', '5', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('583', '2017', '104', '农村', '24', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('584', '2017', '104', '非公企', '15', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('585', '2017', '105', '机关事业单位', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('586', '2017', '105', '农村', '6', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('587', '2017', '105', '非公企', '11', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('588', '2017', '106', '机关事业单位', '6', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('589', '2017', '106', '农村', '19', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('590', '2017', '106', '非公企', '46', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('591', '2017', '107', '机关事业单位', '1', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('592', '2017', '107', '农村', '8', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('593', '2017', '107', '非公企', '11', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('594', '2017', '108', '机关事业单位', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('595', '2017', '108', '农村', '6', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('596', '2017', '108', '非公企', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('597', '2017', '109', '机关事业单位', '85', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('598', '2017', '109', '农村', '580', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('599', '2017', '109', '非公企', '67', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('600', '2017', '110', '机关事业单位', '43', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('601', '2017', '110', '农村', '70', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('602', '2017', '110', '非公企', '22', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('603', '2017', '111', '机关宣讲团', '12', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('604', '2017', '111', '羊圈子村宣讲团', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('605', '2017', '111', '中革村宣讲团', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('606', '2017', '111', '鞍子山村宣讲团', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('607', '2017', '111', '棋盘村宣讲团', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('608', '2017', '111', '夏家河子村宣讲团', '3', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('609', '2017', '111', '后革村宣讲团', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('610', '2017', '111', '外请宣传员', '4', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('611', '2017', '112', '男', '805', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('612', '2017', '112', '女', '293', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('613', '2017', '113', '60岁以下', '613', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('614', '2017', '113', '60及60岁以上', '485', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('615', '2017', '114', '大专以下', '665', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('616', '2017', '114', '大专及以上', '433', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('617', '2017', '115', '党委', '8', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('618', '2017', '115', '党总支', '1', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('619', '2017', '115', '党支部', '81', '个');
INSERT INTO `gzp_work_details_tmp` VALUES ('620', '2018', '116', '1月', '5814', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('621', '2018', '116', '2月', '1801', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('622', '2018', '116', '3月', '2768', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('623', '2018', '117', '1月', '21673', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('624', '2018', '117', '2月', '27743', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('625', '2018', '117', '3月', '36771', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('626', '2017', '118', '大连华锐重工集团股份有限公司', '28482', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('627', '2017', '118', '葛洲坝环嘉（大连）再生资源有限公司 ', '26484', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('628', '2017', '118', '环嘉集团及相关企业', '20905', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('629', '2017', '118', '大连新都会置业有限公司', '4802', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('630', '2017', '118', '大连发电有限责任公司 ', '5572', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('631', '2017', '118', '大连航逸房地产开发有限公司', '3266', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('632', '2017', '118', '大连小野田水泥有限公司 ', '1244', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('633', '2017', '118', '大连市建设控股有限公司', '770', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('634', '2017', '118', '大连造船厂工具实业公司 ', '1071', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('635', '2017', '118', '大连悦达电力有限公司 ', '821', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('636', '2017', '118', '大连华锐重工铸钢有限公司', '689', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('637', '2017', '118', '大连东泰有机废物处理有限公司', '984', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('638', '2017', '118', '中国外运辽宁储运公司', '271', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('639', '2017', '118', '大连市妇女儿童医疗中心', '668', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('640', '2017', '118', '大连职业技术学院', '412', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('641', '2017', '118', '大连金鹏混凝土有限公司 ', '348', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('642', '2017', '118', '中国烟草总公司大连市公司', '161', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('643', '2017', '118', '大连中革第二储运仓库有限公司', '164', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('644', '2017', '118', '大连招源房地产有限公司', '162', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('645', '2017', '118', '大连中化诚信仓储有限公司', '120', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('646', '2017', '118', '大连君发混凝土有限公司', '174', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('647', '2017', '118', '大连鹏都贸易有限公司', '170', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('648', '2017', '118', '大连赛楠物流有限公司', '104', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('649', '2017', '119', '大连华锐重工集团股份有限公司', '7104', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('650', '2017', '119', '葛洲坝环嘉（大连）再生资源有限公司 ', '6528', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('651', '2017', '119', '环嘉集团及相关企业', '5825', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('652', '2017', '119', '大连新都会置业有限公司', '2253', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('653', '2017', '119', '大连发电有限责任公司 ', '1468', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('654', '2017', '119', '大连航逸房地产开发有限公司', '1351', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('655', '2017', '119', '大连小野田水泥有限公司 ', '485', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('656', '2017', '119', '大连市建设控股有限公司', '311', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('657', '2017', '119', '大连造船厂工具实业公司 ', '247', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('658', '2017', '119', '大连悦达电力有限公司 ', '204', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('659', '2017', '119', '大连华锐重工铸钢有限公司', '169', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('660', '2017', '119', '大连东泰有机废物处理有限公司', '139', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('661', '2017', '119', '中国外运辽宁储运公司', '134', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('662', '2017', '119', '大连市妇女儿童医疗中心', '128', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('663', '2017', '119', '大连职业技术学院', '99', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('664', '2017', '119', '大连金鹏混凝土有限公司 ', '92', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('665', '2017', '119', '中国烟草总公司大连市公司', '88', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('666', '2017', '119', '大连中革第二储运仓库有限公司', '78', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('667', '2017', '119', '大连招源房地产有限公司', '65', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('668', '2017', '119', '大连中化诚信仓储有限公司', '65', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('669', '2017', '119', '大连君发混凝土有限公司', '60', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('670', '2017', '119', '大连鹏都贸易有限公司', '56', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('671', '2017', '119', '大连赛楠物流有限公司', '52', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('672', '2017', '120', '2013年', '9760', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('673', '2017', '120', '2014年', '5140', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('674', '2017', '120', '2015年', '7202', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('675', '2017', '120', '2016年', '11357', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('676', '2017', '120', '2017年', '11357', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('677', '2017', '121', '2013年', '42159', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('678', '2017', '121', '2014年', '24421', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('679', '2017', '121', '2015年', '14968', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('680', '2017', '121', '2016年', '10161', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('681', '2017', '121', '2017年', '8187', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('682', '2017', '122', '2013年', '51919', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('683', '2017', '122', '2014年', '29561', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('684', '2017', '122', '2015年', '22170', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('685', '2017', '122', '2016年', '21518', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('686', '2017', '122', '2017年', '30172', '万元');
INSERT INTO `gzp_work_details_tmp` VALUES ('687', '2016', '1', '挥发性有机物企业治理', '17', '家');
INSERT INTO `gzp_work_details_tmp` VALUES ('697', '2016', '114', '大专以下', '44', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('698', '2016', '114', '大专及以上', '55', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('699', '2015', '114', '大专以下', '99', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('700', '2015', '114', '大专及以上', '88', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('701', '2014', '114', '大专以下', '99', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('702', '2014', '114', '大专及以上', '88', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('703', '2013', '114', '大专以下', '32', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('704', '2013', '114', '大专及以上', '65', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('705', '2018', '114', '大专以下', '45', '人');
INSERT INTO `gzp_work_details_tmp` VALUES ('706', '2018', '114', '大专及以上', '99', '人');

-- ----------------------------
-- Table structure for gzp_work_tmp
-- ----------------------------
DROP TABLE IF EXISTS `gzp_work_tmp`;
CREATE TABLE `gzp_work_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID，自增',
  `name` varchar(100) NOT NULL COMMENT '工作名称',
  `department_id` int(10) unsigned NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='各项工作的目录表（临时）';

-- ----------------------------
-- Records of gzp_work_tmp
-- ----------------------------
INSERT INTO `gzp_work_tmp` VALUES ('1', '挥发性有机物企业治理工作情况', '3');
INSERT INTO `gzp_work_tmp` VALUES ('2', '砬夏河沿途排污口情况', '3');
INSERT INTO `gzp_work_tmp` VALUES ('3', '燃煤锅炉整治情况', '3');
INSERT INTO `gzp_work_tmp` VALUES ('4', '中央环保督察信访案件销号情况', '3');
INSERT INTO `gzp_work_tmp` VALUES ('5', '革镇堡土地按权属面积汇总（农用地）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('6', '革镇堡土地按权属面积汇总（建设用地）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('7', '革镇堡土地按权属面积汇总（未利用地）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('8', '革镇堡土地按权属面积汇总（总计）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('9', '革镇堡地类统计（合计）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('10', '革镇堡街道按规划面积统计（符合规划）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('11', '革镇堡街道按规划面积统计（不符合规划）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('12', '革镇堡国有建设用地统计（已征地或有老证）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('13', '革镇堡国有建设用地统计（已发证）', '3');
INSERT INTO `gzp_work_tmp` VALUES ('14', '在库项目投资完成情况（计划总投资）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('15', '在库项目投资完成情况（自开始累计投资）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('16', '在库项目投资完成情况（本年完成投资）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('17', '限上批发零售企业', '5');
INSERT INTO `gzp_work_tmp` VALUES ('18', '限上服务业企业', '5');
INSERT INTO `gzp_work_tmp` VALUES ('19', '房地产建筑业企业', '5');
INSERT INTO `gzp_work_tmp` VALUES ('20', '社会消费品零售总额（完成额）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('21', '社会消费品零售总额（同比增速）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('22', '限上社会消费品零售额企业排名（本年一季度）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('23', '全街主要经济指标完成情况（固投预计完成）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('24', '全街主要经济指标完成情况（规上工业产值预计完成）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('25', '全街主要经济指标完成情况（社会零售品销售额预计完成）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('26', '全街主要经济指标完成情况（内资预计完成）', '5');
INSERT INTO `gzp_work_tmp` VALUES ('27', '在库房地产、工业、商贸、仓储服务业企业类别', '5');
INSERT INTO `gzp_work_tmp` VALUES ('28', '综治办社会治安防控体系建设工作基础数据（人防体系）', '10');
INSERT INTO `gzp_work_tmp` VALUES ('29', '综治办社会治安防控体系建设工作基础数据（技防体系）', '10');
INSERT INTO `gzp_work_tmp` VALUES ('30', '综治办社会治安防控体系建设工作基础数据（物防体系）', '10');
INSERT INTO `gzp_work_tmp` VALUES ('31', '综治办特殊人群管理工作数据', '10');
INSERT INTO `gzp_work_tmp` VALUES ('32', '综治办校园安全管理工作数据', '10');
INSERT INTO `gzp_work_tmp` VALUES ('33', '综治办铁路护路队伍数据', '10');
INSERT INTO `gzp_work_tmp` VALUES ('34', '综治办各类治安案件数据', '10');
INSERT INTO `gzp_work_tmp` VALUES ('35', '教育专项经费统计', '1');
INSERT INTO `gzp_work_tmp` VALUES ('36', '社会力量办学情况', '1');
INSERT INTO `gzp_work_tmp` VALUES ('37', '在校生基本情况', '1');
INSERT INTO `gzp_work_tmp` VALUES ('38', '农村非公办教师养老补助发放情况', '1');
INSERT INTO `gzp_work_tmp` VALUES ('39', '中小学校舍、资源情况（教学楼）', '1');
INSERT INTO `gzp_work_tmp` VALUES ('40', '中小学校舍、资源情况（操场）', '1');
INSERT INTO `gzp_work_tmp` VALUES ('41', '学校在编教师情况', '1');
INSERT INTO `gzp_work_tmp` VALUES ('42', '各幼儿园教职工情况', '1');
INSERT INTO `gzp_work_tmp` VALUES ('43', '革镇堡街道路街情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('44', '废品收购站统计情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('45', '辖区供热企业（供热面积）', '2');
INSERT INTO `gzp_work_tmp` VALUES ('46', '辖区供热企业（供热户数）', '2');
INSERT INTO `gzp_work_tmp` VALUES ('47', '执法大队人员基本情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('48', '全街扫保管理费用', '2');
INSERT INTO `gzp_work_tmp` VALUES ('49', '街道环卫人员情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('50', '果皮箱、垃圾箱、垃圾槽数量', '2');
INSERT INTO `gzp_work_tmp` VALUES ('51', '街道环卫车辆情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('52', '街道物业管理项目基本情况', '2');
INSERT INTO `gzp_work_tmp` VALUES ('53', '违建情况统计（数量）', '2');
INSERT INTO `gzp_work_tmp` VALUES ('54', '违建情况统计（占地面积）', '2');
INSERT INTO `gzp_work_tmp` VALUES ('55', '计划生育基础数据（户籍人口数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('56', '计划生育基础数据（常住人口数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('57', '计划生育基础数据（流动人口数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('58', '计划生育基础数据（出生人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('59', '计划生育基础数据（死亡人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('60', '计划生育基础数据（新婚人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('61', '计划生育基础数据（办理一孩指标数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('62', '计划生育基础数据（办理二孩指标数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('63', '计划生育基础数据（失独家庭人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('64', '计划生育基础数据（伤残家庭人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('65', '计划生育基础数据（失独家庭补助）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('66', '计划生育基础数据（伤残家庭补助）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('67', '革镇堡街道地区医院基本情况（科室）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('68', '革镇堡街道地区医院基本情况（医资力量）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('69', '革镇堡街道地区医院基本情况（主要设备）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('70', '革镇堡街道地区医院基本情况（床位）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('71', '街道卫生一体化基本情况（医资力量）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('72', '街道卫生一体化基本情况（受众人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('73', '革镇堡街道地区医院及卫生一体化项目投入资金情况', '9');
INSERT INTO `gzp_work_tmp` VALUES ('74', '革镇堡街道医养结合情况（受众人数）', '9');
INSERT INTO `gzp_work_tmp` VALUES ('75', '革镇堡街道林地情况', '16');
INSERT INTO `gzp_work_tmp` VALUES ('76', '革镇堡街道散坟情况', '16');
INSERT INTO `gzp_work_tmp` VALUES ('77', '革镇堡街道墓园情况', '16');
INSERT INTO `gzp_work_tmp` VALUES ('78', '革镇堡街道小型水利工程', '16');
INSERT INTO `gzp_work_tmp` VALUES ('79', '残疾人情况（人数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('80', '残疾人情况（户数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('81', '低保家庭情况数据（户数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('82', '低保家庭情况数据（人数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('83', '非低保困难家庭数据（户数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('84', '非低保困难家庭数据（人数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('85', '村（社区）干部数据', '8');
INSERT INTO `gzp_work_tmp` VALUES ('86', '革镇堡街道居家养老中心情况', '8');
INSERT INTO `gzp_work_tmp` VALUES ('87', '革镇堡街道养老机构数据（床位数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('88', '革镇堡街道养老机构数据（入住人数）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('89', '革镇堡街道60岁及以上老年人口数（人）', '8');
INSERT INTO `gzp_work_tmp` VALUES ('90', '革镇堡街道少数民族统计数据', '8');
INSERT INTO `gzp_work_tmp` VALUES ('91', '革镇堡街道体育队伍基础情况', '13');
INSERT INTO `gzp_work_tmp` VALUES ('92', '革镇堡街道健身广场基础情况（面积）', '13');
INSERT INTO `gzp_work_tmp` VALUES ('93', '革镇堡街道健身广场基础情况（健身路径）', '13');
INSERT INTO `gzp_work_tmp` VALUES ('94', '革镇堡街道文化队伍基础情况', '13');
INSERT INTO `gzp_work_tmp` VALUES ('95', '革镇堡街道农家书屋、社区书屋基础情况（面积）', '13');
INSERT INTO `gzp_work_tmp` VALUES ('96', '革镇堡街道农家书屋、社区书屋基础情况（藏书数量）', '13');
INSERT INTO `gzp_work_tmp` VALUES ('97', '革镇堡街道文化活动室基础情况', '13');
INSERT INTO `gzp_work_tmp` VALUES ('98', '社会化管理人员情况', '14');
INSERT INTO `gzp_work_tmp` VALUES ('99', '待遇资格认证人员情况', '14');
INSERT INTO `gzp_work_tmp` VALUES ('100', '就业情况', '14');
INSERT INTO `gzp_work_tmp` VALUES ('101', '失业情况', '14');
INSERT INTO `gzp_work_tmp` VALUES ('102', '妇联基础数据（数量）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('103', '妇联基础数据（人数）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('104', '妇联基础数据（妇女部）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('105', '共青团基础数据（团支部数）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('106', '共青团基础数据（团员总数）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('107', '共青团基础数据（团干部人数）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('108', '科协基础数据（数量）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('109', '科协基础数据（人数）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('110', '科协基础数据（干部）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('111', '街道理论宣讲团基础数据', '23');
INSERT INTO `gzp_work_tmp` VALUES ('112', '党员基本情况（性别）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('113', '党员基本情况（年龄）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('114', '党员基本情况（学历）', '23');
INSERT INTO `gzp_work_tmp` VALUES ('115', '党组织基本情况', '23');
INSERT INTO `gzp_work_tmp` VALUES ('116', '一般公共预算收入完成情况（完成数）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('117', '一般公共预算收入完成情况（全口径税收）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('118', '重点税源贡献（税收）（财力50万以上企业）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('119', '重点税源贡献（财力）（财力50万以上企业）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('120', '一般公共预算收入完成情况（国税）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('121', '一般公共预算收入完成情况（地税）', '24');
INSERT INTO `gzp_work_tmp` VALUES ('122', '一般公共预算收入完成情况（合计）', '24');

-- ----------------------------
-- Table structure for gzp_ylws
-- ----------------------------
DROP TABLE IF EXISTS `gzp_ylws`;
CREATE TABLE `gzp_ylws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_ylws
-- ----------------------------
INSERT INTO `gzp_ylws` VALUES ('1', '2017', '中革村', '4812', '1');
INSERT INTO `gzp_ylws` VALUES ('2', '2017', '后革村', '2994', '1');
INSERT INTO `gzp_ylws` VALUES ('3', '2017', '棋盘村', '3352', '1');
INSERT INTO `gzp_ylws` VALUES ('4', '2017', '羊圈村', '1365', '1');
INSERT INTO `gzp_ylws` VALUES ('5', '2017', '夏家河村', '2631', '1');
INSERT INTO `gzp_ylws` VALUES ('6', '2017', '鞍子山村', '2022', '1');
INSERT INTO `gzp_ylws` VALUES ('7', '2017', '渤海居民委', '664', '1');
INSERT INTO `gzp_ylws` VALUES ('8', '2016', '中革村', '4720', '1');
INSERT INTO `gzp_ylws` VALUES ('9', '2016', '后革村', '3000', '1');
INSERT INTO `gzp_ylws` VALUES ('10', '2016', '棋盘村', '3210', '1');
INSERT INTO `gzp_ylws` VALUES ('11', '2016', '羊圈村', '1250', '1');
INSERT INTO `gzp_ylws` VALUES ('12', '2016', '夏家河村', '2530', '1');
INSERT INTO `gzp_ylws` VALUES ('13', '2016', '鞍子山村', '1998', '1');
INSERT INTO `gzp_ylws` VALUES ('14', '2016', '渤海居民委', '590', '1');
INSERT INTO `gzp_ylws` VALUES ('15', '2017', '中革村', '1500', '2');

-- ----------------------------
-- Table structure for gzp_y_canji
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_canji`;
CREATE TABLE `gzp_y_canji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `number1` bigint(20) DEFAULT NULL,
  `sum1` bigint(20) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_y_canji
-- ----------------------------
INSERT INTO `gzp_y_canji` VALUES ('1', '2018', '436', '127', '89', '201', '29');
INSERT INTO `gzp_y_canji` VALUES ('2', '2017', '400', '350', '37', '274', '146');
INSERT INTO `gzp_y_canji` VALUES ('3', '2016', '405', '346', '33', '269', '138');
INSERT INTO `gzp_y_canji` VALUES ('4', '2015', '410', '352', '41', '275', '139');
INSERT INTO `gzp_y_canji` VALUES ('5', '2014', '425', '385', '47', '284', '162');
INSERT INTO `gzp_y_canji` VALUES ('6', '2013', '433', '360', '51', '273', '163');

-- ----------------------------
-- Table structure for gzp_y_degree
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_degree`;
CREATE TABLE `gzp_y_degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `sum` bigint(20) DEFAULT NULL,
  `number1` bigint(20) DEFAULT NULL,
  `sum1` bigint(20) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gzp_y_degree
-- ----------------------------
INSERT INTO `gzp_y_degree` VALUES ('1', '2018', '436', '397', '49', '282', '154');
INSERT INTO `gzp_y_degree` VALUES ('2', '2017', '400', '350', '37', '274', '146');
INSERT INTO `gzp_y_degree` VALUES ('3', '2016', '405', '346', '33', '269', '138');
INSERT INTO `gzp_y_degree` VALUES ('4', '2015', '410', '352', '41', '275', '139');
INSERT INTO `gzp_y_degree` VALUES ('5', '2014', '425', '385', '47', '284', '162');
INSERT INTO `gzp_y_degree` VALUES ('6', '2013', '433', '360', '51', '273', '163');

-- ----------------------------
-- Table structure for gzp_y_jygz
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_jygz`;
CREATE TABLE `gzp_y_jygz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_y_jygz
-- ----------------------------
INSERT INTO `gzp_y_jygz` VALUES ('1', '2017', '3324', '7');
INSERT INTO `gzp_y_jygz` VALUES ('2', '2016', '3244', '7');

-- ----------------------------
-- Table structure for gzp_y_manager
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_manager`;
CREATE TABLE `gzp_y_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_y_manager
-- ----------------------------
INSERT INTO `gzp_y_manager` VALUES ('1', '2018', null, '1');
INSERT INTO `gzp_y_manager` VALUES ('2', '2017', '41460', '1');
INSERT INTO `gzp_y_manager` VALUES ('3', '2016', '48600', '1');
INSERT INTO `gzp_y_manager` VALUES ('4', '2015', '30600', '1');
INSERT INTO `gzp_y_manager` VALUES ('9', '2018', null, '2');
INSERT INTO `gzp_y_manager` VALUES ('10', '2017', '32855', '2');
INSERT INTO `gzp_y_manager` VALUES ('11', '2016', '33343', '2');
INSERT INTO `gzp_y_manager` VALUES ('12', '2015', '43933', '2');
INSERT INTO `gzp_y_manager` VALUES ('13', '2018', null, '3');
INSERT INTO `gzp_y_manager` VALUES ('14', '2017', '1951', '3');
INSERT INTO `gzp_y_manager` VALUES ('15', '2018', null, '4');
INSERT INTO `gzp_y_manager` VALUES ('16', '2017', '1630', '4');
INSERT INTO `gzp_y_manager` VALUES ('20', '2018', null, '5');
INSERT INTO `gzp_y_manager` VALUES ('21', '2017', '422', '5');
INSERT INTO `gzp_y_manager` VALUES ('22', '2016', '555', '5');

-- ----------------------------
-- Table structure for gzp_y_shxf
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_shxf`;
CREATE TABLE `gzp_y_shxf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `year` varchar(10) NOT NULL DEFAULT '' COMMENT '年份',
  `plan` varchar(50) NOT NULL DEFAULT '' COMMENT '年度计划完成',
  `real` varchar(50) NOT NULL DEFAULT '' COMMENT '年度实际完成',
  `sid` int(10) unsigned NOT NULL COMMENT '数据类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='社会消费品年度计划';

-- ----------------------------
-- Records of gzp_y_shxf
-- ----------------------------
INSERT INTO `gzp_y_shxf` VALUES ('1', '2018', '368', '500', '5');
INSERT INTO `gzp_y_shxf` VALUES ('2', '2017', '300', '500', '5');
INSERT INTO `gzp_y_shxf` VALUES ('3', '2016', '280', '250', '5');
INSERT INTO `gzp_y_shxf` VALUES ('4', '2015', '250', '200', '5');
INSERT INTO `gzp_y_shxf` VALUES ('5', '2014', '180', '190', '5');
INSERT INTO `gzp_y_shxf` VALUES ('6', '2013', '260', '260', '5');
INSERT INTO `gzp_y_shxf` VALUES ('7', '2018', '368', '100', '1');
INSERT INTO `gzp_y_shxf` VALUES ('9', '2016', '280', '250', '1');
INSERT INTO `gzp_y_shxf` VALUES ('8', '2017', '300', '100', '1');
INSERT INTO `gzp_y_shxf` VALUES ('10', '2015', '250', '200', '1');
INSERT INTO `gzp_y_shxf` VALUES ('11', '2014', '180', '190', '1');
INSERT INTO `gzp_y_shxf` VALUES ('12', '2013', '260', '260', '1');
INSERT INTO `gzp_y_shxf` VALUES ('13', '2018', '368', '368', '2');
INSERT INTO `gzp_y_shxf` VALUES ('14', '2017', '300', '200', '2');
INSERT INTO `gzp_y_shxf` VALUES ('15', '2016', '280', '200', '2');
INSERT INTO `gzp_y_shxf` VALUES ('16', '2015', '250', '200', '2');
INSERT INTO `gzp_y_shxf` VALUES ('17', '2014', '180', '190', '2');
INSERT INTO `gzp_y_shxf` VALUES ('18', '2013', '260', '260', '2');
INSERT INTO `gzp_y_shxf` VALUES ('19', '2018', '368', '300', '3');
INSERT INTO `gzp_y_shxf` VALUES ('20', '2017', '300', '300', '3');
INSERT INTO `gzp_y_shxf` VALUES ('21', '2016', '280', '250', '3');
INSERT INTO `gzp_y_shxf` VALUES ('22', '2015', '250', '200', '3');
INSERT INTO `gzp_y_shxf` VALUES ('23', '2014', '180', '190', '3');
INSERT INTO `gzp_y_shxf` VALUES ('24', '2013', '260', '260', '3');
INSERT INTO `gzp_y_shxf` VALUES ('25', '2018', '368', '400', '4');
INSERT INTO `gzp_y_shxf` VALUES ('26', '2017', '300', '400', '4');
INSERT INTO `gzp_y_shxf` VALUES ('27', '2016', '280', '250', '4');
INSERT INTO `gzp_y_shxf` VALUES ('28', '2015', '250', '200', '4');
INSERT INTO `gzp_y_shxf` VALUES ('29', '2014', '180', '190', '4');
INSERT INTO `gzp_y_shxf` VALUES ('30', '2013', '260', '260', '4');
INSERT INTO `gzp_y_shxf` VALUES ('31', '2018', '368', '600', '6');
INSERT INTO `gzp_y_shxf` VALUES ('32', '2017', '300', '600', '6');
INSERT INTO `gzp_y_shxf` VALUES ('33', '2016', '280', '250', '6');
INSERT INTO `gzp_y_shxf` VALUES ('34', '2015', '250', '200', '6');
INSERT INTO `gzp_y_shxf` VALUES ('35', '2014', '180', '190', '6');
INSERT INTO `gzp_y_shxf` VALUES ('36', '2013', '260', '260', '6');
INSERT INTO `gzp_y_shxf` VALUES ('37', '2018', '368', '700', '7');
INSERT INTO `gzp_y_shxf` VALUES ('38', '2017', '300', '700', '7');
INSERT INTO `gzp_y_shxf` VALUES ('39', '2016', '280', '250', '7');
INSERT INTO `gzp_y_shxf` VALUES ('40', '2015', '250', '200', '7');
INSERT INTO `gzp_y_shxf` VALUES ('41', '2014', '180', '190', '7');
INSERT INTO `gzp_y_shxf` VALUES ('42', '2013', '260', '260', '7');

-- ----------------------------
-- Table structure for gzp_y_whty
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_whty`;
CREATE TABLE `gzp_y_whty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_y_whty
-- ----------------------------
INSERT INTO `gzp_y_whty` VALUES ('1', '2017', '15', '1');
INSERT INTO `gzp_y_whty` VALUES ('2', '2016', '10', '1');

-- ----------------------------
-- Table structure for gzp_y_ylws
-- ----------------------------
DROP TABLE IF EXISTS `gzp_y_ylws`;
CREATE TABLE `gzp_y_ylws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(255) DEFAULT NULL,
  `sum_number` bigint(20) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzp_y_ylws
-- ----------------------------
INSERT INTO `gzp_y_ylws` VALUES ('1', '2017', '17840', '1');
INSERT INTO `gzp_y_ylws` VALUES ('2', '2016', '17298', '1');

-- ----------------------------
-- Table structure for gzp_zdqy
-- ----------------------------
DROP TABLE IF EXISTS `gzp_zdqy`;
CREATE TABLE `gzp_zdqy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '企业名称',
  `dqsc` varchar(200) NOT NULL DEFAULT '' COMMENT '地区生产总值',
  `czsr` varchar(200) NOT NULL DEFAULT '' COMMENT '财政收入',
  `gsgy` varchar(200) NOT NULL DEFAULT '' COMMENT '规上工业总产值',
  `gdzc` varchar(200) NOT NULL DEFAULT '' COMMENT '固定资产投资',
  `shxf` varchar(200) NOT NULL DEFAULT '' COMMENT '社会消费品零售额',
  `synz` varchar(200) NOT NULL DEFAULT '' COMMENT '使用内资',
  `yjwz` varchar(200) NOT NULL DEFAULT '' COMMENT '引进外资',
  `year` varchar(10) NOT NULL DEFAULT '' COMMENT '年份',
  `addtime` varchar(10) NOT NULL DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='重点企业';

-- ----------------------------
-- Records of gzp_zdqy
-- ----------------------------
INSERT INTO `gzp_zdqy` VALUES ('1', '万科', '2.9', '3.6', '11', '1.6', '3.2', '4.4', '5.7', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('2', '易林木业', '3.1', '1', '1.9', '3.3', '2.9', '1.1', '2.5', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('3', '格林美', '1.4', '0.6', '1.2', '4.1', '3.3', '3.3', '2.9', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('4', '建水环境', '6.5', '0.9', '3.1', '.3', '5.1', '4.1', '3.3', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('5', '中国电建', '2.8', '0.5', '3.3', '2.5', '6.2', '0.9', '1.9', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('6', '再生资源', '4.3', '2.1', '2.2', '2.5', '2.1', '3.5', '1.2', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('7', '和车环保', '2.9', '3.3', '4.4', '2.5', '3.3', '5.1', '3.1', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('8', '中冶蓝天', '3.3', '4.1', '2.5', '2.9', '4.1', '5.1', '4.4', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('9', '水务资产', '5.1', '.3', '0.9', '3.3', '0.9', '6.2', '2.5', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('10', '天能电源', '6.2', '5.1', '3.5', '5.1', '3.5', '1.3', '0.9', '2018', '');
INSERT INTO `gzp_zdqy` VALUES ('11', '中艺生态', '3.3', '4', '5.1', '6.2', '5.1', '1.1', '3.5', '2018', '');

-- ----------------------------
-- Table structure for gzp_zsyz
-- ----------------------------
DROP TABLE IF EXISTS `gzp_zsyz`;
CREATE TABLE `gzp_zsyz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `plan` text NOT NULL COMMENT '计划',
  `completion` text NOT NULL COMMENT '实际完成',
  `problem` text NOT NULL COMMENT '存在问题',
  `addtime` varchar(20) NOT NULL DEFAULT '' COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='招商引资';

-- ----------------------------
-- Records of gzp_zsyz
-- ----------------------------
INSERT INTO `gzp_zsyz` VALUES ('1', '<p style=\"text-align: center; line-height: 3em;\">\r\n    <span style=\"font-size: 24px;\">2018年招商引资计划&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）榆山石矿地块改造（中南VTP小镇）项目：位于棋盘村西北路东侧，占地总面积约273万平方米，计划总投资约300亿，打造中国第一座高空垂直主题乐园、文旅特色小镇。4月中旬，街道主要领导跟随区领导赴珠三角地区，成功推动区政府和建设单位签订《VTP小镇建设合作协议书》，随后骆市长召开专题会议协调项目推进，6月中旬，骆市长再次组织召开专题会议研究相关事宜，并在会上向市国土、规划部门提出要求和建议，协调推进项目落地问题。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）夏家河水库周边地块改造（恒大颐养足球小镇）项目：位于夏家河子村，占地面积约5350亩，计划总投资300亿元。项目于2017年12月签署合作框架协议书，概念性设计方案已经两次向区政府主要领导做出汇报。今年5月初，项目单位完成方案第三稿的编制工作，并向街道及区政府主要领导做了汇报。目前，街道和项目单位正在积极协调市国土、规划部门及市委市政府主要领导，推动项目进展。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）大显南侧地块改造项目（A1、A2地块）：街道组织协调各方面力量推动地块动迁工作，并于5月份实现净地，同时完成《土地收回决定书》的办理及土地证注销工作，保障了要素供给，为地块的顺利挂牌扫清障碍。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）张前路西侧地块改造项目一期：5月15日，街道孙北文书记、赵双勇主任跟随赵云峰副区长同赴上海，拜会中庚集团董事长，探讨项目存在问题的解决路径，协调解决地块挂牌前的准备工作。\r\n</p>\r\n<p style=\"line-height: 2em;\">\r\n    <br/>\r\n</p>\r\n<p style=\"text-align: right; line-height: 3em;\">\r\n    2017年12月31日\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p style=\"text-align: center; line-height: 3em;\">\r\n    <span style=\"font-size: 24px;\">2018年招商引资完成情况&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: rgb(255, 0, 0);\">（1）榆山石矿地块改造（中南VTP小镇）项目：位于棋盘村西北路东侧，占地总面积约273万平方米，计划总投资约300亿，打造中国第一座高空垂直主题乐园、文旅特色小镇。4月中旬，街道主要领导跟随区领导赴珠三角地区，成功推动区政府和建设单位签订《VTP小镇建设合作协议书》，随后骆市长召开专题会议协调项目推进，6月中旬，骆市长再次组织召开专题会议研究相关事宜，并在会上向市国土、规划部门提出要求和建议，协调推进项目落地问题。</span>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    <span style=\"color: rgb(255, 0, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）夏家河水库周边地块改造（恒大颐养足球小镇）项目：位于夏家河子村，占地面积约5350亩，计划总投资300亿元。项目于2017年12月签署合作框架协议书，概念性设计方案已经两次向区政府主要领导做出汇报。今年5月初，项目单位完成方案第三稿的编制工作，并向街道及区政府主要领导做了汇报。目前，街道和项目单位正在积极协调市国土、规划部门及市委市政府主要领导，推动项目进展。</span>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）大显南侧地块改造项目（A1、A2地块）：街道组织协调各方面力量推动地块动迁工作，并于5月份实现净地，同时完成《土地收回决定书》的办理及土地证注销工作，保障了要素供给，为地块的顺利挂牌扫清障碍。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）张前路西侧地块改造项目一期：5月15日，街道孙北文书记、赵双勇主任跟随赵云峰副区长同赴上海，拜会中庚集团董事长，探讨项目存在问题的解决路径，协调解决地块挂牌前的准备工作。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    <br/>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    <span style=\"text-decoration: underline;\"><strong><span style=\"text-decoration: underline; background-color: rgb(255, 0, 0); color: rgb(255, 255, 255);\">注：红色为完成内容！</span></strong></span>\r\n</p>\r\n<p style=\"line-height: 2em;\">\r\n    <br/>\r\n</p>\r\n<p style=\"text-align: right; line-height: 3em;\">\r\n    2018年12月31日\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p style=\"text-align: center; line-height: 3em;\">\r\n    <span style=\"font-size: 24px;\">2018年招商引资存在问题&nbsp; &nbsp; &nbsp; &nbsp;</span>\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、招商引资工作难度加大，投资环境不够优化，项目落地率和资金到位率不高；\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、项目附加值低，对财政、就业的贡献度弱；\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、资源综合利用水平低、土地指标有限。目前我县可利用的土地指标有限，且存量土地比较零散、缺乏统一规划，用地成本较高，在土地空间上缺乏竞争优势。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;、储备项目对接性不强,园区招商平台作用未能得到有效发挥。项目信息少、结构不优、更新不快，个别储备项目层次不高、论证不充分，不符合国家和省投资导向，缺乏对投资者的吸引力。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、主导产业利用外资趋于饱和。石油装备制造业是我县经济支柱产业，也是吸引外资最主要的实力行业。从上世纪九十年代末开始，以原华北石油第一机械厂下属车间为基础，陆续引进包括日本丸红、三菱株式会社等世界五百强企业前来投资，先后建立合资合作企业11家。目前这个行业利用外资空间越来越小。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6、传统产业吸引外资缺乏实力。电子机箱、缝制设备等产业虽然具备一定规模，但单体规模、研发能力、管理水平等方面还不具备与国外大企业对接的实力。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7、外资规模小，来源相对单一。我县韩资企业占外资企业的半数以上（65%），他们看中的是本地廉价劳动力和国家鼓励政策，租赁厂房搞加工，因此投资都不大，多在10万美元左右。随着本地工资水平的提高，企业运营成本大幅增加，近年来韩国投资明显减少，并且连续出现外企撤资或转为内资经营的现象。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8、外资立项明显趋缓。目前申办外资企业门槛较高，手续繁琐，立项审批周期较长，至少需要一个月时间，合资、合作项目还要更长，加上国家“免二减三”政策的取消，很多外商趋向直接选择注册内资企业。\r\n</p>\r\n<p style=\"line-height: 3em;\">\r\n    <span style=\"text-align: right;\"><br/></span>\r\n</p>\r\n<p style=\"line-height: 3em; text-align: right;\">\r\n    <span style=\"text-align: right;\">2018年12月31日</span>\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '2018');
