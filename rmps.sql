/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : rmps

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 13/02/2023 05:25:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NOT NULL,
  `created_by` int NOT NULL,
  `finish` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for approval_config
-- ----------------------------
DROP TABLE IF EXISTS `approval_config`;
CREATE TABLE `approval_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for approval_config_detail
-- ----------------------------
DROP TABLE IF EXISTS `approval_config_detail`;
CREATE TABLE `approval_config_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `approval_config_id` int NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_number` int NOT NULL,
  `label_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label_button` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `end` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'n',
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `approval_config_id`(`approval_config_id` ASC, `table_name` ASC, `order_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for approve_pelaporan_um
-- ----------------------------
DROP TABLE IF EXISTS `approve_pelaporan_um`;
CREATE TABLE `approve_pelaporan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pelaporan_um_id` int NOT NULL,
  `user_id` int NOT NULL,
  `level_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `approved` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` datetime NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for approve_pengajuan_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `approve_pengajuan_kegiatan`;
CREATE TABLE `approve_pengajuan_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tb_pengajuan_kegiatan_id` int NOT NULL,
  `user_id` int NOT NULL,
  `level_id` int NOT NULL,
  `approved` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` datetime NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for approve_pengajuan_um
-- ----------------------------
DROP TABLE IF EXISTS `approve_pengajuan_um`;
CREATE TABLE `approve_pengajuan_um`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_id` int NOT NULL,
  `user_id` int NOT NULL,
  `level_id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `approved` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` datetime NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for balancing
-- ----------------------------
DROP TABLE IF EXISTS `balancing`;
CREATE TABLE `balancing`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `pelaporan_id` int NOT NULL,
  `total_pelaporan` int NOT NULL,
  `type` int NOT NULL,
  `payment_method` enum('transfer','cash') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `transaction_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_sender_id` int NOT NULL,
  `bank_receiver_id` int NOT NULL,
  `amount` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `atachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` int NULL DEFAULT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pelaporan_um_detail
