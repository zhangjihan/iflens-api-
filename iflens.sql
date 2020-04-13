/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3307
 Source Schema         : iflens

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 13/04/2020 12:19:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 6, '首页', 'fa-bar-chart', '/', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (2, 0, 7, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (3, 2, 8, '用户', 'fa-users', 'auth/users', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (4, 2, 9, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (5, 2, 10, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (6, 2, 11, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (7, 2, 12, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (8, 0, 5, '用户管理', 'fa-users', '/users', NULL, '2020-03-11 14:38:31', '2020-04-11 12:17:41');
INSERT INTO `admin_menu` VALUES (9, 0, 2, '商品管理', 'fa-cubes', '/products', NULL, '2020-04-09 11:31:59', '2020-04-10 15:28:48');
INSERT INTO `admin_menu` VALUES (10, 0, 1, '订单管理', 'fa-cny', '/orders', NULL, '2020-04-09 14:19:22', '2020-04-10 15:28:48');
INSERT INTO `admin_menu` VALUES (11, 0, 3, '镜片管理', 'fa-bullseye', '/lens', NULL, '2020-04-10 15:28:33', '2020-04-10 15:28:48');
INSERT INTO `admin_menu` VALUES (12, 0, 4, '镜架管理', 'fa-chain', '/frame', NULL, '2020-04-11 05:33:16', '2020-04-11 12:17:41');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 788 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 07:26:39', '2020-04-10 07:26:39');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:26:47', '2020-04-10 07:26:47');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:26:51', '2020-04-10 07:26:51');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:26:53', '2020-04-10 07:26:53');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:26:55', '2020-04-10 07:26:55');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:27:10', '2020-04-10 07:27:10');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 07:27:14', '2020-04-10 07:27:14');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 07:28:58', '2020-04-10 07:28:58');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:29:02', '2020-04-10 07:29:02');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:29:06', '2020-04-10 07:29:06');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:29:14', '2020-04-10 07:29:14');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:30:32', '2020-04-10 07:30:32');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:30:39', '2020-04-10 07:30:39');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:31:01', '2020-04-10 07:31:01');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:32:31', '2020-04-10 07:32:31');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 07:34:59', '2020-04-10 07:34:59');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:35:27', '2020-04-10 07:35:27');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:35:39', '2020-04-10 07:35:39');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:35:53', '2020-04-10 07:35:53');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:35:56', '2020-04-10 07:35:56');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 07:37:17', '2020-04-10 07:37:17');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:37:29', '2020-04-10 07:37:29');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-04-10 07:41:32', '2020-04-10 07:41:32');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:41:37', '2020-04-10 07:41:37');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:41:42', '2020-04-10 07:41:42');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 07:49:38', '2020-04-10 07:49:38');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:04:11', '2020-04-10 08:04:11');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:05:12', '2020-04-10 08:05:12');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:13:39', '2020-04-10 08:13:39');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:27:41', '2020-04-10 08:27:41');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:27:54', '2020-04-10 08:27:54');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:29:02', '2020-04-10 08:29:02');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:31:40', '2020-04-10 08:31:40');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 08:32:22', '2020-04-10 08:32:22');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:33:30', '2020-04-10 08:33:30');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:33:33', '2020-04-10 08:33:33');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:33:41', '2020-04-10 08:33:41');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:33:46', '2020-04-10 08:33:46');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:34:58', '2020-04-10 08:34:58');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:35:06', '2020-04-10 08:35:06');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:35:08', '2020-04-10 08:35:08');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 08:35:55', '2020-04-10 08:35:55');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:36:01', '2020-04-10 08:36:01');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:36:49', '2020-04-10 08:36:49');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:36:54', '2020-04-10 08:36:54');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:47:07', '2020-04-10 08:47:07');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:47:11', '2020-04-10 08:47:11');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:47:15', '2020-04-10 08:47:15');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:47:16', '2020-04-10 08:47:16');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 08:47:20', '2020-04-10 08:47:20');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:10:50', '2020-04-10 10:10:50');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:10:54', '2020-04-10 10:10:54');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:10:57', '2020-04-10 10:10:57');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:11:03', '2020-04-10 10:11:03');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:11:05', '2020-04-10 10:11:05');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:12:55', '2020-04-10 10:12:55');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:13:01', '2020-04-10 10:13:01');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:13:46', '2020-04-10 10:13:46');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:13:52', '2020-04-10 10:13:52');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:13:53', '2020-04-10 10:13:53');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:14:35', '2020-04-10 10:14:35');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:16:58', '2020-04-10 10:16:58');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:03', '2020-04-10 10:17:03');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:04', '2020-04-10 10:17:04');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:06', '2020-04-10 10:17:06');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:08', '2020-04-10 10:17:08');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:18', '2020-04-10 10:17:18');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:17:20', '2020-04-10 10:17:20');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:20:02', '2020-04-10 10:20:02');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:20:49', '2020-04-10 10:20:49');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:21:03', '2020-04-10 10:21:03');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:21:19', '2020-04-10 10:21:19');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:21:40', '2020-04-10 10:21:40');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:21:53', '2020-04-10 10:21:53');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:22:20', '2020-04-10 10:22:20');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 10:22:47', '2020-04-10 10:22:47');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:22:51', '2020-04-10 10:22:51');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:22:55', '2020-04-10 10:22:55');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:22:59', '2020-04-10 10:22:59');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:23:04', '2020-04-10 10:23:04');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 10:23:22', '2020-04-10 10:23:22');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:23:26', '2020-04-10 10:23:26');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:23:50', '2020-04-10 10:23:50');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:23:57', '2020-04-10 10:23:57');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:31:58', '2020-04-10 10:31:58');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:32:03', '2020-04-10 10:32:03');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:32:48', '2020-04-10 10:32:48');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:32:51', '2020-04-10 10:32:51');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:32:59', '2020-04-10 10:32:59');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:35:06', '2020-04-10 10:35:06');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:37:40', '2020-04-10 10:37:40');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:37:46', '2020-04-10 10:37:46');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 10:38:10', '2020-04-10 10:38:10');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:42:38', '2020-04-10 10:42:38');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 10:42:44', '2020-04-10 10:42:44');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:21:10', '2020-04-10 11:21:10');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:21:19', '2020-04-10 11:21:19');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:21:24', '2020-04-10 11:21:24');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:14', '2020-04-10 11:23:14');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:21', '2020-04-10 11:23:21');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:28', '2020-04-10 11:23:28');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 11:23:32', '2020-04-10 11:23:32');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:36', '2020-04-10 11:23:36');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:39', '2020-04-10 11:23:39');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:23:42', '2020-04-10 11:23:42');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 11:25:03', '2020-04-10 11:25:03');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:33', '2020-04-10 11:40:33');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:40:37', '2020-04-10 11:40:37');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:42:57', '2020-04-10 11:42:57');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:00', '2020-04-10 11:43:00');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 11:43:22', '2020-04-10 11:43:22');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:44', '2020-04-10 11:43:44');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:43:48', '2020-04-10 11:43:48');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 11:45:01', '2020-04-10 11:45:01');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:21', '2020-04-10 11:48:21');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:48:25', '2020-04-10 11:48:25');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:49:48', '2020-04-10 11:49:48');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:13', '2020-04-10 11:50:13');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:53', '2020-04-10 11:50:53');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:50:56', '2020-04-10 11:50:56');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:52:18', '2020-04-10 11:52:18');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:52:19', '2020-04-10 11:52:19');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:52:22', '2020-04-10 11:52:22');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:52:26', '2020-04-10 11:52:26');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 11:52:55', '2020-04-10 11:52:55');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 11:52:59', '2020-04-10 11:52:59');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 11:54:05', '2020-04-10 11:54:05');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 11:54:26', '2020-04-10 11:54:26');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 11:56:05', '2020-04-10 11:56:05');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 11:56:35', '2020-04-10 11:56:35');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 11:57:59', '2020-04-10 11:57:59');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 11:58:00', '2020-04-10 11:58:00');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:12:55', '2020-04-10 12:12:55');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 12:13:51', '2020-04-10 12:13:51');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:14:02', '2020-04-10 12:14:02');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:15:06', '2020-04-10 12:15:06');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:15:35', '2020-04-10 12:15:35');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 12:16:46', '2020-04-10 12:16:46');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-04-10 12:16:51', '2020-04-10 12:16:51');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:16:57', '2020-04-10 12:16:57');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:21:23', '2020-04-10 12:21:23');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:21:31', '2020-04-10 12:21:31');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:21:34', '2020-04-10 12:21:34');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:25:01', '2020-04-10 12:25:01');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:25:32', '2020-04-10 12:25:32');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:25:38', '2020-04-10 12:25:38');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:25:45', '2020-04-10 12:25:45');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:26:38', '2020-04-10 12:26:38');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:27:00', '2020-04-10 12:27:00');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:28:25', '2020-04-10 12:28:25');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:28:30', '2020-04-10 12:28:30');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:28:33', '2020-04-10 12:28:33');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:29:17', '2020-04-10 12:29:17');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:29:37', '2020-04-10 12:29:37');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:31:11', '2020-04-10 12:31:11');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:31:52', '2020-04-10 12:31:52');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:35:02', '2020-04-10 12:35:02');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:37:03', '2020-04-10 12:37:03');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:37:08', '2020-04-10 12:37:08');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:37:14', '2020-04-10 12:37:14');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:37:31', '2020-04-10 12:37:31');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:37:35', '2020-04-10 12:37:35');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:37:38', '2020-04-10 12:37:38');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:48:33', '2020-04-10 12:48:33');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:48:38', '2020-04-10 12:48:38');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 12:52:43', '2020-04-10 12:52:43');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:52:49', '2020-04-10 12:52:49');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:52:52', '2020-04-10 12:52:52');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 12:54:06', '2020-04-10 12:54:06');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:54:12', '2020-04-10 12:54:12');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 12:54:14', '2020-04-10 12:54:14');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:03:01', '2020-04-10 13:03:01');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:03:06', '2020-04-10 13:03:06');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 13:03:41', '2020-04-10 13:03:41');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:03:45', '2020-04-10 13:03:45');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 13:12:46', '2020-04-10 13:12:46');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:12:51', '2020-04-10 13:12:51');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:12:54', '2020-04-10 13:12:54');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:12:58', '2020-04-10 13:12:58');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 13:13:59', '2020-04-10 13:13:59');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:04', '2020-04-10 13:14:04');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:14:13', '2020-04-10 13:14:13');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"test\",\"description\":\"description\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"9925.4\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"price\":null,\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2020-04-10 13:14:41', '2020-04-10 13:14:41');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 13:14:43', '2020-04-10 13:14:43');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:15:27', '2020-04-10 13:15:27');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"test\",\"description\":\"description\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"25.40\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"_method\":\"PUT\"}', '2020-04-10 13:15:30', '2020-04-10 13:15:30');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 13:15:31', '2020-04-10 13:15:31');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:15:59', '2020-04-10 13:15:59');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-04-10 13:16:42', '2020-04-10 13:16:42');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-04-10 13:19:25', '2020-04-10 13:19:25');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:19:34', '2020-04-10 13:19:34');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"title\",\"description\":\"\\u63cf\\u8ff0\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"25.40\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2020-04-10 13:19:38', '2020-04-10 13:19:38');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 13:19:38', '2020-04-10 13:19:38');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"title\",\"description\":\"\\u63cf\\u8ff0\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"25.40\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"_method\":\"PUT\"}', '2020-04-10 13:19:44', '2020-04-10 13:19:44');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 13:19:45', '2020-04-10 13:19:45');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"title\",\"description\":\"\\u63cf\\u8ff0\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"25.40\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"_method\":\"PUT\"}', '2020-04-10 13:20:06', '2020-04-10 13:20:06');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-04-10 13:20:07', '2020-04-10 13:20:07');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:20:14', '2020-04-10 13:20:14');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:20:21', '2020-04-10 13:20:21');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:20:27', '2020-04-10 13:20:27');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 13:21:49', '2020-04-10 13:21:49');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:21:57', '2020-04-10 13:21:57');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:24:14', '2020-04-10 13:24:14');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:24:17', '2020-04-10 13:24:17');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:24:21', '2020-04-10 13:24:21');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:24:27', '2020-04-10 13:24:27');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:35:35', '2020-04-10 13:35:35');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:35:37', '2020-04-10 13:35:37');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:36:56', '2020-04-10 13:36:56');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:38:03', '2020-04-10 13:38:03');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:38:22', '2020-04-10 13:38:22');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:38:41', '2020-04-10 13:38:41');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:39:01', '2020-04-10 13:39:01');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:39:23', '2020-04-10 13:39:23');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:39:26', '2020-04-10 13:39:26');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:39:29', '2020-04-10 13:39:29');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 13:39:42', '2020-04-10 13:39:42');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:39:46', '2020-04-10 13:39:46');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 13:40:14', '2020-04-10 13:40:14');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:40:17', '2020-04-10 13:40:17');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:49:33', '2020-04-10 13:49:33');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:49:37', '2020-04-10 13:49:37');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:49:44', '2020-04-10 13:49:44');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:50:10', '2020-04-10 13:50:10');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 13:51:00', '2020-04-10 13:51:00');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 13:56:16', '2020-04-10 13:56:16');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"6666666\"}', '2020-04-10 13:56:31', '2020-04-10 13:56:31');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"6666666\"}', '2020-04-10 13:57:08', '2020-04-10 13:57:08');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"6666666\"}', '2020-04-10 13:58:57', '2020-04-10 13:58:57');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:01:42', '2020-04-10 14:01:42');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:03:13', '2020-04-10 14:03:13');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"123\",\"express_no\":\"123\"}', '2020-04-10 14:03:22', '2020-04-10 14:03:22');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"123\",\"express_no\":\"123\"}', '2020-04-10 14:06:39', '2020-04-10 14:06:39');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"123\",\"express_no\":\"123\"}', '2020-04-10 14:07:30', '2020-04-10 14:07:30');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:28:48', '2020-04-10 14:28:48');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:28:52', '2020-04-10 14:28:52');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"123123123\"}', '2020-04-10 14:28:58', '2020-04-10 14:28:58');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"Maq7qXv0IMIP5zRePEVBWVomdg4ljelH3R6HSyhH\",\"express_company\":\"\\u987a\\u4e30\",\"express_no\":\"123123123\"}', '2020-04-10 14:33:08', '2020-04-10 14:33:08');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:33:08', '2020-04-10 14:33:08');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:33:18', '2020-04-10 14:33:18');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:33:21', '2020-04-10 14:33:21');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:34:03', '2020-04-10 14:34:03');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:09', '2020-04-10 14:34:09');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:12', '2020-04-10 14:34:12');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:34:19', '2020-04-10 14:34:19');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:43', '2020-04-10 14:34:43');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:46', '2020-04-10 14:34:46');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:49', '2020-04-10 14:34:49');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:34:52', '2020-04-10 14:34:52');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:35:10', '2020-04-10 14:35:10');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:35:14', '2020-04-10 14:35:14');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:35:17', '2020-04-10 14:35:17');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:35:19', '2020-04-10 14:35:19');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:36:02', '2020-04-10 14:36:02');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:37:06', '2020-04-10 14:37:06');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:37:35', '2020-04-10 14:37:35');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:37:53', '2020-04-10 14:37:53');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:38:02', '2020-04-10 14:38:02');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 14:38:05', '2020-04-10 14:38:05');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:38:10', '2020-04-10 14:38:10');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:38:13', '2020-04-10 14:38:13');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:38:59', '2020-04-10 14:38:59');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:40:25', '2020-04-10 14:40:25');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:40:28', '2020-04-10 14:40:28');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:40:37', '2020-04-10 14:40:37');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:41:44', '2020-04-10 14:41:44');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:41:57', '2020-04-10 14:41:57');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:42:44', '2020-04-10 14:42:44');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:42:47', '2020-04-10 14:42:47');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:44:03', '2020-04-10 14:44:03');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:46:13', '2020-04-10 14:46:13');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 14:47:03', '2020-04-10 14:47:03');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:47:09', '2020-04-10 14:47:09');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:47:20', '2020-04-10 14:47:20');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:47:38', '2020-04-10 14:47:38');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:47:41', '2020-04-10 14:47:41');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 14:48:03', '2020-04-10 14:48:03');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-10 14:48:24', '2020-04-10 14:48:24');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:48:29', '2020-04-10 14:48:29');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"123123\",\"express_no\":\"123123\"}', '2020-04-10 14:48:34', '2020-04-10 14:48:34');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"123123\",\"express_no\":\"123123\"}', '2020-04-10 14:51:29', '2020-04-10 14:51:29');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:51:30', '2020-04-10 14:51:30');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:51:51', '2020-04-10 14:51:51');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"sf\",\"express_no\":\"123\"}', '2020-04-10 14:51:58', '2020-04-10 14:51:58');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:51:58', '2020-04-10 14:51:58');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:52:50', '2020-04-10 14:52:50');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:53:34', '2020-04-10 14:53:34');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":null,\"express_no\":null}', '2020-04-10 14:53:37', '2020-04-10 14:53:37');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:53:37', '2020-04-10 14:53:37');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"sf\",\"express_no\":\"123123\"}', '2020-04-10 14:53:48', '2020-04-10 14:53:48');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:53:48', '2020-04-10 14:53:48');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:57:46', '2020-04-10 14:57:46');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:57:51', '2020-04-10 14:57:51');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 14:57:55', '2020-04-10 14:57:55');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"sf\",\"express_no\":\"123123\"}', '2020-04-10 14:58:07', '2020-04-10 14:58:07');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 14:58:08', '2020-04-10 14:58:08');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 15:02:11', '2020-04-10 15:02:11');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/orders/1/ship', 'POST', '127.0.0.1', '{\"_token\":\"4F23diYZITdVnul883xbPb4gKGxXf1w6qXqIRfCn\",\"express_company\":\"sf\",\"express_no\":\"123\"}', '2020-04-10 15:02:18', '2020-04-10 15:02:18');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 15:02:18', '2020-04-10 15:02:18');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-10 15:10:41', '2020-04-10 15:10:41');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:55', '2020-04-10 15:10:55');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:10:58', '2020-04-10 15:10:58');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 15:16:19', '2020-04-10 15:16:19');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:25', '2020-04-10 15:16:25');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:16:30', '2020-04-10 15:16:30');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 15:27:10', '2020-04-10 15:27:10');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:27:17', '2020-04-10 15:27:17');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u955c\\u7247\\u7ba1\\u7406\",\"icon\":\"fa-bullseye\",\"uri\":\"\\/lens\",\"roles\":[null],\"permission\":null,\"_token\":\"9WXIoSde1sudQMcKQNaLYeMmSSRWyoRAGwOosfuI\"}', '2020-04-10 15:28:33', '2020-04-10 15:28:33');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-10 15:28:33', '2020-04-10 15:28:33');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"9WXIoSde1sudQMcKQNaLYeMmSSRWyoRAGwOosfuI\",\"_order\":\"[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-10 15:28:48', '2020-04-10 15:28:48');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:28:48', '2020-04-10 15:28:48');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:28:57', '2020-04-10 15:28:57');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-10 15:28:59', '2020-04-10 15:28:59');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:29:03', '2020-04-10 15:29:03');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-10 15:30:22', '2020-04-10 15:30:22');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-10 15:33:18', '2020-04-10 15:33:18');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 15:35:16', '2020-04-10 15:35:16');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 15:36:20', '2020-04-10 15:36:20');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:43:13', '2020-04-10 15:43:13');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:43:37', '2020-04-10 15:43:37');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:45:52', '2020-04-10 15:45:52');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:46:02', '2020-04-10 15:46:02');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-10 15:46:26', '2020-04-10 15:46:26');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:46:30', '2020-04-10 15:46:30');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-10 15:47:35', '2020-04-10 15:47:35');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/lens/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u955c\\u7247\",\"price\":\"459\",\"brand\":\"zeiss\",\"description\":\"A\\u7cfb\\u5217\",\"abbe\":\"4.2\",\"transmittance\":\"2.2\",\"refraction\":\"1.67\",\"weight\":\"20\",\"membrane\":\"1\",\"type\":\"1\",\"spherical\":\"1\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"9WXIoSde1sudQMcKQNaLYeMmSSRWyoRAGwOosfuI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-10 15:48:42', '2020-04-10 15:48:42');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-10 15:48:43', '2020-04-10 15:48:43');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-10 15:49:01', '2020-04-10 15:49:01');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 04:54:46', '2020-04-11 04:54:46');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 04:57:36', '2020-04-11 04:57:36');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 04:57:42', '2020-04-11 04:57:42');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 04:58:54', '2020-04-11 04:58:54');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 04:59:08', '2020-04-11 04:59:08');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/lens/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u955c\\u7247\",\"price\":\"459\",\"brand\":\"zeiss\",\"description\":\"A\\u7cfb\\u5217\",\"abbe\":\"4.2\",\"transmittance\":\"2.2\",\"refraction\":\"1.67\",\"weight\":\"20\",\"membrane\":\"1\",\"type\":\"1\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\"}', '2020-04-11 04:59:18', '2020-04-11 04:59:18');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 04:59:19', '2020-04-11 04:59:19');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 04:59:24', '2020-04-11 04:59:24');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/lens/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u955c\\u7247\",\"price\":\"459\",\"brand\":\"zeiss\",\"description\":\"A\\u7cfb\\u5217\",\"abbe\":\"4.2\",\"transmittance\":\"2.2\",\"refraction\":\"1.67\",\"weight\":\"20\",\"membrane\":\"\\u83b2\\u82b1\\u819c\",\"type\":\"1\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 04:59:41', '2020-04-11 04:59:41');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 04:59:41', '2020-04-11 04:59:41');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 04:59:50', '2020-04-11 04:59:50');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/lens/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:01:16', '2020-04-11 05:01:16');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:01:24', '2020-04-11 05:01:24');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/lens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:01:30', '2020-04-11 05:01:30');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:01:30', '2020-04-11 05:01:30');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:03:27', '2020-04-11 05:03:27');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/lens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:03:30', '2020-04-11 05:03:30');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:03:30', '2020-04-11 05:03:30');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:05:02', '2020-04-11 05:05:02');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/lens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:05:05', '2020-04-11 05:05:05');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:08:51', '2020-04-11 05:08:51');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/lens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:08:56', '2020-04-11 05:08:56');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/lens', 'POST', '127.0.0.1', '{\"title\":\"\\u4f9d\\u89c6\\u8def\\u955c\\u72471.56A+\\u94bb\\u6676A3\\u975e\\u7403\\u9762A4\\u9632\\u84dd\\u5149\\u8fd1\\u89c6\\u955c\\u7247\",\"price\":null,\"brand\":\"essilor\",\"description\":\"1.60\\u9632\\u7d2b\\u5916\\u7ebf1.67\\/1.74\\u9632\\u8f90\\u5c04\\u773c\\u955c\\u7247 \\u955c\\u67b6+\\u94bb\\u6676A4 1.56\\u9632\\u84dd\\u5149\\u975e\\u7403\\u9762\\/\\u4e00\\u7247\\u4ef7\",\"abbe\":\"43\",\"transmittance\":\"23\",\"refraction\":\"1.56\",\"weight\":\"20\",\"membrane\":\"\\u94bb\\u6676A3\",\"type\":\"0\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 05:11:35', '2020-04-11 05:11:35');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:11:37', '2020-04-11 05:11:37');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/lens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:11:57', '2020-04-11 05:11:57');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/lens', 'POST', '127.0.0.1', '{\"title\":\"\\u4f9d\\u89c6\\u8def\\u955c\\u72471.56A+\\u94bb\\u6676A3\\u975e\\u7403\\u9762\",\"price\":\"432.3\",\"brand\":\"essilor\",\"description\":\"A4\\u9632\\u84dd\\u5149\\u8fd1\\u89c6\\u955c\\u72471.60\\u9632\\u7d2b\\u5916\\u7ebf1.67\\/1.74\\u9632\\u8f90\\u5c04\\u773c\\u955c\\u7247 \\u955c\\u67b6+\\u94bb\\u6676A4 1.56\\u9632\\u84dd\\u5149\\u975e\\u7403\\u9762\\/\\u4e00\\u7247\\u4ef7\",\"abbe\":\"36\",\"transmittance\":\"23\",\"refraction\":\"1.56\",\"weight\":\"20\",\"membrane\":\"\\u94bb\\u6676A3\",\"type\":\"0\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 05:13:35', '2020-04-11 05:13:35');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:13:35', '2020-04-11 05:13:35');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/lens/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:13:49', '2020-04-11 05:13:49');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/lens/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u4f9d\\u89c6\\u8def\\u955c\\u72471.56A+\\u94bb\\u6676A3\\u975e\\u7403\\u9762\",\"price\":\"432.3\",\"brand\":\"essilor\",\"description\":\"A4\\u9632\\u84dd\\u5149\\u8fd1\\u89c6\\u955c\\u72471.60\\u9632\\u7d2b\\u5916\\u7ebf1.67\\/1.74\\u9632\\u8f90\\u5c04\\u773c\\u955c\\u7247 \\u955c\\u67b6+\\u94bb\\u6676A4 1.56\\u9632\\u84dd\\u5149\\u975e\\u7403\\u9762\\/\\u4e00\\u7247\\u4ef7\",\"abbe\":\"36\",\"transmittance\":\"23\",\"refraction\":\"1.56\",\"weight\":\"20\",\"membrane\":\"\\u94bb\\u6676A3\",\"type\":\"0\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 05:13:57', '2020-04-11 05:13:57');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:13:58', '2020-04-11 05:13:58');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:14:02', '2020-04-11 05:14:02');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/lens/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u955c\\u7247\",\"price\":\"459\",\"brand\":\"zeiss\",\"description\":\"A\\u7cfb\\u5217\",\"abbe\":\"4.2\",\"transmittance\":\"2.2\",\"refraction\":\"1.67\",\"weight\":\"20\",\"membrane\":\"\\u83b2\\u82b1\\u819c\",\"type\":\"0\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 05:14:10', '2020-04-11 05:14:10');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 05:14:10', '2020-04-11 05:14:10');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:31:29', '2020-04-11 05:31:29');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u955c\\u67b6\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\"}', '2020-04-11 05:33:16', '2020-04-11 05:33:16');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 05:33:16', '2020-04-11 05:33:16');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:33:23', '2020-04-11 05:33:23');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u955c\\u67b6\\u7ba1\\u7406\",\"icon\":\"fa-chain\",\"uri\":\"\\/frame\",\"roles\":[null],\"permission\":null,\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-04-11 05:34:08', '2020-04-11 05:34:08');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 05:34:08', '2020-04-11 05:34:08');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:34:27', '2020-04-11 05:34:27');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 05:34:29', '2020-04-11 05:34:29');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/frame', 'GET', '127.0.0.1', '[]', '2020-04-11 05:35:33', '2020-04-11 05:35:33');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/frame/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:35:37', '2020-04-11 05:35:37');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/frame', 'POST', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u773c\\u955c\\u6846\",\"brand\":\"0\",\"type\":\"1\",\"texture\":\"1\",\"rim\":\"0\",\"nosePads\":\"on\",\"dimension\":\"20*21*10\",\"weight\":\"20\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/frame\"}', '2020-04-11 05:36:04', '2020-04-11 05:36:04');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/frame', 'GET', '127.0.0.1', '[]', '2020-04-11 05:36:04', '2020-04-11 05:36:04');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/frame/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:36:18', '2020-04-11 05:36:18');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/frame/1/edit', 'GET', '127.0.0.1', '[]', '2020-04-11 05:36:56', '2020-04-11 05:36:56');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/frame/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8\\u773c\\u955c\\u6846\",\"brand\":\"0\",\"type\":\"1\",\"texture\":\"1\",\"rim\":\"0\",\"nosePads\":\"on\",\"dimension\":\"20*21*10\",\"weight\":\"20\",\"_token\":\"fv764vBWU1xSUiL0K7lvtA6ub2lOXSNNxUR7a5vD\",\"_method\":\"PUT\"}', '2020-04-11 05:36:59', '2020-04-11 05:36:59');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/frame', 'GET', '127.0.0.1', '[]', '2020-04-11 05:36:59', '2020-04-11 05:36:59');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/frame/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:37:19', '2020-04-11 05:37:19');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/frame', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 05:37:22', '2020-04-11 05:37:22');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 05:37:54', '2020-04-11 05:37:54');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 06:55:36', '2020-04-11 06:55:36');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 07:39:15', '2020-04-11 07:39:15');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:39:22', '2020-04-11 07:39:22');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:39:38', '2020-04-11 07:39:38');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:39:43', '2020-04-11 07:39:43');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 07:44:59', '2020-04-11 07:44:59');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 07:45:42', '2020-04-11 07:45:42');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:46:35', '2020-04-11 07:46:35');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 07:46:43', '2020-04-11 07:46:43');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 07:47:58', '2020-04-11 07:47:58');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 07:48:24', '2020-04-11 07:48:24');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 07:48:51', '2020-04-11 07:48:51');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:06:58', '2020-04-11 08:06:58');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:07:02', '2020-04-11 08:07:02');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:08:11', '2020-04-11 08:08:11');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:08:15', '2020-04-11 08:08:15');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:09:43', '2020-04-11 08:09:43');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:45', '2020-04-11 08:09:45');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:46', '2020-04-11 08:09:46');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:49', '2020-04-11 08:09:49');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:50', '2020-04-11 08:09:50');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:52', '2020-04-11 08:09:52');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:53', '2020-04-11 08:09:53');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:54', '2020-04-11 08:09:54');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:56', '2020-04-11 08:09:56');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:57', '2020-04-11 08:09:57');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:09:58', '2020-04-11 08:09:58');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:00', '2020-04-11 08:10:00');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:01', '2020-04-11 08:10:01');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:02', '2020-04-11 08:10:02');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:04', '2020-04-11 08:10:04');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:05', '2020-04-11 08:10:05');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:06', '2020-04-11 08:10:06');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:08', '2020-04-11 08:10:08');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:09', '2020-04-11 08:10:09');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:10', '2020-04-11 08:10:10');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:11', '2020-04-11 08:10:11');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:10:13', '2020-04-11 08:10:13');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:11:44', '2020-04-11 08:11:44');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:11:50', '2020-04-11 08:11:50');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:12:14', '2020-04-11 08:12:14');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 08:13:08', '2020-04-11 08:13:08');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:15:11', '2020-04-11 08:15:11');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:20:05', '2020-04-11 08:20:05');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:24:29', '2020-04-11 08:24:29');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:24:37', '2020-04-11 08:24:37');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:24:41', '2020-04-11 08:24:41');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:29:23', '2020-04-11 08:29:23');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:29:24', '2020-04-11 08:29:24');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:29:28', '2020-04-11 08:29:28');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:29:37', '2020-04-11 08:29:37');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 08:30:25', '2020-04-11 08:30:25');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 08:58:37', '2020-04-11 08:58:37');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 09:11:11', '2020-04-11 09:11:11');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:11:20', '2020-04-11 09:11:20');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:11:36', '2020-04-11 09:11:36');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:15:59', '2020-04-11 09:15:59');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:16:14', '2020-04-11 09:16:14');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:16:57', '2020-04-11 09:16:57');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:17:32', '2020-04-11 09:17:32');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:24:29', '2020-04-11 09:24:29');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:24:34', '2020-04-11 09:24:34');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:34:47', '2020-04-11 09:34:47');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:35:05', '2020-04-11 09:35:05');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 09:35:13', '2020-04-11 09:35:13');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:36:37', '2020-04-11 09:36:37');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:37:04', '2020-04-11 09:37:04');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:38:22', '2020-04-11 09:38:22');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:39:17', '2020-04-11 09:39:17');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:39:46', '2020-04-11 09:39:46');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:42:09', '2020-04-11 09:42:09');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 09:44:58', '2020-04-11 09:44:58');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:18:40', '2020-04-11 10:18:40');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:26:05', '2020-04-11 10:26:05');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:26:15', '2020-04-11 10:26:15');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:26:50', '2020-04-11 10:26:50');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:27:00', '2020-04-11 10:27:00');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:27:35', '2020-04-11 10:27:35');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:27:54', '2020-04-11 10:27:54');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:28:11', '2020-04-11 10:28:11');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:28:41', '2020-04-11 10:28:41');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 10:28:46', '2020-04-11 10:28:46');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 10:29:01', '2020-04-11 10:29:01');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:29:16', '2020-04-11 10:29:16');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 10:29:23', '2020-04-11 10:29:23');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:32:56', '2020-04-11 10:32:56');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:36:11', '2020-04-11 10:36:11');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:44:08', '2020-04-11 10:44:08');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:45:26', '2020-04-11 10:45:26');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:45:46', '2020-04-11 10:45:46');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:46:01', '2020-04-11 10:46:01');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product_sku,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 10:47:01', '2020-04-11 10:47:01');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:48:49', '2020-04-11 10:48:49');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:49:18', '2020-04-11 10:49:18');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:49:34', '2020-04-11 10:49:34');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:51:17', '2020-04-11 10:51:17');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 10:58:07', '2020-04-11 10:58:07');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 10:59:28', '2020-04-11 10:59:28');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 10:59:32', '2020-04-11 10:59:32');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:02:31', '2020-04-11 11:02:31');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:02:45', '2020-04-11 11:02:45');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:03:08', '2020-04-11 11:03:08');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:04:35', '2020-04-11 11:04:35');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:04:44', '2020-04-11 11:04:44');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:05:07', '2020-04-11 11:05:07');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 11:06:56', '2020-04-11 11:06:56');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:06:59', '2020-04-11 11:06:59');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:07:26', '2020-04-11 11:07:26');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:07:36', '2020-04-11 11:07:36');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:11:23', '2020-04-11 11:11:23');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:13:03', '2020-04-11 11:13:03');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 11:13:38', '2020-04-11 11:13:38');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:13:53', '2020-04-11 11:13:53');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:13:58', '2020-04-11 11:13:58');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-04-11 11:14:00', '2020-04-11 11:14:00');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:17:45', '2020-04-11 11:17:45');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:20:23', '2020-04-11 11:20:23');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:22:12', '2020-04-11 11:22:12');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:25:20', '2020-04-11 11:25:20');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:25:36', '2020-04-11 11:25:36');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:26:10', '2020-04-11 11:26:10');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:28:29', '2020-04-11 11:28:29');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:29:08', '2020-04-11 11:29:08');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:29:21', '2020-04-11 11:29:21');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"}}', '2020-04-11 11:30:18', '2020-04-11 11:30:18');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:31:33', '2020-04-11 11:31:33');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:33:55', '2020-04-11 11:33:55');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:34:15', '2020-04-11 11:34:15');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:34:44', '2020-04-11 11:34:44');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:34:57', '2020-04-11 11:34:57');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:35:46', '2020-04-11 11:35:46');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:36:47', '2020-04-11 11:36:47');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:38:50', '2020-04-11 11:38:50');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:38:57', '2020-04-11 11:38:57');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:39:06', '2020-04-11 11:39:06');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:39:19', '2020-04-11 11:39:19');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:39:32', '2020-04-11 11:39:32');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:39:42', '2020-04-11 11:39:42');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:41:26', '2020-04-11 11:41:26');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:41:41', '2020-04-11 11:41:41');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:41:59', '2020-04-11 11:41:59');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:43:42', '2020-04-11 11:43:42');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:44:02', '2020-04-11 11:44:02');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:44:39', '2020-04-11 11:44:39');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:44:46', '2020-04-11 11:44:46');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:45:10', '2020-04-11 11:45:10');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:46:03', '2020-04-11 11:46:03');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:46:13', '2020-04-11 11:46:13');
INSERT INTO `admin_operation_log` VALUES (529, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:47:31', '2020-04-11 11:47:31');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:47:39', '2020-04-11 11:47:39');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:48:54', '2020-04-11 11:48:54');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:49:48', '2020-04-11 11:49:48');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:50:01', '2020-04-11 11:50:01');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:50:46', '2020-04-11 11:50:46');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:51:01', '2020-04-11 11:51:01');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:53:04', '2020-04-11 11:53:04');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:53:28', '2020-04-11 11:53:28');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:53:47', '2020-04-11 11:53:47');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:55:26', '2020-04-11 11:55:26');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:56:04', '2020-04-11 11:56:04');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:57:25', '2020-04-11 11:57:25');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:58:10', '2020-04-11 11:58:10');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:58:53', '2020-04-11 11:58:53');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 11:59:39', '2020-04-11 11:59:39');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:00:12', '2020-04-11 12:00:12');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:00:21', '2020-04-11 12:00:21');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:01:07', '2020-04-11 12:01:07');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:01:17', '2020-04-11 12:01:17');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:03:11', '2020-04-11 12:03:11');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:04:41', '2020-04-11 12:04:41');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:06:04', '2020-04-11 12:06:04');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:08:20', '2020-04-11 12:08:20');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:08:32', '2020-04-11 12:08:32');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:09:40', '2020-04-11 12:09:40');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:10:35', '2020-04-11 12:10:35');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:11:42', '2020-04-11 12:11:42');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2020-04-11 12:13:34', '2020-04-11 12:13:34');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:14:12', '2020-04-11 12:14:12');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 12:14:49', '2020-04-11 12:14:49');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 12:15:01', '2020-04-11 12:15:01');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 12:16:07', '2020-04-11 12:16:07');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\"}', '2020-04-11 12:16:23', '2020-04-11 12:16:23');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/frame', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:16:34', '2020-04-11 12:16:34');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:16:39', '2020-04-11 12:16:39');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/lens/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:16:46', '2020-04-11 12:16:46');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/lens/2', 'PUT', '127.0.0.1', '{\"title\":\"\\u4f9d\\u89c6\\u8def\\u955c\\u72471.56A+\\u94bb\\u6676A3\\u975e\\u7403\\u9762\",\"price\":\"432.3\",\"brand\":\"essilor\",\"description\":\"A4\\u9632\\u84dd\\u5149\\u8fd1\\u89c6\\u955c\\u72471.60\\u9632\\u7d2b\\u5916\\u7ebf1.67\\/1.74\",\"abbe\":\"36\",\"transmittance\":\"23\",\"refraction\":\"1.56\",\"weight\":\"20\",\"membrane\":\"\\u94bb\\u6676A3\",\"type\":\"0\",\"spherical\":\"0\",\"texture\":\"0\",\"country\":\"0\",\"_token\":\"bdfsDuLAWb8dIl4kV1mDmABQ3tMUQzBGbZ4Gsjp7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/lens\"}', '2020-04-11 12:16:54', '2020-04-11 12:16:54');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/lens', 'GET', '127.0.0.1', '[]', '2020-04-11 12:16:54', '2020-04-11 12:16:54');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_columns_\":\"abbe,brand,country,description,id,membrane,price,refraction,spherical,texture,title,transmittance,type,weight\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:17:07', '2020-04-11 12:17:07');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:17:22', '2020-04-11 12:17:22');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"bdfsDuLAWb8dIl4kV1mDmABQ3tMUQzBGbZ4Gsjp7\",\"_order\":\"[{\\\"id\\\":10},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":8},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-04-11 12:17:41', '2020-04-11 12:17:41');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:17:41', '2020-04-11 12:17:41');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:17:43', '2020-04-11 12:17:43');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-04-11 12:17:45', '2020-04-11 12:17:45');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:17:49', '2020-04-11 12:17:49');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"id,no,order_status,paid_at,payment_no,product,refund_no,refund_status,ship_status,total_amount,user.name,user_id\",\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:18:02', '2020-04-11 12:18:02');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:18:10', '2020-04-11 12:18:10');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$VmS\\/la7sS2PNwiKsfadh4uufdihyewuArM0pbvKkLJsb97u4ngiMS\",\"password_confirmation\":\"$2y$10$VmS\\/la7sS2PNwiKsfadh4uufdihyewuArM0pbvKkLJsb97u4ngiMS\",\"_token\":\"bdfsDuLAWb8dIl4kV1mDmABQ3tMUQzBGbZ4Gsjp7\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/orders?_columns_=id%2Cno%2Corder_status%2Cpaid_at%2Cpayment_no%2Cproduct%2Crefund_no%2Crefund_status%2Cship_status%2Ctotal_amount%2Cuser.name%2Cuser_id\"}', '2020-04-11 12:18:30', '2020-04-11 12:18:30');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-04-11 12:18:30', '2020-04-11 12:18:30');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:18:37', '2020-04-11 12:18:37');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2020-04-11 12:18:39', '2020-04-11 12:18:39');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:22:48', '2020-04-11 12:22:48');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:22:53', '2020-04-11 12:22:53');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:22:55', '2020-04-11 12:22:55');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:23:30', '2020-04-11 12:23:30');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:23:34', '2020-04-11 12:23:34');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:23:35', '2020-04-11 12:23:35');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:23:51', '2020-04-11 12:23:51');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:02', '2020-04-11 12:24:02');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:21', '2020-04-11 12:24:21');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:24', '2020-04-11 12:24:24');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:28', '2020-04-11 12:24:28');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/lens/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:31', '2020-04-11 12:24:31');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:34', '2020-04-11 12:24:34');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:24:37', '2020-04-11 12:24:37');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:25:32', '2020-04-11 12:25:32');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:27:04', '2020-04-11 12:27:04');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-11 12:29:43', '2020-04-11 12:29:43');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:29:48', '2020-04-11 12:29:48');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:30:27', '2020-04-11 12:30:27');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:32:35', '2020-04-11 12:32:35');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:32:37', '2020-04-11 12:32:37');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:34:15', '2020-04-11 12:34:15');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:34:19', '2020-04-11 12:34:19');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:35:45', '2020-04-11 12:35:45');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:36:30', '2020-04-11 12:36:30');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:36:41', '2020-04-11 12:36:41');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:37:39', '2020-04-11 12:37:39');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:37:43', '2020-04-11 12:37:43');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:37:50', '2020-04-11 12:37:50');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:37:53', '2020-04-11 12:37:53');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:37:58', '2020-04-11 12:37:58');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:38:20', '2020-04-11 12:38:20');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:39:38', '2020-04-11 12:39:38');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:40:21', '2020-04-11 12:40:21');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:40:25', '2020-04-11 12:40:25');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:40:28', '2020-04-11 12:40:28');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:42:15', '2020-04-11 12:42:15');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:18', '2020-04-11 12:42:18');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:23', '2020-04-11 12:42:23');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 12:42:42', '2020-04-11 12:42:42');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:46', '2020-04-11 12:42:46');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:50', '2020-04-11 12:42:50');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:54', '2020-04-11 12:42:54');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:42:57', '2020-04-11 12:42:57');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:01', '2020-04-11 12:43:01');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:39', '2020-04-11 12:43:39');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:41', '2020-04-11 12:43:41');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:44', '2020-04-11 12:43:44');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:49', '2020-04-11 12:43:49');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:53', '2020-04-11 12:43:53');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:43:57', '2020-04-11 12:43:57');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-11 12:44:28', '2020-04-11 12:44:28');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:44:32', '2020-04-11 12:44:32');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 12:44:51', '2020-04-11 12:44:51');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:44:54', '2020-04-11 12:44:54');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:44:58', '2020-04-11 12:44:58');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/orders/2', 'GET', '127.0.0.1', '[]', '2020-04-11 12:45:30', '2020-04-11 12:45:30');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:45:33', '2020-04-11 12:45:33');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 12:45:36', '2020-04-11 12:45:36');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:05:53', '2020-04-11 14:05:53');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:08:26', '2020-04-11 14:08:26');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:08:57', '2020-04-11 14:08:57');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:09:34', '2020-04-11 14:09:34');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:16:25', '2020-04-11 14:16:25');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:16:55', '2020-04-11 14:16:55');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:18:15', '2020-04-11 14:18:15');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-11 14:18:36', '2020-04-11 14:18:36');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:18:40', '2020-04-11 14:18:40');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-11 14:18:47', '2020-04-11 14:18:47');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:19:36', '2020-04-11 14:19:36');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:20:00', '2020-04-11 14:20:00');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:20:20', '2020-04-11 14:20:20');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:20:55', '2020-04-11 14:20:55');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:21:22', '2020-04-11 14:21:22');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:22:15', '2020-04-11 14:22:15');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:23:14', '2020-04-11 14:23:14');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:23:27', '2020-04-11 14:23:27');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:24:40', '2020-04-11 14:24:40');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:25:13', '2020-04-11 14:25:13');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:25:57', '2020-04-11 14:25:57');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:26:12', '2020-04-11 14:26:12');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:26:31', '2020-04-11 14:26:31');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:26:44', '2020-04-11 14:26:44');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:26:46', '2020-04-11 14:26:46');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:27:00', '2020-04-11 14:27:00');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:27:14', '2020-04-11 14:27:14');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:27:54', '2020-04-11 14:27:54');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:28:18', '2020-04-11 14:28:18');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:30:42', '2020-04-11 14:30:42');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:31:10', '2020-04-11 14:31:10');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:31:39', '2020-04-11 14:31:39');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:31:54', '2020-04-11 14:31:54');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:34:01', '2020-04-11 14:34:01');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:34:32', '2020-04-11 14:34:32');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:34:48', '2020-04-11 14:34:48');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:34:51', '2020-04-11 14:34:51');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:35:17', '2020-04-11 14:35:17');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:35:34', '2020-04-11 14:35:34');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:36:33', '2020-04-11 14:36:33');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:37:22', '2020-04-11 14:37:22');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:37:32', '2020-04-11 14:37:32');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:38:26', '2020-04-11 14:38:26');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:38:46', '2020-04-11 14:38:46');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:39:46', '2020-04-11 14:39:46');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:40:12', '2020-04-11 14:40:12');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:40:44', '2020-04-11 14:40:44');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:41:21', '2020-04-11 14:41:21');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:44:00', '2020-04-11 14:44:00');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:45:14', '2020-04-11 14:45:14');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:45:48', '2020-04-11 14:45:48');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:46:52', '2020-04-11 14:46:52');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:47:12', '2020-04-11 14:47:12');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:49:22', '2020-04-11 14:49:22');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:49:38', '2020-04-11 14:49:38');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 14:57:53', '2020-04-11 14:57:53');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 15:03:07', '2020-04-11 15:03:07');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-11 15:03:39', '2020-04-11 15:03:39');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 04:38:25', '2020-04-12 04:38:25');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 04:38:32', '2020-04-12 04:38:32');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 04:38:35', '2020-04-12 04:38:35');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/frame', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 04:38:37', '2020-04-12 04:38:37');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 04:38:40', '2020-04-12 04:38:40');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2020-04-12 04:58:17', '2020-04-12 04:58:17');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 04:58:38', '2020-04-12 04:58:38');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:05:13', '2020-04-12 05:05:13');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin/products/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 05:05:18', '2020-04-12 05:05:18');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/products/1', 'PUT', '127.0.0.1', '{\"title\":\"\\u8521\\u53f8(ZEISS)\\u65b0\\u6e05\\u9510\\u773c\\u955c\\u72471.56\\u975e\\u7403\\u9762\\u94bb\\u7acb\\u65b9\\u94c2\\u91d1\\u819c\\u6811\\u8102\",\"description\":\"\\u63cf\\u8ff023\",\"on_sale\":\"on\",\"sku\":{\"1\":{\"title\":\"sku_title\",\"description\":\"des\",\"price\":\"25.40\",\"id\":\"1\",\"_remove_\":\"0\"}},\"rating\":\"5\",\"_token\":\"aOKNrj0iQicSTXWeJpiLlFcSk7YT7mpin42FgwDR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2020-04-12 05:05:43', '2020-04-12 05:05:43');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-04-12 05:05:44', '2020-04-12 05:05:44');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 07:09:15', '2020-04-12 07:09:15');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 07:09:51', '2020-04-12 07:09:51');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 07:10:11', '2020-04-12 07:10:11');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 07:10:58', '2020-04-12 07:10:58');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:13:10', '2020-04-12 07:13:10');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:13:14', '2020-04-12 07:13:14');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:13:16', '2020-04-12 07:13:16');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:13:19', '2020-04-12 07:13:19');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 07:13:21', '2020-04-12 07:13:21');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-12 14:37:48', '2020-04-12 14:37:48');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 14:37:53', '2020-04-12 14:37:53');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-12 14:38:07', '2020-04-12 14:38:07');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-13 03:45:15', '2020-04-13 03:45:15');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:45:27', '2020-04-13 03:45:27');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:45:32', '2020-04-13 03:45:32');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:47:39', '2020-04-13 03:47:39');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:47:44', '2020-04-13 03:47:44');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:47:45', '2020-04-13 03:47:45');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:47:54', '2020-04-13 03:47:54');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:47:58', '2020-04-13 03:47:58');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:48:00', '2020-04-13 03:48:00');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:48:23', '2020-04-13 03:48:23');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:48:24', '2020-04-13 03:48:24');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:48:29', '2020-04-13 03:48:29');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:48:30', '2020-04-13 03:48:30');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 03:51:47', '2020-04-13 03:51:47');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 03:51:51', '2020-04-13 03:51:51');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:53:50', '2020-04-13 03:53:50');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:54:17', '2020-04-13 03:54:17');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:54:31', '2020-04-13 03:54:31');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:57:24', '2020-04-13 03:57:24');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:58:22', '2020-04-13 03:58:22');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 03:58:54', '2020-04-13 03:58:54');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-04-13 04:00:29', '2020-04-13 04:00:29');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:00:33', '2020-04-13 04:00:33');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/lens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:00:38', '2020-04-13 04:00:38');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:00:42', '2020-04-13 04:00:42');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:00:55', '2020-04-13 04:00:55');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 04:00:56', '2020-04-13 04:00:56');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 04:01:21', '2020-04-13 04:01:21');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:01:24', '2020-04-13 04:01:24');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 04:01:25', '2020-04-13 04:01:25');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:02:16', '2020-04-13 04:02:16');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:02:59', '2020-04-13 04:02:59');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:05:00', '2020-04-13 04:05:00');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:05:25', '2020-04-13 04:05:25');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:06:09', '2020-04-13 04:06:09');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:06:32', '2020-04-13 04:06:32');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:07:01', '2020-04-13 04:07:01');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:07:19', '2020-04-13 04:07:19');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:08', '2020-04-13 04:08:08');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:13', '2020-04-13 04:08:13');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/orders/2', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:19', '2020-04-13 04:08:19');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/orders/3', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:32', '2020-04-13 04:08:32');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:42', '2020-04-13 04:08:42');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2020-04-13 04:08:52', '2020-04-13 04:08:52');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:10', '2020-04-13 04:15:10');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:15', '2020-04-13 04:15:15');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:17', '2020-04-13 04:15:17');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:20', '2020-04-13 04:15:20');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/orders/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:23', '2020-04-13 04:15:23');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:29', '2020-04-13 04:15:29');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:32', '2020-04-13 04:15:32');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:35', '2020-04-13 04:15:35');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:39', '2020-04-13 04:15:39');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:15:48', '2020-04-13 04:15:48');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/orders/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:35', '2020-04-13 04:16:35');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:38', '2020-04-13 04:16:38');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/orders/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:42', '2020-04-13 04:16:42');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:45', '2020-04-13 04:16:45');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:53', '2020-04-13 04:16:53');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:16:56', '2020-04-13 04:16:56');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:17:28', '2020-04-13 04:17:28');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:17:31', '2020-04-13 04:17:31');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"chen\",\"name\":\"chen\",\"password\":\"chenjiandong\",\"password_confirmation\":\"chenjiandong\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"2cYmYFPhXalP8FM2UZT4iRnOE9hat1eUASUUjmxw\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/auth\\/users\"}', '2020-04-13 04:17:53', '2020-04-13 04:17:53');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-13 04:17:54', '2020-04-13 04:17:54');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-04-13 04:18:02', '2020-04-13 04:18:02');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"chen\",\"name\":\"Admin\",\"password\":\"$2y$10$P1IlUxpoCXnm8h1jZE\\/vUO7lHl6D3tMdf2t5ro6slfBvn.TPwNEOe\",\"password_confirmation\":\"$2y$10$P1IlUxpoCXnm8h1jZE\\/vUO7lHl6D3tMdf2t5ro6slfBvn.TPwNEOe\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"2cYmYFPhXalP8FM2UZT4iRnOE9hat1eUASUUjmxw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/auth\\/users\"}', '2020-04-13 04:18:12', '2020-04-13 04:18:12');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-04-13 04:18:12', '2020-04-13 04:18:12');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用户管理', 'users', '', '/users*', '2020-03-11 14:44:50', '2020-03-11 14:44:50');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'admin', '', NULL, NULL);

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
INSERT INTO `admin_user_permissions` VALUES (2, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$VmS/la7sS2PNwiKsfadh4uufdihyewuArM0pbvKkLJsb97u4ngiMS', 'Administrator', 'images/A_ How long does it take for you to finish one art piece_ And how many hours per week do you draw on average_ B_ At the moment I´m working___.jpg', 'RuyxHwYXDTVeBjbPtGr6I4Iltf9t8NbJkWsO1rfAfwhkb6pgKtEOe08xg6Um', '2019-09-25 12:06:18', '2020-04-11 12:18:30');
INSERT INTO `admin_users` VALUES (2, 'chen', '$2y$10$P1IlUxpoCXnm8h1jZE/vUO7lHl6D3tMdf2t5ro6slfBvn.TPwNEOe', 'Admin', NULL, NULL, '2020-04-13 04:17:53', '2020-04-13 04:18:12');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_items_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `cart_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for eyes_datas
-- ----------------------------
DROP TABLE IF EXISTS `eyes_datas`;
CREATE TABLE `eyes_datas`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(30) NOT NULL,
  `left` double(8, 2) NOT NULL,
  `right` double(8, 2) NOT NULL,
  `cylinder` double(8, 2) NOT NULL,
  `pd` double(8, 2) NOT NULL,
  `axis` double(8, 2) NOT NULL,
  `visual_acuity` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eyes_datas_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of eyes_datas
-- ----------------------------
INSERT INTO `eyes_datas` VALUES (1, 1, 1, 4.50, 4.20, 15.00, 4.32, 5.30, 5.00, '2020-04-02 21:58:58', '2020-04-09 21:59:04');
INSERT INTO `eyes_datas` VALUES (2, 2, 1, 4.20, 4.20, 22.00, 4.32, 5.30, 5.00, '2020-04-02 21:58:58', '2020-04-09 21:59:04');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for frames
-- ----------------------------
DROP TABLE IF EXISTS `frames`;
CREATE TABLE `frames`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `texture` tinyint(4) NOT NULL,
  `rim` tinyint(4) NOT NULL,
  `nosePads` tinyint(4) NOT NULL,
  `dimension` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of frames
-- ----------------------------
INSERT INTO `frames` VALUES (1, '蔡司眼镜框', 0, 1, 1, 0, 1, '20*21*10', 20.00, '2020-04-11 05:36:04', '2020-04-11 05:36:04');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) NOT NULL,
  `imageable_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lens
-- ----------------------------
DROP TABLE IF EXISTS `lens`;
CREATE TABLE `lens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8, 2) NOT NULL,
  `brand` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbe` double(8, 2) NOT NULL,
  `transmittance` double(8, 2) NOT NULL,
  `refraction` double(8, 2) NOT NULL,
  `weight` double(8, 2) NOT NULL,
  `membrane` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `spherical` tinyint(4) NOT NULL,
  `texture` tinyint(4) NOT NULL,
  `country` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lens
-- ----------------------------
INSERT INTO `lens` VALUES (1, '蔡司镜片', 459.00, 'zeiss', 0, 'A系列', 4.20, 2.20, 1.67, 20.00, '莲花膜', 0, 0, 0, NULL, '2020-04-11 05:14:10');
INSERT INTO `lens` VALUES (2, '依视路镜片1.56A+钻晶A3非球面', 432.30, 'essilor', 0, 'A4防蓝光近视镜片1.60防紫外线1.67/1.74', 36.00, 23.00, 1.56, 20.00, '钻晶A3', 0, 0, 0, '2020-04-11 05:13:35', '2020-04-11 12:16:54');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_03_03_021229_create_lens_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_04_09_021226_create_orders_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_04_10_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_04_10_021024_create_products_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_04_10_021055_create_product_skus_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_04_10_021203_create_order_items_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_04_10_021447_create_frames_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_04_10_022353_create_eyes_datas_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_04_10_023509_create_user_addresses_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_04_10_064722_create_cart_items_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_04_10_113927_image_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_04_10_023519_create_user_addresses_table', 2);
INSERT INTO `migrations` VALUES (16, '2020_04_10_013519_create_user_addresses_table', 3);
INSERT INTO `migrations` VALUES (17, '2020_04_10_021029_create_products_table', 4);
INSERT INTO `migrations` VALUES (18, '2020_04_10_021226_create_orders_table', 5);
INSERT INTO `migrations` VALUES (19, '2020_04_10_043519_create_user_addresses_table', 6);
INSERT INTO `migrations` VALUES (20, '2020_04_10_011226_create_orders_table', 7);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `rating` int(10) UNSIGNED NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 1, 1, 1, 1, 25.40, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (2, 1, 2, 2, 1, 25.40, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (3, 2, 3, 1, 3, 199.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (4, 2, 4, 1, 0, 0.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (5, 3, 5, 1, 1, 199.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (6, 3, 1, 1, 1, 0.00, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `paid_at` datetime NULL DEFAULT NULL,
  `payment_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refund_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ship_status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `ship_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_no_unique`(`no`) USING BTREE,
  UNIQUE INDEX `orders_refund_no_unique`(`refund_no`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '000001', 1, 'pending', 'zhejiang-18888888888', 0.00, '2020-04-10 22:57:32', '3245465436', 'pending', NULL, 'pending', 0, '', NULL, '2020-04-10 15:02:18');
INSERT INTO `orders` VALUES (2, '000002', 2, 'pending', '', 0.00, '2020-04-10 22:57:32', '4904568097', 'pending', NULL, 'pending', 0, '', NULL, '2020-04-10 15:02:18');
INSERT INTO `orders` VALUES (3, '000003', 1, 'pending', 'zhejiang-18888888888', 443.00, '2020-04-11 19:13:31', '4396048074', 'pending', NULL, 'pending', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (1, 1, 'sku_title', 'des', 25.40, NULL, NULL);
INSERT INTO `product_skus` VALUES (2, 2, 'skutitle222', '描述', 100.00, NULL, NULL);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `productable_id` bigint(20) UNSIGNED NOT NULL,
  `productable_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '蔡司(ZEISS)新清锐眼镜片1.56', '非球面钻立方铂金膜树脂', '0', 1, 5.00, 1, 'App\\Models\\Lens', 655.00, '2019-10-04 06:55:08', '2020-04-12 05:05:43');
INSERT INTO `products` VALUES (2, '蔡司(ZEISS)防蓝光眼镜片1.74', '非球面钻立方防蓝光膜树脂', '0', 1, 4.00, 0, 'App\\Models\\Lens', 999.00, '2019-10-04 12:26:31', '2019-10-06 07:46:01');
INSERT INTO `products` VALUES (3, '蔡司(ZEISS)钻立方铂金膜镜片 1.67', '', '0', 1, 5.00, 0, 'App\\Models\\Lens', 889.00, '2019-10-04 12:26:31', '2019-10-04 12:26:31');
INSERT INTO `products` VALUES (4, '蔡司(ZEISS) 佳锐冰蓝膜变色 1.74', '', '0', 1, 5.00, 0, 'App\\Models\\Lens', 1453.00, '2019-10-04 12:26:31', '2019-10-04 12:26:31');
INSERT INTO `products` VALUES (5, '蔡司(ZEISS)新清锐眼镜片1.60', '非球面钻立方铂金膜树脂远近视配镜一片装', '0', 1, 5.00, 0, 'App\\Models\\Lens', 745.00, '2019-10-04 12:26:31', '2019-10-04 12:26:31');
INSERT INTO `products` VALUES (6, '尼康（Nikon）单焦点非球面眼镜片1.74', 'SEE高透高洁膜树脂远近视配镜一片装定', '0', 1, 5.00, 0, 'App\\Models\\Lens', 2799.00, '2019-10-04 12:26:31', '2019-10-04 12:26:31');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (1, 1, 'zhejiang-taizhou', 'admin', '18767676666', NULL, NULL, NULL);
INSERT INTO `user_addresses` VALUES (2, 2, 'hangzhou', 'test', '12333333333', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'mail@qq.com', NULL, '$2y$10$5ioOqxl3oTGq760xv/croeGgWmJrjdA38N9NFp04n6jSNZNtnAT7O', NULL, '2020-04-10 08:57:25', '2020-04-10 08:57:25');
INSERT INTO `users` VALUES (2, 'test', 'test@qq.com', NULL, '$2y$10$5ioOqxl3oTGq760xv/croeGgWmJrjdA38N9NFp04n6jSNZNtnAT7O', NULL, '2020-04-05 11:29:48', '2020-04-12 11:29:54');

SET FOREIGN_KEY_CHECKS = 1;
