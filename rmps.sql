/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : rmps

 Target Server Type    : MySQL
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 25/01/2023 02:02:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for approve_pelaporan_um
-- ----------------------------
DROP TABLE IF EXISTS `approve_pelaporan_um`;
CREATE TABLE `approve_pelaporan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pelaporan_um_id` int NOT NULL,
  `level_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `approved` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` datetime NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approve_pelaporan_um
-- ----------------------------

-- ----------------------------
-- Table structure for approve_pengajuan_um
-- ----------------------------
DROP TABLE IF EXISTS `approve_pengajuan_um`;
CREATE TABLE `approve_pengajuan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_id` int NOT NULL,
  `level_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `approved` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` datetime NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approve_pengajuan_um
-- ----------------------------

-- ----------------------------
-- Table structure for audittrail
-- ----------------------------
DROP TABLE IF EXISTS `audittrail`;
CREATE TABLE `audittrail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `script` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `action` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keyvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `oldvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `newvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of audittrail
-- ----------------------------
INSERT INTO `audittrail` VALUES (1, '2022-12-28 06:42:49', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (2, '2022-12-28 22:26:37', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (3, '2022-12-29 04:56:47', '/simanda/login', '7', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (4, '2022-12-30 04:51:03', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (5, '2022-12-30 04:51:39', '/simanda/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (6, '2022-12-30 04:51:49', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (7, '2023-01-02 13:00:04', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (8, '2023-01-02 13:00:34', '/simanda/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (9, '2023-01-02 13:06:20', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (10, '2023-01-02 13:41:33', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (11, '2023-01-03 06:39:13', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (12, '2023-01-04 19:08:21', '/simanda/logout', '1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (13, '2023-01-05 02:25:15', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (14, '2023-01-05 02:25:39', '/simanda/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (15, '2023-01-05 02:25:57', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (16, '2023-01-05 19:24:11', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (17, '2023-01-05 20:26:05', '/simanda23/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (18, '2023-01-05 20:28:29', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (19, '2023-01-06 03:51:58', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (20, '2023-01-06 04:01:30', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (21, '2023-01-07 15:49:39', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (22, '2023-01-07 16:52:25', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (23, '2023-01-08 00:33:44', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (24, '2023-01-10 06:37:54', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (25, '2023-01-11 04:59:58', '/test/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (26, '2023-01-11 05:00:54', '/test/logout', '1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (27, '2023-01-11 05:01:00', '/test/login', '5', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (28, '2023-01-11 05:03:58', '/test/logout', '5', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (29, '2023-01-11 06:37:53', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (30, '2023-01-11 07:39:07', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (31, '2023-01-12 00:46:53', '/dms/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (32, '2023-01-12 05:13:01', '/dms/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (33, '2023-01-12 07:33:12', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (34, '2023-01-12 07:33:24', '/simanda/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (35, '2023-01-12 07:33:34', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (36, '2023-01-12 14:25:37', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (37, '2023-01-14 01:46:02', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (38, '2023-01-14 12:47:42', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (39, '2023-01-15 13:24:42', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (40, '2023-01-16 17:04:08', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (41, '2023-01-17 11:43:09', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (42, '2023-01-17 14:57:28', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (43, '2023-01-17 11:22:04', '/dms/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (44, '2023-01-17 11:25:17', '/dms/logout', '1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (45, '2023-01-17 11:25:31', '/dms/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (46, '2023-01-17 11:26:26', '/dms/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (47, '2023-01-17 11:26:32', '/dms/login', '12', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (48, '2023-01-17 11:27:39', '/dms/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (49, '2023-01-17 11:55:26', '/dms/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (50, '2023-01-18 04:07:36', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (51, '2023-01-18 11:27:09', '/simanda/login', '2', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (52, '2023-01-18 11:27:16', '/simanda/logout', '2', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (53, '2023-01-18 11:27:24', '/simanda/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (54, '2023-01-18 18:22:18', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (55, '2023-01-19 12:28:30', '/rdms/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (56, '2023-01-20 06:15:01', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (57, '2023-01-22 17:32:45', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (58, '2023-01-22 17:34:33', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (59, '2023-01-22 17:35:10', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (60, '2023-01-22 19:04:27', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (61, '2023-01-22 19:04:35', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (62, '2023-01-22 19:05:31', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (63, '2023-01-22 19:05:38', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (64, '2023-01-22 19:06:15', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (65, '2023-01-22 19:06:24', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (66, '2023-01-22 19:15:39', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (67, '2023-01-22 19:15:57', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (68, '2023-01-22 20:42:41', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (69, '2023-01-22 20:42:47', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (70, '2023-01-22 22:32:17', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (71, '2023-01-23 05:23:11', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (72, '2023-01-23 05:24:55', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (73, '2023-01-23 05:25:03', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (74, '2023-01-23 05:26:23', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (75, '2023-01-23 05:26:30', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (76, '2023-01-23 05:40:40', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (77, '2023-01-23 05:40:49', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (78, '2023-01-23 05:42:09', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (79, '2023-01-23 05:42:17', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (80, '2023-01-23 05:49:28', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (81, '2023-01-23 05:49:36', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (82, '2023-01-23 05:50:03', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (83, '2023-01-23 05:50:21', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (84, '2023-01-23 06:01:12', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (85, '2023-01-23 06:01:17', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (86, '2023-01-24 00:07:31', '/simanda-web/logout', '-1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (87, '2023-01-24 00:07:39', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (88, '2023-01-24 00:08:26', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (89, '2023-01-24 00:08:36', '/simanda-web/login', '-1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (90, '2023-01-24 00:09:12', '/simanda-web/login', '6', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (91, '2023-01-24 00:12:52', '/simanda-web/logout', '6', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (92, '2023-01-24 00:13:00', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (93, '2023-01-24 00:16:00', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (94, '2023-01-24 00:16:11', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (95, '2023-01-24 03:01:21', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (96, '2023-01-24 03:01:32', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (97, '2023-01-24 03:03:14', '/simanda-web/login', '13', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (98, '2023-01-24 03:07:49', '/simanda-web/logout', '13', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (99, '2023-01-24 03:07:58', '/simanda-web/login', '7', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (100, '2023-01-24 18:23:09', '/rmps/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (101, '2023-01-24 22:20:54', '/rmps/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (102, '2023-01-25 01:29:57', '/rmps/login', '1', 'login', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (103, '2023-01-25 01:42:45', '/rmps/logout', '1', 'logout', '::1', '', '', '', '');
INSERT INTO `audittrail` VALUES (104, '2023-01-25 02:01:54', '/rmps/login', '1', 'login', '::1', '', '', '', '');

-- ----------------------------
-- Table structure for pelaporan_um
-- ----------------------------
DROP TABLE IF EXISTS `pelaporan_um`;
CREATE TABLE `pelaporan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `periode_tahun` int NOT NULL,
  `periode_bulan` int NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `pj_pelaporan_id` int NOT NULL,
  `lampiran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_pelaporan` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelaporan_um
-- ----------------------------

-- ----------------------------
-- Table structure for pelaporan_um_detail
-- ----------------------------
DROP TABLE IF EXISTS `pelaporan_um_detail`;
CREATE TABLE `pelaporan_um_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pelaporan_um_id` int NOT NULL,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_component_id` int NOT NULL,
  `cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pelaporan_um_detail
-- ----------------------------

-- ----------------------------
-- Table structure for pengajuan_um
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_um`;
CREATE TABLE `pengajuan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `periode_tahun` int NOT NULL,
  `periode_bulan` int NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `pj_pengajuan_id` int NOT NULL,
  `lampiran` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_pengajuan` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengajuan_um
-- ----------------------------

-- ----------------------------
-- Table structure for pengajuan_um_detail
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_um_detail`;
CREATE TABLE `pengajuan_um_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_id` int NOT NULL,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_component_id` int NOT NULL,
  `cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengajuan_um_detail
-- ----------------------------

-- ----------------------------
-- Table structure for pengajuan_um_payment
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_um_payment`;
CREATE TABLE `pengajuan_um_payment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_id` int NOT NULL,
  `payment_method` enum('transfer','cash') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'transfer',
  `user_id` int NOT NULL,
  `transaction_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_sender_id` int NULL DEFAULT NULL,
  `bank_receiver_id` int NULL DEFAULT NULL,
  `amount` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `atachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','success') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengajuan_um_payment
-- ----------------------------

-- ----------------------------
-- Table structure for pengajuan_um_payment_confirmation
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_um_payment_confirmation`;
CREATE TABLE `pengajuan_um_payment_confirmation`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_payment_id` int NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengajuan_um_payment_confirmation
-- ----------------------------