-- ----------------------------
DROP TABLE IF EXISTS `pelaporan_um_detail`;
CREATE TABLE `pelaporan_um_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pelaporan_um_id` int NOT NULL,
  `periode_tahun` int NOT NULL,
  `periode_bulan` int NOT NULL,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_component_id` int NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NOT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NOT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `cost` int NOT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pelaporan_um_external
-- ----------------------------
DROP TABLE IF EXISTS `pelaporan_um_external`;
CREATE TABLE `pelaporan_um_external`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_component_id` int NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NOT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NOT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `cost` int NOT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
  `created_at` datetime NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for pengajuan_um_detail
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_um_detail`;
CREATE TABLE `pengajuan_um_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pengajuan_um_id` int NOT NULL,
  `periode_tahun` int NOT NULL,
  `periode_bulan` int NOT NULL,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `rab_item_component_id` int NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NOT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NOT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for rab_component
-- ----------------------------
DROP TABLE IF EXISTS `rab_component`;
CREATE TABLE `rab_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_item` int NULL DEFAULT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for rab_component_external
-- ----------------------------
DROP TABLE IF EXISTS `rab_component_external`;
CREATE TABLE `rab_component_external`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `total_item` int NULL DEFAULT NULL,
  `total_cost` int NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for rab_item_component
-- ----------------------------
DROP TABLE IF EXISTS `rab_item_component`;
CREATE TABLE `rab_item_component`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NULL DEFAULT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NULL DEFAULT NULL,
  `cost` int NOT NULL DEFAULT 0,
  `total_cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_activity` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for rab_item_component_external
-- ----------------------------
DROP TABLE IF EXISTS `rab_item_component_external`;
CREATE TABLE `rab_item_component_external`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `rab_master_component_id` int NOT NULL,
  `rab_component_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit_id` int NULL DEFAULT NULL,
  `termin_cost` int NOT NULL,
  `unit_termin_id` int NULL DEFAULT NULL,
  `cost` int NOT NULL DEFAULT 0,
  `total_cost` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `is_activity` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `active` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for rab_master_component_external
-- ----------------------------
DROP TABLE IF EXISTS `rab_master_component_external`;
CREATE TABLE `rab_master_component_external`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `aktif` enum('y','n') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_bulan
-- ----------------------------
DROP TABLE IF EXISTS `tb_bulan`;
CREATE TABLE `tb_bulan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `bulan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_dokumen_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_dokumen_kategori`;
CREATE TABLE `tb_dokumen_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_dokumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_inventaris_kategori_barang
-- ----------------------------
DROP TABLE IF EXISTS `tb_inventaris_kategori_barang`;
CREATE TABLE `tb_inventaris_kategori_barang`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_kategori_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_kegiatan`;
CREATE TABLE `tb_kategori_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_kategori_laporan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kategori_laporan`;
CREATE TABLE `tb_kategori_laporan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_laporan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_lembaga_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_lembaga_kategori`;
CREATE TABLE `tb_lembaga_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_lembaga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_negara
-- ----------------------------
DROP TABLE IF EXISTS `tb_negara`;
CREATE TABLE `tb_negara`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_negara` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
  `status` int NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_prog_kategori_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_prog_kategori_kegiatan`;
CREATE TABLE `tb_prog_kategori_kegiatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori_program` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_propinsi
-- ----------------------------
DROP TABLE IF EXISTS `tb_propinsi`;
CREATE TABLE `tb_propinsi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `propinsi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_satuan_unit
-- ----------------------------
DROP TABLE IF EXISTS `tb_satuan_unit`;
CREATE TABLE `tb_satuan_unit`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_surat_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_kategori`;
CREATE TABLE `tb_surat_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_tahun
-- ----------------------------
DROP TABLE IF EXISTS `tb_tahun`;
CREATE TABLE `tb_tahun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tb_temanputer_skills
-- ----------------------------
DROP TABLE IF EXISTS `tb_temanputer_skills`;
CREATE TABLE `tb_temanputer_skills`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_skill` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for userlevels
-- ----------------------------
DROP TABLE IF EXISTS `userlevels`;
CREATE TABLE `userlevels`  (
  `userlevelid` int NOT NULL AUTO_INCREMENT,
  `userlevelname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userlevelid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- View structure for administrasi lembaga
-- ----------------------------
DROP VIEW IF EXISTS `administrasi lembaga`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `administrasi lembaga` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '3\'3\'3\'3\'3\'3\'3\'3';

-- ----------------------------
-- View structure for kategori barang
-- ----------------------------
DROP VIEW IF EXISTS `kategori barang`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `kategori barang` AS select `tb_inventaris_kategori_barang`.`id` AS `ID`,`tb_inventaris_kategori_barang`.`kategori_barang` AS `Kategori`,`tb_inventaris_subkat_barang`.`subkategori_barang` AS `Sub-kategori` from (`tb_inventaris_kategori_barang` join `tb_inventaris_subkat_barang` on(`tb_inventaris_kategori_barang`.`id` = `tb_inventaris_subkat_barang`.`id_kategori_barang`)) order by `tb_inventaris_kategori_barang`.`id`;

-- ----------------------------
-- View structure for laporan bulanan
-- ----------------------------
DROP VIEW IF EXISTS `laporan bulanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `laporan bulanan` AS select `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`,`tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`,`tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`,`tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`,`tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`,`tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`,`tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`,`tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`,`tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`,`tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`,`tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` from `tb_prog_lap_mingguan_bulanan` where `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapbulanan' order by `tb_prog_lap_mingguan_bulanan`.`create_date`;

