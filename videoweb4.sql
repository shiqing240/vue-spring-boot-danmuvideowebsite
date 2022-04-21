/*
 Navicat Premium Data Transfer

 Source Server         : wk
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : videoweb

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 27/12/2021 11:07:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `id` int NOT NULL COMMENT '用户的id',
  `video_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户收藏记录(用-隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (69, '168-167-166');
INSERT INTO `collection` VALUES (77, '166');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `consumer_id` int NULL DEFAULT NULL COMMENT '用户id',
  `video_id` int NULL DEFAULT NULL COMMENT '视频id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '评论时间',
  `praise` int NULL DEFAULT 0 COMMENT '评论点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (26, 69, 166, '666666', '2021-12-22 18:05:32', 1);
INSERT INTO `comment` VALUES (27, 69, 166, '666666', '2021-12-22 18:05:35', 0);
INSERT INTO `comment` VALUES (28, 69, 166, '11111111', '2021-12-22 18:05:39', 0);
INSERT INTO `comment` VALUES (29, 69, 166, '1111111', '2021-12-22 18:05:41', 1);
INSERT INTO `comment` VALUES (30, 69, 166, 'da', '2021-12-23 09:49:58', 0);
INSERT INTO `comment` VALUES (31, 69, 166, '111大家好', '2021-12-27 10:35:46', 1);
INSERT INTO `comment` VALUES (32, 69, 186, '大家好', '2021-12-27 10:43:28', 1);
INSERT INTO `comment` VALUES (33, 76, 168, '111', '2021-12-27 10:48:03', 0);
INSERT INTO `comment` VALUES (34, 76, 166, '123', '2021-12-27 10:48:58', 0);
INSERT INTO `comment` VALUES (35, 76, 166, '2234', '2021-12-27 10:50:05', 0);
INSERT INTO `comment` VALUES (36, 77, 166, 'sss', '2021-12-27 10:52:18', 0);
INSERT INTO `comment` VALUES (37, 77, 187, '111', '2021-12-27 10:54:02', 0);

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0男1女)',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `birth` datetime NULL DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前端用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES (64, 'one', 'e10adc3949ba59abbe56e057f20f883e', 0, '1119609828@qq.com', '2021-12-14 00:00:00', 'wowowwo', '/avatarImages/1640165936390一人之下王也2.jpeg', '2021-12-22 17:38:56');
INSERT INTO `consumer` VALUES (65, 'two', 'e10adc3949ba59abbe56e057f20f883e', 1, '417553126@qq.com', '2021-12-13 00:00:00', 'daaaaaaaaa', '/avatarImages/1640165974034一人之下王也.jpeg', '2021-12-22 17:39:34');
INSERT INTO `consumer` VALUES (66, 'three', 'e10adc3949ba59abbe56e057f20f883e', 1, '111609828@qq.com', '2021-12-13 00:00:00', 'hello!', '/avatarImages/1640166011074一人之下诸葛青2.jpeg', '2021-12-22 17:40:11');
INSERT INTO `consumer` VALUES (67, 'four', 'e10adc3949ba59abbe56e057f20f883e', 1, '11199828@qq.com', '2021-12-05 00:00:00', 'nihao', '/avatarImages/1640166034576一人之下诸葛青4.jpeg', '2021-12-22 17:40:34');
INSERT INTO `consumer` VALUES (68, 'five', 'e10adc3949ba59abbe56e057f20f883e', 0, '4175753126@qq.com', '2021-12-02 00:00:00', '66666666666666666', '/avatarImages/1640166067969-283301dd4f4cd1b6.jpg', '2021-12-22 17:41:07');
INSERT INTO `consumer` VALUES (69, 'user', 'e10adc3949ba59abbe56e057f20f883e', 0, '5119609828@qq.com', '2021-12-07 00:00:00', '我是最美的！', '/avatarImages/1640166112523一人之下王也.jpeg', '2021-12-22 17:41:52');
INSERT INTO `consumer` VALUES (70, 'user1', 'e10adc3949ba59abbe56e057f20f883e', 1, '1119609828@qq.com', '2021-12-07 00:00:00', '', '/avatarImages/1640166195533一人之下诸葛青3.jpeg', '2021-12-22 17:43:15');
INSERT INTO `consumer` VALUES (71, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 0, '1119608828@qq.com', '2021-12-07 00:00:00', '', '/avatarImages/1640166205257一人之下诸葛青3.jpeg', '2021-12-22 17:43:25');
INSERT INTO `consumer` VALUES (72, 'user3', 'e10adc3949ba59abbe56e057f20f883e', 0, '111608828@qq.com', '2021-12-07 00:00:00', '', '/avatarImages/1640166216287一人之下诸葛青4.jpeg', '2021-12-22 17:43:36');
INSERT INTO `consumer` VALUES (75, 'user4', 'e10adc3949ba59abbe56e057f20f883e', 1, '1119609828@qq.com', '2021-12-21 00:00:00', '111', '/avatarImages/1640573075075photomode_17122020_213155.png', '2021-12-27 10:44:35');
INSERT INTO `consumer` VALUES (76, 'user5', 'e10adc3949ba59abbe56e057f20f883e', 1, '1119609828@qq.com', '2021-12-27 00:00:00', '123', '/avatarImages/1640573256452photomode_17122020_213155.png', '2021-12-27 10:47:36');
INSERT INTO `consumer` VALUES (77, 'user6', 'e10adc3949ba59abbe56e057f20f883e', 1, '1119609828@qq.com', '2021-12-15 00:00:00', 'sss', '/avatarImages/1640573511258photomode_17122020_213203.png', '2021-12-27 10:51:51');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int NOT NULL COMMENT '用户的id',
  `video_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户历史记录(用-隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES (69, '186-166-173-169-168-167');
INSERT INTO `history` VALUES (76, '166-167-168');
INSERT INTO `history` VALUES (77, '187');

-- ----------------------------
-- Table structure for hotvideo
-- ----------------------------
DROP TABLE IF EXISTS `hotvideo`;
CREATE TABLE `hotvideo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_id` int NULL DEFAULT NULL COMMENT '视频的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotvideo
-- ----------------------------

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise`  (
  `id` int NOT NULL COMMENT '用户的id',
  `video_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户的视频点赞记录(用-隔开',
  `comment_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '用户的评论点赞记录(用-隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES (69, '166-168-167', '32-31-29-26');
INSERT INTO `praise` VALUES (77, '166', NULL);

-- ----------------------------
-- Table structure for statistical
-- ----------------------------
DROP TABLE IF EXISTS `statistical`;
CREATE TABLE `statistical`  (
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_num` int NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of statistical
-- ----------------------------
INSERT INTO `statistical` VALUES ('boy', 7);
INSERT INTO `statistical` VALUES ('girl', 5);
INSERT INTO `statistical` VALUES ('style1', 0);
INSERT INTO `statistical` VALUES ('style10', 0);
INSERT INTO `statistical` VALUES ('style11', 0);
INSERT INTO `statistical` VALUES ('style12', 0);
INSERT INTO `statistical` VALUES ('style13', 0);
INSERT INTO `statistical` VALUES ('style14', 0);
INSERT INTO `statistical` VALUES ('style15', 3);
INSERT INTO `statistical` VALUES ('style16', 9);
INSERT INTO `statistical` VALUES ('style17', 0);
INSERT INTO `statistical` VALUES ('style18', 0);
INSERT INTO `statistical` VALUES ('style19', 0);
INSERT INTO `statistical` VALUES ('style2', 0);
INSERT INTO `statistical` VALUES ('style3', 0);
INSERT INTO `statistical` VALUES ('style4', 0);
INSERT INTO `statistical` VALUES ('style5', 9);
INSERT INTO `statistical` VALUES ('style6', 0);
INSERT INTO `statistical` VALUES ('style7', 0);
INSERT INTO `statistical` VALUES ('style8', 0);
INSERT INTO `statistical` VALUES ('style9', 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `time` int NULL DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1460885537429786624', NULL, 'admig', '组织管理-用户管理-新增用户接口', 1654, 'com.site.controller.UserController.createUser', '[{\"email\":\"123456@qq.com\",\"password\":\"123456\",\"phone\":\"123456\",\"sex\":1,\"status\":1,\"username\":\"adminszx\"}]', '0:0:0:0:0:0:0:1', '2021-11-17 16:20:29');
INSERT INTO `sys_log` VALUES ('1461224587223240704', NULL, NULL, '组织管理-菜单权限管理-权限表格列表数据展示', 2050, 'com.site.controller.PermissionController.getAllPermission', '', '0:0:0:0:0:0:0:1', '2021-11-18 14:47:44');
INSERT INTO `sys_log` VALUES ('1461248318184230912', NULL, NULL, '组织管理-菜单权限管理-新增菜单权限接口', 1420, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '0:0:0:0:0:0:0:1', '2021-11-18 16:22:02');
INSERT INTO `sys_log` VALUES ('1466280807680315392', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 312, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:39:21');
INSERT INTO `sys_log` VALUES ('1466280807680315393', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 616, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 13:39:21');
INSERT INTO `sys_log` VALUES ('1466280811752984576', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 21, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:39:22');
INSERT INTO `sys_log` VALUES ('1466280865201000448', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 8, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 13:39:35');
INSERT INTO `sys_log` VALUES ('1466280885400768512', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:39:40');
INSERT INTO `sys_log` VALUES ('1466280892359118848', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 6, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:39:42');
INSERT INTO `sys_log` VALUES ('1466280922927206400', '1237361915165020161', 'admin', '组织管理-菜单权限管理-新增菜单权限接口', 6, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '127.0.0.1', '2021-12-02 13:39:49');
INSERT INTO `sys_log` VALUES ('1466281614882508800', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:42:34');
INSERT INTO `sys_log` VALUES ('1466281621815693312', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:42:35');
INSERT INTO `sys_log` VALUES ('1466281630242050048', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 13:42:38');
INSERT INTO `sys_log` VALUES ('1466282579085889536', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 10, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:46:24');
INSERT INTO `sys_log` VALUES ('1466282593040338944', '1237361915165020161', 'admin', '组织管理-菜单权限管理-新增菜单权限接口', 5, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '127.0.0.1', '2021-12-02 13:46:27');
INSERT INTO `sys_log` VALUES ('1466282690708901888', '1237361915165020161', 'admin', '组织管理-菜单权限管理-删除菜单权限接口', 25, 'com.site.controller.PermissionController.deletedPermission', '[\"1247871697634332672\"]', '127.0.0.1', '2021-12-02 13:46:50');
INSERT INTO `sys_log` VALUES ('1466282690796982272', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:46:50');
INSERT INTO `sys_log` VALUES ('1466282730567372800', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:47:00');
INSERT INTO `sys_log` VALUES ('1466282961132457984', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:47:55');
INSERT INTO `sys_log` VALUES ('1466282976336809984', '1237361915165020161', 'admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 4, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-02 13:47:58');
INSERT INTO `sys_log` VALUES ('1466282976517165056', '1237361915165020161', 'admin', '组织管理-角色管理-获取角色详情接口', 6, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901513\"]', '127.0.0.1', '2021-12-02 13:47:58');
INSERT INTO `sys_log` VALUES ('1466283020234395648', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 13:48:09');
INSERT INTO `sys_log` VALUES ('1466283023271071744', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 13:48:10');
INSERT INTO `sys_log` VALUES ('1466283033412898816', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 13, 'com.site.controller.UserController.getUserOwnRole', '[\"1237365636208922624\"]', '127.0.0.1', '2021-12-02 13:48:12');
INSERT INTO `sys_log` VALUES ('1466283062315847680', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:48:19');
INSERT INTO `sys_log` VALUES ('1466283091252350976', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色状态接口', 6, 'com.site.controller.RoleController.updateRoleStatus', '[\"1237258113002901513\",0]', '127.0.0.1', '2021-12-02 13:48:26');
INSERT INTO `sys_log` VALUES ('1466283097115987968', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色状态接口', 6, 'com.site.controller.RoleController.updateRoleStatus', '[\"1237258113002901513\",1]', '127.0.0.1', '2021-12-02 13:48:27');
INSERT INTO `sys_log` VALUES ('1466284714594799616', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 29, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 13:54:53');
INSERT INTO `sys_log` VALUES ('1466284733301395456', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 13:54:57');
INSERT INTO `sys_log` VALUES ('1466284747822075904', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色状态接口', 5, 'com.site.controller.RoleController.updateRoleStatus', '[\"1237258113002901513\",0]', '127.0.0.1', '2021-12-02 13:55:01');
INSERT INTO `sys_log` VALUES ('1466284775689031680', '1237361915165020161', 'admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 3, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-02 13:55:07');
INSERT INTO `sys_log` VALUES ('1466304727674392576', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 15:14:24');
INSERT INTO `sys_log` VALUES ('1466304736423710720', '1237361915165020161', 'admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 4, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-02 15:14:26');
INSERT INTO `sys_log` VALUES ('1466304736570511360', '1237361915165020161', 'admin', '组织管理-角色管理-获取角色详情接口', 4, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901514\"]', '127.0.0.1', '2021-12-02 15:14:26');
INSERT INTO `sys_log` VALUES ('1466307397428580352', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 37, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 15:25:01');
INSERT INTO `sys_log` VALUES ('1466307399584452608', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 5, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 15:25:01');
INSERT INTO `sys_log` VALUES ('1466320607825235968', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 519, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 16:17:30');
INSERT INTO `sys_log` VALUES ('1466358076167819264', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 105, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-02 18:46:24');
INSERT INTO `sys_log` VALUES ('1466358080404066304', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 23, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-02 18:46:25');
INSERT INTO `sys_log` VALUES ('1466358086024433664', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 28, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-02 18:46:26');
INSERT INTO `sys_log` VALUES ('1468539896003170304', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 56, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 19:16:10');
INSERT INTO `sys_log` VALUES ('1468539901485125632', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 11, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-08 19:16:11');
INSERT INTO `sys_log` VALUES ('1468539906430210048', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 12, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-08 19:16:13');
INSERT INTO `sys_log` VALUES ('1468539959018393600', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 5, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-08 19:16:25');
INSERT INTO `sys_log` VALUES ('1468540488083705856', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 11, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 19:18:31');
INSERT INTO `sys_log` VALUES ('1468540492936515584', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-08 19:18:32');
INSERT INTO `sys_log` VALUES ('1468568845349425152', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 39, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-08 21:11:12');
INSERT INTO `sys_log` VALUES ('1468571001926324224', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 11, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 21:19:46');
INSERT INTO `sys_log` VALUES ('1468571007571857408', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 11, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-08 21:19:48');
INSERT INTO `sys_log` VALUES ('1468571187327143936', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 7, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-08 21:20:30');
INSERT INTO `sys_log` VALUES ('1468576843585163264', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 28, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 21:42:59');
INSERT INTO `sys_log` VALUES ('1468576846508593152', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-08 21:43:00');
INSERT INTO `sys_log` VALUES ('1468576857518641152', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 5, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-08 21:43:02');
INSERT INTO `sys_log` VALUES ('1468591092730564608', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 55, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:39:36');
INSERT INTO `sys_log` VALUES ('1468591764230246400', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 14, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:42:16');
INSERT INTO `sys_log` VALUES ('1468591766637776896', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:42:17');
INSERT INTO `sys_log` VALUES ('1468591767405334528', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:42:17');
INSERT INTO `sys_log` VALUES ('1468591895528738816', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 10, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 22:42:48');
INSERT INTO `sys_log` VALUES ('1468591909252501504', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:42:51');
INSERT INTO `sys_log` VALUES ('1468591938126090240', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:42:58');
INSERT INTO `sys_log` VALUES ('1468592606899474432', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:45:37');
INSERT INTO `sys_log` VALUES ('1468592985439604736', '1237361915165020161', 'admin', '视频管理-添加视频-添加视频', 0, 'com.site.controller.VideoController.addVideo', NULL, '127.0.0.1', '2021-12-08 22:47:08');
INSERT INTO `sys_log` VALUES ('1468593015886057472', '1237361915165020161', 'admin', '视频管理-添加视频-添加视频', 0, 'com.site.controller.VideoController.addVideo', NULL, '127.0.0.1', '2021-12-08 22:47:15');
INSERT INTO `sys_log` VALUES ('1468593047729213440', '1237361915165020161', 'admin', '视频管理-添加视频-添加视频', 1, 'com.site.controller.VideoController.addVideo', NULL, '127.0.0.1', '2021-12-08 22:47:22');
INSERT INTO `sys_log` VALUES ('1468594874948390912', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 19, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 22:54:38');
INSERT INTO `sys_log` VALUES ('1468594884050030592', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:54:40');
INSERT INTO `sys_log` VALUES ('1468595155916427264', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 7, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:55:45');
INSERT INTO `sys_log` VALUES ('1468595205304356864', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:55:57');
INSERT INTO `sys_log` VALUES ('1468595279782612992', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:56:15');
INSERT INTO `sys_log` VALUES ('1468595292843675648', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:56:18');
INSERT INTO `sys_log` VALUES ('1468595297922977792', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:56:19');
INSERT INTO `sys_log` VALUES ('1468595511673098240', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:10');
INSERT INTO `sys_log` VALUES ('1468595515536052224', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:11');
INSERT INTO `sys_log` VALUES ('1468595526072143872', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:57:13');
INSERT INTO `sys_log` VALUES ('1468595532363599872', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:15');
INSERT INTO `sys_log` VALUES ('1468595534074875904', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:15');
INSERT INTO `sys_log` VALUES ('1468595549287616512', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 22:57:19');
INSERT INTO `sys_log` VALUES ('1468595573023182848', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:24');
INSERT INTO `sys_log` VALUES ('1468595576689004544', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:25');
INSERT INTO `sys_log` VALUES ('1468595642086592512', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:41');
INSERT INTO `sys_log` VALUES ('1468595649862832128', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:57:43');
INSERT INTO `sys_log` VALUES ('1468595724685021184', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:58:01');
INSERT INTO `sys_log` VALUES ('1468595731131666432', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:58:02');
INSERT INTO `sys_log` VALUES ('1468595755500572672', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 22:58:08');
INSERT INTO `sys_log` VALUES ('1468598077878308864', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 52, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:07:22');
INSERT INTO `sys_log` VALUES ('1468598309923983360', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:08:17');
INSERT INTO `sys_log` VALUES ('1468598323844878336', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:08:20');
INSERT INTO `sys_log` VALUES ('1468598370066108416', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:08:31');
INSERT INTO `sys_log` VALUES ('1468598748434272256', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 14, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:10:02');
INSERT INTO `sys_log` VALUES ('1468599024956346368', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 11, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:11:07');
INSERT INTO `sys_log` VALUES ('1468599062264680448', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:11:16');
INSERT INTO `sys_log` VALUES ('1468599066366709760', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:11:17');
INSERT INTO `sys_log` VALUES ('1468599069696987136', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 3, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-08 23:11:18');
INSERT INTO `sys_log` VALUES ('1468600404873973760', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 592, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 23:16:36');
INSERT INTO `sys_log` VALUES ('1468602193694298112', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 60, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-08 23:23:43');
INSERT INTO `sys_log` VALUES ('1468602204788232192', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 10, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:23:46');
INSERT INTO `sys_log` VALUES ('1468603583871193088', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 11, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-08 23:29:14');
INSERT INTO `sys_log` VALUES ('1468815381643792384', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 506, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:30:51');
INSERT INTO `sys_log` VALUES ('1468815395791179776', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 26, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:30:54');
INSERT INTO `sys_log` VALUES ('1468815593535836160', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 32, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 13:31:41');
INSERT INTO `sys_log` VALUES ('1468815760909537280', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 4, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 13:32:21');
INSERT INTO `sys_log` VALUES ('1468815783101599744', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 13, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 13:32:27');
INSERT INTO `sys_log` VALUES ('1468816356106440704', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 14, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 13:34:43');
INSERT INTO `sys_log` VALUES ('1468817410604797952', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 6, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:38:55');
INSERT INTO `sys_log` VALUES ('1468817418141962240', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:38:56');
INSERT INTO `sys_log` VALUES ('1468817468641382400', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 6, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 13:39:08');
INSERT INTO `sys_log` VALUES ('1468817877757988864', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 5, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 13:40:46');
INSERT INTO `sys_log` VALUES ('1468817878458437632', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 13:40:46');
INSERT INTO `sys_log` VALUES ('1468817879188246528', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 13:40:46');
INSERT INTO `sys_log` VALUES ('1468817879901278208', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 13:40:47');
INSERT INTO `sys_log` VALUES ('1468817889283936256', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:40:49');
INSERT INTO `sys_log` VALUES ('1468817909672448000', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:40:54');
INSERT INTO `sys_log` VALUES ('1468817912470048768', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:40:54');
INSERT INTO `sys_log` VALUES ('1468818858507898880', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:44:40');
INSERT INTO `sys_log` VALUES ('1468818876467908608', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:44:44');
INSERT INTO `sys_log` VALUES ('1468818894327255040', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:44:48');
INSERT INTO `sys_log` VALUES ('1468818910819258368', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 46, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-09 13:44:52');
INSERT INTO `sys_log` VALUES ('1468818916569649152', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 11, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-09 13:44:54');
INSERT INTO `sys_log` VALUES ('1468818921737031680', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 19, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-09 13:44:55');
INSERT INTO `sys_log` VALUES ('1468818949973086208', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-09 13:45:02');
INSERT INTO `sys_log` VALUES ('1468819144790118400', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:45:48');
INSERT INTO `sys_log` VALUES ('1468819149307383808', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:45:49');
INSERT INTO `sys_log` VALUES ('1468819193750228992', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:00');
INSERT INTO `sys_log` VALUES ('1468819200431755264', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:01');
INSERT INTO `sys_log` VALUES ('1468819204965797888', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:02');
INSERT INTO `sys_log` VALUES ('1468819273232289792', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:19');
INSERT INTO `sys_log` VALUES ('1468819286456930304', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:22');
INSERT INTO `sys_log` VALUES ('1468819290558959616', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 13:46:23');
INSERT INTO `sys_log` VALUES ('1468853671063326720', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 612, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:03:00');
INSERT INTO `sys_log` VALUES ('1468853692970176512', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 8, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 16:03:05');
INSERT INTO `sys_log` VALUES ('1468853698443743232', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 0, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 16:03:06');
INSERT INTO `sys_log` VALUES ('1468853700943548416', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 0, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 16:03:07');
INSERT INTO `sys_log` VALUES ('1468853702998757376', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 4, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 16:03:07');
INSERT INTO `sys_log` VALUES ('1468853749664583680', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 28, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:03:19');
INSERT INTO `sys_log` VALUES ('1468853897455079424', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 48, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 16:03:54');
INSERT INTO `sys_log` VALUES ('1468854186270658560', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 18, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:05:03');
INSERT INTO `sys_log` VALUES ('1468854187709304832', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:05:03');
INSERT INTO `sys_log` VALUES ('1468854192633417728', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 4, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:05:04');
INSERT INTO `sys_log` VALUES ('1468854208370446336', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:05:08');
INSERT INTO `sys_log` VALUES ('1468854215500763136', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 52, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-09 16:05:10');
INSERT INTO `sys_log` VALUES ('1468854221557338112', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 20, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-09 16:05:11');
INSERT INTO `sys_log` VALUES ('1468854226200432640', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 32, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-09 16:05:12');
INSERT INTO `sys_log` VALUES ('1468854240364597248', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 16, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-09 16:05:16');
INSERT INTO `sys_log` VALUES ('1468854269762473984', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 12, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-09 16:05:23');
INSERT INTO `sys_log` VALUES ('1468854466102038528', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:06:09');
INSERT INTO `sys_log` VALUES ('1468854582569472000', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 12, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 16:06:37');
INSERT INTO `sys_log` VALUES ('1468854755848753152', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:07:18');
INSERT INTO `sys_log` VALUES ('1468854768062566400', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:07:21');
INSERT INTO `sys_log` VALUES ('1468854782872653824', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 8, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-09 16:07:25');
INSERT INTO `sys_log` VALUES ('1468854786983071744', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 8, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-09 16:07:26');
INSERT INTO `sys_log` VALUES ('1468854791152209920', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 8, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-09 16:07:27');
INSERT INTO `sys_log` VALUES ('1468854808093003776', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 12, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:07:31');
INSERT INTO `sys_log` VALUES ('1468854868088328192', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 0, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 16:07:45');
INSERT INTO `sys_log` VALUES ('1468875894306246656', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 27, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 17:31:18');
INSERT INTO `sys_log` VALUES ('1468905006819315712', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 22, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:26:59');
INSERT INTO `sys_log` VALUES ('1468905011932172288', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:27:00');
INSERT INTO `sys_log` VALUES ('1468905016696901632', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:27:02');
INSERT INTO `sys_log` VALUES ('1468905027228798976', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 19:27:04');
INSERT INTO `sys_log` VALUES ('1468905027933442048', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 19:27:04');
INSERT INTO `sys_log` VALUES ('1468905028575170560', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 19:27:04');
INSERT INTO `sys_log` VALUES ('1468905029128818688', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 19:27:05');
INSERT INTO `sys_log` VALUES ('1468905033948073984', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:27:06');
INSERT INTO `sys_log` VALUES ('1468907899647561728', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 24, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-09 19:38:29');
INSERT INTO `sys_log` VALUES ('1468907993130209280', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 11, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 19:38:51');
INSERT INTO `sys_log` VALUES ('1468908342675116032', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 15, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 19:40:15');
INSERT INTO `sys_log` VALUES ('1468910428934508544', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 353, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:48:32');
INSERT INTO `sys_log` VALUES ('1468910433867010048', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 5, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 19:48:33');
INSERT INTO `sys_log` VALUES ('1468910587877658624', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:49:10');
INSERT INTO `sys_log` VALUES ('1468911099704381440', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 7, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 19:51:12');
INSERT INTO `sys_log` VALUES ('1468914079136616448', '1237361915165020161', 'admin', '系统管理-日志管理-删除日志接口', 8, 'com.site.controller.LogController.deletedLog', '[[\"1468914057053605888\"]]', '127.0.0.1', '2021-12-09 20:03:02');
INSERT INTO `sys_log` VALUES ('1468914291058020352', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 7, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:03:53');
INSERT INTO `sys_log` VALUES ('1468914306535002112', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:03:56');
INSERT INTO `sys_log` VALUES ('1468914675314987008', '1237361915165020161', 'admin', '系统管理-日志管理-删除日志接口', 6, 'com.site.controller.LogController.deletedLog', '[[\"1468914569920516096\"]]', '127.0.0.1', '2021-12-09 20:05:24');
INSERT INTO `sys_log` VALUES ('1468915014231527424', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:06:45');
INSERT INTO `sys_log` VALUES ('1468917340363165696', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 369, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:16:00');
INSERT INTO `sys_log` VALUES ('1468917379529576448', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:16:09');
INSERT INTO `sys_log` VALUES ('1468920697618305024', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 24, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:29:20');
INSERT INTO `sys_log` VALUES ('1468920939206021120', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:30:18');
INSERT INTO `sys_log` VALUES ('1468921034848735232', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 23, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 20:30:41');
INSERT INTO `sys_log` VALUES ('1468922143273259008', NULL, NULL, '前台用户管理-添加前台用户-添加前台用户', 16, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-09 20:35:05');
INSERT INTO `sys_log` VALUES ('1468922611147870208', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 16, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-09 20:36:56');
INSERT INTO `sys_log` VALUES ('1468927539622842368', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 26, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:56:31');
INSERT INTO `sys_log` VALUES ('1468927546874793984', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 4, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:56:33');
INSERT INTO `sys_log` VALUES ('1468927547529105408', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:56:33');
INSERT INTO `sys_log` VALUES ('1468927548204388352', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:56:34');
INSERT INTO `sys_log` VALUES ('1468927554307100672', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:56:35');
INSERT INTO `sys_log` VALUES ('1468927574976630784', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:56:40');
INSERT INTO `sys_log` VALUES ('1468927687560138752', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:07');
INSERT INTO `sys_log` VALUES ('1468927704148611072', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:11');
INSERT INTO `sys_log` VALUES ('1468927851133800448', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:46');
INSERT INTO `sys_log` VALUES ('1468927864626876416', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:49');
INSERT INTO `sys_log` VALUES ('1468927869458714624', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:50');
INSERT INTO `sys_log` VALUES ('1468927904372101120', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:57:58');
INSERT INTO `sys_log` VALUES ('1468927914962718720', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:58:01');
INSERT INTO `sys_log` VALUES ('1468927931723157504', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 20:58:05');
INSERT INTO `sys_log` VALUES ('1468927939369373696', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:58:07');
INSERT INTO `sys_log` VALUES ('1468927940044656640', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:58:07');
INSERT INTO `sys_log` VALUES ('1468927940728328192', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:58:07');
INSERT INTO `sys_log` VALUES ('1468927941319725056', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 20:58:07');
INSERT INTO `sys_log` VALUES ('1468928799243636736', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 6, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 21:01:32');
INSERT INTO `sys_log` VALUES ('1468928814129221632', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 21:01:35');
INSERT INTO `sys_log` VALUES ('1468928822580744192', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 21:01:37');
INSERT INTO `sys_log` VALUES ('1468928823214084096', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 21:01:37');
INSERT INTO `sys_log` VALUES ('1468928823809675264', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 0, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-09 21:01:38');
INSERT INTO `sys_log` VALUES ('1468928860535001088', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-09 21:01:46');
INSERT INTO `sys_log` VALUES ('1469314697122680832', NULL, NULL, '组织管理-菜单权限管理-新增菜单权限接口', 1437, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '0:0:0:0:0:0:0:1', '2021-12-10 22:34:57');
INSERT INTO `sys_log` VALUES ('1469318180672507904', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 39, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-10 22:48:48');
INSERT INTO `sys_log` VALUES ('1469318202877153280', '1237361915165020161', 'admin', '组织管理-用户管理-列表修改用户信息接口', 17, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-10 22:48:53');
INSERT INTO `sys_log` VALUES ('1469318229930414080', '1237361915165020161', 'admin', '组织管理-用户管理-列表修改用户信息接口', 8, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-10 22:48:59');
INSERT INTO `sys_log` VALUES ('1469330325728530432', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 1946, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:37:03');
INSERT INTO `sys_log` VALUES ('1469330325728530433', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 853, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:37:03');
INSERT INTO `sys_log` VALUES ('1469330329000087552', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 17, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:37:04');
INSERT INTO `sys_log` VALUES ('1469330334452682752', NULL, NULL, '组织管理-角色管理-分页获取角色数据接口', 64, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-10 23:37:05');
INSERT INTO `sys_log` VALUES ('1469330340949659648', NULL, NULL, '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 27, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-10 23:37:07');
INSERT INTO `sys_log` VALUES ('1469330341197123584', NULL, NULL, '组织管理-角色管理-获取角色详情接口', 15, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-10 23:37:07');
INSERT INTO `sys_log` VALUES ('1469330368665620480', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 11, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:37:13');
INSERT INTO `sys_log` VALUES ('1469330408926744576', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:37:23');
INSERT INTO `sys_log` VALUES ('1469330785491357696', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 13, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:38:53');
INSERT INTO `sys_log` VALUES ('1469330799085096960', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:38:56');
INSERT INTO `sys_log` VALUES ('1469330854105976832', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:39:09');
INSERT INTO `sys_log` VALUES ('1469330858451275776', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 4, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:39:10');
INSERT INTO `sys_log` VALUES ('1469330934980546560', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:39:28');
INSERT INTO `sys_log` VALUES ('1469331121308307456', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 8, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:40:13');
INSERT INTO `sys_log` VALUES ('1469331134327427072', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:40:16');
INSERT INTO `sys_log` VALUES ('1469331295682301952', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:40:54');
INSERT INTO `sys_log` VALUES ('1469331306159673344', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:40:57');
INSERT INTO `sys_log` VALUES ('1469331312056864768', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:40:58');
INSERT INTO `sys_log` VALUES ('1469331344927625216', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:41:06');
INSERT INTO `sys_log` VALUES ('1469331390121250816', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:41:17');
INSERT INTO `sys_log` VALUES ('1469331409654124544', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:41:22');
INSERT INTO `sys_log` VALUES ('1469331566131023872', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:41:59');
INSERT INTO `sys_log` VALUES ('1469331576218324992', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 4, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:42:01');
INSERT INTO `sys_log` VALUES ('1469331989390823424', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 12, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:43:40');
INSERT INTO `sys_log` VALUES ('1469332002141507584', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:43:43');
INSERT INTO `sys_log` VALUES ('1469332008160333824', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:43:44');
INSERT INTO `sys_log` VALUES ('1469332020554502144', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 4, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:43:47');
INSERT INTO `sys_log` VALUES ('1469332701621391360', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 10, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:46:30');
INSERT INTO `sys_log` VALUES ('1469332717433917440', NULL, NULL, '热门视频管理管理-查询所有热门视频-查询所有热门视频', 14, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-10 23:46:33');
INSERT INTO `sys_log` VALUES ('1469332724778143744', NULL, NULL, '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-10 23:46:35');
INSERT INTO `sys_log` VALUES ('1469333842635657216', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 11, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:02');
INSERT INTO `sys_log` VALUES ('1469333861308698624', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:06');
INSERT INTO `sys_log` VALUES ('1469333871081426944', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:08');
INSERT INTO `sys_log` VALUES ('1469333879142879232', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:10');
INSERT INTO `sys_log` VALUES ('1469333940862062592', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:25');
INSERT INTO `sys_log` VALUES ('1469333952891326464', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:28');
INSERT INTO `sys_log` VALUES ('1469334012907622400', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:42');
INSERT INTO `sys_log` VALUES ('1469334023825395712', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:51:45');
INSERT INTO `sys_log` VALUES ('1469334672445149184', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 11, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-10 23:54:19');
INSERT INTO `sys_log` VALUES ('1469334710994997248', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 5, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:29');
INSERT INTO `sys_log` VALUES ('1469334742309670912', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 57, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742347419648', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 64, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742360002560', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 66, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742360002561', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 61, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742368391168', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 61, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742376779776', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 62, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742498414592', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 21, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742502608896', NULL, NULL, '前台用户管理-删除前台用户-删除前台用户', 18, 'com.site.controller.ConsumerController.deleteConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742506803200', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742578106368', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742641020928', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742712324096', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 4, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742762655744', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 2, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742821376000', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742875901952', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 2, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469334742972370944', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 4, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:54:36');
INSERT INTO `sys_log` VALUES ('1469335299812364288', NULL, NULL, '前台用户管理-添加前台用户-添加前台用户', 26, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:56:49');
INSERT INTO `sys_log` VALUES ('1469335299954970624', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-10 23:56:49');
INSERT INTO `sys_log` VALUES ('1469336794515509248', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 43, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:02:45');
INSERT INTO `sys_log` VALUES ('1469336801259950080', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:02:47');
INSERT INTO `sys_log` VALUES ('1469339687498944512', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 1838, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:14:15');
INSERT INTO `sys_log` VALUES ('1469339697426862080', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 32, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:14:18');
INSERT INTO `sys_log` VALUES ('1469339789818990592', NULL, NULL, '前台用户管理-添加前台用户-添加前台用户', 35, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-11 00:14:40');
INSERT INTO `sys_log` VALUES ('1469339867031932928', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:14:58');
INSERT INTO `sys_log` VALUES ('1469340245425262592', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 11, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:16:28');
INSERT INTO `sys_log` VALUES ('1469340253356691456', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 5, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 00:16:30');
INSERT INTO `sys_log` VALUES ('1469341029013524480', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 420, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-11 00:19:35');
INSERT INTO `sys_log` VALUES ('1469341032519962624', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 37, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-11 00:19:36');
INSERT INTO `sys_log` VALUES ('1469686534323179520', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 13, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:12:30');
INSERT INTO `sys_log` VALUES ('1469686550039236608', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 9, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:12:34');
INSERT INTO `sys_log` VALUES ('1469686619127812096', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:12:50');
INSERT INTO `sys_log` VALUES ('1469686626115522560', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:12:52');
INSERT INTO `sys_log` VALUES ('1469686644671123456', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:12:56');
INSERT INTO `sys_log` VALUES ('1469686696550469632', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 46, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-11 23:13:09');
INSERT INTO `sys_log` VALUES ('1469686732894113792', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:13:17');
INSERT INTO `sys_log` VALUES ('1469687165943418880', NULL, NULL, '前台用户管理-获取性别数量-获取性别数量', 20, 'com.site.controller.ConsumerController.selectBySex', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:00');
INSERT INTO `sys_log` VALUES ('1469687165943418881', NULL, NULL, '视频管理-获取风格数量-获取风格数量', 20, 'com.site.controller.VideoController.selectByStyle', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:00');
INSERT INTO `sys_log` VALUES ('1469687176819249152', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 11, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:03');
INSERT INTO `sys_log` VALUES ('1469687252211863552', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:21');
INSERT INTO `sys_log` VALUES ('1469687255714107392', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 4, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:22');
INSERT INTO `sys_log` VALUES ('1469687306481963008', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 4, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:34');
INSERT INTO `sys_log` VALUES ('1469687313188655104', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:15:36');
INSERT INTO `sys_log` VALUES ('1469690003121639424', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 358, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:26:17');
INSERT INTO `sys_log` VALUES ('1469690660582985728', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 54, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-11 23:28:54');
INSERT INTO `sys_log` VALUES ('1469690690589036544', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-11 23:29:01');
INSERT INTO `sys_log` VALUES ('1469690848420696064', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-11 23:29:38');
INSERT INTO `sys_log` VALUES ('1469691161110253568', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 18, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-11 23:30:53');
INSERT INTO `sys_log` VALUES ('1469691163266125824', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 9, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-11 23:30:54');
INSERT INTO `sys_log` VALUES ('1469694234859802624', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 36, 'com.site.controller.UserController.getUserOwnRole', '[\"1237365636208922624\"]', '127.0.0.1', '2021-12-11 23:43:06');
INSERT INTO `sys_log` VALUES ('1469694344570212352', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 6, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-11 23:43:32');
INSERT INTO `sys_log` VALUES ('1469696921407983616', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 23, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-11 23:53:46');
INSERT INTO `sys_log` VALUES ('1469699068413480960', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 28, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:02:18');
INSERT INTO `sys_log` VALUES ('1469699073186598912', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 14, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-12 00:02:19');
INSERT INTO `sys_log` VALUES ('1469699077355737088', '1237361915165020161', 'admin', '组织管理-菜单权限管理-新增菜单权限接口', 6, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '127.0.0.1', '2021-12-12 00:02:20');
INSERT INTO `sys_log` VALUES ('1469699094724349952', '1237361915165020161', 'admin', '组织管理-菜单权限管理-新增菜单权限接口', 5, 'com.site.controller.PermissionController.getAllPermissionTreeExBtn', '', '127.0.0.1', '2021-12-12 00:02:25');
INSERT INTO `sys_log` VALUES ('1469699129755176960', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:02:33');
INSERT INTO `sys_log` VALUES ('1469700340931760128', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 9, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-12 00:07:22');
INSERT INTO `sys_log` VALUES ('1469700345889427456', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:07:23');
INSERT INTO `sys_log` VALUES ('1469700350280863744', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 4, 'com.site.controller.UserController.getUserOwnRole', '[\"1237365636208922624\"]', '127.0.0.1', '2021-12-12 00:07:24');
INSERT INTO `sys_log` VALUES ('1469703251585798144', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 27, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:18:56');
INSERT INTO `sys_log` VALUES ('1469703325837561856', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-12 00:19:13');
INSERT INTO `sys_log` VALUES ('1469703329222365184', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:19:14');
INSERT INTO `sys_log` VALUES ('1469703733041565696', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 8, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 00:20:50');
INSERT INTO `sys_log` VALUES ('1469703793682812928', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 4, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:21:05');
INSERT INTO `sys_log` VALUES ('1469703818546647040', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:21:11');
INSERT INTO `sys_log` VALUES ('1469705177144627200', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 21, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:26:35');
INSERT INTO `sys_log` VALUES ('1469705204495683584', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:26:41');
INSERT INTO `sys_log` VALUES ('1469705574131306496', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 7, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:28:09');
INSERT INTO `sys_log` VALUES ('1469705587922178048', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:28:13');
INSERT INTO `sys_log` VALUES ('1469705620826492928', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:28:20');
INSERT INTO `sys_log` VALUES ('1469706239134011392', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 5, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:30:48');
INSERT INTO `sys_log` VALUES ('1469706243408007168', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:30:49');
INSERT INTO `sys_log` VALUES ('1469706254007013376', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 14, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:30:51');
INSERT INTO `sys_log` VALUES ('1469706255806369792', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:30:52');
INSERT INTO `sys_log` VALUES ('1469706256393572352', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:30:52');
INSERT INTO `sys_log` VALUES ('1469706257073049600', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:30:52');
INSERT INTO `sys_log` VALUES ('1469706257710583808', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:30:52');
INSERT INTO `sys_log` VALUES ('1469707434535817216', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 5, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:35:33');
INSERT INTO `sys_log` VALUES ('1469707448599318528', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:35:36');
INSERT INTO `sys_log` VALUES ('1469707458065862656', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:35:39');
INSERT INTO `sys_log` VALUES ('1469708455509102592', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 7, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:39:36');
INSERT INTO `sys_log` VALUES ('1469708467035049984', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:39:39');
INSERT INTO `sys_log` VALUES ('1469708473066459136', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:39:41');
INSERT INTO `sys_log` VALUES ('1469711198277734400', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 21, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:30');
INSERT INTO `sys_log` VALUES ('1469711210235695104', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:33');
INSERT INTO `sys_log` VALUES ('1469711283262722048', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:51');
INSERT INTO `sys_log` VALUES ('1469711287343779840', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:51');
INSERT INTO `sys_log` VALUES ('1469711312291500032', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:57');
INSERT INTO `sys_log` VALUES ('1469711318293549056', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 1, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:50:59');
INSERT INTO `sys_log` VALUES ('1469712105480523776', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 7, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 00:54:07');
INSERT INTO `sys_log` VALUES ('1469712179073781760', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:54:24');
INSERT INTO `sys_log` VALUES ('1469712179719704576', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:54:24');
INSERT INTO `sys_log` VALUES ('1469712184304078848', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:54:25');
INSERT INTO `sys_log` VALUES ('1469713548274962432', '1237361915165020161', 'admin', '资源管理-查询所有未审核视频-查询所有未审核视频', 6, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:59:51');
INSERT INTO `sys_log` VALUES ('1469713559775744000', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 00:59:53');
INSERT INTO `sys_log` VALUES ('1469713567606509568', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 1, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:59:55');
INSERT INTO `sys_log` VALUES ('1469713568285986816', '1237361915165020161', 'admin', '热门视频管理管理-查询所有热门视频-查询所有热门视频', 2, 'com.site.controller.HotVideoController.allHotVideo', NULL, '127.0.0.1', '2021-12-12 00:59:55');
INSERT INTO `sys_log` VALUES ('1469719625162952704', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 23, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 01:23:59');
INSERT INTO `sys_log` VALUES ('1469719649397641216', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 01:24:05');
INSERT INTO `sys_log` VALUES ('1469719655525519360', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 01:24:07');
INSERT INTO `sys_log` VALUES ('1469719670641790976', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 6, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"ad\"}]', '127.0.0.1', '2021-12-12 01:24:10');
INSERT INTO `sys_log` VALUES ('1469719673867210752', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"ad\"}]', '127.0.0.1', '2021-12-12 01:24:11');
INSERT INTO `sys_log` VALUES ('1469719674634768384', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"ad\"}]', '127.0.0.1', '2021-12-12 01:24:11');
INSERT INTO `sys_log` VALUES ('1469719709707538432', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\\t 超级管理员\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"admin\"}]', '127.0.0.1', '2021-12-12 01:24:20');
INSERT INTO `sys_log` VALUES ('1469719714149306368', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\\t 超级管理员\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"admin\"}]', '127.0.0.1', '2021-12-12 01:24:21');
INSERT INTO `sys_log` VALUES ('1469719714828783616', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\\t 超级管理员\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"admin\"}]', '127.0.0.1', '2021-12-12 01:24:21');
INSERT INTO `sys_log` VALUES ('1469719728703541248', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 5, 'com.site.controller.UserController.getUserOwnRole', '[\"1237365636208922624\"]', '127.0.0.1', '2021-12-12 01:24:24');
INSERT INTO `sys_log` VALUES ('1469719742091759616', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 3, 'com.site.controller.UserController.getUserOwnRole', '[\"1246352746546860032\"]', '127.0.0.1', '2021-12-12 01:24:27');
INSERT INTO `sys_log` VALUES ('1469719763323326464', '1237361915165020161', 'admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 17, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[],\"userId\":\"1246352746546860032\"}]', '127.0.0.1', '2021-12-12 01:24:32');
INSERT INTO `sys_log` VALUES ('1469719775700717568', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 3, 'com.site.controller.UserController.getUserOwnRole', '[\"1246071816909361152\"]', '127.0.0.1', '2021-12-12 01:24:35');
INSERT INTO `sys_log` VALUES ('1469719788497539072', '1237361915165020161', 'admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 17, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[\"1237258113002901515\"],\"userId\":\"1246071816909361152\"}]', '127.0.0.1', '2021-12-12 01:24:38');
INSERT INTO `sys_log` VALUES ('1469719794554114048', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1246071816909361152\"]', '127.0.0.1', '2021-12-12 01:24:40');
INSERT INTO `sys_log` VALUES ('1469719822140051456', '1237361915165020161', 'admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 9, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[\"1237258113002901515\",\"1237258113002901514\"],\"userId\":\"1246071816909361152\"}]', '127.0.0.1', '2021-12-12 01:24:46');
INSERT INTO `sys_log` VALUES ('1469719827282268160', '1237361915165020161', 'admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 4, 'com.site.controller.UserController.getUserOwnRole', '[\"1246071816909361152\"]', '127.0.0.1', '2021-12-12 01:24:48');
INSERT INTO `sys_log` VALUES ('1469719849000374272', '1237361915165020161', 'admin', '组织管理-用户管理-列表修改用户信息接口', 14, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-12 01:24:53');
INSERT INTO `sys_log` VALUES ('1469719849122009088', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\\t 超级管理员\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"admin\"}]', '127.0.0.1', '2021-12-12 01:24:53');
INSERT INTO `sys_log` VALUES ('1469719866670977024', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-12 01:24:57');
INSERT INTO `sys_log` VALUES ('1469719881996963840', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色状态接口', 8, 'com.site.controller.RoleController.updateRoleStatus', '[\"1237258113002901513\",1]', '127.0.0.1', '2021-12-12 01:25:01');
INSERT INTO `sys_log` VALUES ('1469720251238322176', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 8, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 01:26:29');
INSERT INTO `sys_log` VALUES ('1469720256745443328', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 01:26:30');
INSERT INTO `sys_log` VALUES ('1469720694135853056', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 9, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 01:28:14');
INSERT INTO `sys_log` VALUES ('1469720785928196096', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 01:28:36');
INSERT INTO `sys_log` VALUES ('1469720803443609600', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 01:28:40');
INSERT INTO `sys_log` VALUES ('1469721593835032576', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 6, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 01:31:49');
INSERT INTO `sys_log` VALUES ('1469721599958716416', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 01:31:50');
INSERT INTO `sys_log` VALUES ('1469721616765292544', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 01:31:54');
INSERT INTO `sys_log` VALUES ('1469749101888409600', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 1332, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 03:21:07');
INSERT INTO `sys_log` VALUES ('1469749108930646016', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 20, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 03:21:09');
INSERT INTO `sys_log` VALUES ('1469749163318185984', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-12 03:21:22');
INSERT INTO `sys_log` VALUES ('1469749169093742592', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 03:21:23');
INSERT INTO `sys_log` VALUES ('1469749210789318656', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-12 03:21:33');
INSERT INTO `sys_log` VALUES ('1469754537647673344', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 40, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 03:42:43');
INSERT INTO `sys_log` VALUES ('1469754698549563392', NULL, NULL, '组织管理-用户管理-新增用户接口', 105, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"1231230793@qq.com\",\"nickName\":\"125555\",\"password\":\"123456123123\",\"phone\":\"15151515111\",\"realName\":\"test1555\",\"sex\":1,\"status\":1,\"username\":\"125555\"}]', '127.0.0.1', '2021-12-12 03:43:22');
INSERT INTO `sys_log` VALUES ('1469754698717335552', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 03:43:22');
INSERT INTO `sys_log` VALUES ('1469754714794102784', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":2,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 03:43:25');
INSERT INTO `sys_log` VALUES ('1469771400079347712', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 47, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-12 04:49:44');
INSERT INTO `sys_log` VALUES ('1470359046207967232', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 13, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 19:44:49');
INSERT INTO `sys_log` VALUES ('1470359053430558720', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 13, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-13 19:44:51');
INSERT INTO `sys_log` VALUES ('1470359073248645120', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 19:44:56');
INSERT INTO `sys_log` VALUES ('1470359231587815424', '1237361915165020161', 'admin', '前台用户管理-添加前台用户-添加前台用户', 6, 'com.site.controller.ConsumerController.addConsumer', NULL, '127.0.0.1', '2021-12-13 19:45:33');
INSERT INTO `sys_log` VALUES ('1470359299011252224', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 8, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:45:49');
INSERT INTO `sys_log` VALUES ('1470359299996913664', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 9, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:45:50');
INSERT INTO `sys_log` VALUES ('1470359444482297856', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 3, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:46:24');
INSERT INTO `sys_log` VALUES ('1470359448458498048', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:46:25');
INSERT INTO `sys_log` VALUES ('1470359453521022976', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:46:26');
INSERT INTO `sys_log` VALUES ('1470359460810723328', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:46:28');
INSERT INTO `sys_log` VALUES ('1470359464682065920', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:46:29');
INSERT INTO `sys_log` VALUES ('1470359499134078976', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 3, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:46:37');
INSERT INTO `sys_log` VALUES ('1470359513004642304', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 9, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-13 19:46:41');
INSERT INTO `sys_log` VALUES ('1470359534961823744', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 19:46:46');
INSERT INTO `sys_log` VALUES ('1470359546055757824', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 9, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-13 19:46:48');
INSERT INTO `sys_log` VALUES ('1470359786863333376', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:47:46');
INSERT INTO `sys_log` VALUES ('1470359849652064256', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 19:48:01');
INSERT INTO `sys_log` VALUES ('1470359853691179008', '1237361915165020161', 'admin', '组织管理-菜单权限管理-权限表格列表数据展示', 6, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-13 19:48:02');
INSERT INTO `sys_log` VALUES ('1470359985442656256', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:48:33');
INSERT INTO `sys_log` VALUES ('1470360005722116096', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:48:38');
INSERT INTO `sys_log` VALUES ('1470360013359943680', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 19:48:40');
INSERT INTO `sys_log` VALUES ('1470360156649951232', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:49:14');
INSERT INTO `sys_log` VALUES ('1470360264682639360', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 1, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 19:49:40');
INSERT INTO `sys_log` VALUES ('1470372400171454464', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 26, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:37:53');
INSERT INTO `sys_log` VALUES ('1470372420660629504', '1237361915165020161', 'admin', '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '127.0.0.1', '2021-12-13 20:37:58');
INSERT INTO `sys_log` VALUES ('1470374634368143360', NULL, NULL, '视频管理-获取风格数量-获取风格数量', 37, 'com.site.controller.VideoController.selectByStyle', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:46:46');
INSERT INTO `sys_log` VALUES ('1470374634380726272', NULL, NULL, '前台用户管理-获取性别数量-获取性别数量', 40, 'com.site.controller.ConsumerController.selectBySex', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:46:46');
INSERT INTO `sys_log` VALUES ('1470374670883753984', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 6, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:46:54');
INSERT INTO `sys_log` VALUES ('1470375241330069504', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 6, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:49:10');
INSERT INTO `sys_log` VALUES ('1470375283398938624', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:49:20');
INSERT INTO `sys_log` VALUES ('1470375317091782656', NULL, NULL, '资源管理-查询所有未审核视频-查询所有未审核视频', 2, 'com.site.controller.UnCheckVideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:49:29');
INSERT INTO `sys_log` VALUES ('1470375330094125056', NULL, NULL, '视频管理-查询所有前端视频-查询所有前端视频', 2, 'com.site.controller.VideoController.allVideo', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:49:32');
INSERT INTO `sys_log` VALUES ('1470375371844227072', NULL, NULL, '前台用户管理-查询所有前台用户（带密码）-查询所有前台用户（带密码）', 3, 'com.site.controller.ConsumerController.allConsumer2', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:49:42');
INSERT INTO `sys_log` VALUES ('1470375616699305984', NULL, NULL, '前台用户管理-获取性别数量-获取性别数量', 3, 'com.site.controller.ConsumerController.selectBySex', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:50:40');
INSERT INTO `sys_log` VALUES ('1470375616720277504', NULL, NULL, '视频管理-获取风格数量-获取风格数量', 7, 'com.site.controller.VideoController.selectByStyle', NULL, '0:0:0:0:0:0:0:1', '2021-12-13 20:50:40');
INSERT INTO `sys_log` VALUES ('1470380191527342080', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 42, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-13 21:08:51');
INSERT INTO `sys_log` VALUES ('1470382033774710784', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-13 21:16:10');
INSERT INTO `sys_log` VALUES ('1470385598949888000', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 9, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-13 21:30:20');
INSERT INTO `sys_log` VALUES ('1470387766557806592', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 8, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-13 21:38:57');
INSERT INTO `sys_log` VALUES ('1470413154096910336', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 28, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 23:19:50');
INSERT INTO `sys_log` VALUES ('1470413168504344576', '1237361915165020161', 'admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 16, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-13 23:19:53');
INSERT INTO `sys_log` VALUES ('1470413168789557248', '1237361915165020161', 'admin', '组织管理-角色管理-获取角色详情接口', 20, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-13 23:19:53');
INSERT INTO `sys_log` VALUES ('1470413213647638528', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色信息接口', 52, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是超级管理员\",\"id\":\"1237258113002901512\",\"name\":\"超级管理员\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\"],\"status\":1}]', '127.0.0.1', '2021-12-13 23:20:04');
INSERT INTO `sys_log` VALUES ('1470413213815410688', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 8, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 23:20:04');
INSERT INTO `sys_log` VALUES ('1470413227065217024', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 23:20:07');
INSERT INTO `sys_log` VALUES ('1470413277325561856', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 23:20:19');
INSERT INTO `sys_log` VALUES ('1470413285177298944', '1237361915165020161', 'admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 4, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-13 23:20:21');
INSERT INTO `sys_log` VALUES ('1470413285370236928', '1237361915165020161', 'admin', '组织管理-角色管理-获取角色详情接口', 0, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-13 23:20:21');
INSERT INTO `sys_log` VALUES ('1470413327665598464', '1237361915165020161', 'admin', '组织管理-角色管理-更新角色信息接口', 26, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是超级管理员\",\"id\":\"1237258113002901512\",\"name\":\"超级管理员\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\",\"1236916745927790569\",\"1236916745927790558\",\"1236916745927790571\",\"1236916745927790589\",\"1236916745927790557\",\"1236916745927790591\"],\"status\":1}]', '127.0.0.1', '2021-12-13 23:20:31');
INSERT INTO `sys_log` VALUES ('1470413327783038976', '1237361915165020161', 'admin', '组织管理-角色管理-分页获取角色数据接口', 0, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-13 23:20:31');
INSERT INTO `sys_log` VALUES ('1473292110617776128', '1237361915165020161', 'admin', '组织管理-用户管理-分页查询用户接口', 30, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-21 21:59:46');
INSERT INTO `sys_log` VALUES ('1473294524221624320', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 45, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-21 22:09:22');
INSERT INTO `sys_log` VALUES ('1473502742281588736', NULL, NULL, '组织管理-用户管理-分页查询用户接口', 40, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 11:56:45');
INSERT INTO `sys_log` VALUES ('1473539620489793536', NULL, NULL, '前台用户管理-修改前台用户信息-修改前台用户信息', 33, 'com.site.controller.ConsumerController.updateConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-22 14:23:17');
INSERT INTO `sys_log` VALUES ('1473541534384263168', NULL, NULL, '前台用户管理-修改前台用户信息-修改前台用户信息', 54, 'com.site.controller.ConsumerController.updateConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-22 14:30:54');
INSERT INTO `sys_log` VALUES ('1473609828009119744', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 45, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:02:16');
INSERT INTO `sys_log` VALUES ('1473609854433234944', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 8, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:02:22');
INSERT INTO `sys_log` VALUES ('1473609863249661952', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 7, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:02:24');
INSERT INTO `sys_log` VALUES ('1473609868509319168', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:02:26');
INSERT INTO `sys_log` VALUES ('1473610911859216384', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 10, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:06:34');
INSERT INTO `sys_log` VALUES ('1473610959049330688', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:06:46');
INSERT INTO `sys_log` VALUES ('1473611170958151680', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:07:36');
INSERT INTO `sys_log` VALUES ('1473611173403430912', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 7, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:07:37');
INSERT INTO `sys_log` VALUES ('1473614528041324544', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:20:57');
INSERT INTO `sys_log` VALUES ('1473614580012945408', '1237361915165020161', 'Admin', '组织管理-角色管理-删除角色接口', 55, 'com.site.controller.RoleController.deletedRole', '[\"1237258113002901515\"]', '127.0.0.1', '2021-12-22 19:21:09');
INSERT INTO `sys_log` VALUES ('1473614580272992256', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 10, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:21:09');
INSERT INTO `sys_log` VALUES ('1473614596785967104', '1237361915165020161', 'Admin', '组织管理-角色管理-删除角色接口', 63, 'com.site.controller.RoleController.deletedRole', '[\"1237258113002901514\"]', '127.0.0.1', '2021-12-22 19:21:13');
INSERT INTO `sys_log` VALUES ('1473614597100539904', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 7, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:21:13');
INSERT INTO `sys_log` VALUES ('1473614615018606592', '1237361915165020161', 'Admin', '组织管理-角色管理-删除角色接口', 33, 'com.site.controller.RoleController.deletedRole', '[\"1237258113002901513\"]', '127.0.0.1', '2021-12-22 19:21:17');
INSERT INTO `sys_log` VALUES ('1473614615240904704', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:21:17');
INSERT INTO `sys_log` VALUES ('1473614629669310464', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 9, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:21:21');
INSERT INTO `sys_log` VALUES ('1473614640658386944', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:23');
INSERT INTO `sys_log` VALUES ('1473614678692335616', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 166, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:33');
INSERT INTO `sys_log` VALUES ('1473614679090794496', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 19, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:33');
INSERT INTO `sys_log` VALUES ('1473614688905465856', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 42, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:35');
INSERT INTO `sys_log` VALUES ('1473614689131958272', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 6, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:35');
INSERT INTO `sys_log` VALUES ('1473614696140640256', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 54, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:37');
INSERT INTO `sys_log` VALUES ('1473614696325189632', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:37');
INSERT INTO `sys_log` VALUES ('1473614701484183552', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 35, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:38');
INSERT INTO `sys_log` VALUES ('1473614701672927232', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:38');
INSERT INTO `sys_log` VALUES ('1473614706395713536', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 36, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:39');
INSERT INTO `sys_log` VALUES ('1473614706588651520', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:39');
INSERT INTO `sys_log` VALUES ('1473614711504375808', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 52, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:40');
INSERT INTO `sys_log` VALUES ('1473614711768616960', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:40');
INSERT INTO `sys_log` VALUES ('1473614716663369728', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 38, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:42');
INSERT INTO `sys_log` VALUES ('1473614716923416576', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:42');
INSERT INTO `sys_log` VALUES ('1473614723873378304', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 38, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:43');
INSERT INTO `sys_log` VALUES ('1473614724062121984', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:43');
INSERT INTO `sys_log` VALUES ('1473614776872603648', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 145, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:56');
INSERT INTO `sys_log` VALUES ('1473614777153622016', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:56');
INSERT INTO `sys_log` VALUES ('1473614782593634304', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 36, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:57');
INSERT INTO `sys_log` VALUES ('1473614782778183680', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:57');
INSERT INTO `sys_log` VALUES ('1473614788167864320', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 36, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:21:59');
INSERT INTO `sys_log` VALUES ('1473614788465659904', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 9, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:21:59');
INSERT INTO `sys_log` VALUES ('1473614795491119104', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 40, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:22:00');
INSERT INTO `sys_log` VALUES ('1473614795746971648', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:22:00');
INSERT INTO `sys_log` VALUES ('1473614803728732160', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 437, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:22:02');
INSERT INTO `sys_log` VALUES ('1473614803951030272', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 5, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:22:02');
INSERT INTO `sys_log` VALUES ('1473614820912795648', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 165, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:22:06');
INSERT INTO `sys_log` VALUES ('1473614821105733632', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:22:06');
INSERT INTO `sys_log` VALUES ('1473614833583788032', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 43, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:22:09');
INSERT INTO `sys_log` VALUES ('1473614833780920320', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:22:09');
INSERT INTO `sys_log` VALUES ('1473615221384941568', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 218, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"1119609828@qq.com\",\"nickName\":\"wkk\",\"password\":\"1234567890\",\"phone\":\"15579701992\",\"realName\":\"wkk\",\"sex\":1,\"status\":1,\"username\":\"user\"}]', '127.0.0.1', '2021-12-22 19:23:42');
INSERT INTO `sys_log` VALUES ('1473615221611433984', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:23:42');
INSERT INTO `sys_log` VALUES ('1473615256201859072', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 4, 'com.site.controller.UserController.getUserOwnRole', '[\"1473615220504137728\"]', '127.0.0.1', '2021-12-22 19:23:50');
INSERT INTO `sys_log` VALUES ('1473615291639533568', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:23:59');
INSERT INTO `sys_log` VALUES ('1473615299097006080', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:24:00');
INSERT INTO `sys_log` VALUES ('1473615305036140544', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:24:02');
INSERT INTO `sys_log` VALUES ('1473615714073055232', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 11, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:25:39');
INSERT INTO `sys_log` VALUES ('1473615727801012224', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:25:43');
INSERT INTO `sys_log` VALUES ('1473615742216835072', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:25:46');
INSERT INTO `sys_log` VALUES ('1473615751213617152', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 4, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:25:48');
INSERT INTO `sys_log` VALUES ('1473615758402654208', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:25:50');
INSERT INTO `sys_log` VALUES ('1473615762471129088', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 6, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:25:51');
INSERT INTO `sys_log` VALUES ('1473615769454645248', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 3, 'com.site.controller.UserController.getUserOwnRole', '[\"1237361915165020161\"]', '127.0.0.1', '2021-12-22 19:25:53');
INSERT INTO `sys_log` VALUES ('1473615785929871360', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:25:56');
INSERT INTO `sys_log` VALUES ('1473615794486251520', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:25:59');
INSERT INTO `sys_log` VALUES ('1473615804703576064', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:26:01');
INSERT INTO `sys_log` VALUES ('1473615817160658944', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 3, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:26:04');
INSERT INTO `sys_log` VALUES ('1473615987986272256', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:26:45');
INSERT INTO `sys_log` VALUES ('1473616006265049088', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:26:49');
INSERT INTO `sys_log` VALUES ('1473616016159412224', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:26:51');
INSERT INTO `sys_log` VALUES ('1473616089995939840', '1237361915165020161', 'Admin', '组织管理-角色管理-新增角色接口', 163, 'com.site.controller.RoleController.createRole', '[{\"description\":\"我是产品经理\",\"name\":\"产品经理\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:27:09');
INSERT INTO `sys_log` VALUES ('1473616090331484160', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:27:09');
INSERT INTO `sys_log` VALUES ('1473616100389425152', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:27:11');
INSERT INTO `sys_log` VALUES ('1473616164377726976', '1237361915165020161', 'Admin', '组织管理-角色管理-新增角色接口', 571, 'com.site.controller.RoleController.createRole', '[{\"description\":\"我是项目经理\",\"name\":\"项目经理\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:27:27');
INSERT INTO `sys_log` VALUES ('1473616164943958016', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:27:27');
INSERT INTO `sys_log` VALUES ('1473616174280478720', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:27:29');
INSERT INTO `sys_log` VALUES ('1473616222779215872', '1237361915165020161', 'Admin', '组织管理-角色管理-新增角色接口', 150, 'com.site.controller.RoleController.createRole', '[{\"description\":\"我是测试主管\",\"name\":\"测试主管\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:27:41');
INSERT INTO `sys_log` VALUES ('1473616223144120320', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 6, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:27:41');
INSERT INTO `sys_log` VALUES ('1473616229116809216', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 3, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:27:42');
INSERT INTO `sys_log` VALUES ('1473616274008444928', '1237361915165020161', 'Admin', '组织管理-角色管理-新增角色接口', 50, 'com.site.controller.RoleController.createRole', '[{\"description\":\"我是研发主管\",\"name\":\"研发主管\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:27:53');
INSERT INTO `sys_log` VALUES ('1473616274385932288', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:27:53');
INSERT INTO `sys_log` VALUES ('1473616289128910848', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:27:56');
INSERT INTO `sys_log` VALUES ('1473616303238549504', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 7, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:00');
INSERT INTO `sys_log` VALUES ('1473616314684805120', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:28:03');
INSERT INTO `sys_log` VALUES ('1473616314970017792', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 9, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-22 19:28:03');
INSERT INTO `sys_log` VALUES ('1473616324088434688', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:28:05');
INSERT INTO `sys_log` VALUES ('1473616324407201792', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 8, 'com.site.controller.RoleController.getRoleBy', '[\"1473616089312268288\"]', '127.0.0.1', '2021-12-22 19:28:05');
INSERT INTO `sys_log` VALUES ('1473616341431881728', '1237361915165020161', 'Admin', '组织管理-角色管理-更新角色信息接口', 155, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是产品经理\",\"id\":\"1473616089312268288\",\"name\":\"产品经理\",\"permissionsIds\":[\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790564\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:28:09');
INSERT INTO `sys_log` VALUES ('1473616341721288704', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:09');
INSERT INTO `sys_log` VALUES ('1473616345273864192', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 1, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:28:10');
INSERT INTO `sys_log` VALUES ('1473616347261964288', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 3, 'com.site.controller.RoleController.getRoleBy', '[\"1473616161986973696\"]', '127.0.0.1', '2021-12-22 19:28:10');
INSERT INTO `sys_log` VALUES ('1473616358720802816', '1237361915165020161', 'Admin', '组织管理-角色管理-更新角色信息接口', 37, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是项目经理\",\"id\":\"1473616161986973696\",\"name\":\"项目经理\",\"permissionsIds\":[\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790564\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:28:13');
INSERT INTO `sys_log` VALUES ('1473616359073124352', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:13');
INSERT INTO `sys_log` VALUES ('1473616362147549184', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:28:14');
INSERT INTO `sys_log` VALUES ('1473616363300982784', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 1, 'com.site.controller.RoleController.getRoleBy', '[\"1473616222154264576\"]', '127.0.0.1', '2021-12-22 19:28:14');
INSERT INTO `sys_log` VALUES ('1473616371987386368', '1237361915165020161', 'Admin', '组织管理-角色管理-更新角色信息接口', 143, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是测试主管\",\"id\":\"1473616222154264576\",\"name\":\"测试主管\",\"permissionsIds\":[\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790564\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:28:16');
INSERT INTO `sys_log` VALUES ('1473616372209684480', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:16');
INSERT INTO `sys_log` VALUES ('1473616375695151104', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 2, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:28:17');
INSERT INTO `sys_log` VALUES ('1473616375938420736', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 5, 'com.site.controller.RoleController.getRoleBy', '[\"1473616273802924032\"]', '127.0.0.1', '2021-12-22 19:28:17');
INSERT INTO `sys_log` VALUES ('1473616388689104896', '1237361915165020161', 'Admin', '组织管理-角色管理-更新角色信息接口', 182, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是研发主管\",\"id\":\"1473616273802924032\",\"name\":\"研发主管\",\"permissionsIds\":[\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790564\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:28:20');
INSERT INTO `sys_log` VALUES ('1473616390391992320', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:21');
INSERT INTO `sys_log` VALUES ('1473616408427499520', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:28:25');
INSERT INTO `sys_log` VALUES ('1473616423745097728', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1473615220504137728\"]', '127.0.0.1', '2021-12-22 19:28:29');
INSERT INTO `sys_log` VALUES ('1473616432968372224', '1237361915165020161', 'Admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 2, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[],\"userId\":\"1473615220504137728\"}]', '127.0.0.1', '2021-12-22 19:28:31');
INSERT INTO `sys_log` VALUES ('1473616461820989440', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:28:38');
INSERT INTO `sys_log` VALUES ('1473616470960377856', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:28:40');
INSERT INTO `sys_log` VALUES ('1473616660152848384', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 215, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"1119609828@qq.com\",\"nickName\":\"dadada\",\"password\":\"1234567890\",\"phone\":\"15579701998\",\"realName\":\"dadada\",\"sex\":2,\"status\":1,\"username\":\"one\"}]', '127.0.0.1', '2021-12-22 19:29:25');
INSERT INTO `sys_log` VALUES ('1473616660383535104', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:29:25');
INSERT INTO `sys_log` VALUES ('1473616668893777920', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1473616659255267328\"]', '127.0.0.1', '2021-12-22 19:29:27');
INSERT INTO `sys_log` VALUES ('1473616680277118976', '1237361915165020161', 'Admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 3, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[],\"userId\":\"1473616659255267328\"}]', '127.0.0.1', '2021-12-22 19:29:30');
INSERT INTO `sys_log` VALUES ('1473616817317613568', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 445, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"2\",\"email\":\"111960928@qq.com\",\"nickName\":\"sssss\",\"password\":\"1234567890\",\"phone\":\"15589705678\",\"realName\":\"hello\",\"sex\":2,\"status\":1,\"username\":\"two\"}]', '127.0.0.1', '2021-12-22 19:30:02');
INSERT INTO `sys_log` VALUES ('1473616817737043968', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:02');
INSERT INTO `sys_log` VALUES ('1473616842642821120', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1473616815455342592\"]', '127.0.0.1', '2021-12-22 19:30:08');
INSERT INTO `sys_log` VALUES ('1473616851295670272', '1237361915165020161', 'Admin', '组织管理-用户管理-保存用户拥有的角色信息接口', 2, 'com.site.controller.UserController.saveUserOwnRole', '[{\"roleIds\":[],\"userId\":\"1473616815455342592\"}]', '127.0.0.1', '2021-12-22 19:30:10');
INSERT INTO `sys_log` VALUES ('1473616864595808256', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 40, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:30:14');
INSERT INTO `sys_log` VALUES ('1473616864813912064', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:14');
INSERT INTO `sys_log` VALUES ('1473616892978663424', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 150, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:30:20');
INSERT INTO `sys_log` VALUES ('1473616893263876096', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:20');
INSERT INTO `sys_log` VALUES ('1473616901744758784', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 138, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:30:23');
INSERT INTO `sys_log` VALUES ('1473616901971251200', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:23');
INSERT INTO `sys_log` VALUES ('1473616913224568832', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 736, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:30:25');
INSERT INTO `sys_log` VALUES ('1473616913472032768', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:25');
INSERT INTO `sys_log` VALUES ('1473616962197262336', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:37');
INSERT INTO `sys_log` VALUES ('1473616962453114880', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 7, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:30:37');
INSERT INTO `sys_log` VALUES ('1473616966207016960', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 3, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:30:38');
INSERT INTO `sys_log` VALUES ('1473616987098845184', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:43');
INSERT INTO `sys_log` VALUES ('1473616989552513024', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:30:43');
INSERT INTO `sys_log` VALUES ('1473616990676586496', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:30:44');
INSERT INTO `sys_log` VALUES ('1473617074067738624', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:31:04');
INSERT INTO `sys_log` VALUES ('1473617188672901120', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 211, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"111909828@qq.com\",\"nickName\":\"hello\",\"password\":\"1234567890\",\"phone\":\"15579701993\",\"realName\":\"hello\",\"sex\":2,\"status\":1,\"username\":\"three\"}]', '127.0.0.1', '2021-12-22 19:31:31');
INSERT INTO `sys_log` VALUES ('1473617188991668224', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:31:31');
INSERT INTO `sys_log` VALUES ('1473617345644728320', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 192, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"1109828@qq.com\",\"nickName\":\"sadsad\",\"password\":\"12345678990\",\"phone\":\"15579701785\",\"realName\":\"sad\",\"sex\":2,\"status\":1,\"username\":\"four\"}]', '127.0.0.1', '2021-12-22 19:32:08');
INSERT INTO `sys_log` VALUES ('1473617346089324544', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:32:08');
INSERT INTO `sys_log` VALUES ('1473617414078992384', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:32:25');
INSERT INTO `sys_log` VALUES ('1473617428373180416', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 34, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:32:28');
INSERT INTO `sys_log` VALUES ('1473617428733890560', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:32:28');
INSERT INTO `sys_log` VALUES ('1473617436468187136', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 41, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:32:30');
INSERT INTO `sys_log` VALUES ('1473617436749205504', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:32:30');
INSERT INTO `sys_log` VALUES ('1473617589832912896', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 219, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"111960982@qq.com\",\"nickName\":\"music\",\"password\":\"1234567890\",\"phone\":\"15379701996\",\"realName\":\"music\",\"sex\":2,\"status\":1,\"username\":\"five\"}]', '127.0.0.1', '2021-12-22 19:33:07');
INSERT INTO `sys_log` VALUES ('1473617590071988224', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:33:07');
INSERT INTO `sys_log` VALUES ('1473617602814283776', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 38, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:33:10');
INSERT INTO `sys_log` VALUES ('1473617603040776192', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:33:10');
INSERT INTO `sys_log` VALUES ('1473617716723191808', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:33:37');
INSERT INTO `sys_log` VALUES ('1473617917454192640', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 212, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"4419609828@qq.com\",\"nickName\":\"find\",\"password\":\"1234567890\",\"phone\":\"15467890543\",\"realName\":\"find\",\"sex\":1,\"status\":1,\"username\":\"user1\"}]', '127.0.0.1', '2021-12-22 19:34:25');
INSERT INTO `sys_log` VALUES ('1473617917882011648', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:34:25');
INSERT INTO `sys_log` VALUES ('1473617986257555456', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 2, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:34:41');
INSERT INTO `sys_log` VALUES ('1473617986966392832', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:34:41');
INSERT INTO `sys_log` VALUES ('1473618149520838656', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 217, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"8119609828@qq.com\",\"nickName\":\"world\",\"password\":\"1234567890\",\"phone\":\"15567682345\",\"realName\":\"world\",\"sex\":1,\"status\":1,\"username\":\"user2\"}]', '127.0.0.1', '2021-12-22 19:35:20');
INSERT INTO `sys_log` VALUES ('1473618149927686144', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:35:20');
INSERT INTO `sys_log` VALUES ('1473618222942130176', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 121, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:35:38');
INSERT INTO `sys_log` VALUES ('1473618223248314368', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:35:38');
INSERT INTO `sys_log` VALUES ('1473618229975977984', '1237361915165020161', 'Admin', '组织管理-用户管理-列表修改用户信息接口', 44, 'com.site.controller.UserController.updateUserInfo', NULL, '127.0.0.1', '2021-12-22 19:35:39');
INSERT INTO `sys_log` VALUES ('1473618230282162176', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:35:39');
INSERT INTO `sys_log` VALUES ('1473618238888873984', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1473617916569194496\"]', '127.0.0.1', '2021-12-22 19:35:41');
INSERT INTO `sys_log` VALUES ('1473618251580837888', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:35:44');
INSERT INTO `sys_log` VALUES ('1473618257712910336', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 3, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:35:46');
INSERT INTO `sys_log` VALUES ('1473618270316793856', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:35:49');
INSERT INTO `sys_log` VALUES ('1473618332405075968', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:36:04');
INSERT INTO `sys_log` VALUES ('1473618339887714304', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:05');
INSERT INTO `sys_log` VALUES ('1473618342496571392', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:06');
INSERT INTO `sys_log` VALUES ('1473618345180925952', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:36:07');
INSERT INTO `sys_log` VALUES ('1473618348104355840', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:07');
INSERT INTO `sys_log` VALUES ('1473618351220723712', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:36:08');
INSERT INTO `sys_log` VALUES ('1473618364952875008', '1237361915165020161', 'Admin', '组织管理-用户管理-查询用户拥有的角色数据接口', 2, 'com.site.controller.UserController.getUserOwnRole', '[\"1237361915165020161\"]', '127.0.0.1', '2021-12-22 19:36:11');
INSERT INTO `sys_log` VALUES ('1473618391767060480', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:18');
INSERT INTO `sys_log` VALUES ('1473618398717022208', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 1, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:36:19');
INSERT INTO `sys_log` VALUES ('1473618398960291840', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 3, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-22 19:36:19');
INSERT INTO `sys_log` VALUES ('1473618430010724352', '1237361915165020161', 'Admin', '组织管理-角色管理-更新角色信息接口', 147, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是超级管理员\",\"id\":\"1237258113002901512\",\"name\":\"超级管理员\",\"permissionsIds\":[\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\",\"1236916745927790569\",\"1236916745927790558\",\"1236916745927790571\",\"1236916745927790589\",\"1236916745927790557\",\"1236916745927790591\",\"1236916745927790564\"],\"status\":1}]', '127.0.0.1', '2021-12-22 19:36:27');
INSERT INTO `sys_log` VALUES ('1473618430434349056', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 3, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:27');
INSERT INTO `sys_log` VALUES ('1473618437761798144', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 5, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:29');
INSERT INTO `sys_log` VALUES ('1473618453763067904', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:33');
INSERT INTO `sys_log` VALUES ('1473618454585151488', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:36:33');
INSERT INTO `sys_log` VALUES ('1473618464441765888', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:36:35');
INSERT INTO `sys_log` VALUES ('1473618477381193728', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 1, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-22 19:36:38');
INSERT INTO `sys_log` VALUES ('1473618477590908928', '1237361915165020161', 'Admin', '组织管理-角色管理-获取角色详情接口', 3, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-22 19:36:38');
INSERT INTO `sys_log` VALUES ('1473618519492005888', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 2, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:36:48');
INSERT INTO `sys_log` VALUES ('1473618655236460544', '1237361915165020161', 'Admin', '组织管理-用户管理-新增用户接口', 204, 'com.site.controller.UserController.createUser', '[{\"createWhere\":\"1\",\"email\":\"6119609828@qq.com\",\"nickName\":\"make\",\"password\":\"1234567890\",\"phone\":\"15578765422\",\"realName\":\"make\",\"sex\":1,\"status\":1,\"username\":\"user5\"}]', '127.0.0.1', '2021-12-22 19:37:21');
INSERT INTO `sys_log` VALUES ('1473618655492313088', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 3, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:37:21');
INSERT INTO `sys_log` VALUES ('1473618674492510208', '1237361915165020161', 'Admin', '组织管理-用户管理-批量/删除用户接口', 124, 'com.site.controller.UserController.deletedUsers', NULL, '127.0.0.1', '2021-12-22 19:37:25');
INSERT INTO `sys_log` VALUES ('1473618674714808320', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:37:25');
INSERT INTO `sys_log` VALUES ('1473618702158139392', '1237361915165020161', 'Admin', '组织管理-菜单权限管理-权限表格列表数据展示', 2, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-22 19:37:32');
INSERT INTO `sys_log` VALUES ('1473618702464323584', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 6, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 19:37:32');
INSERT INTO `sys_log` VALUES ('1473618738237542400', '1237361915165020161', 'Admin', '组织管理-用户管理-分页查询用户接口', 4, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-22 19:37:40');
INSERT INTO `sys_log` VALUES ('1473624468172705792', '1237361915165020161', 'Admin', '组织管理-角色管理-分页获取角色数据接口', 9, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-22 20:00:26');
INSERT INTO `sys_log` VALUES ('1473818083171897344', '1460885537043910656', 'adminszx', '组织管理-用户管理-用户信息详情接口', 34, 'com.site.controller.UserController.detailInfo', NULL, '127.0.0.1', '2021-12-23 08:49:48');
INSERT INTO `sys_log` VALUES ('1473829754342871040', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 55, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-23 09:36:11');
INSERT INTO `sys_log` VALUES ('1473829756716847104', '1237361915165020161', 'superadmin', '组织管理-菜单权限管理-权限表格列表数据展示', 10, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-23 09:36:11');
INSERT INTO `sys_log` VALUES ('1473829758948216832', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-23 09:36:12');
INSERT INTO `sys_log` VALUES ('1473829930243592192', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 6, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-23 09:36:52');
INSERT INTO `sys_log` VALUES ('1473829938917412864', '1237361915165020161', 'superadmin', '组织管理-菜单权限管理-获取所有的菜单权限数据接口', 3, 'com.site.controller.PermissionController.getAllPermissionTree', '', '127.0.0.1', '2021-12-23 09:36:55');
INSERT INTO `sys_log` VALUES ('1473829939366203392', '1237361915165020161', 'superadmin', '组织管理-角色管理-获取角色详情接口', 11, 'com.site.controller.RoleController.getRoleBy', '[\"1237258113002901512\"]', '127.0.0.1', '2021-12-23 09:36:55');
INSERT INTO `sys_log` VALUES ('1473829952544706560', '1237361915165020161', 'superadmin', '组织管理-角色管理-更新角色信息接口', 177, 'com.site.controller.RoleController.updateRole', '[{\"description\":\"我是超级管理员\",\"id\":\"1237258113002901512\",\"name\":\"超级管理员\",\"permissionsIds\":[\"1236916745927790564\",\"1236916745927790560\",\"1236916745927790563\",\"1236916745927790565\",\"1236916745927790577\",\"1236916745927790582\",\"1236916745927790575\",\"1236916745927790556\",\"1236916745927790561\",\"1236916745927790568\",\"1236916745927790579\",\"1236916745927790580\",\"1236916745927790578\",\"1236916745927790562\",\"1236916745927790570\",\"1236916745927790572\",\"1236916745927790574\",\"1236916745927790583\",\"1236916745927790569\",\"1236916745927790558\",\"1236916745927790571\",\"1236916745927790589\",\"1236916745927790557\",\"1236916745927790591\"],\"status\":1}]', '127.0.0.1', '2021-12-23 09:36:58');
INSERT INTO `sys_log` VALUES ('1473829952829919232', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 2, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-23 09:36:58');
INSERT INTO `sys_log` VALUES ('1473829962715893760', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 4, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-23 09:37:00');
INSERT INTO `sys_log` VALUES ('1475292314141331456', '1237361915165020161', 'superadmin', '组织管理-用户管理-分页查询用户接口', 197, 'com.site.controller.UserController.pageInfo', '[{\"endTime\":\"\",\"nickName\":\"\",\"pageNum\":1,\"pageSize\":10,\"startTime\":\"\",\"username\":\"\"}]', '127.0.0.1', '2021-12-27 10:27:52');
INSERT INTO `sys_log` VALUES ('1475292442541559808', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 128, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-27 10:28:23');
INSERT INTO `sys_log` VALUES ('1475292536863068160', '1237361915165020161', 'superadmin', '组织管理-菜单权限管理-权限表格列表数据展示', 26, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-27 10:28:45');
INSERT INTO `sys_log` VALUES ('1475293065160822784', '1237361915165020161', 'superadmin', '组织管理-菜单权限管理-权限表格列表数据展示', 16, 'com.site.controller.PermissionController.getAllPermission', '', '127.0.0.1', '2021-12-27 10:30:51');
INSERT INTO `sys_log` VALUES ('1475293105413558272', '1237361915165020161', 'superadmin', '组织管理-角色管理-分页获取角色数据接口', 7, 'com.site.controller.RoleController.pageInfo', '[{\"pageNum\":1,\"pageSize\":10}]', '127.0.0.1', '2021-12-27 10:31:01');
INSERT INTO `sys_log` VALUES ('1475296501394706432', NULL, NULL, '用户注册-查询用户数据接口', 2, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-27 10:44:30');
INSERT INTO `sys_log` VALUES ('1475296522454306816', NULL, NULL, '用户注册-查询用户数据接口', 223, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-27 10:44:35');
INSERT INTO `sys_log` VALUES ('1475297283074560000', NULL, NULL, '用户注册-查询用户数据接口', 190, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-27 10:47:37');
INSERT INTO `sys_log` VALUES ('1475298352252981248', NULL, NULL, '用户注册-查询用户数据接口', 298, 'com.site.controller.ConsumerController.addConsumer', NULL, '0:0:0:0:0:0:0:1', '2021-12-27 10:51:52');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码(前端按钮权限标识)',
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限名称',
  `icon` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单图标',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(如：sys:user:add)',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问地址URL',
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源请求类型',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'name与前端vue路由name约定一致',
  `pid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '父级菜单权限id',
  `order_num` int NULL DEFAULT 0 COMMENT '排序',
  `type` tinyint NULL DEFAULT 1 COMMENT '菜单权限类型(1:目录;2:菜单;3:按钮)',
  `status` tinyint NULL DEFAULT 1 COMMENT '状态1:正常 0：禁用',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表（菜单）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1236916745927790556', 'btn-user-delete', '删除用户权限', '', 'sys:user:delete', '/api/user', 'DELETE', '', '1236916745927790575', 100, 3, 1, '2020-01-08 15:42:50', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790557', 'btn-log-delete', '删除日志权限', '', 'sys:log:delete', '/api/log', 'DELETE', '', '1236916745927790589', 100, 3, 1, '2020-01-08 16:12:53', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790558', '', '接口管理', 'el-icon-s-ticket', '', '/swagger', 'GET', 'swagger', '1236916745927790569', 97, 2, 1, '2020-01-08 14:28:56', '2020-04-04 22:19:39', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790560', '', '菜单权限管理', 'el-icon-menu', '', '/menus', 'GET', 'menus', '1236916745927790564', 98, 2, 1, '2020-01-06 21:55:59', '2020-04-07 22:55:14', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790561', 'btn-user-add', '新增用户权限', '', 'sys:user:add', '/api/user', 'POST', '', '1236916745927790575', 100, 3, 1, '2020-01-08 15:40:36', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790562', 'btn-role-update', '更新角色权限', '', 'sys:role:update', '/api/role', 'PUT', '', '1236916745927790578', 100, 3, 1, '2020-01-08 16:09:55', '2020-04-04 22:31:22', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790563', 'btn-permission-delete', '删除菜单权限', '', 'sys:permission:delete', '/api/permission', 'DELETE', '', '1236916745927790560', 100, 3, 1, '2020-01-08 15:48:37', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790564', '', '组织管理', 'el-icon-menu', '', '/org', '', 'org', '0', 100, 1, 1, '2020-01-06 21:53:55', '2020-04-04 22:15:12', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790565', 'btn-permission-list', '查询菜单权限列表权限', '', 'sys:permission:list', '/api/permissions', 'POST', '', '1236916745927790560', 100, 3, 1, '2020-01-08 15:46:36', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790568', 'btn-user-list', '查询用户信息列表权限', '', 'sys:user:list', '/api/users', 'POST', '', '1236916745927790575', 100, 3, 1, '2020-01-08 15:39:55', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790569', '', '系统管理', 'el-icon-s-tools', '', '/sys', '', 'sys', '0', 98, 1, 1, '2020-01-08 13:55:56', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790570', 'btn-role-delete', '删除角色权限', '', 'sys:role:delete', '/api/role/*', 'DELETE', '', '1236916745927790578', 100, 3, 1, '2020-01-08 16:11:22', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790571', '', 'SQL监控', 'el-icon-s-data', '', '/sql', 'GET', 'sql', '1236916745927790569', 96, 2, 1, '2020-01-08 14:30:01', '2020-04-04 22:18:36', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790572', 'btn-role-add', '新增角色权限', '', 'sys:role:add', '/api/role', 'POST', '', '1236916745927790578', 100, 3, 1, '2020-01-08 15:50:00', '2020-03-12 05:15:46', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790574', 'btn-role-detail', '角色详情权限', '', 'sys:role:detail', '/api/role/*', 'GET', '', '1236916745927790578', 100, 3, 1, '2020-01-08 16:10:32', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790575', '', '用户管理', 'el-icon-user-solid', '', '/user', '', 'user', '1236916745927790564', 100, 2, 1, '2020-01-07 19:49:37', '2020-04-07 22:59:32', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790577', 'btn-permission-update', '更新菜单权限', '', 'sys:permission:update', '/api/permission', 'PUT', '', '1236916745927790560', 100, 3, 1, '2020-01-08 15:47:56', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790578', '', '角色管理', 'el-icon-user', '', '/roles', '', 'roles', '1236916745927790564', 99, 2, 1, '2020-01-06 22:33:55', '2020-04-07 22:59:44', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790579', 'btn-user-update-role', '赋予用户角色权限', '', 'sys:user:role:update', '/api/user/roles', 'PUT', '', '1236916745927790575', 100, 3, 1, '2020-01-08 15:41:20', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790580', 'btn-user-update', '更新用户信息权限', '', 'sys:user:update', '/api/user', 'PUT', '', '1236916745927790575', 100, 3, 1, '2020-01-08 15:42:06', '2020-04-09 13:14:01', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790581', 'btn-role-add', '角色管理-新增角色', '', 'sys:role:add', '/api/role', 'POST', '', '1236916745927790578', 100, 3, 1, '2020-01-08 15:28:09', '2020-01-08 15:29:31', 0);
INSERT INTO `sys_permission` VALUES ('1236916745927790582', 'btn-permission-add', '新增菜单权限', '', 'sys:permission:add', '/api/permission', 'POST', '', '1236916745927790560', 100, 3, 1, '2020-01-08 15:47:16', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790583', 'btn-role-list', '查询角色列表权限', '', 'sys:role:list', '/api/roles', 'POST', '', '1236916745927790578', 100, 3, 1, '2020-01-08 15:49:20', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790589', '', '日志管理', 'el-icon-user-solid', '', '/logs', '', 'logs', '1236916745927790569', 100, 2, 1, '2020-01-08 13:57:12', '2020-04-08 18:54:16', 1);
INSERT INTO `sys_permission` VALUES ('1236916745927790591', 'btn-log-list', '查询日志列表权限', '', 'sys:log:list', '/api/logs', 'POST', '', '1236916745927790589', 100, 3, 1, '2020-01-08 16:12:14', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1247842736313339904', '', '测试菜单', 'el-icon-user-solid', '', 'sssss', '', 'ssss', '0', 80, 1, 1, '2020-04-08 19:04:27', '2020-04-08 21:27:03', 1);
INSERT INTO `sys_permission` VALUES ('1247871697634332672', '', '测试子菜单', 'el-icon-menu', '', 'ceshi', '', 'ceshi', '1247842736313339904', 200000, 2, 1, '2020-04-08 20:59:32', '2021-12-02 13:46:50', 0);
INSERT INTO `sys_permission` VALUES ('1247877926632951808', '', '测试子菜单1', ' el-icon-s-marketing', '', 'eeeeee', '', 'eeee', '1247842736313339904', 60000, 2, 1, '2020-04-08 21:24:17', '2020-04-08 21:26:44', 1);
INSERT INTO `sys_permission` VALUES ('1247880664557162496', '', '测试菜单2', 'el-icon-star-on', '', '2222', '', 'zzzzzz', '0', 60, 1, 1, '2020-04-08 21:35:10', '2020-04-08 21:36:23', 1);
INSERT INTO `sys_permission` VALUES ('1247881176622960640', '', '测试子菜单2', 'el-icon-s-help', '', 'vvvv', '', 'vvvvv', '1247880664557162496', 61, 2, 1, '2020-04-08 21:37:12', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1247881340930625536', '', '测试菜单3', 'el-icon-camera', '', 'hhhh', '', 'hhhhh', '0', 60, 1, 1, '2020-04-08 21:37:51', NULL, 1);
INSERT INTO `sys_permission` VALUES ('1247881904334704640', '', '测试子菜单3', 'el-icon-s-flag', '', 'fff', '', 'ffff', '1247880664557162496', 60, 2, 1, '2020-04-08 21:40:05', '2020-04-08 21:41:18', 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 1 COMMENT '状态(1:正常0:弃用)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1237258113002901512', '超级管理员', '我是超级管理员', 1, '2020-01-06 23:37:45', '2021-12-23 09:36:58', 1);
INSERT INTO `sys_role` VALUES ('1473616089312268288', '产品经理', '我是产品经理', 1, '2021-12-22 19:27:09', '2021-12-22 19:28:09', 1);
INSERT INTO `sys_role` VALUES ('1473616161986973696', '项目经理', '我是项目经理', 1, '2021-12-22 19:27:26', '2021-12-22 19:28:13', 1);
INSERT INTO `sys_role` VALUES ('1473616222154264576', '测试主管', '我是测试主管', 1, '2021-12-22 19:27:40', '2021-12-22 19:28:16', 1);
INSERT INTO `sys_role` VALUES ('1473616273802924032', '研发主管', '我是研发主管', 1, '2021-12-22 19:27:53', '2021-12-22 19:28:20', 1);

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1473616340819513344', '1473616089312268288', '1236916745927790560', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513345', '1473616089312268288', '1236916745927790563', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513346', '1473616089312268288', '1236916745927790565', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513347', '1473616089312268288', '1236916745927790577', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513348', '1473616089312268288', '1236916745927790582', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513349', '1473616089312268288', '1236916745927790575', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513350', '1473616089312268288', '1236916745927790556', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513351', '1473616089312268288', '1236916745927790561', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513352', '1473616089312268288', '1236916745927790568', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513353', '1473616089312268288', '1236916745927790579', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513354', '1473616089312268288', '1236916745927790580', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616340819513355', '1473616089312268288', '1236916745927790564', '2021-12-22 19:28:09');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585088', '1473616161986973696', '1236916745927790560', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585089', '1473616161986973696', '1236916745927790563', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585090', '1473616161986973696', '1236916745927790565', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585091', '1473616161986973696', '1236916745927790577', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585092', '1473616161986973696', '1236916745927790582', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585093', '1473616161986973696', '1236916745927790575', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585094', '1473616161986973696', '1236916745927790556', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585095', '1473616161986973696', '1236916745927790561', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585096', '1473616161986973696', '1236916745927790568', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585097', '1473616161986973696', '1236916745927790579', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585098', '1473616161986973696', '1236916745927790580', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616358586585099', '1473616161986973696', '1236916745927790564', '2021-12-22 19:28:13');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183808', '1473616222154264576', '1236916745927790560', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183809', '1473616222154264576', '1236916745927790563', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183810', '1473616222154264576', '1236916745927790565', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183811', '1473616222154264576', '1236916745927790577', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183812', '1473616222154264576', '1236916745927790582', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183813', '1473616222154264576', '1236916745927790575', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183814', '1473616222154264576', '1236916745927790556', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183815', '1473616222154264576', '1236916745927790561', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183816', '1473616222154264576', '1236916745927790568', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183817', '1473616222154264576', '1236916745927790579', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183818', '1473616222154264576', '1236916745927790580', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616371400183819', '1473616222154264576', '1236916745927790564', '2021-12-22 19:28:16');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324480', '1473616273802924032', '1236916745927790560', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324481', '1473616273802924032', '1236916745927790563', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324482', '1473616273802924032', '1236916745927790565', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324483', '1473616273802924032', '1236916745927790577', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324484', '1473616273802924032', '1236916745927790582', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324485', '1473616273802924032', '1236916745927790575', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324486', '1473616273802924032', '1236916745927790556', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324487', '1473616273802924032', '1236916745927790561', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324488', '1473616273802924032', '1236916745927790568', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324489', '1473616273802924032', '1236916745927790579', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324490', '1473616273802924032', '1236916745927790580', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473616387938324491', '1473616273802924032', '1236916745927790564', '2021-12-22 19:28:20');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006528', '1237258113002901512', '1236916745927790564', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006529', '1237258113002901512', '1236916745927790560', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006530', '1237258113002901512', '1236916745927790563', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006531', '1237258113002901512', '1236916745927790565', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006532', '1237258113002901512', '1236916745927790577', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006533', '1237258113002901512', '1236916745927790582', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006534', '1237258113002901512', '1236916745927790575', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006535', '1237258113002901512', '1236916745927790556', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006536', '1237258113002901512', '1236916745927790561', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006537', '1237258113002901512', '1236916745927790568', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006538', '1237258113002901512', '1236916745927790579', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006539', '1237258113002901512', '1236916745927790580', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006540', '1237258113002901512', '1236916745927790578', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006541', '1237258113002901512', '1236916745927790562', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006542', '1237258113002901512', '1236916745927790570', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006543', '1237258113002901512', '1236916745927790572', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006544', '1237258113002901512', '1236916745927790574', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006545', '1237258113002901512', '1236916745927790583', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006546', '1237258113002901512', '1236916745927790569', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006547', '1237258113002901512', '1236916745927790558', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006548', '1237258113002901512', '1236916745927790571', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006549', '1237258113002901512', '1236916745927790589', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006550', '1237258113002901512', '1236916745927790557', '2021-12-23 09:36:58');
INSERT INTO `sys_role_permission` VALUES ('1473829951882006551', '1237258113002901512', '1236916745927790591', '2021-12-23 09:36:58');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码密文',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `real_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实名称',
  `nick_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱(唯一)',
  `status` tinyint NULL DEFAULT 1 COMMENT '账户状态(1.正常 2.锁定 )',
  `sex` tinyint NULL DEFAULT 1 COMMENT '性别(1.男 2.女)',
  `deleted` tinyint NULL DEFAULT 1 COMMENT '是否删除(1未删除；0已删除)',
  `create_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_where` tinyint NULL DEFAULT 1 COMMENT '创建来源(1.web 2.android 3.ios )',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1237361915165020161', 'superadmin', '$2a$10$JqoiFCw4LUj184ghgynYp.4kW5BVeAZYjKqu7xEKceTaq7X3o4I4W', '13888888888', '小池', '超级管理员', '875267425@qq.com', 1, 1, 1, NULL, '1237361915165020161', 1, '2019-09-22 19:38:05', '2020-04-07 18:08:52');
INSERT INTO `sys_user` VALUES ('1237365636208922624', 'test', '', '16666666666', NULL, NULL, NULL, 1, 2, 1, '1237361915165020161', '1237361915165020161', 1, '2020-03-10 13:12:12', '2021-12-10 22:48:59');
INSERT INTO `sys_user` VALUES ('1246071816909361152', 'test123', '', '13666666666', 'test测试账号', '测试账号', '222222222@qq.com', 1, 1, 1, NULL, '1237361915165020161', 1, '2020-04-03 21:47:27', '2021-12-12 01:24:53');
INSERT INTO `sys_user` VALUES ('1246347518934126592', 'aaaaaa啊啊啊啊', '$2a$10$l1H90jy1UyZaHnsnZ7qCHOL8d83RUZn8A0N0aIEHWfGe2u.LmYkES', '13333333336', 'aaaaa', 'aaaaaa', 'aaaaaaaa@qq.com', 1, 1, 1, NULL, '1237361915165020161', 1, '2020-04-04 16:02:59', '2020-04-04 17:18:34');
INSERT INTO `sys_user` VALUES ('1246352746546860032', 'bb啵啵c呃呃呃呃呃', '$2a$10$ex6BCxAd.ubD6ogPgj/jKOvr1HYcczXnGUXGSiP2Lh8uTcSD7dngK', '13888888888', 'bbbbb', 'bbb', 'bbbbbbbbbb@qq.com', 1, 2, 1, NULL, '1247515643591397376', 1, '2020-04-04 16:23:46', '2020-04-08 12:01:41');
INSERT INTO `sys_user` VALUES ('1246362842827984896', '我只是想测试123', '$2a$10$31JFwSh4bGCD/b.rwnKYHeHlqP5q3hTQZGr3nsSJW2HujULNfMrii', '13555555553', 'formceshiddd', 'formceshiddd', 'bbb888888@qq.com', 1, 2, 1, NULL, '1237361915165020161', 2, '2020-04-04 17:03:53', '2020-04-04 17:44:09');
INSERT INTO `sys_user` VALUES ('1246368763562037248', '水水水123', '$2a$10$FDofRcNN18MbTGFHXQLSf.wsmFGozn3JUTVIvTiaiqRNthrdxKTzG', '15777777778', '水水水水123', '水水水水123', 'qq55555@qq.com', 1, 1, 1, NULL, '1237361915165020161', 2, '2020-04-04 17:27:24', '2020-04-04 17:44:00');
INSERT INTO `sys_user` VALUES ('1247078461865070592', 'ddddddd', '$2a$10$Sw2Ql7BnqqX2WCE7UZxoP.x5UeQe/7QlBLD.8WQgA5VFETi04aN5S', '13222222222', 'ddddd', 'dddddd', '55555555@qq.com', 1, 1, 1, NULL, NULL, 1, '2020-04-06 16:27:30', NULL);
INSERT INTO `sys_user` VALUES ('1247078545952477184', 'ccccccccc', '$2a$10$BdjM5j3wiVHF1XHymLxaxOfMeh4.uF7rnETKaNUB37yVWylFKwSRK', '13555555555', 'ccccc', 'cccc', '22222555@qq.com', 1, 2, 1, NULL, NULL, 1, '2020-04-06 16:27:50', '2020-04-06 16:31:06');
INSERT INTO `sys_user` VALUES ('1247078658519207936', 'xxxxxxxxx', '$2a$10$1/RUJ7Na1tsgUfYnygnlAead0odJBhREJbb.7G2pW5YAaIX/WJenO', '13333333333', 'xxxxxxxxx', 'xxxxxxx', '2444444445@qq.com', 1, 2, 1, NULL, NULL, 1, '2020-04-06 16:28:17', NULL);
INSERT INTO `sys_user` VALUES ('1247078839641837568', '8888888888', '$2a$10$I79.b91kXfwhG6Nw8EsQY.ZSuk5dffpt1fwQqJx01IB/7C.bErozq', '13999999999', '888888', '88888', '888888888@qq.com', 1, 1, 1, NULL, NULL, 1, '2020-04-06 16:29:00', '2020-04-06 16:32:38');
INSERT INTO `sys_user` VALUES ('1247079478228815872', 'eeeeeeeeee', '$2a$10$3EsSOzRQ7SheqTvf3I9l9.hnpjAAIyRnGnLLYA28CWb0niFgN6iry', '13688888888', 'eeee', 'eee', 'eeeeee@qq.com', 1, 1, 1, NULL, NULL, 1, '2020-04-06 16:31:32', '2020-04-06 16:38:23');
INSERT INTO `sys_user` VALUES ('1247462611247828992', 'ssssss', '$2a$10$BDHPYj6a7hT7wz.cbC6uGOVV57r7C0CmrM59EMBtdxo34astzQLJS', '13333333333', 'ssssss', 'ssssss', '333333@qq.com', 1, 1, 1, NULL, NULL, 1, '2020-04-07 17:53:58', NULL);
INSERT INTO `sys_user` VALUES ('1247515643591397376', 'admin123', '$2a$10$RlBzDJm2IOb5...piM.yEObU.r0D6Jd5XrszKzu/r3mFRPTx0gQbi', '13699999999', 'admin测试', 'admin测试', 'admin123@qq.com', 1, 1, 1, NULL, '1237361915165020161', 1, '2020-04-07 21:24:42', '2020-04-08 12:04:46');
INSERT INTO `sys_user` VALUES ('1460885537043910656', 'adminszx', '$2a$10$HIPPqjE/KYj1Hnxdwqro0eW0rYwnqEV//tScXnqQDAPGvbHbpYQcG', '123456', NULL, NULL, '123456@qq.com', 1, 1, 1, NULL, NULL, 1, '2021-11-17 16:20:29', NULL);
INSERT INTO `sys_user` VALUES ('1469754698172076032', '125555', '$2a$10$MAwMYZHQgiOUMx9WytJ.v.GlUGOa3z/XuRAxF.nKb3WAap4u9G76O', '15151515111', 'test1555', '125555', '1231230793@qq.com', 1, 1, 1, NULL, NULL, 1, '2021-12-12 03:43:22', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1239912670904324096', '1237361915165020161', '1237258113002901512', '2020-03-17 21:53:12');
INSERT INTO `sys_user_role` VALUES ('1247515049136885760', '1237365636208922624', '1237258113002901515', '2020-04-07 21:22:20');
INSERT INTO `sys_user_role` VALUES ('1247736718564659200', '1247515643591397376', '1237258113002901515', '2020-04-08 12:03:10');
INSERT INTO `sys_user_role` VALUES ('1469719822114885632', '1246071816909361152', '1237258113002901515', '2021-12-12 01:24:46');
INSERT INTO `sys_user_role` VALUES ('1469719822114885633', '1246071816909361152', '1237258113002901514', '2021-12-12 01:24:46');

-- ----------------------------
-- Table structure for t_chunk_info
-- ----------------------------
DROP TABLE IF EXISTS `t_chunk_info`;
CREATE TABLE `t_chunk_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `chunk_number` decimal(10, 0) NOT NULL,
  `chunk_size` decimal(10, 0) NOT NULL,
  `current_chunkSize` decimal(10, 0) NOT NULL,
  `identifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filename` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relative_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_chunks` decimal(10, 0) NOT NULL,
  `type` decimal(10, 0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_chunk_info
-- ----------------------------
INSERT INTO `t_chunk_info` VALUES ('919581433578651648919581433578651648', 1, 2048000, 3200900, '6ae48f96eb32f8f05cd4872040fc3516', 'photomode_17122020_202205.png', 'photomode_17122020_202205.png', 1, NULL);
INSERT INTO `t_chunk_info` VALUES ('922201973908832256922201973908832256', 1, 2048000, 46419, 'e40d493d45a2ba45b2e81bb039b5f1b5', 'QQ图片20200202115617.jpg', 'QQ图片20200202115617.jpg', 1, NULL);
INSERT INTO `t_chunk_info` VALUES ('922202014534860800922202014534860800', 1, 2048000, 2048000, '4b0c3498734b5919a9ae9af6e67460f4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', 3, NULL);
INSERT INTO `t_chunk_info` VALUES ('922202016753647616922202016753647616', 2, 2048000, 2048000, '4b0c3498734b5919a9ae9af6e67460f4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', 3, NULL);
INSERT INTO `t_chunk_info` VALUES ('922202016787202048922202016787202048', 3, 2048000, 2211291, '4b0c3498734b5919a9ae9af6e67460f4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', 3, NULL);
INSERT INTO `t_chunk_info` VALUES ('922223477195276288922223477195276288', 1, 2048000, 3776222, 'aaeb4bcba9951fe7ab9b72263df1fe52', '守望先锋 2020-01-06 19-30-04.mp4', '守望先锋 2020-01-06 19-30-04.mp4', 1, NULL);

-- ----------------------------
-- Table structure for t_file_info
-- ----------------------------
DROP TABLE IF EXISTS `t_file_info`;
CREATE TABLE `t_file_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filename` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `identifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_size` decimal(10, 0) NOT NULL,
  `location` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `ref_project_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upload_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_file_info
-- ----------------------------
INSERT INTO `t_file_info` VALUES ('919581435629666304919581435629666304', 'photomode_17122020_202205.png', '6ae48f96eb32f8f05cd4872040fc3516', NULL, 3200900, './files/6ae48f96eb32f8f05cd4872040fc3516/photomode_17122020_202205.png', '1', '123456789', NULL, '2021-12-12 13:28:19');
INSERT INTO `t_file_info` VALUES ('922201975490084864922201975490084864', 'QQ图片20200202115617.jpg', 'e40d493d45a2ba45b2e81bb039b5f1b5', NULL, 46419, './files/e40d493d45a2ba45b2e81bb039b5f1b5/QQ图片20200202115617.jpg', '1', '123456789', NULL, '2021-12-19 19:01:24');
INSERT INTO `t_file_info` VALUES ('922202017680588800922202017680588800', '4B0C3498734B5919A9AE9AF6E67460F4.mp4', '4b0c3498734b5919a9ae9af6e67460f4', NULL, 6307291, './files/4b0c3498734b5919a9ae9af6e67460f4/4B0C3498734B5919A9AE9AF6E67460F4.mp4', '1', '123456789', NULL, '2021-12-19 19:01:34');
INSERT INTO `t_file_info` VALUES ('922223477497266176922223477497266176', '守望先锋 2020-01-06 19-30-04.mp4', 'aaeb4bcba9951fe7ab9b72263df1fe52', NULL, 3776222, './files/aaeb4bcba9951fe7ab9b72263df1fe52/守望先锋 2020-01-06 19-30-04.mp4', '1', '123456789', NULL, '2021-12-19 20:26:51');

-- ----------------------------
-- Table structure for uncheckvideo
-- ----------------------------
DROP TABLE IF EXISTS `uncheckvideo`;
CREATE TABLE `uncheckvideo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL COMMENT '创作者id',
  `author_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创作者名字',
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频名字',
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频时长(单位:s',
  `style` tinyint NULL DEFAULT NULL COMMENT '视频类型',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频简介',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频封面',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频地址',
  `checked` tinyint(1) NOT NULL COMMENT '是否已审核(0未审核 1已审核',
  `cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核未通过原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of uncheckvideo
-- ----------------------------
INSERT INTO `uncheckvideo` VALUES (45, 69, 'user', '一人之下3', '25', 5, '一人之下3', '/videoPic/1640166486720一人之下诸葛青2.jpeg', '/video/1640166486720share_e5e5ba04ceff5964fd44d458ba2a0711.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (46, 69, 'user', '一人之下3', '25', 5, '一人之下3', '/videoPic/1640166488849一人之下诸葛青2.jpeg', '/video/1640166488849share_e5e5ba04ceff5964fd44d458ba2a0711.mp4', 1, '重复上传');
INSERT INTO `uncheckvideo` VALUES (48, 69, 'user', '一人之下4', '227', 5, '一人之下4', '/videoPic/1640166511566一人之下王也4.jpeg', '/video/1640166511566share_00da7e89cfb5aea18fcc68745c54a775.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (49, 69, 'user', '一人之下4', '227', 5, '一人之下4', '/videoPic/1640166513066一人之下王也4.jpeg', '/video/1640166513066share_00da7e89cfb5aea18fcc68745c54a775.mp4', 1, '重复上传');
INSERT INTO `uncheckvideo` VALUES (50, 69, 'user', '一人之下5', '227', 5, '一人之下5', '/videoPic/1640166520470一人之下王也4.jpeg', '/video/1640166520470share_00da7e89cfb5aea18fcc68745c54a775.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (60, 69, 'user', '小李文案馆', '9', 5, '', '/videoPic/16401667911101637830098343.jpg', '/video/1640166791110share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (61, 69, 'user', '烟火生活', '9', 5, '', '/videoPic/16401668210041637829538986.jpg', '/video/1640166821004share_867cce1cb5d9d818556459702b403fad.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (62, 69, 'user', '小李文案馆', '9', 5, '大大大的是', '/videoPic/16401668819991637830098343.jpg', '/video/1640166881999share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (63, 69, 'user', '小李文案馆', '9', 5, '大大大的是', '/videoPic/16401668831531637830098343.jpg', '/video/1640166883153share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (64, 69, 'user', '小李文案馆', '9', 5, '大大', '/videoPic/16401668860091637830098343.jpg', '/video/1640166886009share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (65, 69, 'user', '小李文案馆', '9', 5, '大大', '/videoPic/16401668911381637830098343.jpg', '/video/1640166891138share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (66, 69, 'user', '文案馆', '9', 5, '大大', '/videoPic/16401668943291637830098343.jpg', '/video/1640166894329share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (67, 69, 'user', '文案馆', '9', 5, '大大', '/videoPic/16401668950771637830098343.jpg', '/video/1640166895077share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (68, 69, 'user', '文案馆', '9', 5, '大大', '/videoPic/16401668952211637830098343.jpg', '/video/1640166895221share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (69, 69, 'user', '文案馆', '9', 5, '大大', '/videoPic/16401668953601637830098343.jpg', '/video/1640166895360share_3470fa0cdf5d38217215446041a56209.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (70, 69, 'user', '迈凯伦', '10', 17, '', '/videoPic/16401670139541637829293140.jpg', '/video/1640167013954share_5e13aa88717386e3e7d2f33757fb0e56.mp4', 1, '重复上传');
INSERT INTO `uncheckvideo` VALUES (73, 69, 'user', '一人之下6', '59', 5, '一人之下6', '/videoPic/1640167450846一人之下诸葛青.jpeg', '/video/1640167450846share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, NULL);
INSERT INTO `uncheckvideo` VALUES (74, 69, 'user', '一人之下7', '59', 5, '一人之下7', '/videoPic/1640167465891一人之下王也3.jpeg', '/video/1640167465891share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, NULL);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL COMMENT '创作者id',
  `author_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创作者名字',
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频名字',
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频时长(单位：s',
  `style` tinyint NOT NULL COMMENT '视频类型',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频简介',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频封面',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '视频地址',
  `praise` int UNSIGNED NULL DEFAULT NULL COMMENT '视频点赞数量',
  `play_number` int UNSIGNED NULL DEFAULT NULL COMMENT '视频播放数量',
  `barrage` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '弹幕',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (166, 69, 'user', '一人之下', '78', 5, '一人之下', '2021-12-22 17:49:46', '/videoPic/1640166408853一人之下诸葛青3.jpeg', '/video/1640166408853share_41446fa62e18f40e50cd0950bab53aaf.mp4', 0, 20, '[0.435]69:你好啊\n[0.776]69:6666666\n[0.776]69:213123212321\n[0.776]69:1\n[0.776]69:2\n[0.776]69:3\n[0.776]69:4\n[0.776]69:5\n[0.776]69:6\n[0.776]69:7\n[0.776]69:8\n[1.150]69:56535646345\n[1.557]69:打火机可达十点实况了解了1\n[1.604]69:你好等哈考虑到哈尽快\n[1.668]69:666666\n[2.049]69:谢谢\n[2.054]69:99999\n[2.064]69:232432\n[2.112]76:111\n[2.185]69:232343243\n[2.273]69:666666\n[2.626]69:谢谢\n[3.346]69:666\n[3.589]69:你也好\n[4.385]69:谢谢你哦\n[4.640]69:6666666666\n[9.088]76:rrr\n[11.065]69:111111\n[14.756]77:大家好\n[14.776]69:2222223\n');
INSERT INTO `video` VALUES (167, 69, 'user', '一人之下1', '59', 5, '一人之下1', '2021-12-22 17:49:48', '/videoPic/1640166437803一人之下王也2.jpeg', '/video/1640166437803share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, 2, NULL);
INSERT INTO `video` VALUES (168, 69, 'user', '一人之下2', '25', 5, '一人之下2', '2021-12-22 17:49:49', '/videoPic/1640166464771一人之下诸葛青2.jpeg', '/video/1640166464771share_e5e5ba04ceff5964fd44d458ba2a0711.mp4', 0, 3, '[5.875]76:111\n[9.114]76:111\n[14.004]76:123\n');
INSERT INTO `video` VALUES (169, 69, 'user', '一人之下3', '25', 5, '一人之下3', '2021-12-22 17:49:52', '/videoPic/1640166483921一人之下诸葛青2.jpeg', '/video/1640166483921share_e5e5ba04ceff5964fd44d458ba2a0711.mp4', 0, 1, NULL);
INSERT INTO `video` VALUES (170, 69, 'user', '一人之下4', '227', 5, '一人之下4', '2021-12-22 17:50:08', '/videoPic/1640166509465一人之下王也4.jpeg', '/video/1640166509465share_00da7e89cfb5aea18fcc68745c54a775.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (171, 69, 'user', '一人之下5', '227', 16, '一人之下5', '2021-12-22 17:50:21', '/videoPic/1640166523449一人之下王也4.jpeg', '/video/1640166523449share_00da7e89cfb5aea18fcc68745c54a775.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (172, 69, 'user', '搞笑风', '227', 16, '搞笑风', '2021-12-22 17:50:23', '/videoPic/1640166561453-283301dd4f4cd1b6.jpg', '/video/1640166561453share_00da7e89cfb5aea18fcc68745c54a775.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (173, 69, 'user', '书单', '9', 16, '', '2021-12-22 17:55:26', '/videoPic/16401667098241637830098343.jpg', '/video/1640166709824share_3470fa0cdf5d38217215446041a56209.mp4', 0, 1, NULL);
INSERT INTO `video` VALUES (174, 69, 'user', '励志书单', '9', 16, '', '2021-12-22 17:55:27', '/videoPic/16401667350891637830098343.jpg', '/video/1640166735089share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (175, 69, 'user', '使馆书单', '9', 16, '', '2021-12-22 17:55:28', '/videoPic/16401667410791637830098343.jpg', '/video/1640166741079share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (176, 69, 'user', '时光', '9', 16, '', '2021-12-22 17:55:29', '/videoPic/16401667456201637830098343.jpg', '/video/1640166745620share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (177, 69, 'user', '回忆', '9', 16, '', '2021-12-22 17:55:30', '/videoPic/16401667542801637830098343.jpg', '/video/1640166754280share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (178, 69, 'user', '文案', '9', 16, '', '2021-12-22 17:55:31', '/videoPic/16401667640831637830098343.jpg', '/video/1640166764083share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (179, 69, 'user', '小李文案馆', '9', 16, '', '2021-12-22 17:55:32', '/videoPic/16401667795011637830098343.jpg', '/video/1640166779501share_3470fa0cdf5d38217215446041a56209.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (180, 69, 'user', '迈凯伦', '10', 16, '', '2021-12-22 17:57:12', '/videoPic/16401670162101637829293140.jpg', '/video/1640167016210share_5e13aa88717386e3e7d2f33757fb0e56.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (181, 69, 'user', '一人之下6', '59', 5, '一人之下6', '2021-12-22 18:04:59', '/videoPic/1640167448229一人之下诸葛青.jpeg', '/video/1640167448229share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (182, 69, 'user', '一人之下7', '59', 5, '一人之下7', '2021-12-22 18:05:03', '/videoPic/1640167484571一人之下诸葛青4.jpeg', '/video/1640167484571share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (183, 69, 'user', '一人之下8', '59', 5, '一人之下8', '2021-12-22 18:05:06', '/videoPic/1640167489564一人之下诸葛青4.jpeg', '/video/1640167489564share_ae28e0a5da1731cb33cd52df3ca11347.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (184, 69, 'user', '一人之下2', '25', 5, '一人之下2', '2021-12-23 09:35:38', '/videoPic/1640166473867一人之下诸葛青2.jpeg', '/video/1640166473867share_e5e5ba04ceff5964fd44d458ba2a0711.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (185, 69, 'user', '视频11', '16', 15, '111', '2021-12-27 10:37:51', '/videoPic/1640572610050photomode_17122020_202218.png', '/video/16405726100504B0C3498734B5919A9AE9AF6E67460F4.mp4', 0, 0, NULL);
INSERT INTO `video` VALUES (186, 69, 'user', '视频2', '16', 15, '2', '2021-12-27 10:42:29', '/videoPic/1640572923890photomode_17122020_202205.png', '/video/16405729238904B0C3498734B5919A9AE9AF6E67460F4.mp4', 0, 1, '[3.544]69:111\n[5.155]69:1\n[5.504]69:\n[5.702]69:\n[6.009]69:\n[7.103]69:去111\n[7.484]69:1\n[8.461]69:\n[11.887]69:1111\n');
INSERT INTO `video` VALUES (187, 77, 'user6', 'video', '16', 15, 'aa', '2021-12-27 10:53:42', '/videoPic/1640573597722QQ图片20200202115617.jpg', '/video/16405735977224B0C3498734B5919A9AE9AF6E67460F4.mp4', 0, 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