-- ----------------------------
-- Table structure for rab_component
-- ----------------------------
DROP TABLE IF EXISTS `rab_component`;
CREATE TABLE `rab_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rab_master_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_item` int NULL DEFAULT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rab_component
-- ----------------------------

-- ----------------------------
-- Table structure for rab_item_component
-- ----------------------------
DROP TABLE IF EXISTS `rab_item_component`;
CREATE TABLE `rab_item_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rab_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NULL DEFAULT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NULL DEFAULT NULL,
  `cost` int NOT NULL DEFAULT 0,
  `total_cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rab_item_component
-- ----------------------------

-- ----------------------------
-- Table structure for rab_master_component
-- ----------------------------
DROP TABLE IF EXISTS `rab_master_component`;
CREATE TABLE `rab_master_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `aktif` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rab_master_component
-- ----------------------------

-- ----------------------------
-- Table structure for rap_component
-- ----------------------------
DROP TABLE IF EXISTS `rap_component`;
CREATE TABLE `rap_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rap_master_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_item` int NULL DEFAULT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rap_component
-- ----------------------------

-- ----------------------------
-- Table structure for rap_item_component
-- ----------------------------
DROP TABLE IF EXISTS `rap_item_component`;
CREATE TABLE `rap_item_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rap_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NULL DEFAULT NULL,
  `cost` int NOT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NULL DEFAULT NULL,
  `cost_paid` int NULL DEFAULT NULL,
  `cost_usage` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` enum('0','1','2','3') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rap_item_component
-- ----------------------------

-- ----------------------------
-- Table structure for rap_item_component_report
-- ----------------------------
DROP TABLE IF EXISTS `rap_item_component_report`;
CREATE TABLE `rap_item_component_report`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rap_item_component_id` int NOT NULL,
  `cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rap_item_component_report
-- ----------------------------

-- ----------------------------
-- Table structure for rap_master_component
-- ----------------------------
DROP TABLE IF EXISTS `rap_master_component`;
CREATE TABLE `rap_master_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `aktif` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rap_master_component
-- ----------------------------

-- ----------------------------
-- Table structure for tb_akunbank
-- ----------------------------
DROP TABLE IF EXISTS `tb_akunbank`;
CREATE TABLE `tb_akunbank`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_rek` int NULL DEFAULT NULL,
  `pemelik_rek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_akunbank
-- ----------------------------

-- ----------------------------
-- Table structure for tb_bulan
-- ----------------------------
DROP TABLE IF EXISTS `tb_bulan`;
CREATE TABLE `tb_bulan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bulan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_bulan
-- ----------------------------
INSERT INTO `tb_bulan` VALUES (1, 'Januari');
INSERT INTO `tb_bulan` VALUES (2, 'Februari');
INSERT INTO `tb_bulan` VALUES (3, 'Maret');
INSERT INTO `tb_bulan` VALUES (4, 'April');
INSERT INTO `tb_bulan` VALUES (5, 'Mei');
INSERT INTO `tb_bulan` VALUES (6, 'Juni');
INSERT INTO `tb_bulan` VALUES (7, 'Juli');
INSERT INTO `tb_bulan` VALUES (8, 'Agustus');
INSERT INTO `tb_bulan` VALUES (9, 'September');
INSERT INTO `tb_bulan` VALUES (10, 'Oktober');
INSERT INTO `tb_bulan` VALUES (11, 'November');
INSERT INTO `tb_bulan` VALUES (12, 'Desember');

-- ----------------------------
-- Table structure for tb_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `tb_dokumen`;
CREATE TABLE `tb_dokumen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `versi_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_dokumen
-- ----------------------------

-- ----------------------------
-- Table structure for tb_dokumen_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_dokumen_kategori`;
CREATE TABLE `tb_dokumen_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_dokumen_kategori
-- ----------------------------
INSERT INTO `tb_dokumen_kategori` VALUES (1, 'SOP');
INSERT INTO `tb_dokumen_kategori` VALUES (2, 'Template');
INSERT INTO `tb_dokumen_kategori` VALUES (3, 'Administrasi');
INSERT INTO `tb_dokumen_kategori` VALUES (4, 'Laporan Tahunan');

-- ----------------------------
-- Table structure for tb_inventaris_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_inventaris_barang`;
CREATE TABLE `tb_inventaris_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_katbarang` int NULL DEFAULT NULL,
  `id_subkategori` int NULL DEFAULT NULL,
  `nama_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merk_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spesifikasi_barang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `sn_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_beli` decimal(18, 2) NULL DEFAULT NULL,
  `tanggal_beli` date NULL DEFAULT NULL,
  `kondisi_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sumber_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sumber_hibah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran_kwitansi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_ruangan` int NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inventaris_barang
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inventaris_kategori_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_inventaris_kategori_barang`;
CREATE TABLE `tb_inventaris_kategori_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inventaris_kategori_barang
-- ----------------------------
INSERT INTO `tb_inventaris_kategori_barang` VALUES (1, 'Elektronik');
INSERT INTO `tb_inventaris_kategori_barang` VALUES (2, 'Alat Dapur');
INSERT INTO `tb_inventaris_kategori_barang` VALUES (3, 'Alat Survei');

-- ----------------------------
-- Table structure for tb_inventaris_ruangan
-- ----------------------------
DROP TABLE IF EXISTS `tb_inventaris_ruangan`;
CREATE TABLE `tb_inventaris_ruangan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inventaris_ruangan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_inventaris_subkat_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_inventaris_subkat_barang`;
CREATE TABLE `tb_inventaris_subkat_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kategori_barang` int NULL DEFAULT NULL,
  `subkategori_barang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_inventaris_subkat_barang
-- ----------------------------
INSERT INTO `tb_inventaris_subkat_barang` VALUES (1, 1, 'Laptop');
INSERT INTO `tb_inventaris_subkat_barang` VALUES (2, 1, 'Kamera Mirrorless');
INSERT INTO `tb_inventaris_subkat_barang` VALUES (3, 1, 'Kamera Poket');
INSERT INTO `tb_inventaris_subkat_barang` VALUES (4, 1, 'TV');
INSERT INTO `tb_inventaris_subkat_barang` VALUES (5, 2, 'Piring');
INSERT INTO `tb_inventaris_subkat_barang` VALUES (6, 3, 'Bor Gambut');

-- ----------------------------
-- Table structure for tb_kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `tb_kabupaten`;
CREATE TABLE `tb_kabupaten`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_propinsi` int NOT NULL,
  `Kabupaten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kabupaten
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kategori_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_kegiatan`;
CREATE TABLE `tb_kategori_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kategori_kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kategori_kelompok
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_kelompok`;
CREATE TABLE `tb_kategori_kelompok`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_kelompok` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kategori_kelompok
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kategori_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_laporan`;
CREATE TABLE `tb_kategori_laporan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_laporan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kategori_laporan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kategori_partisipan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_partisipan`;
CREATE TABLE `tb_kategori_partisipan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_partisipan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kategori_partisipan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kecamatan`;
CREATE TABLE `tb_kecamatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int NOT NULL,
  `Kecamatan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kecamatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_kelurahan_desa
-- ----------------------------
DROP TABLE IF EXISTS `tb_kelurahan_desa`;
CREATE TABLE `tb_kelurahan_desa`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int NOT NULL,
  `kelurahan/desa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_kelurahan_desa
-- ----------------------------

-- ----------------------------
-- Table structure for tb_ketergorisub_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_ketergorisub_kegiatan`;
CREATE TABLE `tb_ketergorisub_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kategori_kegiatan` int NULL DEFAULT NULL,
  `subkategori_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ketergorisub_kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_laporan_keg_lampiran
-- ----------------------------
DROP TABLE IF EXISTS `tb_laporan_keg_lampiran`;
CREATE TABLE `tb_laporan_keg_lampiran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_laporan_kegiatan` int NULL DEFAULT NULL,
  `kategori_laporan` int NULL DEFAULT NULL,
  `desa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_laporan_keg_lampiran
-- ----------------------------

-- ----------------------------
-- Table structure for tb_laporan_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_laporan_kegiatan`;
CREATE TABLE `tb_laporan_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NULL DEFAULT NULL,
  `kategori` int NULL DEFAULT NULL,
  `sub-kategori` int NULL DEFAULT NULL,
  `partisipan` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelompok` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun` int NULL DEFAULT NULL,
  `bulan` int NULL DEFAULT NULL,
  `rapat_mulai` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rapat_selesai` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `topik_pembahasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `hasil_pembahasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `propinsi` int NULL DEFAULT NULL,
  `kabupaten` int NULL DEFAULT NULL,
  `kecamatan` int NULL DEFAULT NULL,
  `desa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pria` int NULL DEFAULT NULL,
  `wanita` int NULL DEFAULT NULL,
  `pj_kegiatan` int NULL DEFAULT NULL,
  `pj_pelaporan` int NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_laporan_kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_lembaga