-- ----------------------------
-- View structure for laporan mingguan
-- ----------------------------
DROP VIEW IF EXISTS `laporan mingguan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `laporan mingguan` AS select `tb_prog_lap_mingguan_bulanan`.`create_date` AS `Create Date`,`tb_prog_lap_mingguan_bulanan`.`id_program` AS `ID Program`,`tb_prog_lap_mingguan_bulanan`.`pj_laporan` AS `PJ Laporan`,`tb_prog_lap_mingguan_bulanan`.`judul` AS `Judul`,`tb_prog_lap_mingguan_bulanan`.`kategori_laporan` AS `Kategori Laporan`,`tb_prog_lap_mingguan_bulanan`.`tahun` AS `Tahun`,`tb_prog_lap_mingguan_bulanan`.`bulan` AS `Bulan`,`tb_prog_lap_mingguan_bulanan`.`lampiran` AS `Lampiran`,`tb_prog_lap_mingguan_bulanan`.`create_by` AS `Create By`,`tb_prog_lap_mingguan_bulanan`.`update_date` AS `Update Date`,`tb_prog_lap_mingguan_bulanan`.`update_by` AS `Update By` from `tb_prog_lap_mingguan_bulanan` where `tb_prog_lap_mingguan_bulanan`.`kategori_laporan` = 'lapmingguan' order by `tb_prog_lap_mingguan_bulanan`.`create_date`;

-- ----------------------------
-- View structure for laporan tahunan
-- ----------------------------
DROP VIEW IF EXISTS `laporan tahunan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `laporan tahunan` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '4\'4\'4\'4\'4\'4\'4\'4';

-- ----------------------------
-- View structure for prosedur standar operasional
-- ----------------------------
DROP VIEW IF EXISTS `prosedur standar operasional`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `prosedur standar operasional` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul Dokumen`,`tb_dokumen`.`versi_dokumen` AS `Versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '1\'1\'1\'1\'1\'1\'1\'1';

-- ----------------------------
-- View structure for template dokumen
-- ----------------------------
DROP VIEW IF EXISTS `template dokumen`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `template dokumen` AS select `tb_dokumen`.`id_kategori` AS `Kategori`,`tb_dokumen`.`nama_dokumen` AS `Judul`,`tb_dokumen`.`versi_dokumen` AS `versi`,`tb_dokumen`.`lampiran` AS `Lampiran`,`tb_dokumen`.`keterangan` AS `Keterangan` from (`tb_dokumen` join `tb_dokumen_kategori` on(`tb_dokumen`.`id_kategori` = `tb_dokumen_kategori`.`id`)) where `tb_dokumen`.`id_kategori` = '2\'2\'2\'2\'2\'2\'2\'2';

-- ----------------------------
-- View structure for view_uangmuka
-- ----------------------------
DROP VIEW IF EXISTS `view_uangmuka`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_uangmuka` AS SELECT rab_master_component.program_id AS program_id, rab_component.rab_master_component_id AS rab_master_component_id, rab_component.id AS component_id, rab_component.name AS name, rab_component.total_cost AS total_rab, (SELECT SUM(pengajuan_um_detail.total_cost) FROM pengajuan_um_detail WHERE program_id = rab_master_component.program_id AND rab_master_component_id = rab_master_component.id AND rab_component_id = rab_component.id) AS total_pengajuan, (SELECT SUM(pelaporan_um_detail.total_cost) FROM pelaporan_um_detail WHERE program_id = rab_master_component.program_id AND rab_master_component_id = rab_master_component.id AND rab_component_id = rab_component.id) AS total_pelaporan FROM (((rab_component JOIN rab_master_component ON rab_master_component.id = rab_component.rab_master_component_id) JOIN rab_item_component ON rab_component.id = rab_item_component.rab_component_id) LEFT JOIN pengajuan_um_detail ON rab_master_component.program_id = pengajuan_um_detail.program_id AND rab_component.rab_master_component_id = pengajuan_um_detail.rab_master_component_id AND rab_item_component.rab_component_id = pengajuan_um_detail.rab_component_id AND rab_item_component.id = pengajuan_um_detail.rab_item_component_id) LEFT JOIN pelaporan_um_detail ON rab_master_component.program_id = pelaporan_um_detail.program_id AND rab_component.rab_master_component_id = pelaporan_um_detail.rab_master_component_id AND rab_item_component.rab_component_id = pelaporan_um_detail.rab_component_id AND rab_item_component.id = pelaporan_um_detail.rab_item_component_id GROUP BY rab_master_component.program_id, rab_component.rab_master_component_id, rab_component.id ;

-- ----------------------------
-- View structure for vmactivityitem
-- ----------------------------
DROP VIEW IF EXISTS `vmactivityitem`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vmactivityitem` AS SELECT rab_item_component.id, rab_item_component.program_id, rab_item_component.rab_master_component_id, rab_item_component.rab_component_id, rab_item_component.name, activity.description, activity.finish FROM rab_item_component LEFT JOIN activity ON rab_item_component.program_id = activity.program_id AND rab_item_component.rab_master_component_id = activity.rab_master_component_id AND rab_item_component.rab_component_id = activity.rab_component_id AND rab_item_component.id = activity.rab_item_id WHERE rab_item_component.is_activity = 1 ;

