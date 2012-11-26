/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : tuniuoa

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2012-11-26 00:06:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `oa_department`
-- ----------------------------
DROP TABLE IF EXISTS `oa_department`;
CREATE TABLE `oa_department` (
  `departmentId` int(6) NOT NULL,
  `departmentName` char(20) DEFAULT NULL,
  `departmentLeaderId` int(6) DEFAULT NULL,
  `parentId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_department
-- ----------------------------
INSERT INTO `oa_department` VALUES ('5', '技术支持组', '10', '6', '1');
INSERT INTO `oa_department` VALUES ('6', 'IT信息', '11', '7', '1');
INSERT INTO `oa_department` VALUES ('7', '研发部', '12', '0', '1');
INSERT INTO `oa_department` VALUES ('8', '考勤组', '13', '9', '1');

-- ----------------------------
-- Table structure for `oa_department_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `oa_department_role_map`;
CREATE TABLE `oa_department_role_map` (
  `mapId` int(6) NOT NULL,
  `departmentId` int(6) DEFAULT NULL,
  `roleId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`mapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_department_role_map
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_employee_group`
-- ----------------------------
DROP TABLE IF EXISTS `oa_employee_group`;
CREATE TABLE `oa_employee_group` (
  `groupId` int(6) NOT NULL,
  `groupName` char(30) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_employee_group
-- ----------------------------
INSERT INTO `oa_employee_group` VALUES ('1', '经理', '1');
INSERT INTO `oa_employee_group` VALUES ('2', '高级经理', '1');
INSERT INTO `oa_employee_group` VALUES ('3', '总监', '1');

-- ----------------------------
-- Table structure for `oa_employee_info`
-- ----------------------------
DROP TABLE IF EXISTS `oa_employee_info`;
CREATE TABLE `oa_employee_info` (
  `employeeId` int(6) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `departmentId` int(6) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_employee_info
-- ----------------------------
INSERT INTO `oa_employee_info` VALUES ('10', '梅存兵', '1', '5', '2012-05-01 11:55:46', '1');
INSERT INTO `oa_employee_info` VALUES ('11', '袁有雷', '1', '6', '2012-05-02 11:56:52', '1');
INSERT INTO `oa_employee_info` VALUES ('12', '陈福伟', '1', '7', '2012-05-02 12:30:07', '1');
INSERT INTO `oa_employee_info` VALUES ('1167', '黎欢鲲', '1', '5', '2012-05-04 23:57:27', '1');
INSERT INTO `oa_employee_info` VALUES ('1234', '测试', '1', '5', '2012-04-30 22:04:11', '1');
INSERT INTO `oa_employee_info` VALUES ('1235', '王子睿', '2', '8', '2012-05-01 12:34:05', '1');
INSERT INTO `oa_employee_info` VALUES ('1245', '孙佩', '1', '5', '2012-05-04 23:56:55', '1');
INSERT INTO `oa_employee_info` VALUES ('1278', '毕丰乐', '1', '5', '2012-05-04 23:57:56', '1');

-- ----------------------------
-- Table structure for `oa_employee_psword`
-- ----------------------------
DROP TABLE IF EXISTS `oa_employee_psword`;
CREATE TABLE `oa_employee_psword` (
  `username` char(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `employeeId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_employee_psword
-- ----------------------------
INSERT INTO `oa_employee_psword` VALUES ('bifengle', 'bifengle', '1278', '1');
INSERT INTO `oa_employee_psword` VALUES ('ceshi', 'ceshi', '1234', '1');
INSERT INTO `oa_employee_psword` VALUES ('kaoqin', 'kaoqin', '1235', '1');
INSERT INTO `oa_employee_psword` VALUES ('lihuankun', 'lihuankun', '1167', '1');
INSERT INTO `oa_employee_psword` VALUES ('manager', 'manager', '10', '1');
INSERT INTO `oa_employee_psword` VALUES ('officer', 'officer', '12', '1');
INSERT INTO `oa_employee_psword` VALUES ('srmanager', 'srmanager', '11', '1');

-- ----------------------------
-- Table structure for `oa_employee_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `oa_employee_role_map`;
CREATE TABLE `oa_employee_role_map` (
  `mapId` int(6) NOT NULL,
  `employeeId` int(6) DEFAULT NULL,
  `roleId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`mapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_employee_role_map
-- ----------------------------
INSERT INTO `oa_employee_role_map` VALUES ('1', '1235', '100', '1');

-- ----------------------------
-- Table structure for `oa_group_employee_map`
-- ----------------------------
DROP TABLE IF EXISTS `oa_group_employee_map`;
CREATE TABLE `oa_group_employee_map` (
  `mapId` int(6) NOT NULL,
  `groupId` int(6) DEFAULT NULL,
  `employeeId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`mapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_group_employee_map
-- ----------------------------
INSERT INTO `oa_group_employee_map` VALUES ('1', '1', '10', '1');
INSERT INTO `oa_group_employee_map` VALUES ('2', '2', '11', '1');
INSERT INTO `oa_group_employee_map` VALUES ('3', '3', '12', '1');

-- ----------------------------
-- Table structure for `oa_group_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `oa_group_role_map`;
CREATE TABLE `oa_group_role_map` (
  `mapId` int(6) NOT NULL,
  `groupId` int(6) DEFAULT NULL,
  `roleId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`mapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_group_role_map
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_helpdesk_category`
-- ----------------------------
DROP TABLE IF EXISTS `oa_helpdesk_category`;
CREATE TABLE `oa_helpdesk_category` (
  `catId` int(4) NOT NULL DEFAULT '0',
  `catName` varchar(20) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_helpdesk_category
-- ----------------------------
INSERT INTO `oa_helpdesk_category` VALUES ('1', '订单处理', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('2', '酒店分配', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('3', '自助游', '1');
INSERT INTO `oa_helpdesk_category` VALUES ('4', '团队游', '1');
INSERT INTO `oa_helpdesk_category` VALUES ('5', '牛人专线', '1');
INSERT INTO `oa_helpdesk_category` VALUES ('6', '账单管理', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('7', '城市', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('8', '城市城市', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('9', '而我们', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('10', '说的撒', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('11', '说的撒额', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('12', '说的撒上是', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('13', '说的撒上是谁', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('14', '热外', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('15', '热额', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('16', '巍峨', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('17', '巍峨我', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('18', '巍峨我', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('19', '热额', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('20', '尔', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('21', '尔u', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('22', '76', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('23', '订单处理', '1');
INSERT INTO `oa_helpdesk_category` VALUES ('24', '账单处理', '1');
INSERT INTO `oa_helpdesk_category` VALUES ('25', '', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('26', '', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('27', '', '0');
INSERT INTO `oa_helpdesk_category` VALUES ('28', '', '0');

-- ----------------------------
-- Table structure for `oa_helpdesk_question`
-- ----------------------------
DROP TABLE IF EXISTS `oa_helpdesk_question`;
CREATE TABLE `oa_helpdesk_question` (
  `questionId` int(10) NOT NULL DEFAULT '0',
  `serverId` int(6) DEFAULT NULL,
  `serverName` varchar(10) DEFAULT NULL,
  `addDate` date DEFAULT NULL,
  `questionCatId` int(6) DEFAULT NULL,
  `problemDetail` text,
  `status` int(1) DEFAULT NULL,
  `standardResponseHour` int(4) DEFAULT NULL,
  `standardSolveHour` int(4) DEFAULT NULL,
  `deliverTime` datetime DEFAULT NULL,
  `responseTime` datetime DEFAULT NULL,
  `solveTime` datetime DEFAULT NULL,
  `solverId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  `remark` int(1) DEFAULT NULL,
  PRIMARY KEY (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_helpdesk_question
-- ----------------------------
INSERT INTO `oa_helpdesk_question` VALUES ('1', '1235', '王子睿', '2012-05-05', '4', '团队游订单号“325465” 支付出现问题', '4', '2', '7', '2012-05-05 19:23:06', '2012-05-05 19:25:40', '2012-05-05 19:26:17', '1278', '1', '1');
INSERT INTO `oa_helpdesk_question` VALUES ('2', '1235', '王子睿', '2012-05-05', '3', '自助游账单出现问题 账单号“23454”', '5', '3', '10', '2012-05-05 19:38:49', '2012-05-06 16:24:38', '2012-06-07 19:47:13', '1278', '1', '0');
INSERT INTO `oa_helpdesk_question` VALUES ('3', '1235', '王子睿', '2012-05-05', '3', 'wdqwd', '3', '1', '13', '2012-05-05 19:51:52', '2012-05-06 16:27:00', '2012-06-07 16:27:06', '1278', '1', '0');
INSERT INTO `oa_helpdesk_question` VALUES ('4', '1235', '王子睿', '2012-06-05', '4', 'csccsca', '0', null, null, null, null, null, null, '1', '0');
INSERT INTO `oa_helpdesk_question` VALUES ('5', '1235', '王子睿', '2012-06-05', '3', 'ewefewfwefew', '0', null, null, null, null, null, null, '1', '0');

-- ----------------------------
-- Table structure for `oa_menu`
-- ----------------------------
DROP TABLE IF EXISTS `oa_menu`;
CREATE TABLE `oa_menu` (
  `menuId` int(6) NOT NULL,
  `menuName` varchar(30) DEFAULT NULL,
  `menuURL` varchar(256) DEFAULT NULL,
  `parentId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_menu_role_map`
-- ----------------------------
DROP TABLE IF EXISTS `oa_menu_role_map`;
CREATE TABLE `oa_menu_role_map` (
  `mapId` int(6) NOT NULL,
  `menuId` int(6) DEFAULT NULL,
  `roleId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`mapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_menu_role_map
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_overtime_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oa_overtime_apply`;
CREATE TABLE `oa_overtime_apply` (
  `overtimeApplyId` int(10) NOT NULL,
  `applicantId` int(6) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `overtimeDate` datetime DEFAULT NULL,
  `overtimeHours` int(1) DEFAULT NULL,
  `reason` text,
  `status` int(1) DEFAULT NULL,
  `mark` int(1) NOT NULL DEFAULT '1',
  `rejectReason` text,
  `nextCheckerId` int(6) DEFAULT NULL,
  `applicantName` char(20) DEFAULT NULL,
  PRIMARY KEY (`overtimeApplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_overtime_apply
-- ----------------------------
INSERT INTO `oa_overtime_apply` VALUES ('1', '1234', '2012-04-30 00:00:00', '2012-05-03 00:00:00', '1', '完成财务系统“#bug 10284”的修复', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('2', '1234', '2012-04-30 00:00:00', '2012-05-02 00:00:00', '2', '完成对账单系统checkSupplier模块的修改', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('3', '1234', '2012-05-01 00:00:00', '2012-05-02 00:00:00', '0', '完成boss系统订单处理流程', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('4', '1234', '2012-05-01 00:00:00', '2012-05-03 00:00:00', '0', '完成订单处理流程', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('5', '1234', '2012-05-01 00:00:00', '2012-05-11 00:00:00', '0', '完成“#bug boss 1935”', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('6', '1234', '2012-05-01 00:00:00', '2012-05-05 00:00:00', '0', '完成订单状态的修复', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('7', '1234', '2012-05-01 00:00:00', '2012-05-04 00:00:00', '0', '完成OA系统boss信箱的bug', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('8', '1234', '2012-05-01 00:00:00', '2012-05-10 00:00:00', '2', '完成\"#bug oa 1297\"', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('9', '1234', '2012-05-01 00:00:00', '2012-05-05 00:00:00', '1', '完成订单系统“#bug 1235”', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('10', '1234', '2012-05-01 00:00:00', '2012-05-10 00:00:00', '0', '完成自助游订单状态的处理', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('11', '1234', '2012-05-01 00:00:00', '2012-05-16 00:00:00', '1', '完成提成系统的修改', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('12', '1234', '2012-05-01 00:00:00', '2012-05-15 00:00:00', '0', '完成helpdesk系统的“添加提报”的功能', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('13', '1234', '2012-05-01 00:00:00', '2012-05-22 00:00:00', '2', '完成boss系统后台维护模块', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('14', '1234', '2012-05-01 00:00:00', '2012-05-14 00:00:00', '0', '完成财务系统“#bug 20345”', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('15', '1234', '2012-05-01 00:00:00', '2012-05-16 00:00:00', '0', '完成boss系统客服信息模块', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('16', '1234', '2012-05-01 00:00:00', '2012-05-11 00:00:00', '0', '完成oa系统“#bug Helpdesk 3092”', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('17', '1234', '2012-05-01 00:00:00', '2012-05-09 00:00:00', '2', '完成订单系统\"#bug 3456\"', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('18', '1234', '2012-05-01 00:00:00', '2012-05-12 00:00:00', '0', '完成订单“#bug 3045”', '2', '1', null, '11', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('19', '1234', '2012-05-03 00:00:00', '2012-05-04 00:00:00', '2', '完成“bug #1256”', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('20', '1234', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '0', '完成boss系统酒店管理模块', '0', '1', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('21', '1234', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '1', '完成boss系统酒店管理模块', '0', '0', null, '1235', '测试');
INSERT INTO `oa_overtime_apply` VALUES ('22', '10', '2012-05-03 00:00:00', '2012-05-06 00:00:00', '0', '完成boss系统订单处理模块', '4', '1', null, '0', '梅存兵');
INSERT INTO `oa_overtime_apply` VALUES ('24', '10', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '2', '完成boss系统库存管理', '3', '1', null, '12', '梅存兵');
INSERT INTO `oa_overtime_apply` VALUES ('25', '11', '2012-05-03 00:00:00', '2012-05-04 00:00:00', '2', '完成boss系统库存模块的设计', '3', '1', null, '12', '袁有雷');
INSERT INTO `oa_overtime_apply` VALUES ('26', '11', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '0', '完成\"bug 3043\"', '4', '1', null, '0', '袁有雷');
INSERT INTO `oa_overtime_apply` VALUES ('27', '12', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '0', '想加个班', '4', '1', null, '0', '陈福伟');
INSERT INTO `oa_overtime_apply` VALUES ('28', '1235', '2012-05-03 00:00:00', '2012-05-05 00:00:00', '0', '完成考勤记录表', '0', '1', null, '1235', '王子睿');

-- ----------------------------
-- Table structure for `oa_overtime_apply_check`
-- ----------------------------
DROP TABLE IF EXISTS `oa_overtime_apply_check`;
CREATE TABLE `oa_overtime_apply_check` (
  `oaOvertimeApplyCheckId` int(10) NOT NULL DEFAULT '0',
  `overtimeApplyId` int(10) DEFAULT NULL,
  `checkerId` int(6) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  `checkResult` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`oaOvertimeApplyCheckId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_overtime_apply_check
-- ----------------------------
INSERT INTO `oa_overtime_apply_check` VALUES ('1', '18', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('2', '18', '10', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('3', '22', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('4', '22', '10', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('5', '22', '11', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('6', '22', '12', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('9', '24', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('10', '24', '11', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('11', '25', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('12', '26', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('13', '27', '1235', '1', '同意');
INSERT INTO `oa_overtime_apply_check` VALUES ('14', '26', '12', '1', '同意');

-- ----------------------------
-- Table structure for `oa_quit_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oa_quit_apply`;
CREATE TABLE `oa_quit_apply` (
  `quitApplyId` int(10) NOT NULL,
  `applicantId` int(6) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `reason` text,
  `status` int(1) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`quitApplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_quit_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_reimbursement_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oa_reimbursement_apply`;
CREATE TABLE `oa_reimbursement_apply` (
  `reimbursementApplyId` int(10) NOT NULL,
  `applicantId` int(6) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `reimbursementItemName` varchar(40) DEFAULT NULL,
  `totalReimbursementAmount` int(8) DEFAULT NULL,
  `description` text,
  `status` int(1) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`reimbursementApplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_reimbursement_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_resource`
-- ----------------------------
DROP TABLE IF EXISTS `oa_resource`;
CREATE TABLE `oa_resource` (
  `resourceId` int(6) NOT NULL,
  `resourceName` char(40) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_resource_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oa_resource_apply`;
CREATE TABLE `oa_resource_apply` (
  `resourceApplyId` int(10) NOT NULL,
  `applicantId` int(6) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `resourceId` int(6) DEFAULT NULL,
  `resourceNumber` int(6) DEFAULT NULL,
  `reason` text,
  `status` int(1) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`resourceApplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_resource_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `oa_role`
-- ----------------------------
DROP TABLE IF EXISTS `oa_role`;
CREATE TABLE `oa_role` (
  `roleId` int(6) NOT NULL,
  `roleName` char(30) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role
-- ----------------------------
INSERT INTO `oa_role` VALUES ('100', '招聘专员', '1');

-- ----------------------------
-- Table structure for `oa_timeoff_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oa_timeoff_apply`;
CREATE TABLE `oa_timeoff_apply` (
  `timeoffApplyId` int(10) NOT NULL,
  `applicantId` int(6) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `reason` text,
  `status` int(1) DEFAULT NULL,
  `mark` int(1) DEFAULT '1',
  PRIMARY KEY (`timeoffApplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_timeoff_apply
-- ----------------------------