-- ----------------------------
DROP TABLE IF EXISTS `tb_lembaga`;
CREATE TABLE `tb_lembaga`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_katlembaga` int NULL DEFAULT NULL,
  `fokus_lembaga` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `negara_lembaga` int NULL DEFAULT NULL,
  `alamat_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tlpfax_lembaga` int NULL DEFAULT NULL,
  `email_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `linkedIn` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_cp_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_cp_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tlp_cp_lembaga` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_lembaga
-- ----------------------------

-- ----------------------------
-- Table structure for tb_lembaga_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_lembaga_kategori`;
CREATE TABLE `tb_lembaga_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_lembaga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_lembaga_kategori
-- ----------------------------
INSERT INTO `tb_lembaga_kategori` VALUES (1, 'Lembaga Pemerintah');
INSERT INTO `tb_lembaga_kategori` VALUES (2, 'NGO');

-- ----------------------------
-- Table structure for tb_lembaga_kerjasama
-- ----------------------------
DROP TABLE IF EXISTS `tb_lembaga_kerjasama`;
CREATE TABLE `tb_lembaga_kerjasama`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lembaga` int NULL DEFAULT NULL,
  `id_program` int NULL DEFAULT NULL,
  `judul_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `posisi_kerjasama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `program_mulai` date NULL DEFAULT NULL,
  `program_berakhir` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_lembaga_kerjasama
-- ----------------------------

-- ----------------------------
-- Table structure for tb_negara
-- ----------------------------
DROP TABLE IF EXISTS `tb_negara`;
CREATE TABLE `tb_negara`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_negara` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_negara
-- ----------------------------
INSERT INTO `tb_negara` VALUES (1, 'Indonesia');
INSERT INTO `tb_negara` VALUES (2, 'USA');
INSERT INTO `tb_negara` VALUES (3, 'Belanda');

-- ----------------------------
-- Table structure for tb_penerima_manfaat
-- ----------------------------
DROP TABLE IF EXISTS `tb_penerima_manfaat`;
CREATE TABLE `tb_penerima_manfaat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_laporan_kegiatan` int NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggallahir` date NULL DEFAULT NULL,
  `tanggal_terima` date NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_penerima_manfaat
-- ----------------------------

-- ----------------------------
-- Table structure for tb_pengajuan_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengajuan_kegiatan`;
CREATE TABLE `tb_pengajuan_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NULL DEFAULT NULL,
  `judul_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail_kegiatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tahun` int NULL DEFAULT NULL,
  `bulan` int NULL DEFAULT NULL,
  `tgl_pelaksanaan` date NULL DEFAULT NULL,
  `rencana_anggaran` decimal(18, 2) NULL DEFAULT NULL,
  `pj_kegiatan` int NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_pengajuan_kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_posisi_kerja
-- ----------------------------
DROP TABLE IF EXISTS `tb_posisi_kerja`;
CREATE TABLE `tb_posisi_kerja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `posisi_kerja` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_posisi_kerja
-- ----------------------------
INSERT INTO `tb_posisi_kerja` VALUES (1, 'Team Leader');
INSERT INTO `tb_posisi_kerja` VALUES (2, 'Fasilitator');
INSERT INTO `tb_posisi_kerja` VALUES (3, 'Sistem Informasi Geografis');
INSERT INTO `tb_posisi_kerja` VALUES (4, 'Admin Keuangan');
INSERT INTO `tb_posisi_kerja` VALUES (5, 'Koordinator Lapangan');
INSERT INTO `tb_posisi_kerja` VALUES (6, 'Penginput Data');
INSERT INTO `tb_posisi_kerja` VALUES (7, 'Arsip Data');

-- ----------------------------
-- Table structure for tb_prog_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_detail`;
CREATE TABLE `tb_prog_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_program` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_program` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_program` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lembaga_donor` int NULL DEFAULT NULL COMMENT 'id_lembaga_detail',
  `lembaga_mitra` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no.kontrak` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai_kontrak` decimal(18, 2) NULL DEFAULT NULL,
  `kontrak_mulai` date NULL DEFAULT NULL,
  `kontrak_berakhir` date NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pj_program` int NULL DEFAULT NULL COMMENT 'penanggung jawab program',
  `lampiran_kontrak` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_proposal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_kontrakstaff` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `latar_belakang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tujuan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keluaran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_evaluasi
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_evaluasi`;
CREATE TABLE `tb_prog_evaluasi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NULL DEFAULT NULL,
  `capaian_tujuan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `strategi_pendekatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dampak` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rekomendasi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pembelajaran` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kisah_sukses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lampiran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_evaluasi
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_kategori_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_kategori_kegiatan`;
CREATE TABLE `tb_prog_kategori_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_program` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_kategori_kegiatan
-- ----------------------------
INSERT INTO `tb_prog_kategori_kegiatan` VALUES (1, 'Hutan Desa');
INSERT INTO `tb_prog_kategori_kegiatan` VALUES (2, 'Kebakaran Hutan');
INSERT INTO `tb_prog_kategori_kegiatan` VALUES (3, 'Pemetaan Batas Desa');

-- ----------------------------
-- Table structure for tb_prog_lap_mingguan_bulanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_lap_mingguan_bulanan`;
CREATE TABLE `tb_prog_lap_mingguan_bulanan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NOT NULL,
  `kategori_laporan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` int NULL DEFAULT NULL,
  `bulan` int NULL DEFAULT NULL,
  `pj_laporan` int NOT NULL COMMENT 'nama pengupload',
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_lap_mingguan_bulanan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_laporanfinal
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_laporanfinal`;
CREATE TABLE `tb_prog_laporanfinal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NOT NULL,
  `lampiran_dokumen` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lampiran_peta` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lampiran_foto` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lampiran_lain1` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lampiran_lain2` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `createby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime NULL DEFAULT NULL,
  `updateby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_laporanfinal
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_rapat_nonaktivitas
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_rapat_nonaktivitas`;
CREATE TABLE `tb_prog_rapat_nonaktivitas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_rapat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_pelaksana` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inisiator_rapat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lembaga_inisiator` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `partisipan_pria` int NULL DEFAULT NULL,
  `partisipan_wanita` int NULL DEFAULT NULL,
  `poin_pembahasan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rencana_tindaklanjut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `waktu_mulai` datetime NULL DEFAULT NULL,
  `waktu_berakhir` datetime NULL DEFAULT NULL,
  `lampiran_absen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_notulensi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_rapat_nonaktivitas
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_staff
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_staff`;
CREATE TABLE `tb_prog_staff`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NOT NULL,
  `id_temanputer` int NOT NULL,
  `id_posisi` int NOT NULL,
  `deskripsi_pekerjaan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_staff
-- ----------------------------

-- ----------------------------
-- Table structure for tb_prog_wilayahkerja
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_wilayahkerja`;
CREATE TABLE `tb_prog_wilayahkerja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_program` int NOT NULL,
  `propinsi` int NOT NULL,
  `kabupaten` int NOT NULL,
  `kecamatan` int NOT NULL,
  `desa` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_prog_wilayahkerja
-- ----------------------------