-- ----------------------------
-- View structure for vmaktivity
-- ----------------------------
DROP VIEW IF EXISTS `vmaktivity`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vmaktivity` AS SELECT rab_component.id AS id, rab_component.program_id AS program_id, rab_component.rab_master_component_id AS rab_master_component_id, rab_component.name AS name, (SELECT coalesce(Count(0), 0) FROM rab_item_component WHERE rab_item_component.program_id = rab_component.program_id AND rab_item_component.rab_component_id = rab_component.id AND rab_item_component.is_activity = 1) AS total_activity, (SELECT coalesce(Count(0), 0) FROM activity WHERE activity.program_id = rab_component.program_id AND activity.rab_component_id = rab_component.id AND activity.finish = 1) AS total_activity_finish, coalesce(round(100 / (SELECT coalesce(Count(0), 0) FROM rab_item_component WHERE rab_item_component.program_id = rab_component.program_id AND rab_item_component.rab_component_id = rab_component.id AND rab_item_component.is_activity = 1) * (SELECT coalesce(Count(0), 0) FROM activity WHERE activity.program_id = rab_component.program_id AND activity.rab_component_id = rab_component.id AND activity.finish = 1), 0), 0) AS prosentase FROM (rab_component LEFT JOIN rab_item_component ON rab_component.id = rab_item_component.rab_component_id AND rab_component.program_id = rab_item_component.program_id AND rab_component.rab_master_component_id = rab_item_component.rab_master_component_id) LEFT JOIN activity ON rab_item_component.program_id = activity.program_id AND rab_item_component.rab_master_component_id = activity.rab_master_component_id AND rab_item_component.rab_component_id = activity.rab_component_id AND rab_item_component.id = activity.rab_item_id WHERE rab_item_component.is_activity = 1 GROUP BY rab_component.id ;

-- ----------------------------
-- View structure for vrab
-- ----------------------------
DROP VIEW IF EXISTS `vrab`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vrab` AS SELECT rab_master_component.program_id AS program_id, rab_component.rab_master_component_id AS rab_master_component_id, rab_item_component.rab_component_id AS rab_component_id, rab_component.name, (SELECT coalesce(Sum(rab_item_component.total_cost), 0) FROM rab_item_component WHERE rab_item_component.rab_component_id = rab_component.id) AS total FROM (rab_master_component LEFT JOIN rab_component ON rab_master_component.id = rab_component.rab_master_component_id) LEFT JOIN rab_item_component ON rab_component.id = rab_item_component.rab_component_id GROUP BY rab_item_component.rab_component_id, rab_component.name ;

