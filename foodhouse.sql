/*
 Navicat Premium Dump SQL

 Source Server         : FoodWarehouse
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : t262

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 01/03/2025 10:46:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'gongyinghsang_types', '供应商类型', 1, '供应商类型1', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (2, 'gongyinghsang_types', '供应商类型', 2, '供应商类型2', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (3, 'gongyinghsang_xinyong_types', '供应商信用等级名称', 1, '供应商信用等级名称1', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (4, 'gongyinghsang_xinyong_types', '供应商信用等级名称', 2, '供应商信用等级名称2', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (5, 'goods_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (6, 'goods_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (7, 'cangku_types', '仓库', 1, '仓库1', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (8, 'cangku_types', '仓库', 2, '仓库2', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (9, 'goods_churu_inout_types', '出入库类型', 1, '出库', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (10, 'goods_churu_inout_types', '出入库类型', 2, '采购入库', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (11, 'goods_order_types', '预定状态', 1, '已订货', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (12, 'goods_order_types', '预定状态', 2, '已退定', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (13, 'goods_order_types', '预定状态', 3, '已完成', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (14, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-05-24 09:14:12');
INSERT INTO `dictionary` VALUES (15, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-05-24 09:14:13');
INSERT INTO `dictionary` VALUES (16, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-05-24 09:14:13');
INSERT INTO `dictionary` VALUES (17, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-05-24 09:14:13');
INSERT INTO `dictionary` VALUES (18, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-05-24 09:14:13');

-- ----------------------------
-- Table structure for gongyinghsang
-- ----------------------------
DROP TABLE IF EXISTS `gongyinghsang`;
CREATE TABLE `gongyinghsang`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyinghsang_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '供应商名称 Search111 ',
  `gongyinghsang_types` int NULL DEFAULT NULL COMMENT '供应商类型 Search111 ',
  `gongyinghsang_xinyong_types` int NULL DEFAULT NULL COMMENT '供应商信用等级名称 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gongyinghsang_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '供应商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gongyinghsang
-- ----------------------------
INSERT INTO `gongyinghsang` VALUES (1, '供应商名称1', 2, 2, '2022-05-24 09:14:49', '供应商详情1', '2022-05-24 09:14:49');
INSERT INTO `gongyinghsang` VALUES (2, '供应商名称2', 2, 2, '2022-05-24 09:14:49', '供应商详情2', '2022-05-24 09:14:49');
INSERT INTO `gongyinghsang` VALUES (3, '供应商名称3', 2, 2, '2022-05-24 09:14:49', '供应商详情3', '2022-05-24 09:14:49');
INSERT INTO `gongyinghsang` VALUES (4, '供应商名称4', 2, 1, '2022-05-24 09:14:49', '供应商详情4', '2022-05-24 09:14:49');
INSERT INTO `gongyinghsang` VALUES (5, '供应商名称5', 1, 2, '2022-05-24 09:14:49', '供应商详情5', '2022-05-24 09:14:49');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名字 Search111 ',
  `goods_types` int NULL DEFAULT NULL COMMENT '商品类型  Search111 ',
  `goods_kucun_number` int NULL DEFAULT NULL COMMENT '商品库存',
  `gongyinghsang_id` int NULL DEFAULT NULL COMMENT '供应商',
  `cangku_types` int NULL DEFAULT NULL COMMENT '存储仓库 Search111 ',
  `danwei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单位',
  `goods_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价 Search111 ',
  `goods_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '商品名字1', 2, 101, 1, 1, '单位1', 333.04, '商品详情1', '2022-05-24 09:14:49');
INSERT INTO `goods` VALUES (2, '商品名字2', 2, 102, 2, 2, '单位2', 234.12, '商品详情2', '2022-05-24 09:14:49');
INSERT INTO `goods` VALUES (3, '商品名字3', 2, 103, 3, 2, '单位3', 135.41, '商品详情3', '2022-05-24 09:14:49');
INSERT INTO `goods` VALUES (4, '商品名字4', 2, 223, 4, 2, '单位4', 245.28, '商品详情4', '2022-05-24 09:14:49');
INSERT INTO `goods` VALUES (5, '商品名字5', 1, 900, 5, 2, '单位5', 33.75, '<p>商品详情5</p>', '2022-05-24 09:14:49');

-- ----------------------------
-- Table structure for goods_churu_inout
-- ----------------------------
DROP TABLE IF EXISTS `goods_churu_inout`;
CREATE TABLE `goods_churu_inout`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出入库流水号',
  `goods_churu_inout_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `goods_churu_inout_types` int NULL DEFAULT NULL COMMENT '出入库类型',
  `goods_churu_inout_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '出入库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_churu_inout
-- ----------------------------
INSERT INTO `goods_churu_inout` VALUES (1, '165335488909895', '出入库名称1', 2, '备注1', '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout` VALUES (2, '165335488909884', '出入库名称2', 2, '备注2', '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout` VALUES (3, '165335488909818', '出入库名称3', 2, '备注3', '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout` VALUES (4, '16533548890989', '出入库名称4', 2, '备注4', '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout` VALUES (5, '16533548890981', '出入库名称5', 2, '备注5', '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout` VALUES (6, '1653359421920', '123', 2, '', '2022-05-24 10:30:22', '2022-05-24 10:30:22');
INSERT INTO `goods_churu_inout` VALUES (7, '1653361473033', '12333', 2, '', '2022-05-24 11:04:33', '2022-05-24 11:04:33');

-- ----------------------------
-- Table structure for goods_churu_inout_list
-- ----------------------------
DROP TABLE IF EXISTS `goods_churu_inout_list`;
CREATE TABLE `goods_churu_inout_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_churu_inout_id` int NULL DEFAULT NULL COMMENT '出入库',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品',
  `goods_churu_inout_list_number` int NULL DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '出入库详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_churu_inout_list
-- ----------------------------
INSERT INTO `goods_churu_inout_list` VALUES (1, 1, 1, 345, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout_list` VALUES (2, 2, 2, 159, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout_list` VALUES (3, 3, 3, 271, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout_list` VALUES (4, 4, 4, 68, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout_list` VALUES (5, 5, 5, 412, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `goods_churu_inout_list` VALUES (6, 6, 4, 4, '2022-05-24 10:30:22', '2022-05-24 10:30:22');
INSERT INTO `goods_churu_inout_list` VALUES (7, 7, 4, 123, '2022-05-24 11:04:33', '2022-05-24 11:04:33');

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品',
  `kehu_id` int NULL DEFAULT NULL COMMENT '客户',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '员工',
  `goods_order_danhao_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单号 Search111 ',
  `goods_order_number` int NULL DEFAULT NULL COMMENT '预定数量  Search111 ',
  `goods_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `goods_order_types` int NULL DEFAULT NULL COMMENT '预定状态 Search111',
  `goods_order_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品预定' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_order
-- ----------------------------
INSERT INTO `goods_order` VALUES (7, 2, 3, 2, '1653357559741', 20, '2022-05-27 00:00:00', 3, '<p><span style=\"color: rgb(96, 98, 102);\">备注1111</span></p>', '2022-05-24 09:59:36');
INSERT INTO `goods_order` VALUES (8, 3, 4, 2, '1653357988330', 20, '2022-05-28 00:00:00', 3, '<p>123</p>', '2022-05-24 10:06:40');
INSERT INTO `goods_order` VALUES (9, 5, 3, 1, '1653361423329', 99, '2022-05-25 00:00:00', 3, '<p><span style=\"color: rgb(96, 98, 102);\">订单备注</span></p>', '2022-05-24 11:04:09');

-- ----------------------------
-- Table structure for kehu
-- ----------------------------
DROP TABLE IF EXISTS `kehu`;
CREATE TABLE `kehu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kehu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户联系方式 Search111 ',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `kehu_order_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '客户详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kehu
-- ----------------------------
INSERT INTO `kehu` VALUES (1, '客户姓名1', '17703786901', 2, '客户详情1', '2022-05-24 09:14:49');
INSERT INTO `kehu` VALUES (2, '客户姓名2', '17703786902', 2, '客户详情2', '2022-05-24 09:14:49');
INSERT INTO `kehu` VALUES (3, '客户姓名3', '17703786903', 1, '客户详情3', '2022-05-24 09:14:49');
INSERT INTO `kehu` VALUES (4, '客户姓名4', '17703786904', 1, '客户详情4', '2022-05-24 09:14:49');
INSERT INTO `kehu` VALUES (5, '客户姓名5', '17703786905', 2, '客户详情5', '2022-05-24 09:14:49');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int NULL DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '公告标题1', 1, 'http://localhost:8080/kucuenguanlic/upload/news1.jpg', '2022-05-24 09:14:49', '公告详情1', '2022-05-24 09:14:49');
INSERT INTO `news` VALUES (2, '公告标题2', 2, 'http://localhost:8080/kucuenguanlic/upload/news2.jpg', '2022-05-24 09:14:49', '公告详情2', '2022-05-24 09:14:49');
INSERT INTO `news` VALUES (3, '公告标题3', 2, 'http://localhost:8080/kucuenguanlic/upload/news3.jpg', '2022-05-24 09:14:49', '公告详情3', '2022-05-24 09:14:49');
INSERT INTO `news` VALUES (4, '公告标题4', 1, 'http://localhost:8080/kucuenguanlic/upload/news4.jpg', '2022-05-24 09:14:49', '公告详情4', '2022-05-24 09:14:49');
INSERT INTO `news` VALUES (5, '公告标题5', 2, 'http://localhost:8080/kucuenguanlic/upload/news5.jpg', '2022-05-24 09:14:49', '公告详情5', '2022-05-24 09:14:49');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'ezhr52x0q0xtuz6satcwq9f7rzvhjr1l', '2022-05-24 09:36:40', '2024-07-15 12:23:21');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '员工', 'od4y1hm4vlzbyezhclh7u0zfvldrsoky', '2022-05-24 10:29:27', '2024-07-15 12:24:30');
INSERT INTO `token` VALUES (3, 2, 'a2', 'yonghu', '员工', 'nkpfx16lw29wfzo21ufglia1fscmzuqs', '2022-05-24 10:29:38', '2022-05-24 12:02:52');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2022-05-01 00:00:00');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int NULL DEFAULT 1 COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '员工' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '员工1', '123456', '员工姓名1', 'http://localhost:8080/kucuenguanlic/upload/yonghu1.jpg', 1, '17703786901', '1@qq.com', 1, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `yonghu` VALUES (2, '员工2', '123456', '员工姓名2', 'http://localhost:8080/kucuenguanlic/upload/yonghu2.jpg', 2, '17703786902', '2@qq.com', 1, '2022-05-24 09:14:49', '2022-05-24 09:14:49');
INSERT INTO `yonghu` VALUES (3, '员工3', '123456', '员工姓名3', 'http://localhost:8080/kucuenguanlic/upload/yonghu3.jpg', 2, '17703786903', '3@qq.com', 1, '2022-05-24 09:14:49', '2022-05-24 09:14:49');

SET FOREIGN_KEY_CHECKS = 1;