-- ----------------------------
-- Table structure for tb_propinsi
-- ----------------------------
DROP TABLE IF EXISTS `tb_propinsi`;
CREATE TABLE `tb_propinsi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `propinsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_propinsi
-- ----------------------------
INSERT INTO `tb_propinsi` VALUES (11, 'Aceh');
INSERT INTO `tb_propinsi` VALUES (12, 'Sumatera Utara');
INSERT INTO `tb_propinsi` VALUES (13, 'Sumatera Barat');
INSERT INTO `tb_propinsi` VALUES (14, 'Riau');
INSERT INTO `tb_propinsi` VALUES (15, 'Jambi');
INSERT INTO `tb_propinsi` VALUES (16, 'Sumatera Selatan');
INSERT INTO `tb_propinsi` VALUES (17, 'Bengkulu');
INSERT INTO `tb_propinsi` VALUES (18, 'Lampung');
INSERT INTO `tb_propinsi` VALUES (19, 'Kepulauan Bangka Belitung');
INSERT INTO `tb_propinsi` VALUES (21, 'Kepulauan Riau');
INSERT INTO `tb_propinsi` VALUES (31, 'DKI Jakarta');
INSERT INTO `tb_propinsi` VALUES (32, 'Jawa Barat');
INSERT INTO `tb_propinsi` VALUES (33, 'Jawa Tengah');
INSERT INTO `tb_propinsi` VALUES (34, 'DI Yogyakarta');
INSERT INTO `tb_propinsi` VALUES (35, 'Jawa Timur');
INSERT INTO `tb_propinsi` VALUES (36, 'Banten');
INSERT INTO `tb_propinsi` VALUES (51, 'Bali');
INSERT INTO `tb_propinsi` VALUES (52, 'Nusa Tenggara Barat');
INSERT INTO `tb_propinsi` VALUES (53, 'Nusa Tenggara Timur');
INSERT INTO `tb_propinsi` VALUES (61, 'Kalimantan Barat');
INSERT INTO `tb_propinsi` VALUES (62, 'Kalimantan Tengah');
INSERT INTO `tb_propinsi` VALUES (63, 'Kalimantan Selatan');
INSERT INTO `tb_propinsi` VALUES (64, 'Kalimantan Timur');
INSERT INTO `tb_propinsi` VALUES (65, 'Kalimantan Utara');
INSERT INTO `tb_propinsi` VALUES (71, 'Sulawesi Utara');
INSERT INTO `tb_propinsi` VALUES (72, 'Sulawesi Tengah');
INSERT INTO `tb_propinsi` VALUES (73, 'Sulawesi Selatan');
INSERT INTO `tb_propinsi` VALUES (74, 'Sulawesi Tenggara');
INSERT INTO `tb_propinsi` VALUES (75, 'Gorontalo');
INSERT INTO `tb_propinsi` VALUES (76, 'Sulawesi Barat');
INSERT INTO `tb_propinsi` VALUES (81, 'Maluku');
INSERT INTO `tb_propinsi` VALUES (82, 'Maluku Utara');
INSERT INTO `tb_propinsi` VALUES (91, 'Papua Barat');
INSERT INTO `tb_propinsi` VALUES (94, 'Papua');

-- ----------------------------
-- Table structure for tb_rapat_bulanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_rapat_bulanan`;
CREATE TABLE `tb_rapat_bulanan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun` int NULL DEFAULT NULL,
  `bulan` int NULL DEFAULT NULL,
  `rapat_mulai` datetime NULL DEFAULT NULL,
  `rapat_selesai` datetime NULL DEFAULT NULL,
  `topik_pembahasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hasil_pembahasan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rencana_tindaklanjut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_rapat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `partisipan_pria` int NULL DEFAULT NULL,
  `partisipan_wanita` int NULL DEFAULT NULL,
  `lampiran_notulensi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_absen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rapat_bulanan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_rapat_tahunan
-- ----------------------------
DROP TABLE IF EXISTS `tb_rapat_tahunan`;
CREATE TABLE `tb_rapat_tahunan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun` int NULL DEFAULT NULL,
  `bulan` int NULL DEFAULT NULL,
  `rapat_mulai` datetime NULL DEFAULT NULL,
  `rapat_selesai` datetime NULL DEFAULT NULL,
  `topik_pembahasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hasil_pembahasan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rencana_tindaklanjut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_rapat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `partisipan_pria` int NULL DEFAULT NULL,
  `partisipan_wanita` int NULL DEFAULT NULL,
  `lampiran_notulensi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_absen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rapat_tahunan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_rencana_mitra_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_rencana_mitra_kegiatan`;
CREATE TABLE `tb_rencana_mitra_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_cp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tlp_cp` int NULL DEFAULT NULL,
  `email_cp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `latarbelakang_kegiatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tujuan_kegiatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `potensi_kegiatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `keluaran_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi` int NULL DEFAULT NULL,
  `kabupaten` int NULL DEFAULT NULL,
  `kecamatan` int NULL DEFAULT NULL,
  `desa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sumber_informasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_komunikasi` date NULL DEFAULT NULL,
  `metode_komunikasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updatedate` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rencana_mitra_kegiatan
-- ----------------------------

-- ----------------------------
-- Table structure for tb_rencana_mitra_progres
-- ----------------------------
DROP TABLE IF EXISTS `tb_rencana_mitra_progres`;
CREATE TABLE `tb_rencana_mitra_progres`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kgtn_pengajuan` int NULL DEFAULT NULL,
  `rapat_berakhir` datetime NULL DEFAULT NULL,
  `rapat_mulai` datetime NULL DEFAULT NULL,
  `metode_komunikasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pembahasan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `intipembahasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_partisipan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rencana_tindaklanjut` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pria` int NULL DEFAULT NULL,
  `wanita` int NULL DEFAULT NULL,
  `notulensi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `absen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_rencana_mitra_progres
-- ----------------------------

-- ----------------------------
-- Table structure for tb_satuan_unit
-- ----------------------------
DROP TABLE IF EXISTS `tb_satuan_unit`;
CREATE TABLE `tb_satuan_unit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_satuan_unit
-- ----------------------------
INSERT INTO `tb_satuan_unit` VALUES (1, 'Unit');
INSERT INTO `tb_satuan_unit` VALUES (2, 'Days');
INSERT INTO `tb_satuan_unit` VALUES (3, 'Pax');
INSERT INTO `tb_satuan_unit` VALUES (4, 'Room');
INSERT INTO `tb_satuan_unit` VALUES (5, 'Night');
INSERT INTO `tb_satuan_unit` VALUES (6, 'Package');
INSERT INTO `tb_satuan_unit` VALUES (7, 'Pax');
INSERT INTO `tb_satuan_unit` VALUES (8, 'Orang');
INSERT INTO `tb_satuan_unit` VALUES (9, 'Time');
INSERT INTO `tb_satuan_unit` VALUES (10, 'Month');
INSERT INTO `tb_satuan_unit` VALUES (11, 'Weeks');

-- ----------------------------
-- Table structure for tb_staff
-- ----------------------------
DROP TABLE IF EXISTS `tb_staff`;
CREATE TABLE `tb_staff`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_staff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `domisili` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mulai_kerja` date NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_tlp` int NULL DEFAULT NULL,
  `posisi` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lampiran5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_staff
-- ----------------------------

-- ----------------------------
-- Table structure for tb_surat_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_kategori`;
CREATE TABLE `tb_surat_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_surat_kategori
-- ----------------------------

-- ----------------------------
-- Table structure for tb_surat_keluar
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_keluar`;
CREATE TABLE `tb_surat_keluar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kategorisurat` int NULL DEFAULT NULL,
  `no_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_keluar` date NULL DEFAULT NULL,
  `tujuan_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_surat_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for tb_surat_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_masuk`;
CREATE TABLE `tb_surat_masuk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kategorisurat` int NULL DEFAULT NULL,
  `no_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk` date NULL DEFAULT NULL,
  `asal_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_ruangan` int NULL DEFAULT NULL COMMENT 'tempat_arsip',
  `create_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_surat_masuk
-- ----------------------------

-- ----------------------------
-- Table structure for tb_tahun
-- ----------------------------
DROP TABLE IF EXISTS `tb_tahun`;
CREATE TABLE `tb_tahun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_tahun
-- ----------------------------
INSERT INTO `tb_tahun` VALUES (1, '2009');
INSERT INTO `tb_tahun` VALUES (2, '2010');
INSERT INTO `tb_tahun` VALUES (3, '2011');
INSERT INTO `tb_tahun` VALUES (4, '2012');
INSERT INTO `tb_tahun` VALUES (5, '2013');
INSERT INTO `tb_tahun` VALUES (6, '2014');
INSERT INTO `tb_tahun` VALUES (7, '2015');
INSERT INTO `tb_tahun` VALUES (8, '2016');
INSERT INTO `tb_tahun` VALUES (9, '2017');
INSERT INTO `tb_tahun` VALUES (10, '2018');
INSERT INTO `tb_tahun` VALUES (11, '2019');
INSERT INTO `tb_tahun` VALUES (12, '2020');
INSERT INTO `tb_tahun` VALUES (13, '2021');
INSERT INTO `tb_tahun` VALUES (14, '2022');
INSERT INTO `tb_tahun` VALUES (15, '2023');