-- ----------------------------
-- View structure for vrabrap
-- ----------------------------
DROP VIEW IF EXISTS `vrabrap`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vrabrap` AS SELECT rab_master_component.program_id AS program_id, rab_component.rab_master_component_id AS master_id, rab_item_component.rab_component_id AS component_id, rab_item_component.name AS nama_komponen, rab_component.total_cost AS rencana_biaya, (SELECT COALESCE(SUM(pelaporan_um_detail.total_cost),0) FROM pelaporan_um_detail WHERE pelaporan_um_detail.rab_component_id = rab_component.id) AS realisasi_biaya, (rab_component.total_cost -(SELECT COALESCE(SUM(pelaporan_um_detail.total_cost),0) FROM pelaporan_um_detail WHERE pelaporan_um_detail.rab_component_id = rab_component.id)) AS total, (SELECT COALESCE(SUM(amount),0) FROM balancing WHERE program_id = rab_master_component.program_id AND rab_master_component_id = rab_component.rab_master_component_id AND rab_component_id = rab_component.id) AS penyesuaian, ( (rab_component.total_cost -(SELECT COALESCE(SUM(pelaporan_um_detail.total_cost),0) FROM pelaporan_um_detail WHERE pelaporan_um_detail.rab_component_id = rab_component.id))-(SELECT COALESCE(SUM(amount),0) FROM balancing WHERE program_id = rab_master_component.program_id AND rab_master_component_id = rab_component.rab_master_component_id AND rab_component_id = rab_component.id) ) AS hasil FROM rab_component RIGHT JOIN rab_master_component ON rab_master_component.id = rab_component.rab_master_component_id INNER JOIN rab_item_component ON rab_component.id = rab_item_component.rab_component_id GROUP BY rab_master_component.program_id, rab_component.rab_master_component_id, rab_item_component.rab_component_id ;

-- ----------------------------
-- View structure for vrabrapmonthly
-- ----------------------------
DROP VIEW IF EXISTS `vrabrapmonthly`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vrabrapmonthly` AS SELECT tb_prog_detail.id, tb_prog_detail.kode_program, tb_tahun.tahun AS tahun_name, (SELECT COALESCE(SUM(rab_component.total_cost),0) FROM rab_component WHERE program_id = tb_prog_detail.id) AS total_rencana, (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE pelaporan_um.program_id = tb_prog_detail.id AND pelaporan_um.periode_tahun = tb_tahun.id) - (SELECT(SELECT coalesce(Sum(balancing.amount), 0) FROM balancing WHERE balancing.program_id = tb_prog_detail.id AND balancing.pelaporan_id IN (SELECT id FROM pelaporan_um WHERE pelaporan_um.periode_tahun = tb_tahun.id) )) AS total_realisasi, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 1 ) * 100 ,0) ) AS jan, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 2 ) * 100 ,0) ) AS feb, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 3 ) * 100 ,0) ) AS mar, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 4 ) * 100 ,0) ) AS apr, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 5 ) * 100 ,0) ) AS mei, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 6 ) * 100 ,0) ) AS jun, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 7 ) * 100 ,0) ) AS jul, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 8 ) * 100 ,0) ) AS agust, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 9 ) * 100 ,0) ) AS sept, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 10 ) * 100 ,0) ) AS okt, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 11 ) * 100 ,0) ) AS nov, (SELECT ROUND( ( SELECT IF( (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12) >= (SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12), (-1 * (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12)), (SELECT coalesce(Sum(pelaporan_um.total_pelaporan), 0) FROM pelaporan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12) ) ) / ( SELECT coalesce(SUM(pengajuan_um.total_pengajuan),0) FROM pengajuan_um WHERE program_id = tb_prog_detail.id AND periode_tahun = tb_tahun.id AND periode_bulan = 12 ) * 100 ,0) ) AS des FROM rab_component LEFT JOIN pelaporan_um ON pelaporan_um.program_id = rab_component.program_id INNER JOIN tb_prog_detail ON tb_prog_detail.id = rab_component.program_id, tb_tahun, balancing, pengajuan_um GROUP BY tb_prog_detail.id, tb_prog_detail.kode_program, tb_tahun.tahun ;

