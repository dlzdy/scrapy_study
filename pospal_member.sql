/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : pospal

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2017-11-09 17:59:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pospal_member`
-- ----------------------------
DROP TABLE IF EXISTS `pospal_member`;
CREATE TABLE `pospal_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_number` varchar(50) NOT NULL COMMENT '编号',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `mobile` varchar(20) DEFAULT NULL,
  `member_point` float(11,0) DEFAULT '0' COMMENT '会员积分',
  `is_enabled` tinyint(4) DEFAULT NULL,
  `is_dealed` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pospal_member
-- ----------------------------
INSERT INTO `pospal_member` VALUES ('175', '18612260871', '李丹丹', '18612260871', '121', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('176', '18612581866', '李先生', '18612581866', '122', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('177', '13880898575', '罗蛟龙', '13880898575', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('178', '10110150029', '女士', '15110150029', '17', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('179', '18632110567', '史可济', '18632110567', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('180', '13901119401', '刘曼', '13901119401', '208', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('181', '12345678900000', '谢思成', '13911821185', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('182', '18701333893', '隋晓丽', '18701333893', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('183', '13901291296', '徐叔午', '13901291296', '33', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('184', '13255066996', '13255066996', '13255066996', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('185', '18701338924', '张雪娇', '18701338924', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('186', '13910069962', '王潇潇', '13910069962', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('187', '4234350619', '4234350619', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('188', '13301168135', '13301168135', '13301168135', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('189', '18801050002', '女士', '18801050002', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('190', '13910079555', '邓爽', '13910079555', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('191', '4234387083', '4234387083', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('192', '13391516682', '井琛', '13391516682', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('193', '18801224997', '郭琳', '18801224997', '514', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('194', '13910184407', '杨艳', '13910184407', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('195', '4234473883', '4234473883', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('196', '13401112094', '冯梦莎', '13401112094', '202', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('197', '18810324293', '黄越2', '18810324293', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('198', '13910195756', '王建刚', '13910195756', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('199', '4234581067', '4234581067', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('200', '13481020531', '13481020531', '13481020531', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('201', '18811361850', '李晴川', '18811361850', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('202', '13910329269', '邹非', '13910329269', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('203', '4234592171', '4234592171', '11111111111', '93', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('204', '13511050681', '杨眉', '13511050681', '160', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('205', '18811701307', '熊洁', '18811701307', '103', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('206', '13910589606', '于莫2', '13910589606', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('207', '4234641851', '4234641851', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('208', '13520512951', '陶滔', '13520512951', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('209', '18813020566', '秦雯', '18813020566', '83', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('210', '13910829839', '吴晓东', '13910829839', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('211', '4234642331', 'VIP卡', '13810807631', '59', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('212', '13545886432', '高璐', '13545886432', '214', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('213', '18901119936', '韩笑萌', '18901119936', '92', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('214', '13910850158', '王女士', '13910850158', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('215', '4234650907', '4234650907', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('216', '13581582639', '许允金', '13581582639', '20', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('217', '18918862363', '廖紫薇', '18918862363', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('218', '13910963370', '周广麒', '13910963370', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('219', '4234771451', '4234771451', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('220', '13601008788', '杨子江', '13601008788', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('221', '4021761051', '4021761051', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('222', '13910985699', '王鹏', '13910985699', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('223', '4234802171', '4234802171', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('224', '13602090223', '郭女士', '13602090223', '136', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('225', '4021798171', '4021798171', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('226', '13911021051', '李娟', '13911021051', '105', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('227', '4234807067', '4234807067', '11111111111', '103', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('228', '13621299655', '刘佩瑶', '13621299655', '199', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('229', '4021852283', '4021852283', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('230', '13911099798', '万女士', '13911099798', '41', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('231', '4234813979', '4234813979', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('232', '13661393322', '范先生', '13661393322', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('233', '4021919899', '4021919899', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('234', '13911329413', '罗晓', '13911329413', '38', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('235', '4234873067', '4234873067', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('236', '13681375116', '宋词', '13681375116', '171', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('237', '4021943563', '4021943563', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('238', '13911400453', '周睿婷', '13911400453', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('239', '4234899803', '4234899803', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('240', '13683378725', '商倩倩', '13683378725', '31', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('241', '4021957675', '4021957675', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('242', '13911760076', '常女士', '13911760076', '90', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('243', '4234993643', '4234993643', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('244', '13691009272', '王勉', '13691009272', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('245', '4022010219', '4022010219', '11111111111', '92', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('246', '13911866157', '王洋', '13911866157', '227', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('247', '4235092763', '瑞银袁女士', '13910074916', '125', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('248', '13693579118', '刘文', '13693579118', '15', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('249', '4022202475', '中行vip', '12345678911', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('250', '13911946213', '李逸轩', '13911946213', '59', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('251', '4235192747', '4235192747', '11111111111', '72', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('252', '13717925077', '富冰洋 ', '13717925077', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('253', '4022297835', '4022297835', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('254', '13911946312', '潘则均', '13911946312', '27', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('255', '4235240651', '4235240651', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('256', '13718203665', '陈昊', '13718203665', '26', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('257', '4022315931', '王滢', '12345687912', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('258', '13911990365', '刘金', '13911990365', '55', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('259', '4235401067', '4235401067', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('260', '13718433805', '黄浩', '13718433805', '83', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('261', '4022570283', '4022570283', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('262', '13911990782', '张成', '13911990782', '317', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('263', '4235458539', '4235458539', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('264', '13810105869', '刘珺', '13810105869', '18', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('265', '4022607691', '4022607691', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('266', '13996055826', '王女士', '13996055826', '76', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('267', '4235478107', '中行VIP', '12345678912', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('268', '13810125931', '于亮', '13810125931', '115', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('269', '4022672779', '4022672779', '11111111111', '66', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('270', '15001025935', '明小姐', '15010205935', '30', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('271', '4235493739', '4235493739', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('272', '13810136179', '叶爽', '13810136179', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('273', '4022681131', '4022681131', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('274', '15001084089', '韩萍', '15001084089', '110', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('275', '4235522363', '4235522363', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('276', '13810284885', '王冶雯', '13810284885', '272', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('277', '4022888859', '4022888859', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('278', '15011362588', '宋佳宸', '15011362588', '71', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('279', '4235566715', '4235566715', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('280', '13810403833', '王文庆', '13810403833', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('281', '4022944843', '4022944843', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('282', '15011401956', '杨姜越', '15011401956', '10', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('283', '4235631563', '4235631563', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('284', '13810487298', '方雅', '13810487298', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('285', '4022993227', '4022993227', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('286', '15120032280', '马齐靖', '15120032280', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('287', '4235693963', '4235693963', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('288', '13810547688', '孙女士', '13810547688', '66', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('289', '4023106331', '4023106331', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('290', '15120049259', '常慧宁', '15120049259', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('291', '4235796347', '4235796347', '11111111111', '78', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('292', '13810569927', '刘丽婷', '13810569927', '16', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('293', '4023110363', '王晓丹', '13810807631', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('294', '15201557839', '韩江荟', '15201557839', '20', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('295', '4235800587', '4235800587', '11111111111', '123', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('296', '13810582230', '丁玉萍', '13810582230', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('297', '4023127707', '4023127707', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('298', '15311411943', '高珊', '15311411934', '213', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('299', '4235838907', '4235838907', '11111111111', '48', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('300', '13810690714', '王先生', '13810690714', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('301', '4023212635', '4023212635', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('302', '15811218505', '季小庆', '15811218505', '24', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('303', '4235869771', '4235869771', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('304', '13810792230', '胡志伟', '13810792230', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('305', '4023217355', '4023217355', '11111111111', '74', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('306', '15901009657', '裴先生', '15901009657', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('307', '4235988331', '4235988331', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('308', '13810807631', '13810807631', '13810807631', '22', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('309', '4023237131', '4023237131', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('310', '15901125753', '陈娟', '15901125753', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('311', '4236013675', '4236013675', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('312', '13810829366', '侯娇娇', '13810829366', '57', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('313', '4023271051', '4023271051', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('314', '18010175893', '王斌', '18010175893', '25', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('315', '4236015579', '4236015579', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('316', '13810870900', '尹臣', '13810870900', '25', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('317', '4023511483', '中行VIP', '13456789112', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('318', '18030066960', '18030066960', '18030066960', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('319', '4236046491', '4236046491', '11111111111', '40', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('320', '13811084307', '曹兴阳', '13811084307', '150', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('321', '4023700891', '4023700891', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('322', '18086362399', '钟思婷', '18086362399', '185', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('323', '4236049515', '4236049515', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('324', '13811092871', '张楠', '13811092871', '41', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('325', '4023710267', '4023710267', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('326', '18310491826', '于丹玲2', '18310491826', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('327', '4236060715', '4236060715', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('328', '13811321933', '王泽滢', '13811321933', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('329', '4023726251', '4023726251', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('330', '18310572018', '赵妍妍', '18310572018', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('331', '4236090907', '4236090907', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('332', '13811365957', '刘小峰', '13811365957', '37', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('333', '4023747451', '4023747451', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('334', '18500059173', '王女士', '18500059173', '42', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('335', '4236157163', '冉福川', '15910885723', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('336', '13811370490', '李锐', '13811370490', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('337', '4023931371', '4023931371', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('338', '18501076903', '张芃', '18501076903', '89', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('339', '888001', '冉福川', '15910885723', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('340', '13811684621', '张骏', '13811684621', '17', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('341', '4233930779', '4233930779', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('342', '18501280800', '艾志城', '18501280800', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('343', '888002', '刘汉金', '13811241436', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('344', '13811757744', '琳烨', '13811757744', '124', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('345', '4233954571', '4233954571', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('346', '18509311018', '高小茹', '18509311018', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('347', '888003', '袁军', '15101081591', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('348', '13811765156', '王鹏凯', '13811765156', '31', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('349', '4234076507', '4234076507', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('350', '18511772224', '李梦月', '18511772224', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('351', '888004', '李满林', '13466542421', '35', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('352', '13811766185', '孟令磊', '13811766185', '100', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('353', '4234201595', '4234201595', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('354', '18600863610', '苗壮', '18600863610', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('355', '888005', '王琪', '13331168619', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('356', '13811797024', '13811797024', '13811797024', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('357', '4234213067', '4234213067', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('358', '18601369039', '贺姐', '18601369039', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('359', '888006', '杨艳', '13910184407', '263', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('360', '13811870426', '马强', '13811870426', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('361', '4234288843', '4234288843', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('362', '18611333755', '田洁', '18611333755', '515', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('363', '888007', '焦云飞', '13910026143', '119', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('364', '13811888042', '严涟', '13811888042', '246', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('365', '4234341579', '4234341579', '11111111111', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('366', '18611370405', '石佳', '18611370405', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('367', '888008', '庄云怡', '14794526560', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('368', '13818005949', '魏小姐', '13818005949', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('369', '18611864833', '张姝2', '18611864833', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('370', '888009', '吴容波', '13581573021', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('371', '13823394385', '常茜菲', '13823394385', '201', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('372', '888010', '唐军伟', '13522335885', '225', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('373', '888011', '任效明', '13501020657', '67', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
INSERT INTO `pospal_member` VALUES ('374', '888012', '何佳', '13481020531', '0', '1', '0', '2017-11-08 12:00:00', '2017-11-08 12:00:00');