-- ----------------------------
-- Table structure for tb_temanputer_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_temanputer_detail`;
CREATE TABLE `tb_temanputer_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `namalengkap` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `domisili` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `notlpon` int NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `skill` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `akun` int NULL DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_temanputer_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_temanputer_lampiran
-- ----------------------------
DROP TABLE IF EXISTS `tb_temanputer_lampiran`;
CREATE TABLE `tb_temanputer_lampiran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NULL DEFAULT NULL,
  `lampiran_ktp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_npwp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_kk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_asuransi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_cv` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_lain` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_temanputer_lampiran
-- ----------------------------
INSERT INTO `tb_temanputer_lampiran` VALUES (2, 2, '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf', '119-238-1-SM(1).pdf');

-- ----------------------------
-- Table structure for tb_temanputer_pengalamankerja
-- ----------------------------
DROP TABLE IF EXISTS `tb_temanputer_pengalamankerja`;
CREATE TABLE `tb_temanputer_pengalamankerja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NULL DEFAULT NULL,
  `pengalamankerja` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lembaga` int NULL DEFAULT NULL,
  `tahun` int NULL DEFAULT NULL,
  `id_posisi` int NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_temanputer_pengalamankerja
-- ----------------------------
INSERT INTO `tb_temanputer_pengalamankerja` VALUES (1, 1, 'asdfdsf', 646, 1, 3, 'afdsf');
INSERT INTO `tb_temanputer_pengalamankerja` VALUES (2, 1, 'adfas', 234234, 3, 1, 'sdfsadf');
INSERT INTO `tb_temanputer_pengalamankerja` VALUES (3, 2, 'adfadsfsfwerewr', 234324, 3, 1, NULL);