-- ----------------------------
-- View structure for vrabrapmonthly1
-- ----------------------------
DROP VIEW IF EXISTS `vrabrapmonthly1`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vrabrapmonthly1` AS SELECT tb_prog_detail.id, tb_prog_detail.kode_program, tb_prog_detail.nama_program, (SELECT COALESCE(Sum(rab_item_component.total_cost), 0) FROM rab_item_component WHERE rab_item_component.program_id = tb_prog_detail.id) AS rencana, (SELECT COALESCE(Sum(pelaporan_um_detail.total_cost), 0) FROM pelaporan_um_detail WHERE pelaporan_um_detail.program_id = tb_prog_detail.id) AS realisasi, (SELECT COALESCE(Sum(vrabrap.hasil), 0) FROM vrabrap WHERE vrabrap.program_id = tb_prog_detail.id) AS sisa FROM tb_prog_detail LEFT JOIN rab_item_component ON tb_prog_detail.id = rab_item_component.program_id LEFT JOIN pelaporan_um_detail ON tb_prog_detail.id = pelaporan_um_detail.program_id LEFT JOIN vrabrap ON tb_prog_detail.id = vrabrap.program_id GROUP BY tb_prog_detail.id ;

-- ----------------------------
-- View structure for vrealisasimonthly
-- ----------------------------
DROP VIEW IF EXISTS `vrealisasimonthly`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vrealisasimonthly` AS SELECT rab_component.program_id AS program_id, rab_component.rab_master_component_id AS rab_master_component_id, rab_component.id AS id, rab_component.name AS name, pelaporan_um_detail.periode_tahun, pelaporan_um_detail.periode_bulan, (SELECT Str_To_Date(Concat(tb_tahun.tahun, '-', If(Length(pelaporan_um_detail.periode_bulan) < 2, Concat('0', pelaporan_um_detail.periode_bulan), pelaporan_um_detail.periode_bulan), '-01'), '%Y-%m-%d')) AS periode, rab_component.total_cost AS rencana, Sum(DISTINCT pelaporan_um_detail.total_cost) AS realisasi, (SELECT (If(Sum(DISTINCT pelaporan_um_detail.total_cost) <= rab_component.total_cost, Sum(DISTINCT pelaporan_um_detail.total_cost), ( -1 * Sum(DISTINCT pelaporan_um_detail.total_cost)))) / (SELECT COALESCE(rab_component.total_cost, 0)) * 100) AS percentase FROM (rab_master_component JOIN rab_component ON rab_master_component.id = rab_component.rab_master_component_id AND rab_master_component.program_id = rab_component.program_id) LEFT JOIN pelaporan_um_detail ON rab_component.program_id = pelaporan_um_detail.program_id AND rab_component.rab_master_component_id = pelaporan_um_detail.rab_master_component_id AND rab_component.id = pelaporan_um_detail.rab_component_id INNER JOIN tb_tahun ON pelaporan_um_detail.periode_tahun = tb_tahun.id GROUP BY rab_component.program_id, rab_component.rab_master_component_id, rab_component.id, rab_component.name, pelaporan_um_detail.periode_tahun, pelaporan_um_detail.periode_bulan ;

-- ----------------------------
-- View structure for vtables
-- ----------------------------
DROP VIEW IF EXISTS `vtables`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vtables` AS SELECT table_name FROM information_schema.tables WHERE table_schema = 'rmps' ;

-- ----------------------------
-- View structure for wilayah
-- ----------------------------
DROP VIEW IF EXISTS `wilayah`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wilayah` AS SELECT `tb_propinsi`.`id` AS `ID`, `tb_propinsi`.`propinsi` AS `Propinsi`, `tb_kabupaten`.`Kabupaten` AS `Kabupeten`, `tb_kecamatan`.`Kecamatan` AS `Kecamatan`, `tb_kelurahan_desa`.`kelurahan/desa` AS `Kelurahan/Desa` FROM (((`tb_propinsi` join `tb_kabupaten` on(`tb_propinsi`.`id` = `tb_kabupaten`.`id_propinsi`)) join `tb_kecamatan` on(`tb_kabupaten`.`id` = `tb_kecamatan`.`id_kabupaten`)) join `tb_kelurahan_desa` on(`tb_kecamatan`.`id` = `tb_kelurahan_desa`.`id_kecamatan`)) ;

SET FOREIGN_KEY_CHECKS = 1;