-- ----------------------------
-- Table structure for tb_temanputer_skills
-- ----------------------------
DROP TABLE IF EXISTS `tb_temanputer_skills`;
CREATE TABLE `tb_temanputer_skills`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_skill` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_temanputer_skills
-- ----------------------------
INSERT INTO `tb_temanputer_skills` VALUES (1, 'Desain Grafis');
INSERT INTO `tb_temanputer_skills` VALUES (2, 'Managemen penanganan bencana');
INSERT INTO `tb_temanputer_skills` VALUES (3, 'Sistem informasi geospasial');
INSERT INTO `tb_temanputer_skills` VALUES (4, 'videografi');
INSERT INTO `tb_temanputer_skills` VALUES (5, 'fotografi');
INSERT INTO `tb_temanputer_skills` VALUES (6, 'Analisis Bisnis');

-- ----------------------------
-- Table structure for tb_termin_donor_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_termin_donor_detail`;
CREATE TABLE `tb_termin_donor_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_termin_donor` int NULL DEFAULT NULL,
  `tanggal_transfer` date NULL DEFAULT NULL,
  `tanggal_laporan` datetime NULL DEFAULT NULL,
  `no_invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_akunbank` int NULL DEFAULT NULL,
  `lampiran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah` decimal(18, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_termin_donor_detail
-- ----------------------------

-- ----------------------------
-- Table structure for tb_termin_donor_master
-- ----------------------------
DROP TABLE IF EXISTS `tb_termin_donor_master`;
CREATE TABLE `tb_termin_donor_master`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_donor` int NULL DEFAULT NULL,
  `id_program` int NULL DEFAULT NULL,
  `no_kontrak` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `program_mulai` date NULL DEFAULT NULL,
  `program_berakhir` date NULL DEFAULT NULL,
  `total_kontrak` decimal(18, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_termin_donor_master
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `namalengkap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_level` int NULL DEFAULT NULL,
  `id_program` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, NULL, 'Super Admin', 'admin@puter.or.id', 'qwerty123', -1, NULL);
INSERT INTO `tb_user` VALUES (2, NULL, 'Kelvin Cungiharjo', 'kelvin.cungiharjo@puter.or.id', 'Qwerty123', -1, NULL);
INSERT INTO `tb_user` VALUES (3, NULL, 'Andaman Muthadir', 'andaman.muthadir@puter.or.id', 'qwerty123', 2, NULL);
INSERT INTO `tb_user` VALUES (4, NULL, 'Asep Deni', 'asep.deni@puter.or.id', 'qwerty123', 4, NULL);
INSERT INTO `tb_user` VALUES (5, NULL, 'Asep Mulyana', 'asep.mulyana@puter.or.id', 'qwerty123', 8, NULL);
INSERT INTO `tb_user` VALUES (6, NULL, 'Deny Boy Mochran', 'dbmochran@puter.or.id', 'qwerty123', 7, NULL);
INSERT INTO `tb_user` VALUES (7, NULL, 'Deni Rahadian', 'deni.rahadian@puter.or.id', 'qwerty123', 1, NULL);
INSERT INTO `tb_user` VALUES (8, NULL, 'Fery Supriadi', 'ferry.supriadi@puter.or.id', 'qwerty123', 8, NULL);
INSERT INTO `tb_user` VALUES (9, NULL, 'Iriana Jayasantika', 'iriana.jayasantika@puter.or.id', 'qwerty123', 3, NULL);
INSERT INTO `tb_user` VALUES (10, NULL, 'Lisa Fallani', 'lisa.fallany.sarman@puter.or.id', 'qwerty123', 11, NULL);
INSERT INTO `tb_user` VALUES (11, NULL, 'Luthfia Zahra Zen', 'luthfiazahra.zen@puter.or.id', 'qwerty123', 8, NULL);
INSERT INTO `tb_user` VALUES (12, NULL, 'Nadia Febrianti', 'nadia.febrianti@puter.or.id', 'qwerty123', 8, NULL);
INSERT INTO `tb_user` VALUES (13, NULL, 'Rachmat Budiono', 'rboediono@puter.or.id', 'qwerty123', 5, NULL);
INSERT INTO `tb_user` VALUES (14, NULL, 'Ridwan Fauzi', 'ridwan.fauzi@puter.or.id', 'qwerty123', 4, NULL);
INSERT INTO `tb_user` VALUES (15, NULL, 'Taryono Darusman', 'taryono.darusman@puter.or.id', 'Qwerty123', 9, NULL);

-- ----------------------------
-- Table structure for userlevelpermissions
-- ----------------------------
DROP TABLE IF EXISTS `userlevelpermissions`;
CREATE TABLE `userlevelpermissions`  (
  `userlevelid` int NOT NULL AUTO_INCREMENT,
  `tablename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` int NOT NULL,
  PRIMARY KEY (`userlevelid`, `tablename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userlevelpermissions
-- ----------------------------
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Alphabetical List of Products', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars2', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}categories', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}customers', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Dashboard1', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}dji', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employees', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employee_sales_by_country_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}home.php', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}list_of_products', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations2', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations3', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}models', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}news.php', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended 2', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orderdetails', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders', 1024);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders2', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Products By Category', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products_by_category', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}product_sales_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Quarterly Orders By Product', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales by Category for 2014', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer (Compact)', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer 2', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Order', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Year', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_category_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_year', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}shippers', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}suppliers', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}trademarks', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevelpermissions', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevels', 0);
INSERT INTO `userlevelpermissions` VALUES (1, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Alphabetical List of Products', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars', 104);
INSERT INTO `userlevelpermissions` VALUES (3, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}cars2', 0);
INSERT INTO `userlevelpermissions` VALUES (4, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}categories', 104);
INSERT INTO `userlevelpermissions` VALUES (5, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}customers', 0);
INSERT INTO `userlevelpermissions` VALUES (6, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Dashboard1', 0);
INSERT INTO `userlevelpermissions` VALUES (7, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}dji', 0);
INSERT INTO `userlevelpermissions` VALUES (8, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employees', 0);
INSERT INTO `userlevelpermissions` VALUES (9, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}employee_sales_by_country_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (10, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Gantt', 0);
INSERT INTO `userlevelpermissions` VALUES (11, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}gantt3', 0);
INSERT INTO `userlevelpermissions` VALUES (12, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}home.php', 0);
INSERT INTO `userlevelpermissions` VALUES (13, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}list_of_products', 0);
INSERT INTO `userlevelpermissions` VALUES (14, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations', 8);
INSERT INTO `userlevelpermissions` VALUES (15, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations2', 8);
INSERT INTO `userlevelpermissions` VALUES (16, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}locations3', 8);
INSERT INTO `userlevelpermissions` VALUES (17, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}models', 256);
INSERT INTO `userlevelpermissions` VALUES (18, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}news.php', 0);
INSERT INTO `userlevelpermissions` VALUES (19, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended', 0);
INSERT INTO `userlevelpermissions` VALUES (20, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}order details extended 2', 0);
INSERT INTO `userlevelpermissions` VALUES (21, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orderdetails', 0);
INSERT INTO `userlevelpermissions` VALUES (22, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders', 0);
INSERT INTO `userlevelpermissions` VALUES (23, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders2', 0);
INSERT INTO `userlevelpermissions` VALUES (24, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product', 0);
INSERT INTO `userlevelpermissions` VALUES (25, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product2', 0);
INSERT INTO `userlevelpermissions` VALUES (26, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products', 104);
INSERT INTO `userlevelpermissions` VALUES (27, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Products By Category', 0);
INSERT INTO `userlevelpermissions` VALUES (28, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}products_by_category', 0);
INSERT INTO `userlevelpermissions` VALUES (29, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}product_sales_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (30, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Quarterly Orders By Product', 0);
INSERT INTO `userlevelpermissions` VALUES (31, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales by Category for 2014', 0);
INSERT INTO `userlevelpermissions` VALUES (32, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer', 0);
INSERT INTO `userlevelpermissions` VALUES (33, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer (Compact)', 0);
INSERT INTO `userlevelpermissions` VALUES (34, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Customer 2', 0);
INSERT INTO `userlevelpermissions` VALUES (35, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Order', 0);
INSERT INTO `userlevelpermissions` VALUES (36, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Sales By Year', 0);
INSERT INTO `userlevelpermissions` VALUES (37, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_category_for_2014', 0);
INSERT INTO `userlevelpermissions` VALUES (38, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}sales_by_year', 0);
INSERT INTO `userlevelpermissions` VALUES (39, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}shippers', 0);
INSERT INTO `userlevelpermissions` VALUES (40, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}suppliers', 0);
INSERT INTO `userlevelpermissions` VALUES (41, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}tasks', 0);
INSERT INTO `userlevelpermissions` VALUES (42, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}trademarks', 256);
INSERT INTO `userlevelpermissions` VALUES (43, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevelpermissions', 0);
INSERT INTO `userlevelpermissions` VALUES (44, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}userlevels', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}gantt3', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}orders_by_product2', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Gantt', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}tasks', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendar', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Calendar1', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}exportlog', 0);
INSERT INTO `userlevelpermissions` VALUES (45, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendar', 0);
INSERT INTO `userlevelpermissions` VALUES (46, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}Calendar1', 0);
INSERT INTO `userlevelpermissions` VALUES (47, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}announcement', 0);
INSERT INTO `userlevelpermissions` VALUES (48, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinks', 0);
INSERT INTO `userlevelpermissions` VALUES (49, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}events', 0);
INSERT INTO `userlevelpermissions` VALUES (50, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}settings', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_counter', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_counterlog', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_date', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_hour', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_month', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}stats_year', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksaddsp', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinkschecksp', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksdeletesp', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}breadcrumblinksmovesp', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}calendarscheduler', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadhelponline', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadaboutus', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}loadtermsconditions', 8);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DFB61542-7FFC-43AB-88E7-31D7F8D95066}printtermsconditions', 8);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_user', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevelpermissions', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevels', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}audittrail', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen_kategori', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_barang', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_ruangan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_satuan_unit', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_subkat_barang', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_kategori_barang', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_kategori', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_keluar', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_masuk', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kategori', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kerjasama', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_negara', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_akunbank', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kabupaten', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kecamatan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kelurahan_desa', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_propinsi', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_detail', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_lampiran', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_pengalamankerja', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_skills', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_bulan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_posisi_kerja', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_tahun', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_detail', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_evaluasi', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_laporanfinal', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_staff', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_wilayahkerja', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_kategori_kegiatan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_kegiatan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_progres', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_detail', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_master', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_rapat_nonaktivitas', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rapat_bulanan_tahunan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_dtl', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_hdr', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_dtl', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_hdr', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_kat', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_subkat', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori rab', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_proposal', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_real', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_proposal', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_real', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori barang', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_lap_mingguan_bulanan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan mingguan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan bulanan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pelaporan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pengajuan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}prosedur standar operasional', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}template dokumen', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}administrasi lembaga', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan tahunan', 360);
INSERT INTO `userlevelpermissions` VALUES (4, '{5B492BD8-255A-41BD-B152-2484E5240642}wilayah', 360);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_user', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevelpermissions', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}userlevels', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}audittrail', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_dokumen_kategori', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_barang', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_ruangan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_satuan_unit', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_subkat_barang', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_inventaris_kategori_barang', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_kategori', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_keluar', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_surat_masuk', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kategori', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_lembaga_kerjasama', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_negara', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_akunbank', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kabupaten', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kecamatan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_kelurahan_desa', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_propinsi', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_detail', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_lampiran', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_pengalamankerja', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_temanputer_skills', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_bulan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_posisi_kerja', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_tahun', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_detail', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_evaluasi', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_laporanfinal', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_staff', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_wilayahkerja', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_kategori_kegiatan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_kegiatan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rencana_mitra_progres', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_detail', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_termin_donor_master', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_rapat_nonaktivitas', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rapat_bulanan_tahunan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_dtl', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pelaporan_hdr', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_dtl', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_um_pengajuan_hdr', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_kat', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_subkat', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori rab', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_proposal', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_dtl_real', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_proposal', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_rab_hdr_real', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}kategori barang', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_prog_lap_mingguan_bulanan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan mingguan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan bulanan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pelaporan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}tb_approve_pengajuan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}prosedur standar operasional', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}template dokumen', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}administrasi lembaga', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}laporan tahunan', 2031);
INSERT INTO `userlevelpermissions` VALUES (6, '{5B492BD8-255A-41BD-B152-2484E5240642}wilayah', 2031);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_user', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevelpermissions', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevels', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}audittrail', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_ruangan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_satuan_unit', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_subkat_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_kategori_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_keluar', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_masuk', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kerjasama', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_negara', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_akunbank', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kabupaten', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kecamatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kelurahan_desa', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_propinsi', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_lampiran', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_pengalamankerja', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_skills', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_bulan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_posisi_kerja', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_tahun', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_evaluasi', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_laporanfinal', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_staff', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_wilayahkerja', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_kategori_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_progres', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_master', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_rapat_nonaktivitas', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rapat_bulanan_tahunan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_kat', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_subkat', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori rab', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_dtl_proposal', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_hdr_proposal', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori barang', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_lap_mingguan_bulanan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan mingguan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan bulanan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}prosedur standar operasional', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}template dokumen', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}administrasi lembaga', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan tahunan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}wilayah', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_staff', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_keg_lampiran', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_penerima_manfaat', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_laporan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kelompok', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_partisipan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_ketergorisub_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_item_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_master_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}v_rab', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}RAB Report', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component_report', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_master_component', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_payment', 0);
INSERT INTO `userlevelpermissions` VALUES (-2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (51, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_user', 0);
INSERT INTO `userlevelpermissions` VALUES (52, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevelpermissions', 0);
INSERT INTO `userlevelpermissions` VALUES (53, '{DD6024B5-E789-4E94-AA77-3B6F07190313}userlevels', 0);
INSERT INTO `userlevelpermissions` VALUES (54, '{DD6024B5-E789-4E94-AA77-3B6F07190313}audittrail', 0);
INSERT INTO `userlevelpermissions` VALUES (55, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen', 0);
INSERT INTO `userlevelpermissions` VALUES (56, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_dokumen_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (57, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (58, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_ruangan', 0);
INSERT INTO `userlevelpermissions` VALUES (59, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_satuan_unit', 0);
INSERT INTO `userlevelpermissions` VALUES (60, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_subkat_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (61, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_inventaris_kategori_barang', 0);
INSERT INTO `userlevelpermissions` VALUES (62, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (63, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_keluar', 0);
INSERT INTO `userlevelpermissions` VALUES (64, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_surat_masuk', 0);
INSERT INTO `userlevelpermissions` VALUES (65, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga', 0);
INSERT INTO `userlevelpermissions` VALUES (66, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kategori', 0);
INSERT INTO `userlevelpermissions` VALUES (67, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_lembaga_kerjasama', 0);
INSERT INTO `userlevelpermissions` VALUES (68, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_negara', 0);
INSERT INTO `userlevelpermissions` VALUES (69, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_akunbank', 0);
INSERT INTO `userlevelpermissions` VALUES (70, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kabupaten', 0);
INSERT INTO `userlevelpermissions` VALUES (71, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kecamatan', 0);
INSERT INTO `userlevelpermissions` VALUES (72, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kelurahan_desa', 0);
INSERT INTO `userlevelpermissions` VALUES (73, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_propinsi', 0);
INSERT INTO `userlevelpermissions` VALUES (74, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (75, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_lampiran', 0);
INSERT INTO `userlevelpermissions` VALUES (76, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_pengalamankerja', 0);
INSERT INTO `userlevelpermissions` VALUES (77, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_temanputer_skills', 0);
INSERT INTO `userlevelpermissions` VALUES (78, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_bulan', 0);
INSERT INTO `userlevelpermissions` VALUES (79, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_posisi_kerja', 0);
INSERT INTO `userlevelpermissions` VALUES (80, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_tahun', 0);
INSERT INTO `userlevelpermissions` VALUES (81, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (82, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_evaluasi', 0);
INSERT INTO `userlevelpermissions` VALUES (83, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_laporanfinal', 0);
INSERT INTO `userlevelpermissions` VALUES (84, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_staff', 0);
INSERT INTO `userlevelpermissions` VALUES (85, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_wilayahkerja', 0);
INSERT INTO `userlevelpermissions` VALUES (86, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_kategori_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (87, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (88, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rencana_mitra_progres', 0);
INSERT INTO `userlevelpermissions` VALUES (89, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (90, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_termin_donor_master', 0);
INSERT INTO `userlevelpermissions` VALUES (91, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_rapat_nonaktivitas', 0);
INSERT INTO `userlevelpermissions` VALUES (92, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rapat_bulanan_tahunan', 0);
INSERT INTO `userlevelpermissions` VALUES (93, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (94, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0);
INSERT INTO `userlevelpermissions` VALUES (95, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (96, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 0);
INSERT INTO `userlevelpermissions` VALUES (97, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_kat', 0);
INSERT INTO `userlevelpermissions` VALUES (98, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_subkat', 0);
INSERT INTO `userlevelpermissions` VALUES (99, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori rab', 0);
INSERT INTO `userlevelpermissions` VALUES (100, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_dtl_proposal', 0);
INSERT INTO `userlevelpermissions` VALUES (101, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_rab_hdr_proposal', 0);
INSERT INTO `userlevelpermissions` VALUES (102, '{DD6024B5-E789-4E94-AA77-3B6F07190313}kategori barang', 0);
INSERT INTO `userlevelpermissions` VALUES (103, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_prog_lap_mingguan_bulanan', 0);
INSERT INTO `userlevelpermissions` VALUES (104, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan mingguan', 0);
INSERT INTO `userlevelpermissions` VALUES (105, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan bulanan', 0);
INSERT INTO `userlevelpermissions` VALUES (106, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0);
INSERT INTO `userlevelpermissions` VALUES (107, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0);
INSERT INTO `userlevelpermissions` VALUES (108, '{DD6024B5-E789-4E94-AA77-3B6F07190313}prosedur standar operasional', 0);
INSERT INTO `userlevelpermissions` VALUES (109, '{DD6024B5-E789-4E94-AA77-3B6F07190313}template dokumen', 0);
INSERT INTO `userlevelpermissions` VALUES (110, '{DD6024B5-E789-4E94-AA77-3B6F07190313}administrasi lembaga', 0);
INSERT INTO `userlevelpermissions` VALUES (111, '{DD6024B5-E789-4E94-AA77-3B6F07190313}laporan tahunan', 0);
INSERT INTO `userlevelpermissions` VALUES (112, '{DD6024B5-E789-4E94-AA77-3B6F07190313}wilayah', 0);
INSERT INTO `userlevelpermissions` VALUES (113, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_staff', 0);
INSERT INTO `userlevelpermissions` VALUES (114, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_keg_lampiran', 0);
INSERT INTO `userlevelpermissions` VALUES (115, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_laporan_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (116, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_penerima_manfaat', 0);
INSERT INTO `userlevelpermissions` VALUES (117, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_laporan', 0);
INSERT INTO `userlevelpermissions` VALUES (118, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (119, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_kelompok', 0);
INSERT INTO `userlevelpermissions` VALUES (120, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_kategori_partisipan', 0);
INSERT INTO `userlevelpermissions` VALUES (121, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_ketergorisub_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (122, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_component', 0);
INSERT INTO `userlevelpermissions` VALUES (123, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_item_component', 0);
INSERT INTO `userlevelpermissions` VALUES (124, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rab_master_component', 0);
INSERT INTO `userlevelpermissions` VALUES (125, '{DD6024B5-E789-4E94-AA77-3B6F07190313}v_rab', 0);
INSERT INTO `userlevelpermissions` VALUES (126, '{DD6024B5-E789-4E94-AA77-3B6F07190313}RAB Report', 0);
INSERT INTO `userlevelpermissions` VALUES (127, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 0);
INSERT INTO `userlevelpermissions` VALUES (128, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 0);
INSERT INTO `userlevelpermissions` VALUES (129, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component_report', 0);
INSERT INTO `userlevelpermissions` VALUES (130, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_master_component', 0);
INSERT INTO `userlevelpermissions` VALUES (131, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_payment', 0);
INSERT INTO `userlevelpermissions` VALUES (132, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 297);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_rap_item_component', 511);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_component', 376);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_rap_item_component', 377);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}rap_item_component', 376);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 504);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_pengajuan_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}status pengajuan kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um', 504);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pengajuan_um', 509);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pengajuan_hdr', 504);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pengajuan', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_pengajuan_kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}status pengajuan kegiatan', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um', 504);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pengajuan_um', 505);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um_payment', 511);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pengajuan_um_payment_confirmation', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pelaporan_um', 509);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}approve_pelaporan_um', 505);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um', 504);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (2, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um', 504);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}pelaporan_um_detail', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_approve_pelaporan', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_dtl', 0);
INSERT INTO `userlevelpermissions` VALUES (3, '{DD6024B5-E789-4E94-AA77-3B6F07190313}tb_um_pelaporan_hdr', 0);

-- ----------------------------
-- Table structure for userlevels
-- ----------------------------
DROP TABLE IF EXISTS `userlevels`;
CREATE TABLE `userlevels`  (
  `userlevelid` int NOT NULL AUTO_INCREMENT,
  `userlevelname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userlevelid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userlevels
-- ----------------------------
INSERT INTO `userlevels` VALUES (-2, 'Anonymous');
INSERT INTO `userlevels` VALUES (-1, 'Administrator');
INSERT INTO `userlevels` VALUES (1, 'Default');
INSERT INTO `userlevels` VALUES (2, 'Manajer Program');
INSERT INTO `userlevels` VALUES (3, 'Keuangan');
INSERT INTO `userlevels` VALUES (4, 'Staf');
INSERT INTO `userlevels` VALUES (5, 'Manajer Kantor');
INSERT INTO `userlevels` VALUES (6, 'Operator');
INSERT INTO `userlevels` VALUES (7, 'Default');
INSERT INTO `userlevels` VALUES (8, 'Staf Program');
INSERT INTO `userlevels` VALUES (9, 'Ketua');
INSERT INTO `userlevels` VALUES (10, 'PJ. Program');
INSERT INTO `userlevels` VALUES (11, 'Staf Keuangan');

-- ----------------------------
-- View structure for administrasi lembaga
-- ----------------------------
DROP VIEW IF EXISTS `administrasi lembaga`;
CREATE VIEW `administrasi lembaga` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '3\'3\'3\'3\'3\'3\'3\'3';

-- ----------------------------
-- View structure for kategori barang
-- ----------------------------
DROP VIEW IF EXISTS `kategori barang`;
CREATE VIEW `kategori barang` AS select `tb_inventaris_kategori_barang`.`id` AS `ID`,`tb_inventaris_kategori_barang`.`kategori_barang` AS `Kategori`,`tb_inventaris_subkat_barang`.`subkategori_barang` AS `Sub-kategori` from (`tb_inventaris_kategori_barang` join `tb_inventaris_subkat_barang` on(`tb_inventaris_kategori_barang`.`id` = `tb_inventaris_subkat_barang`.`id_kategori_barang`)) order by `tb_inventaris_kategori_barang`.`id`;

-- ----------------------------
-- View structure for kategori rab
-- ----------------------------
DROP VIEW IF EXISTS `kategori rab`;
CREATE VIEW `kategori rab` AS select `rmps`.`tb_rab_kat`.`id` AS `ID`,`rmps`.`tb_rab_kat`.`kategori` AS `Kategori`,`rmps`.`tb_rab_subkat`.`sub-kategori` AS `Sub-Kategori` from (`tb_rab_kat` join `tb_rab_subkat` on(`rmps`.`tb_rab_kat`.`id` = `rmps`.`tb_rab_subkat`.`id_kategori`));

-- ----------------------------
-- View structure for laporan bulanan
-- ----------------------------
DROP VIEW IF EXISTS `laporan bulanan`;
CREATE VIEW `laporan bulanan` AS select `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`,`tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`,`tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`,`tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`,`tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`,`tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`,`tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`,`tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`,`tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`,`tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`,`tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` from `tb_prog_lap_mingguan_bulanan` where `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapbulanan' order by `tb_prog_lap_mingguan_bulanan`.`create_date`;

-- ----------------------------
-- View structure for laporan mingguan
-- ----------------------------
DROP VIEW IF EXISTS `laporan mingguan`;
CREATE VIEW `laporan mingguan` AS select `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`,`tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`,`tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`,`tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`,`tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`,`tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`,`tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`,`tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`,`tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`,`tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`,`tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` from `tb_prog_lap_mingguan_bulanan` where `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapmingguan' order by `tb_prog_lap_mingguan_bulanan`.`create_date`;

-- ----------------------------
-- View structure for laporan tahunan
-- ----------------------------
DROP VIEW IF EXISTS `laporan tahunan`;
CREATE VIEW `laporan tahunan` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '4\'4\'4\'4\'4\'4\'4\'4';

-- ----------------------------
-- View structure for prosedur standar operasional
-- ----------------------------
DROP VIEW IF EXISTS `prosedur standar operasional`;
CREATE VIEW `prosedur standar operasional` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul Dokumen`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '1\'1\'1\'1\'1\'1\'1\'1';

-- ----------------------------
-- View structure for status pengajuan kegiatan
-- ----------------------------
DROP VIEW IF EXISTS `status pengajuan kegiatan`;
CREATE VIEW `status pengajuan kegiatan` AS select `rmps`.`tb_pengajuan_kegiatan`.`id` AS `No`,`rmps`.`tb_pengajuan_kegiatan`.`id_program` AS `Program`,`rmps`.`tb_pengajuan_kegiatan`.`create_date` AS `Tanggal Pengajuan`,`rmps`.`tb_pengajuan_kegiatan`.`judul_kegiatan` AS `Judul Kegiatan`,`rmps`.`tb_pengajuan_kegiatan`.`detail_kegiatan` AS `Detail Kegiatan`,`rmps`.`tb_pengajuan_kegiatan`.`tahun` AS `Tahun`,`rmps`.`tb_pengajuan_kegiatan`.`bulan` AS `Bulan`,`rmps`.`tb_pengajuan_kegiatan`.`tgl_pelaksanaan` AS `Tanggal Pelaksana`,`rmps`.`tb_pengajuan_kegiatan`.`rencana_anggaran` AS `Rencana Anggaran`,`rmps`.`tb_pengajuan_kegiatan`.`pj_kegiatan` AS `PJ Kegiatan`,`rmps`.`tb_approve_kegiatan`.`tglapprove` AS `Tanggal Periksa`,`rmps`.`tb_approve_kegiatan`.`pemeriksa` AS `Pemeriksa`,`rmps`.`tb_approve_kegiatan`.`status` AS `Status` from (`tb_approve_kegiatan` join `tb_pengajuan_kegiatan` on(`rmps`.`tb_pengajuan_kegiatan`.`id` = `rmps`.`tb_approve_kegiatan`.`id_pengajuan_kegiatan`)) group by `rmps`.`tb_pengajuan_kegiatan`.`id`,`rmps`.`tb_pengajuan_kegiatan`.`id_program`,`rmps`.`tb_pengajuan_kegiatan`.`create_date`,`rmps`.`tb_pengajuan_kegiatan`.`judul_kegiatan`,`rmps`.`tb_pengajuan_kegiatan`.`detail_kegiatan`,`rmps`.`tb_pengajuan_kegiatan`.`tahun`,`rmps`.`tb_pengajuan_kegiatan`.`bulan`,`rmps`.`tb_pengajuan_kegiatan`.`tgl_pelaksanaan`,`rmps`.`tb_pengajuan_kegiatan`.`rencana_anggaran`,`rmps`.`tb_pengajuan_kegiatan`.`pj_kegiatan`,`rmps`.`tb_approve_kegiatan`.`tglapprove`,`rmps`.`tb_approve_kegiatan`.`pemeriksa`,`rmps`.`tb_approve_kegiatan`.`status`;

-- ----------------------------
-- View structure for template dokumen
-- ----------------------------
DROP VIEW IF EXISTS `template dokumen`;
CREATE VIEW `template dokumen` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '2\'2\'2\'2\'2\'2\'2\'2';

-- ----------------------------
-- View structure for view_uangmuka
-- ----------------------------
DROP VIEW IF EXISTS `view_uangmuka`;
CREATE VIEW `view_uangmuka` AS SELECT `rab_master_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_item_component`.`rab_component_id` AS `rab_component_id`, `rab_item_component`.`id` AS `id`, `rab_item_component`.`name` AS `name`, `rab_item_component`.`total_cost` AS `total_cost`, sum(`pengajuan_um_detail`.`cost`) AS `total_pengajuan`, sum(distinct `pelaporan_um_detail`.`cost`) AS `total_pelaporan` FROM ((((`rab_component` join `rab_master_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id`)) join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id`)) left join `pengajuan_um_detail` on(`rab_master_component`.`program_id` = `pengajuan_um_detail`.`program_id` and `rab_component`.`rab_master_component_id` = `pengajuan_um_detail`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `pengajuan_um_detail`.`rab_component_id` and `rab_item_component`.`id` = `pengajuan_um_detail`.`rab_item_component_id`)) left join `pelaporan_um_detail` on(`rab_master_component`.`program_id` = `pelaporan_um_detail`.`program_id` and `rab_component`.`rab_master_component_id` = `pelaporan_um_detail`.`rab_master_component_id` and `rab_item_component`.`rab_component_id` = `pelaporan_um_detail`.`rab_component_id` and `rab_item_component`.`id` = `pelaporan_um_detail`.`rab_item_component_id`)) GROUP BY `rab_master_component`.`program_id`, `rab_component`.`rab_master_component_id`, `rab_item_component`.`rab_component_id`, `rab_item_component`.`id`, `rab_item_component`.`name`, `rab_item_component`.`total_cost`;

-- ----------------------------
-- View structure for v_rab
-- ----------------------------
DROP VIEW IF EXISTS `v_rab`;
CREATE VIEW `v_rab` AS SELECT `rab_master_component`.`program_id` AS `program_id`, `rab_component`.`rab_master_component_id` AS `rab_master_component_id`, `rab_item_component`.`rab_component_id` AS `rab_component_id`, `rab_item_component`.`id` AS `rab_item_id`, `rab_item_component`.`name` AS `name`, concat(`rab_item_component`.`amount`,' ',(select `tb_satuan_unit`.`unit` from `tb_satuan_unit` where `tb_satuan_unit`.`id` = `rab_item_component`.`unit_id`)) AS `item_qty`, concat(`rab_item_component`.`termin_cost`,' ',(select `tb_satuan_unit`.`unit` from `tb_satuan_unit` where `tb_satuan_unit`.`id` = `rab_item_component`.`termin_cost`)) AS `termin_qty`, `rab_item_component`.`cost` AS `cost`, `rab_item_component`.`total_cost` AS `total_cost` FROM (((`rab_master_component` join `rab_component` on(`rab_master_component`.`id` = `rab_component`.`rab_master_component_id`)) join `rab_item_component` on(`rab_component`.`id` = `rab_item_component`.`rab_component_id`)) join `tb_satuan_unit` on(`rab_item_component`.`unit_id` = `tb_satuan_unit`.`id`));

-- ----------------------------
-- View structure for wilayah
-- ----------------------------
DROP VIEW IF EXISTS `wilayah`;
CREATE VIEW `wilayah` AS SELECT `tb_propinsi`.`id` AS `ID`, `tb_propinsi`.`propinsi` AS `Propinsi`, `tb_kabupaten`.`Kabupaten` AS `Kabupeten`, `tb_kecamatan`.`Kecamatan` AS `Kecamatan`, `tb_kelurahan_desa`.`kelurahan/desa` AS `Kelurahan/Desa` FROM (((`tb_propinsi` join `tb_kabupaten` on(`tb_propinsi`.`id` = `tb_kabupaten`.`id_propinsi`)) join `tb_kecamatan` on(`tb_kabupaten`.`id` = `tb_kecamatan`.`id_kabupaten`)) join `tb_kelurahan_desa` on(`tb_kecamatan`.`id` = `tb_kelurahan_desa`.`id_kecamatan`));

SET FOREIGN_KEY_CHECKS = 1;
