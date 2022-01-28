/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.100.50
 Source Server Type    : MySQL
 Source Server Version : 100327
 Source Host           : 192.168.100.50:3306
 Source Schema         : siap_db

 Target Server Type    : MySQL
 Target Server Version : 100327
 File Encoding         : 65001

 Date: 26/08/2021 20:09:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for loglogin
-- ----------------------------
DROP TABLE IF EXISTS `loglogin`;
CREATE TABLE `loglogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cempnip` varchar(20) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `browser` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `log_login` datetime DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of loglogin
-- ----------------------------
BEGIN;
INSERT INTO `loglogin` VALUES (1, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:02:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (2, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 11:07:01', NULL, NULL);
INSERT INTO `loglogin` VALUES (3, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:12:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (4, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36', '2021-02-04 11:27:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (5, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 15:04:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (6, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36', '2021-02-04 17:32:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (7, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 09:49:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (8, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 09:52:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (9, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2021-02-08 14:26:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (10, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-10 09:14:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (11, 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-10 10:47:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (12, 'def', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-11 13:58:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (13, 'dev', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-11 21:21:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (14, 'adasd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-12 11:04:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (15, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 09:23:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (16, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 09:40:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (17, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 14:57:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (18, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-15 15:05:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (19, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 09:12:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (20, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 09:25:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (21, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-17 15:52:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (22, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 12:49:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (23, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:41:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (24, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:42:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (25, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-18 15:46:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (26, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 09:35:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (27, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '2021-02-19 09:49:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (28, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 13:44:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (29, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-19 17:27:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (30, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-23 09:15:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (31, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-23 11:00:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (32, 'sdfsdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 10:32:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (33, 'sdfsdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 14:33:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (34, 'jn', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-24 19:46:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (35, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-25 09:26:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (36, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-02-25 14:28:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (37, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-25 14:29:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (38, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-26 09:45:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (39, 'asdasd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', '2021-02-26 11:09:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (40, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-02-28 19:48:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (41, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-01 09:48:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (42, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-01 13:53:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (43, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-01 14:58:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (44, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-01 15:02:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (45, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-01 15:02:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (46, 'asda', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-03-02 10:49:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (47, 'k', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-03-02 20:22:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (48, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-03 10:29:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (49, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-03 11:25:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (50, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36', '2021-03-03 13:53:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (51, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-03-05 08:37:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (52, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '2021-03-05 15:55:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (53, 'sdfsdf', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-15 11:58:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (54, 'kjn', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-15 20:43:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (55, 'kjn', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-16 11:30:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (56, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 08:44:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (57, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 09:32:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (58, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 09:54:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (59, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:14:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (60, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:25:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (61, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:26:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (62, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:33:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (63, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:36:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (64, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 10:46:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (65, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:34:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (66, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:37:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (67, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:41:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (68, '1193726', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:42:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (69, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:43:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (70, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-17 13:46:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (71, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-18 08:52:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (72, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-18 08:53:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (73, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-18 10:18:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (74, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', '2021-03-18 10:26:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (75, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:02:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (76, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:16:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (77, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:20:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (78, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:22:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (79, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:26:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (80, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:46:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (81, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:50:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (82, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:53:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (83, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 09:57:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (84, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 10:09:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (85, '1193726', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 10:11:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (86, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 11:06:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (87, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 15:20:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (88, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-24 15:31:41', NULL, NULL);
INSERT INTO `loglogin` VALUES (89, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 12:03:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (90, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 12:04:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (91, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 09:16:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (92, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 09:17:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (93, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 09:19:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (94, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 09:20:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (95, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 15:17:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (96, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 15:18:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (97, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 15:19:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (98, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-26 16:03:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (99, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 10:58:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (100, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:03:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (101, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:04:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (102, '1193748', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:04:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (103, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:05:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (104, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:52:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (105, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:52:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (106, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:54:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (107, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:54:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (108, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:54:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (109, '1122050', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:55:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (110, '1193755', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-29 11:55:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (111, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 09:41:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (112, '1193755', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 09:42:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (113, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 09:53:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (114, '1193748', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 09:56:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (115, '1193726', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 10:00:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (116, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 10:06:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (117, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-30 10:32:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (118, '1122050', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-04-01 14:40:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (119, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-05 09:46:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (120, '1111788', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-06 17:52:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (121, '1193702', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-06 17:58:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (122, '1111788', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-06 17:59:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (123, '1111788', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-09 13:34:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (124, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 08:50:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (125, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:24:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (126, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:30:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (127, '1193702', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:31:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (128, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:31:14', NULL, NULL);
INSERT INTO `loglogin` VALUES (129, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:32:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (130, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:33:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (131, '1111788', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:35:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (132, '1193726', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:36:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (133, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:47:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (134, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:48:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (135, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:51:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (136, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 14:54:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (137, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-14 15:37:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (138, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:09:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (139, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:13:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (140, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:14:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (141, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:14:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (142, '1111788', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:15:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (143, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:18:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (144, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:18:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (145, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 08:19:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (146, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 09:47:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (147, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 09:47:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (148, '1193726', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 09:48:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (149, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 10:23:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (150, '1193748', '192.168.112.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '2021-04-19 10:29:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (151, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 08:19:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (152, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 09:59:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (153, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:00:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (154, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:00:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (155, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:02:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (156, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:04:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (157, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:05:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (158, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:06:01', NULL, NULL);
INSERT INTO `loglogin` VALUES (159, '1193748', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:06:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (160, '1153216', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-27 10:14:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (161, '1122050', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-27 10:16:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (162, '1193748', '192.168.112.208', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 10:44:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (163, '1193726', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-27 10:50:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (164, '1153216', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-27 11:13:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (165, '1193726', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 12:03:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (166, '1122050', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-27 12:04:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (167, '1153216', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; Mi Note 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.82 Mobile Safari/537.36', '2021-04-27 14:46:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (168, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', '2021-05-07 15:31:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (169, '1193814', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-05-07 17:05:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (170, '1153013', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', '2021-05-07 17:05:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (171, '1132605', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', '2021-05-07 17:11:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (172, '1153026', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', '2021-05-07 17:30:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (173, '1121997', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2021-05-07 18:21:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (174, '1193814', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-05-10 14:06:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (175, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '2021-05-25 14:39:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (176, '1193726', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '2021-05-25 14:44:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (177, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '2021-05-25 14:44:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (178, '1193814', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-05-25 17:00:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (179, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-05-28 09:14:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (180, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-05-31 11:15:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (181, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-07 14:51:15', NULL, NULL);
INSERT INTO `loglogin` VALUES (182, '1132287', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-07 14:52:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (183, '1121997', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', '2021-06-07 19:23:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (184, '1153191', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1', '2021-06-09 11:21:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (185, '1111788', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Mobile/15E148 Safari/604.1', '2021-06-09 11:22:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (186, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-11 16:13:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (187, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-11 20:51:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (188, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-15 08:26:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (189, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-16 08:51:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (190, '1000149', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; vivo 1938; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/7.7.0.1', '2021-06-16 15:10:01', NULL, NULL);
INSERT INTO `loglogin` VALUES (191, '1000149', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-16 15:16:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (192, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-16 16:49:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (193, '1132605', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-16 17:46:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (194, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 08:58:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (195, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-17 11:10:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (196, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-17 11:14:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (197, '1173426', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 9; en-us; Redmi Note 5 Build/PKQ1.180904.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.147 M', '2021-06-17 11:39:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (198, '1091594', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 11:39:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (199, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-17 11:42:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (200, '1111829', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 11; en-gb; Redmi Note 10S Build/RP1A.200720.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.14', '2021-06-17 11:42:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (201, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-17 11:43:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (202, '1132411', '192.168.100.101', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0', '2021-06-17 11:44:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (203, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-17 11:45:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (204, '1152949', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 11:53:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (205, '1132200', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 9; CPH2015) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.101 Mobile Safari/537.36', '2021-06-17 11:54:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (206, '1132637', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 9; SM-A105G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-17 12:05:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (207, '1142806', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 12:06:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (208, '1142845', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 12:06:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (209, '1152942', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 10; en-gb; Redmi Note 9 Pro Build/QKQ1.191215.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.', '2021-06-17 12:09:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (210, '1121978', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 11; CPH2113) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-17 12:10:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (211, '1152942', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 9 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-17 12:11:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (212, '1153040', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; CPH1823) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-17 12:12:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (213, '1132636', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; LYA-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-17 12:26:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (214, '1132407', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 10; id-id; Redmi Note 8 Pro Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.', '2021-06-17 12:29:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (215, '1142735', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 12:30:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (216, '1153162', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-17 12:31:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (217, '1153162', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.86 Mobile Safari/537.36', '2021-06-17 12:32:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (218, '1132409', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-17 12:34:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (219, '1132408', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 9; id-id; Redmi Note 8 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 M', '2021-06-17 12:34:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (220, '1132409', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-17 12:35:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (221, '1153003', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-17 12:48:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (222, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-17 13:15:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (223, '1153199', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 13:32:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (224, '1153090', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-17 13:56:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (225, '1000083', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0', '2021-06-17 15:57:14', NULL, NULL);
INSERT INTO `loglogin` VALUES (226, '1111788', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-17 16:53:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (227, '1193702', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-17 16:54:01', NULL, NULL);
INSERT INTO `loglogin` VALUES (228, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-17 17:11:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (229, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-17 18:39:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (230, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-18 09:12:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (231, '1132639', '192.168.100.101', 'Mozilla/5.0 (Linux; U; Android 10; en-us; CPH1823 Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/77.0.3865.116 Mobil', '2021-06-18 11:00:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (232, '1193702', '192.168.100.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-20 17:51:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (233, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 08:54:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (234, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-21 10:37:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (235, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:01:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (236, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 12:05:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (237, '1122091', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 12:11:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (238, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 12:12:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (239, '1122091', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 12:15:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (240, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 12:16:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (241, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:27:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (242, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:29:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (243, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-21 12:30:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (244, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:31:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (245, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:40:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (246, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:42:41', NULL, NULL);
INSERT INTO `loglogin` VALUES (247, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:43:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (248, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:45:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (249, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:47:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (250, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:48:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (251, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:51:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (252, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:53:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (253, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 12:54:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (254, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-21 12:57:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (255, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-21 12:59:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (256, '1142806', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:07:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (257, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:08:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (258, '1111829', '192.168.100.101', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-21 13:09:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (259, '1071334', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-21 13:12:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (260, '1173426', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:21:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (261, '1111829', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-06-21 13:21:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (262, '1183641', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:22:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (263, '1132605', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', '2021-06-21 13:24:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (264, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-21 13:24:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (265, '1142737', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:24:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (266, '1153090', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-21 13:25:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (267, '1153087', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-21 13:25:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (268, '1142809', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-21 13:31:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (269, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 13:31:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (270, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 13:38:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (271, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 OPR/76.0.4017.177', '2021-06-21 13:41:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (272, '1142845', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:50:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (273, '1142735', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:51:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (274, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-21 13:51:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (275, '1183642', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 13:55:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (276, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-21 14:45:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (277, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-21 15:54:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (278, '1193748', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', '2021-06-21 20:35:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (279, '1193748', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-21 20:49:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (280, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-22 08:57:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (281, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-22 10:16:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (282, '1193771', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; ELS-NX9; HMSCore 5.3.0.312; GMSCore 21.21.16) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 HuaweiBrowse', '2021-06-22 14:07:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (283, '1193771', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; ELS-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-22 14:09:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (284, '1193771', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-22 14:12:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (285, '1183653', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-22 16:40:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (286, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-23 09:22:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (287, '1142884', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; SAMSUNG SM-A605G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.0 Chrome/87.0.4280.141 Mobile Safari/537.36', '2021-06-23 10:05:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (288, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-23 10:11:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (289, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:23:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (290, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:32:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (291, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:35:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (292, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 10:36:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (293, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 10:36:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (294, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:38:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (295, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 10:44:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (296, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:44:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (297, '1153191', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:49:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (298, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 10:50:15', NULL, NULL);
INSERT INTO `loglogin` VALUES (299, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 11:10:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (300, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 11:20:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (301, '1193751', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 11:24:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (302, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-23 11:24:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (303, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 11:27:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (304, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 11:28:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (305, '1142855', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-06-23 11:31:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (306, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 11:44:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (307, '6231198', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Mobile Safari/537.36', '2021-06-23 11:44:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (308, '6231979', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Mobile Safari/537.36', '2021-06-23 11:45:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (309, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 11:48:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (310, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 11:56:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (311, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-06-23 12:01:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (312, '6231979', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; SM-A505F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36', '2021-06-23 12:01:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (313, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 12:03:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (314, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 12:39:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (315, '1183554', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-23 12:39:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (316, '1193741', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 13:20:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (317, '1193762', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 13:21:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (318, '1193764', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 13:22:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (319, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 13:23:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (320, '1193741', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-23 13:43:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (321, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-23 14:09:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (322, '6221303', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1', '2021-06-23 21:16:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (323, '6221303', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 21:17:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (324, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-23 21:28:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (325, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-24 09:12:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (326, '1193771', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-24 10:11:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (327, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-24 10:37:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (328, '1142884', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; SM-A605G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-24 11:38:41', NULL, NULL);
INSERT INTO `loglogin` VALUES (329, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-24 15:12:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (330, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-24 15:51:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (331, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-24 16:03:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (332, '6231865', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-24 16:08:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (333, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-24 16:09:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (334, '1142884', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 10; SM-A605G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Mobile Safari/537.36', '2021-06-25 08:13:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (335, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-25 08:18:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (336, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-25 08:34:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (337, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-25 16:25:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (338, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-25 17:03:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (339, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-25 17:49:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (340, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-25 20:28:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (341, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-26 15:22:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (342, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-26 15:40:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (343, '1153103', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-26 19:45:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (344, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-28 10:10:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (345, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-28 10:22:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (346, '1193761', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1', '2021-06-28 11:42:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (347, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-28 14:42:36', NULL, NULL);
INSERT INTO `loglogin` VALUES (348, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-28 15:24:43', NULL, NULL);
INSERT INTO `loglogin` VALUES (349, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-06-28 16:53:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (350, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0', '2021-06-28 18:02:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (351, '1193755', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', '2021-06-28 18:11:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (352, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-28 18:48:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (353, '1193761', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-28 19:11:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (354, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-29 09:32:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (355, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-29 12:49:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (356, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-29 15:35:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (357, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-29 16:40:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (358, '1121983', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1716 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.3', '2021-06-29 18:32:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (359, '1121983', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1716 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.3', '2021-06-29 18:33:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (360, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-29 19:32:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (361, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-30 07:03:04', NULL, NULL);
INSERT INTO `loglogin` VALUES (362, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-06-30 10:36:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (363, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-06-30 16:30:41', NULL, NULL);
INSERT INTO `loglogin` VALUES (364, '1173448', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-01 19:59:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (365, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-02 10:13:55', NULL, NULL);
INSERT INTO `loglogin` VALUES (366, '1153010', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36', '2021-07-02 10:34:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (367, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-02 11:17:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (368, '1183642', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-07-02 12:25:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (369, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-02 14:08:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (370, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-02 14:32:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (371, '1173448', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-02 16:34:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (372, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-02 16:45:17', NULL, NULL);
INSERT INTO `loglogin` VALUES (373, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-02 17:06:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (374, '1142826', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 6.0.1; SAMSUNG SM-A520F Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/8.2 Chrome/63.0.3239.111 Mobil', '2021-07-03 10:56:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (375, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-03 11:29:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (376, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-03 12:51:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (377, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-03 12:58:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (378, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-03 16:30:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (379, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-05 08:10:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (380, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-05 10:24:01', NULL, NULL);
INSERT INTO `loglogin` VALUES (381, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-05 10:30:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (382, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-05 17:01:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (383, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-05 17:25:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (384, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-05 20:19:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (385, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-06 13:09:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (386, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-06 14:27:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (387, '1153000', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', '2021-07-06 15:07:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (388, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-06 15:16:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (389, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-06 15:18:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (390, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 09:26:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (391, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 11:11:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (392, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 11:43:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (393, '6231198', '192.168.100.101', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', '2021-07-07 11:48:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (394, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-07 12:30:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (395, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-07 13:12:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (396, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 13:34:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (397, '1153010', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-07 17:34:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (398, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 18:59:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (399, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-07 19:35:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (400, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-08 09:14:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (401, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-08 10:14:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (402, '1153010', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-08 11:47:10', NULL, NULL);
INSERT INTO `loglogin` VALUES (403, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-08 13:04:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (404, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-08 14:52:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (405, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-08 15:12:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (406, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-09 12:12:54', NULL, NULL);
INSERT INTO `loglogin` VALUES (407, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-09 12:15:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (408, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-09 16:12:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (409, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-09 17:03:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (410, '1183642', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-09 19:29:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (411, '1183642', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-10 22:13:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (412, '1183642', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-12 10:46:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (413, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-07-12 11:08:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (414, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-12 12:01:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (415, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-12 12:12:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (416, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-12 16:56:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (417, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-12 20:01:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (418, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-13 10:10:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (419, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-13 12:02:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (420, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-13 13:37:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (421, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-13 14:21:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (422, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-13 15:58:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (423, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-14 08:25:11', NULL, NULL);
INSERT INTO `loglogin` VALUES (424, '6231865', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-14 10:49:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (425, '6231200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-14 10:51:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (426, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-14 12:41:48', NULL, NULL);
INSERT INTO `loglogin` VALUES (427, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-14 14:10:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (428, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-14 20:17:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (429, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-15 10:11:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (430, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-15 10:39:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (431, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-07-15 12:01:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (432, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-15 12:10:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (433, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-15 12:12:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (434, '6231200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-15 12:12:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (435, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-15 12:43:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (436, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-15 14:29:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (437, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-15 15:11:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (438, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-16 10:50:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (439, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-16 12:25:56', NULL, NULL);
INSERT INTO `loglogin` VALUES (440, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-16 13:17:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (441, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-07-16 14:26:41', NULL, NULL);
INSERT INTO `loglogin` VALUES (442, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-07-16 14:32:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (443, '1061248', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-16 14:41:16', NULL, NULL);
INSERT INTO `loglogin` VALUES (444, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-16 15:27:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (445, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-07-18 22:15:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (446, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-19 10:22:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (447, '6231200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', '2021-07-19 10:36:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (448, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-21 08:27:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (449, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-21 09:40:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (450, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-21 12:26:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (451, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-21 12:42:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (452, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-21 13:25:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (453, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', '2021-07-22 12:02:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (454, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-07-22 15:44:33', NULL, NULL);
INSERT INTO `loglogin` VALUES (455, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-22 20:25:40', NULL, NULL);
INSERT INTO `loglogin` VALUES (456, '6231200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-07-23 12:59:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (457, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-26 09:18:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (458, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2021-07-26 10:29:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (459, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', '2021-07-26 15:33:25', NULL, NULL);
INSERT INTO `loglogin` VALUES (460, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-26 18:22:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (461, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-27 00:11:02', NULL, NULL);
INSERT INTO `loglogin` VALUES (462, '1142826', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 6.0.1; SAMSUNG SM-A520F Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/8.2 Chrome/63.0.3239.111 Mobil', '2021-07-27 09:04:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (463, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-27 09:22:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (464, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-07-27 11:08:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (465, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-27 11:16:38', NULL, NULL);
INSERT INTO `loglogin` VALUES (466, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-27 13:34:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (467, '1142826', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 6.0.1; SAMSUNG SM-A520F Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/8.2 Chrome/63.0.3239.111 Mobil', '2021-07-27 13:57:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (468, '1153000', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2021-07-27 16:07:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (469, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-28 11:11:13', NULL, NULL);
INSERT INTO `loglogin` VALUES (470, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-28 16:26:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (471, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-07-29 09:24:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (472, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-07-30 11:25:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (473, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-07-30 12:58:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (474, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-02 08:57:53', NULL, NULL);
INSERT INTO `loglogin` VALUES (475, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-08-02 15:14:27', NULL, NULL);
INSERT INTO `loglogin` VALUES (476, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-03 12:12:15', NULL, NULL);
INSERT INTO `loglogin` VALUES (477, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-08-03 12:13:47', NULL, NULL);
INSERT INTO `loglogin` VALUES (478, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-08-03 15:22:23', NULL, NULL);
INSERT INTO `loglogin` VALUES (479, '1183556', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-03 16:15:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (480, '1153000', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-08-03 16:58:15', NULL, NULL);
INSERT INTO `loglogin` VALUES (481, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-03 19:43:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (482, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-04 11:24:31', NULL, NULL);
INSERT INTO `loglogin` VALUES (483, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-08-04 13:54:00', NULL, NULL);
INSERT INTO `loglogin` VALUES (484, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-08-04 15:26:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (485, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-05 10:37:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (486, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', '2021-08-05 14:08:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (487, '1132256', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-05 15:26:32', NULL, NULL);
INSERT INTO `loglogin` VALUES (488, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-06 10:23:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (489, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-06 11:14:14', NULL, NULL);
INSERT INTO `loglogin` VALUES (490, '6221303', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0', '2021-08-06 14:23:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (491, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-06 17:17:06', NULL, NULL);
INSERT INTO `loglogin` VALUES (492, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-06 17:57:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (493, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-06 17:58:42', NULL, NULL);
INSERT INTO `loglogin` VALUES (494, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0', '2021-08-06 18:07:22', NULL, NULL);
INSERT INTO `loglogin` VALUES (495, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-07 17:19:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (496, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-09 11:27:24', NULL, NULL);
INSERT INTO `loglogin` VALUES (497, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '2021-08-09 13:33:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (498, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', '2021-08-09 14:36:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (499, '1173426', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-09 16:00:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (500, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-09 17:29:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (501, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', '2021-08-10 11:06:29', NULL, NULL);
INSERT INTO `loglogin` VALUES (502, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-10 12:09:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (503, '1183636', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-10 13:58:15', NULL, NULL);
INSERT INTO `loglogin` VALUES (504, '1153216', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-10 14:19:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (505, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-08-10 15:50:14', NULL, NULL);
INSERT INTO `loglogin` VALUES (506, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-10 16:15:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (507, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-11 02:36:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (508, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-11 13:16:05', NULL, NULL);
INSERT INTO `loglogin` VALUES (509, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-11 15:05:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (510, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-11 18:47:35', NULL, NULL);
INSERT INTO `loglogin` VALUES (511, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-11 22:07:08', NULL, NULL);
INSERT INTO `loglogin` VALUES (512, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', '2021-08-12 14:00:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (513, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', '2021-08-12 14:02:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (514, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-12 15:08:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (515, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-12 22:56:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (516, '1193825', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36 Edg/92.0.902.67', '2021-08-13 12:17:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (517, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-16 11:45:49', NULL, NULL);
INSERT INTO `loglogin` VALUES (518, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-08-16 12:08:26', NULL, NULL);
INSERT INTO `loglogin` VALUES (519, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-16 22:38:52', NULL, NULL);
INSERT INTO `loglogin` VALUES (520, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-18 13:24:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (521, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '2021-08-18 13:40:07', NULL, NULL);
INSERT INTO `loglogin` VALUES (522, '1183653', '192.168.100.101', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00QD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Mobile Safari/537.36', '2021-08-18 17:06:46', NULL, NULL);
INSERT INTO `loglogin` VALUES (523, '1183653', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-18 17:22:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (524, '1122082', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-18 17:37:44', NULL, NULL);
INSERT INTO `loglogin` VALUES (525, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-08-19 09:28:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (526, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-19 10:59:21', NULL, NULL);
INSERT INTO `loglogin` VALUES (527, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-19 11:08:30', NULL, NULL);
INSERT INTO `loglogin` VALUES (528, '1173426', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-19 14:36:57', NULL, NULL);
INSERT INTO `loglogin` VALUES (529, '1111788', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', '2021-08-19 14:47:12', NULL, NULL);
INSERT INTO `loglogin` VALUES (530, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-19 17:11:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (531, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-19 18:44:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (532, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-21 11:26:18', NULL, NULL);
INSERT INTO `loglogin` VALUES (533, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-23 20:55:14', NULL, NULL);
INSERT INTO `loglogin` VALUES (534, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-23 21:21:20', NULL, NULL);
INSERT INTO `loglogin` VALUES (535, '1153000', '192.168.100.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', '2021-08-24 09:40:59', NULL, NULL);
INSERT INTO `loglogin` VALUES (536, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-24 11:00:37', NULL, NULL);
INSERT INTO `loglogin` VALUES (537, '1142826', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-24 11:23:45', NULL, NULL);
INSERT INTO `loglogin` VALUES (538, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-24 11:55:58', NULL, NULL);
INSERT INTO `loglogin` VALUES (539, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-24 12:12:39', NULL, NULL);
INSERT INTO `loglogin` VALUES (540, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-25 10:17:50', NULL, NULL);
INSERT INTO `loglogin` VALUES (541, '6231198', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-25 12:28:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (542, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-25 15:43:51', NULL, NULL);
INSERT INTO `loglogin` VALUES (543, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-25 22:23:19', NULL, NULL);
INSERT INTO `loglogin` VALUES (544, '1193755', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-25 23:00:34', NULL, NULL);
INSERT INTO `loglogin` VALUES (545, '1132200', '192.168.100.101', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-26 08:41:03', NULL, NULL);
INSERT INTO `loglogin` VALUES (546, '1193755', '192.168.112.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-08-26 11:33:09', NULL, NULL);
INSERT INTO `loglogin` VALUES (547, '1142884', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-26 11:59:28', NULL, NULL);
INSERT INTO `loglogin` VALUES (548, '6231979', '192.168.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-26 14:29:20', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tab_department
-- ----------------------------
DROP TABLE IF EXISTS `tab_department`;
CREATE TABLE `tab_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_department
-- ----------------------------
BEGIN;
INSERT INTO `tab_department` VALUES (1, 'ACCOUNTING & TAX');
INSERT INTO `tab_department` VALUES (2, 'ADMIN SUPPORT IDM');
INSERT INTO `tab_department` VALUES (3, 'BOD');
INSERT INTO `tab_department` VALUES (4, 'BUDGET CONTROL');
INSERT INTO `tab_department` VALUES (5, 'COLLECTION');
INSERT INTO `tab_department` VALUES (6, 'CONTENT & DEV');
INSERT INTO `tab_department` VALUES (7, 'CONTENT & KNOWLEDGE MANAGEMENT');
INSERT INTO `tab_department` VALUES (8, 'CONTENT NETWORKING OTHERS');
INSERT INTO `tab_department` VALUES (9, 'CORPORATE');
INSERT INTO `tab_department` VALUES (10, 'CORPORATE COMMUNICATION & PR');
INSERT INTO `tab_department` VALUES (11, 'CREATIVE & SOCIAL MEDIA');
INSERT INTO `tab_department` VALUES (12, 'CREATIVE DEVELOPMENT IDM');
INSERT INTO `tab_department` VALUES (13, 'CREATIVE IDM OTHERS');
INSERT INTO `tab_department` VALUES (14, 'CREATIVE MEDCOM');
INSERT INTO `tab_department` VALUES (15, 'DIGITAL CREATIVE CONTENT OTHERS');
INSERT INTO `tab_department` VALUES (16, 'DIGITAL LIBRARY CENTER');
INSERT INTO `tab_department` VALUES (17, 'DIGITAL LIBRARY CENTER');
INSERT INTO `tab_department` VALUES (18, 'DIGITAL MARKETING MEDCOM');
INSERT INTO `tab_department` VALUES (19, 'DIGITAL PROMOTION');
INSERT INTO `tab_department` VALUES (20, 'EAGLE INSTITUTE');
INSERT INTO `tab_department` VALUES (21, 'ENGINEERING');
INSERT INTO `tab_department` VALUES (22, 'ENGINEERING');
INSERT INTO `tab_department` VALUES (23, 'FIN & ACC IDM');
INSERT INTO `tab_department` VALUES (24, 'FIN & ACC OTHERS');
INSERT INTO `tab_department` VALUES (25, 'FINANCE');
INSERT INTO `tab_department` VALUES (26, 'FINANCE MEDCOM');
INSERT INTO `tab_department` VALUES (27, 'GA IDM');
INSERT INTO `tab_department` VALUES (28, 'GENERAL AFFAIR');
INSERT INTO `tab_department` VALUES (29, 'GENERAL AFFAIRS');
INSERT INTO `tab_department` VALUES (30, 'GENERAL AFFAIRS');
INSERT INTO `tab_department` VALUES (31, 'GENERAL AFFAIRS & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (32, 'GRAPHIC CONTENT');
INSERT INTO `tab_department` VALUES (33, 'GRAPHIC DEV');
INSERT INTO `tab_department` VALUES (34, 'GRAPHICS');
INSERT INTO `tab_department` VALUES (35, 'HR & GA MTI');
INSERT INTO `tab_department` VALUES (36, 'HR & LEGAL');
INSERT INTO `tab_department` VALUES (37, 'HR EMPLOYMENT');
INSERT INTO `tab_department` VALUES (38, 'HR IDM');
INSERT INTO `tab_department` VALUES (39, 'HR MEDCOM');
INSERT INTO `tab_department` VALUES (40, 'HUMAN RESOURCES DEVELOPMENT');
INSERT INTO `tab_department` VALUES (41, 'HUMAN RESOURCES MANAGEMENT');
INSERT INTO `tab_department` VALUES (42, 'INDEPTH REPORTING & NON BULLETIN');
INSERT INTO `tab_department` VALUES (43, 'INDEPTH REPORTING & NON BULLETIN');
INSERT INTO `tab_department` VALUES (44, 'INDOCATEER');
INSERT INTO `tab_department` VALUES (45, 'IT INFRASTRUCTURE');
INSERT INTO `tab_department` VALUES (46, 'IT INFRASTRUCTURE');
INSERT INTO `tab_department` VALUES (47, 'IT OFFICE & BROADCAST SUPPORT');
INSERT INTO `tab_department` VALUES (48, 'IT OPERATIONAL');
INSERT INTO `tab_department` VALUES (49, 'IT OPERATIONS MEDCOM');
INSERT INTO `tab_department` VALUES (50, 'IT PROJECT');
INSERT INTO `tab_department` VALUES (51, 'LEARNING & DEVELOPMENT');
INSERT INTO `tab_department` VALUES (52, 'LEGAL');
INSERT INTO `tab_department` VALUES (53, 'LEGAL MEDCOM');
INSERT INTO `tab_department` VALUES (54, 'LOGISTIC');
INSERT INTO `tab_department` VALUES (55, 'LOGISTIC & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (56, 'LOGISTIC & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (57, 'M.I.C.E & SPECIAL EVENTS IDM');
INSERT INTO `tab_department` VALUES (58, 'MAINTENANCE');
INSERT INTO `tab_department` VALUES (59, 'MAINTENANCE & LOGISTIC MTI');
INSERT INTO `tab_department` VALUES (60, 'MAINTENANCE TRANSMISSION');
INSERT INTO `tab_department` VALUES (61, 'MARKETING');
INSERT INTO `tab_department` VALUES (62, 'MARKETING PLANNING & RESEARCH');
INSERT INTO `tab_department` VALUES (63, 'MARKETING TOOLS & CREATIVE');
INSERT INTO `tab_department` VALUES (64, 'MCR');
INSERT INTO `tab_department` VALUES (65, 'MCR');
INSERT INTO `tab_department` VALUES (66, 'ME & BUILDING MANAGEMENT');
INSERT INTO `tab_department` VALUES (67, 'MEDIA ACADEMY');
INSERT INTO `tab_department` VALUES (68, 'MEDIA GROUP NEWS');
INSERT INTO `tab_department` VALUES (69, 'MEDIA INDONESIA');
INSERT INTO `tab_department` VALUES (70, 'MEDIA PARTNERSHIP');
INSERT INTO `tab_department` VALUES (71, 'MEDIA SERVICE');
INSERT INTO `tab_department` VALUES (72, 'MIS');
INSERT INTO `tab_department` VALUES (73, 'MIS');
INSERT INTO `tab_department` VALUES (74, 'NEWS CONTENT ENRICHMENT');
INSERT INTO `tab_department` VALUES (75, 'NEWS ENT & SPORT MEDCOM');
INSERT INTO `tab_department` VALUES (76, 'NEWS ENT & SPORT MEDCOM');
INSERT INTO `tab_department` VALUES (77, 'NEWS GATHERING');
INSERT INTO `tab_department` VALUES (78, 'NEWS GATHERING MEDCOM');
INSERT INTO `tab_department` VALUES (79, 'NEWS MEDCOM');
INSERT INTO `tab_department` VALUES (80, 'NEWS OTHERS');
INSERT INTO `tab_department` VALUES (81, 'NEWS PRODUCTION BULLETIN');
INSERT INTO `tab_department` VALUES (82, 'NEWS PRODUCTION MEDCOM');
INSERT INTO `tab_department` VALUES (83, 'NEWS PRODUCTION MEDCOM OTHR');
INSERT INTO `tab_department` VALUES (84, 'NEWS PRODUCTION NON BULETIN');
INSERT INTO `tab_department` VALUES (85, 'NEWS RESEARCH CENTER');
INSERT INTO `tab_department` VALUES (86, 'NEWS SECRETARIAT');
INSERT INTO `tab_department` VALUES (87, 'NEWS SECRETARIAT MEDCOM');
INSERT INTO `tab_department` VALUES (88, 'NEWS SERVICES');
INSERT INTO `tab_department` VALUES (89, 'NEWS TV SUPP & SOCMED MEDCOM');
INSERT INTO `tab_department` VALUES (90, 'OPERATIONS');
INSERT INTO `tab_department` VALUES (91, 'OTHERS');
INSERT INTO `tab_department` VALUES (92, 'PARTNERSHIP & SPONSORSHIP IDM');
INSERT INTO `tab_department` VALUES (93, 'PODME');
INSERT INTO `tab_department` VALUES (94, 'PROD & CREATIVE IDM OTHERS');
INSERT INTO `tab_department` VALUES (95, 'PROD & DEV OTHERS');
INSERT INTO `tab_department` VALUES (96, 'PRODUCTION & CREATIVE');
INSERT INTO `tab_department` VALUES (97, 'PRODUCTION IDM OTHERS');
INSERT INTO `tab_department` VALUES (98, 'PRODUCTION NON NEWS');
INSERT INTO `tab_department` VALUES (99, 'PROGRAMMING OPERATION & SCHEDULLING');
INSERT INTO `tab_department` VALUES (100, 'PROJECT');
INSERT INTO `tab_department` VALUES (101, 'PROJECT & SNG');
INSERT INTO `tab_department` VALUES (102, 'PROJECT DEVELOPMENT MTI');
INSERT INTO `tab_department` VALUES (103, 'PROJECT IDM');
INSERT INTO `tab_department` VALUES (104, 'PROJECT MEDCOM');
INSERT INTO `tab_department` VALUES (105, 'PROJECT TRANSMISSION & SNG');
INSERT INTO `tab_department` VALUES (106, 'PROMOTION');
INSERT INTO `tab_department` VALUES (107, 'PROMOTION');
INSERT INTO `tab_department` VALUES (108, 'PURCHASING');
INSERT INTO `tab_department` VALUES (109, 'REPORTING & SYSTEM');
INSERT INTO `tab_department` VALUES (110, 'S & M OTHERS');
INSERT INTO `tab_department` VALUES (111, 'SALES');
INSERT INTO `tab_department` VALUES (112, 'SALES & MARKETING IDM');
INSERT INTO `tab_department` VALUES (113, 'SALES & MARKETING OTHERS');
INSERT INTO `tab_department` VALUES (114, 'SALES 1');
INSERT INTO `tab_department` VALUES (115, 'SALES 10 (NON AIRING)');
INSERT INTO `tab_department` VALUES (116, 'SALES 2');
INSERT INTO `tab_department` VALUES (117, 'SALES 3');
INSERT INTO `tab_department` VALUES (118, 'SALES 4');
INSERT INTO `tab_department` VALUES (119, 'SALES 5');
INSERT INTO `tab_department` VALUES (120, 'SALES 6');
INSERT INTO `tab_department` VALUES (121, 'SALES 7');
INSERT INTO `tab_department` VALUES (122, 'SALES 8');
INSERT INTO `tab_department` VALUES (123, 'SALES 9 (CSR & PARTNERSHIP)');
INSERT INTO `tab_department` VALUES (124, 'SALES ADMIN IDM');
INSERT INTO `tab_department` VALUES (125, 'SALES ADMINISTRATION SUPPORT');
INSERT INTO `tab_department` VALUES (126, 'SALES MEDCOM');
INSERT INTO `tab_department` VALUES (127, 'SALES MEDIA INDONESIA');
INSERT INTO `tab_department` VALUES (128, 'SALES ONLINE');
INSERT INTO `tab_department` VALUES (129, 'SCM');
INSERT INTO `tab_department` VALUES (130, 'SEKRETARIAT MTI');
INSERT INTO `tab_department` VALUES (131, 'SPECIAL PROJECT');
INSERT INTO `tab_department` VALUES (132, 'STRATEGIC PROGRAMMING');
INSERT INTO `tab_department` VALUES (133, 'SURABAYA - SATU');
INSERT INTO `tab_department` VALUES (134, 'SYSTEM & PROCEDURE');
INSERT INTO `tab_department` VALUES (135, 'TALENT');
INSERT INTO `tab_department` VALUES (136, 'TECHNICAL & SERVICE SUPPORT IDM');
INSERT INTO `tab_department` VALUES (137, 'TECHNICAL OPERATION');
INSERT INTO `tab_department` VALUES (138, 'TECHNICAL OPERATION');
INSERT INTO `tab_department` VALUES (139, 'TRADING');
INSERT INTO `tab_department` VALUES (140, 'TRAFFIC');
INSERT INTO `tab_department` VALUES (141, 'TRANSMISSION');
INSERT INTO `tab_department` VALUES (142, 'TRANSMISSION JKT MTI');
INSERT INTO `tab_department` VALUES (143, 'TRANSMISSION OPERATION MTI');
INSERT INTO `tab_department` VALUES (144, 'TV JARINGAN MTI');
INSERT INTO `tab_department` VALUES (145, 'VIDEO PRODUCTION & GRAPHIC IDM');
INSERT INTO `tab_department` VALUES (146, 'VIDEO PRODUCTION MEDCOM');
INSERT INTO `tab_department` VALUES (147, 'WEB DESIGN');
INSERT INTO `tab_department` VALUES (148, 'WEB DESIGN');
INSERT INTO `tab_department` VALUES (149, 'ACCOUNTING & TAX');
INSERT INTO `tab_department` VALUES (150, 'ADMIN SUPPORT IDM');
INSERT INTO `tab_department` VALUES (151, 'BOD');
INSERT INTO `tab_department` VALUES (152, 'BUDGET CONTROL');
INSERT INTO `tab_department` VALUES (153, 'COLLECTION');
INSERT INTO `tab_department` VALUES (154, 'CONTENT & DEV');
INSERT INTO `tab_department` VALUES (155, 'CONTENT & KNOWLEDGE MANAGEMENT');
INSERT INTO `tab_department` VALUES (156, 'CONTENT NETWORKING OTHERS');
INSERT INTO `tab_department` VALUES (157, 'CORPORATE');
INSERT INTO `tab_department` VALUES (158, 'CORPORATE COMMUNICATION & PR');
INSERT INTO `tab_department` VALUES (159, 'CREATIVE & SOCIAL MEDIA');
INSERT INTO `tab_department` VALUES (160, 'CREATIVE DEVELOPMENT IDM');
INSERT INTO `tab_department` VALUES (161, 'CREATIVE IDM OTHERS');
INSERT INTO `tab_department` VALUES (162, 'CREATIVE MEDCOM');
INSERT INTO `tab_department` VALUES (163, 'DIGITAL CREATIVE CONTENT OTHERS');
INSERT INTO `tab_department` VALUES (164, 'DIGITAL LIBRARY CENTER');
INSERT INTO `tab_department` VALUES (165, 'DIGITAL LIBRARY CENTER');
INSERT INTO `tab_department` VALUES (166, 'DIGITAL MARKETING MEDCOM');
INSERT INTO `tab_department` VALUES (167, 'DIGITAL PROMOTION');
INSERT INTO `tab_department` VALUES (168, 'EAGLE INSTITUTE');
INSERT INTO `tab_department` VALUES (169, 'ENGINEERING');
INSERT INTO `tab_department` VALUES (170, 'ENGINEERING');
INSERT INTO `tab_department` VALUES (171, 'FIN & ACC IDM');
INSERT INTO `tab_department` VALUES (172, 'FIN & ACC OTHERS');
INSERT INTO `tab_department` VALUES (173, 'FINANCE');
INSERT INTO `tab_department` VALUES (174, 'FINANCE MEDCOM');
INSERT INTO `tab_department` VALUES (175, 'GA IDM');
INSERT INTO `tab_department` VALUES (176, 'GENERAL AFFAIR');
INSERT INTO `tab_department` VALUES (177, 'GENERAL AFFAIRS');
INSERT INTO `tab_department` VALUES (178, 'GENERAL AFFAIRS');
INSERT INTO `tab_department` VALUES (179, 'GENERAL AFFAIRS & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (180, 'GRAPHIC CONTENT');
INSERT INTO `tab_department` VALUES (181, 'GRAPHIC DEV');
INSERT INTO `tab_department` VALUES (182, 'GRAPHICS');
INSERT INTO `tab_department` VALUES (183, 'HR & GA MTI');
INSERT INTO `tab_department` VALUES (184, 'HR & LEGAL');
INSERT INTO `tab_department` VALUES (185, 'HR EMPLOYMENT');
INSERT INTO `tab_department` VALUES (186, 'HR IDM');
INSERT INTO `tab_department` VALUES (187, 'HR MEDCOM');
INSERT INTO `tab_department` VALUES (188, 'HUMAN RESOURCES DEVELOPMENT');
INSERT INTO `tab_department` VALUES (189, 'HUMAN RESOURCES MANAGEMENT');
INSERT INTO `tab_department` VALUES (190, 'INDEPTH REPORTING & NON BULLETIN');
INSERT INTO `tab_department` VALUES (191, 'INDEPTH REPORTING & NON BULLETIN');
INSERT INTO `tab_department` VALUES (192, 'INDOCATEER');
INSERT INTO `tab_department` VALUES (193, 'IT INFRASTRUCTURE');
INSERT INTO `tab_department` VALUES (194, 'IT INFRASTRUCTURE');
INSERT INTO `tab_department` VALUES (195, 'IT OFFICE & BROADCAST SUPPORT');
INSERT INTO `tab_department` VALUES (196, 'IT OPERATIONAL');
INSERT INTO `tab_department` VALUES (197, 'IT OPERATIONS MEDCOM');
INSERT INTO `tab_department` VALUES (198, 'IT PROJECT');
INSERT INTO `tab_department` VALUES (199, 'LEARNING & DEVELOPMENT');
INSERT INTO `tab_department` VALUES (200, 'LEGAL');
INSERT INTO `tab_department` VALUES (201, 'LEGAL MEDCOM');
INSERT INTO `tab_department` VALUES (202, 'LOGISTIC');
INSERT INTO `tab_department` VALUES (203, 'LOGISTIC & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (204, 'LOGISTIC & ASSET MANAGEMENT');
INSERT INTO `tab_department` VALUES (205, 'M.I.C.E & SPECIAL EVENTS IDM');
INSERT INTO `tab_department` VALUES (206, 'MAINTENANCE');
INSERT INTO `tab_department` VALUES (207, 'MAINTENANCE & LOGISTIC MTI');
INSERT INTO `tab_department` VALUES (208, 'MAINTENANCE TRANSMISSION');
INSERT INTO `tab_department` VALUES (209, 'MARKETING');
INSERT INTO `tab_department` VALUES (210, 'MARKETING PLANNING & RESEARCH');
INSERT INTO `tab_department` VALUES (211, 'MARKETING TOOLS & CREATIVE');
INSERT INTO `tab_department` VALUES (212, 'MCR');
INSERT INTO `tab_department` VALUES (213, 'MCR');
INSERT INTO `tab_department` VALUES (214, 'ME & BUILDING MANAGEMENT');
INSERT INTO `tab_department` VALUES (215, 'MEDIA ACADEMY');
INSERT INTO `tab_department` VALUES (216, 'MEDIA GROUP NEWS');
INSERT INTO `tab_department` VALUES (217, 'MEDIA INDONESIA');
INSERT INTO `tab_department` VALUES (218, 'MEDIA PARTNERSHIP');
INSERT INTO `tab_department` VALUES (219, 'MEDIA SERVICE');
INSERT INTO `tab_department` VALUES (220, 'MIS');
INSERT INTO `tab_department` VALUES (221, 'MIS');
INSERT INTO `tab_department` VALUES (222, 'NEWS CONTENT ENRICHMENT');
INSERT INTO `tab_department` VALUES (223, 'NEWS ENT & SPORT MEDCOM');
INSERT INTO `tab_department` VALUES (224, 'NEWS ENT & SPORT MEDCOM');
INSERT INTO `tab_department` VALUES (225, 'NEWS GATHERING');
INSERT INTO `tab_department` VALUES (226, 'NEWS GATHERING MEDCOM');
INSERT INTO `tab_department` VALUES (227, 'NEWS MEDCOM');
INSERT INTO `tab_department` VALUES (228, 'NEWS OTHERS');
INSERT INTO `tab_department` VALUES (229, 'NEWS PRODUCTION BULLETIN');
INSERT INTO `tab_department` VALUES (230, 'NEWS PRODUCTION MEDCOM');
INSERT INTO `tab_department` VALUES (231, 'NEWS PRODUCTION MEDCOM OTHR');
INSERT INTO `tab_department` VALUES (232, 'NEWS PRODUCTION NON BULETIN');
INSERT INTO `tab_department` VALUES (233, 'NEWS RESEARCH CENTER');
INSERT INTO `tab_department` VALUES (234, 'NEWS SECRETARIAT');
INSERT INTO `tab_department` VALUES (235, 'NEWS SECRETARIAT MEDCOM');
INSERT INTO `tab_department` VALUES (236, 'NEWS SERVICES');
INSERT INTO `tab_department` VALUES (237, 'NEWS TV SUPP & SOCMED MEDCOM');
INSERT INTO `tab_department` VALUES (238, 'OPERATIONS');
INSERT INTO `tab_department` VALUES (239, 'OTHERS');
INSERT INTO `tab_department` VALUES (240, 'PARTNERSHIP & SPONSORSHIP IDM');
INSERT INTO `tab_department` VALUES (241, 'PODME');
INSERT INTO `tab_department` VALUES (242, 'PROD & CREATIVE IDM OTHERS');
INSERT INTO `tab_department` VALUES (243, 'PROD & DEV OTHERS');
INSERT INTO `tab_department` VALUES (244, 'PRODUCTION & CREATIVE');
INSERT INTO `tab_department` VALUES (245, 'PRODUCTION IDM OTHERS');
INSERT INTO `tab_department` VALUES (246, 'PRODUCTION NON NEWS');
INSERT INTO `tab_department` VALUES (247, 'PROGRAMMING OPERATION & SCHEDULLING');
INSERT INTO `tab_department` VALUES (248, 'PROJECT');
INSERT INTO `tab_department` VALUES (249, 'PROJECT & SNG');
INSERT INTO `tab_department` VALUES (250, 'PROJECT DEVELOPMENT MTI');
INSERT INTO `tab_department` VALUES (251, 'PROJECT IDM');
INSERT INTO `tab_department` VALUES (252, 'PROJECT MEDCOM');
INSERT INTO `tab_department` VALUES (253, 'PROJECT TRANSMISSION & SNG');
INSERT INTO `tab_department` VALUES (254, 'PROMOTION');
INSERT INTO `tab_department` VALUES (255, 'PROMOTION');
INSERT INTO `tab_department` VALUES (256, 'PURCHASING');
INSERT INTO `tab_department` VALUES (257, 'REPORTING & SYSTEM');
INSERT INTO `tab_department` VALUES (258, 'S & M OTHERS');
INSERT INTO `tab_department` VALUES (259, 'SALES');
INSERT INTO `tab_department` VALUES (260, 'SALES & MARKETING IDM');
INSERT INTO `tab_department` VALUES (261, 'SALES & MARKETING OTHERS');
INSERT INTO `tab_department` VALUES (262, 'SALES 1');
INSERT INTO `tab_department` VALUES (263, 'SALES 10 (NON AIRING)');
INSERT INTO `tab_department` VALUES (264, 'SALES 2');
INSERT INTO `tab_department` VALUES (265, 'SALES 3');
INSERT INTO `tab_department` VALUES (266, 'SALES 4');
INSERT INTO `tab_department` VALUES (267, 'SALES 5');
INSERT INTO `tab_department` VALUES (268, 'SALES 6');
INSERT INTO `tab_department` VALUES (269, 'SALES 7');
INSERT INTO `tab_department` VALUES (270, 'SALES 8');
INSERT INTO `tab_department` VALUES (271, 'SALES 9 (CSR & PARTNERSHIP)');
INSERT INTO `tab_department` VALUES (272, 'SALES ADMIN IDM');
INSERT INTO `tab_department` VALUES (273, 'SALES ADMINISTRATION SUPPORT');
INSERT INTO `tab_department` VALUES (274, 'SALES MEDCOM');
INSERT INTO `tab_department` VALUES (275, 'SALES MEDIA INDONESIA');
INSERT INTO `tab_department` VALUES (276, 'SALES ONLINE');
INSERT INTO `tab_department` VALUES (277, 'SCM');
INSERT INTO `tab_department` VALUES (278, 'SEKRETARIAT MTI');
INSERT INTO `tab_department` VALUES (279, 'SPECIAL PROJECT');
INSERT INTO `tab_department` VALUES (280, 'STRATEGIC PROGRAMMING');
INSERT INTO `tab_department` VALUES (281, 'SURABAYA - SATU');
INSERT INTO `tab_department` VALUES (282, 'SYSTEM & PROCEDURE');
INSERT INTO `tab_department` VALUES (283, 'TALENT');
INSERT INTO `tab_department` VALUES (284, 'TECHNICAL & SERVICE SUPPORT IDM');
INSERT INTO `tab_department` VALUES (285, 'TECHNICAL OPERATION');
INSERT INTO `tab_department` VALUES (286, 'TECHNICAL OPERATION');
INSERT INTO `tab_department` VALUES (287, 'TRADING');
INSERT INTO `tab_department` VALUES (288, 'TRAFFIC');
INSERT INTO `tab_department` VALUES (289, 'TRANSMISSION');
INSERT INTO `tab_department` VALUES (290, 'TRANSMISSION JKT MTI');
INSERT INTO `tab_department` VALUES (291, 'TRANSMISSION OPERATION MTI');
INSERT INTO `tab_department` VALUES (292, 'TV JARINGAN MTI');
INSERT INTO `tab_department` VALUES (293, 'VIDEO PRODUCTION & GRAPHIC IDM');
INSERT INTO `tab_department` VALUES (294, 'VIDEO PRODUCTION MEDCOM');
INSERT INTO `tab_department` VALUES (295, 'WEB DESIGN');
INSERT INTO `tab_department` VALUES (296, 'WEB DESIGN');
COMMIT;

-- ----------------------------
-- Table structure for tab_directorate
-- ----------------------------
DROP TABLE IF EXISTS `tab_directorate`;
CREATE TABLE `tab_directorate` (
  `dir_id` int(11) NOT NULL AUTO_INCREMENT,
  `dir_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dir_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_directorate
-- ----------------------------
BEGIN;
INSERT INTO `tab_directorate` VALUES (1, 'CKM');
INSERT INTO `tab_directorate` VALUES (2, 'CORPORATE');
INSERT INTO `tab_directorate` VALUES (3, 'EAGLE INSTITUTE');
INSERT INTO `tab_directorate` VALUES (4, 'FIN ADM & TS - FINANCE');
INSERT INTO `tab_directorate` VALUES (5, 'FINANCE & TECHNICAL SUPPORT-TECHNIC');
INSERT INTO `tab_directorate` VALUES (6, 'FINANCE, HR & TECHNICAL SUPPORT');
INSERT INTO `tab_directorate` VALUES (7, 'INDOCATEER');
INSERT INTO `tab_directorate` VALUES (8, 'INDONESIA MEDIA');
INSERT INTO `tab_directorate` VALUES (9, 'MEDCOM.ID');
INSERT INTO `tab_directorate` VALUES (10, 'MEDIA ACADEMY');
INSERT INTO `tab_directorate` VALUES (11, 'MEDIA GROUP NEWS');
INSERT INTO `tab_directorate` VALUES (12, 'MEDIA INDONESIA');
INSERT INTO `tab_directorate` VALUES (13, 'MEDIA LESTARI');
INSERT INTO `tab_directorate` VALUES (14, 'METRO TRANSMISI IND');
INSERT INTO `tab_directorate` VALUES (15, 'NASDEM');
INSERT INTO `tab_directorate` VALUES (16, 'NEWS');
INSERT INTO `tab_directorate` VALUES (17, 'OTHERS');
INSERT INTO `tab_directorate` VALUES (18, 'OUTSOURCING');
INSERT INTO `tab_directorate` VALUES (19, 'PRESIDENT OFFICE');
INSERT INTO `tab_directorate` VALUES (20, 'PROG & DEV');
INSERT INTO `tab_directorate` VALUES (21, 'PROJECT');
INSERT INTO `tab_directorate` VALUES (22, 'S & M');
INSERT INTO `tab_directorate` VALUES (23, 'TRAINEE');
COMMIT;

-- ----------------------------
-- Table structure for tab_division
-- ----------------------------
DROP TABLE IF EXISTS `tab_division`;
CREATE TABLE `tab_division` (
  `div_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_name` varchar(255) NOT NULL,
  PRIMARY KEY (`div_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_division
-- ----------------------------
BEGIN;
INSERT INTO `tab_division` VALUES (1, 'BOD');
INSERT INTO `tab_division` VALUES (2, 'CKM');
INSERT INTO `tab_division` VALUES (3, 'CONTENT NETWORKING');
INSERT INTO `tab_division` VALUES (4, 'CORPORATE');
INSERT INTO `tab_division` VALUES (5, 'CORPORATE COMMUNICATION & PR');
INSERT INTO `tab_division` VALUES (6, 'CREATIVE IDM');
INSERT INTO `tab_division` VALUES (7, 'DIGITAL CREATIVE CONTENT');
INSERT INTO `tab_division` VALUES (8, 'EAGLE INSTITUTE');
INSERT INTO `tab_division` VALUES (9, 'ENGINEERING');
INSERT INTO `tab_division` VALUES (10, 'ENGINEERING');
INSERT INTO `tab_division` VALUES (11, 'FIN & ACC');
INSERT INTO `tab_division` VALUES (12, 'FINANCE & ADMINISTRATION MEDCO');
INSERT INTO `tab_division` VALUES (13, 'GRAPHIC CONTENT & PROMOTION');
INSERT INTO `tab_division` VALUES (14, 'HR & LEGAL');
INSERT INTO `tab_division` VALUES (15, 'HR & LEGAL MEDCOM');
INSERT INTO `tab_division` VALUES (16, 'INDOCATEER');
INSERT INTO `tab_division` VALUES (17, 'INTERNAL CONTROL');
INSERT INTO `tab_division` VALUES (18, 'IT');
INSERT INTO `tab_division` VALUES (19, 'IT');
INSERT INTO `tab_division` VALUES (20, 'IT OPERATIONS MEDCOM');
INSERT INTO `tab_division` VALUES (21, 'MARKETING');
INSERT INTO `tab_division` VALUES (22, 'MEDIA ACADEMY');
INSERT INTO `tab_division` VALUES (23, 'MEDIA GROUP NEWS');
INSERT INTO `tab_division` VALUES (24, 'MEDIA INDONESIA');
INSERT INTO `tab_division` VALUES (25, 'METRO TRANSMISI IND');
INSERT INTO `tab_division` VALUES (26, 'NEWS BULLETIN & NON BULLETIN');
INSERT INTO `tab_division` VALUES (27, 'NEWS GATHERING MEDCOM');
INSERT INTO `tab_division` VALUES (28, 'NEWS MEDCOM');
INSERT INTO `tab_division` VALUES (29, 'NEWS PRODUCTION MEDCOM');
INSERT INTO `tab_division` VALUES (30, 'OPERATION & SUPPORT IDM');
INSERT INTO `tab_division` VALUES (31, 'OTHERS');
INSERT INTO `tab_division` VALUES (32, 'PODME');
INSERT INTO `tab_division` VALUES (33, 'PROD & DEV');
INSERT INTO `tab_division` VALUES (34, 'PRODUCTION & DEVELOPMENT');
INSERT INTO `tab_division` VALUES (35, 'PRODUCTION IDM');
INSERT INTO `tab_division` VALUES (36, 'PROG & DEV');
INSERT INTO `tab_division` VALUES (37, 'PROJECT');
INSERT INTO `tab_division` VALUES (38, 'PROJECT IDM');
INSERT INTO `tab_division` VALUES (39, 'PROJECT MEDCOM');
INSERT INTO `tab_division` VALUES (40, 'PROMOTION');
INSERT INTO `tab_division` VALUES (41, 'S & M - IDM');
INSERT INTO `tab_division` VALUES (42, 'SALES');
INSERT INTO `tab_division` VALUES (43, 'SALES & MARKETING');
INSERT INTO `tab_division` VALUES (44, 'SALES & MARKETING MEDCOM');
INSERT INTO `tab_division` VALUES (45, 'SCM');
INSERT INTO `tab_division` VALUES (46, 'SCM');
INSERT INTO `tab_division` VALUES (47, 'SUPPLY CHAIN MANAGEMENT');
INSERT INTO `tab_division` VALUES (48, 'SURABAYA - SATU');
INSERT INTO `tab_division` VALUES (49, 'TRANSMISSION');
INSERT INTO `tab_division` VALUES (50, 'TRANSMISSIONS');
INSERT INTO `tab_division` VALUES (51, 'WEB DESIGN');
COMMIT;

-- ----------------------------
-- Table structure for tab_graphic_design
-- ----------------------------
DROP TABLE IF EXISTS `tab_graphic_design`;
CREATE TABLE `tab_graphic_design` (
  `graphic_design_id` int(11) NOT NULL AUTO_INCREMENT,
  `graphic_design_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Promotion; 3 = Program Package; 4 = Calvent; 5 = Klien; 6 = Identity Planner',
  `graphic_design_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`graphic_design_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_graphic_design
-- ----------------------------
BEGIN;
INSERT INTO `tab_graphic_design` VALUES (2, 1, 'Wall Tematik', 999999, '2021-02-10 12:42:20', 999999, '2021-02-10 12:42:20');
INSERT INTO `tab_graphic_design` VALUES (3, 1, 'Infografis Data', 999999, '2021-02-10 12:42:35', 999999, '2021-02-10 12:42:35');
INSERT INTO `tab_graphic_design` VALUES (4, 1, 'Infografis Peta', 999999, '2021-02-10 12:42:44', 999999, '2021-02-10 12:42:44');
INSERT INTO `tab_graphic_design` VALUES (5, 1, 'Infografis Quotes', 999999, '2021-02-10 12:42:56', 999999, '2021-02-10 12:42:56');
INSERT INTO `tab_graphic_design` VALUES (6, 1, 'Ilustrasi Cetak', 999999, '2021-02-10 12:43:04', 999999, '2021-02-10 12:50:16');
INSERT INTO `tab_graphic_design` VALUES (7, 2, 'Print Ad Koran', 999999, '2021-02-10 12:43:16', 999999, '2021-02-10 12:43:16');
INSERT INTO `tab_graphic_design` VALUES (8, 2, 'Highlight Minggu', 999999, '2021-02-10 12:43:25', 999999, '2021-02-10 12:43:25');
INSERT INTO `tab_graphic_design` VALUES (9, 2, 'Promo Template', 999999, '2021-02-10 12:43:36', 999999, '2021-02-10 12:43:36');
INSERT INTO `tab_graphic_design` VALUES (10, 2, 'Infografis Promo', 999999, '2021-02-10 12:43:44', 999999, '2021-02-10 12:43:44');
INSERT INTO `tab_graphic_design` VALUES (11, 2, 'Ilustrasi Publishing', 999999, '2021-02-10 12:43:57', 999999, '2021-02-10 12:43:57');
INSERT INTO `tab_graphic_design` VALUES (12, 3, 'Logo Program', 999999, '2021-02-10 12:44:10', 999999, '2021-02-10 12:44:10');
INSERT INTO `tab_graphic_design` VALUES (13, 3, 'Que Card', 999999, '2021-02-10 12:44:21', 999999, '2021-02-10 12:44:21');
INSERT INTO `tab_graphic_design` VALUES (14, 4, 'Spanduk', 999999, '2021-02-10 12:44:34', 999999, '2021-02-10 12:44:34');
INSERT INTO `tab_graphic_design` VALUES (15, 4, 'Umbul Umbul', 999999, '2021-02-10 12:44:46', 999999, '2021-02-10 12:44:46');
INSERT INTO `tab_graphic_design` VALUES (16, 4, 'Backdrop', 999999, '2021-02-10 12:44:57', 999999, '2021-02-10 12:44:57');
INSERT INTO `tab_graphic_design` VALUES (17, 4, 'Digital Print Set', 999999, '2021-02-10 12:45:06', 999999, '2021-02-10 12:45:06');
INSERT INTO `tab_graphic_design` VALUES (18, 5, 'Strategic C Placement', 999999, '2021-02-10 12:45:19', 999999, '2021-02-10 12:45:19');
INSERT INTO `tab_graphic_design` VALUES (19, 6, 'Logo Corporate', 999999, '2021-02-10 12:45:29', 999999, '2021-02-10 12:45:29');
INSERT INTO `tab_graphic_design` VALUES (20, 6, 'Coporate Rebranding', 999999, '2021-02-10 12:45:40', 999999, '2021-02-10 12:45:40');
INSERT INTO `tab_graphic_design` VALUES (21, 6, 'Brand Guidelines (GSM)', 999999, '2021-02-10 12:45:53', 999999, '2021-02-10 12:45:53');
INSERT INTO `tab_graphic_design` VALUES (22, 6, 'Thumbnail Sosmed', 999999, '2021-02-10 12:46:04', 999999, '2021-02-10 12:46:04');
COMMIT;

-- ----------------------------
-- Table structure for tab_immersive
-- ----------------------------
DROP TABLE IF EXISTS `tab_immersive`;
CREATE TABLE `tab_immersive` (
  `immersive_id` int(11) NOT NULL AUTO_INCREMENT,
  `immersive_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Calvent',
  `immersive_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`immersive_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_immersive
-- ----------------------------
BEGIN;
INSERT INTO `tab_immersive` VALUES (2, 1, 'Fix Set AR', 999999, '2021-02-10 12:58:29', 999999, '2021-02-10 12:58:29');
INSERT INTO `tab_immersive` VALUES (3, 1, 'Virtual Environment', 999999, '2021-02-10 12:58:41', 999999, '2021-02-10 12:58:41');
INSERT INTO `tab_immersive` VALUES (4, 1, 'Decorative AR', 999999, '2021-02-10 12:58:50', 999999, '2021-02-10 12:58:50');
INSERT INTO `tab_immersive` VALUES (5, 1, 'Clipper AR', 999999, '2021-02-10 12:58:59', 999999, '2021-02-10 12:58:59');
INSERT INTO `tab_immersive` VALUES (6, 1, 'Fliying Camera', 999999, '2021-02-10 12:59:09', 999999, '2021-02-10 12:59:09');
INSERT INTO `tab_immersive` VALUES (7, 1, 'Aerial AR', 999999, '2021-02-10 12:59:16', 999999, '2021-02-10 12:59:16');
INSERT INTO `tab_immersive` VALUES (8, 1, 'Touchscreen AR', 999999, '2021-02-10 12:59:24', 999999, '2021-02-10 12:59:24');
INSERT INTO `tab_immersive` VALUES (9, 1, 'Virtual Set', 999999, '2021-02-10 12:59:31', 999999, '2021-02-10 12:59:31');
INSERT INTO `tab_immersive` VALUES (10, 1, 'Infografis Template', 999999, '2021-02-10 12:59:43', 999999, '2021-02-10 12:59:43');
INSERT INTO `tab_immersive` VALUES (11, 1, 'Mgn Box Maintenance', 999999, '2021-02-10 12:59:54', 999999, '2021-02-10 12:59:54');
INSERT INTO `tab_immersive` VALUES (12, 1, 'Wall Berbasis Virtual', 999999, '2021-02-10 13:00:04', 999999, '2021-02-10 13:00:04');
INSERT INTO `tab_immersive` VALUES (13, 2, 'Ambient AR', 999999, '2021-02-10 13:00:13', 999999, '2021-02-10 13:00:13');
INSERT INTO `tab_immersive` VALUES (14, 2, 'Gadget Base AR', 999999, '2021-02-10 13:00:22', 999999, '2021-02-10 13:00:22');
INSERT INTO `tab_immersive` VALUES (15, 2, 'Virtual Reality', 999999, '2021-02-10 13:00:35', 999999, '2021-02-10 13:00:35');
INSERT INTO `tab_immersive` VALUES (16, 1, 'Bugs Event', 999999, '2021-02-10 13:00:44', 999999, '2021-02-10 13:00:44');
COMMIT;

-- ----------------------------
-- Table structure for tab_infographic
-- ----------------------------
DROP TABLE IF EXISTS `tab_infographic`;
CREATE TABLE `tab_infographic` (
  `infographic_id` int(11) NOT NULL AUTO_INCREMENT,
  `infographic_type` int(11) NOT NULL COMMENT '1 = Content Enrichment; 2 = Klien',
  `infographic_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` int(11) NOT NULL,
  PRIMARY KEY (`infographic_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_infographic
-- ----------------------------
BEGIN;
INSERT INTO `tab_infographic` VALUES (1, 1, 'Infografis Data', 1193748, '2021-02-08 13:13:57', 1193748, 2021);
INSERT INTO `tab_infographic` VALUES (3, 1, 'Infografis Peta', 999999, '2021-02-10 11:30:28', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (4, 1, 'Infografis Quotes/Biodata', 999999, '2021-02-10 11:30:45', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (5, 1, 'Infografis Digital', 999999, '2021-02-10 11:30:59', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (6, 1, 'Infografis Chart', 999999, '2021-02-10 11:31:10', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (7, 1, 'Kronologi 2D/3D', 999999, '2021-02-10 11:31:28', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (8, 1, 'Supers', 999999, '2021-02-10 11:31:39', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (9, 1, 'Kickers', 999999, '2021-02-10 11:31:46', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (10, 1, 'Explainer', 999999, '2021-02-10 11:31:55', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (11, 1, 'At Large', 999999, '2021-02-10 11:32:06', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (12, 1, 'Filler News', 999999, '2021-02-10 11:32:14', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (13, 1, 'Flashbump Hari Ini', 999999, '2021-02-10 11:32:50', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (14, 1, 'Slide Medsos', 999999, '2021-02-10 11:33:02', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (15, 1, 'Slide Foto', 999999, '2021-02-10 11:33:08', 999999, 2021);
INSERT INTO `tab_infographic` VALUES (16, 2, 'Infografis Data', 999999, '2021-02-10 11:33:26', 999999, 2021);
COMMIT;

-- ----------------------------
-- Table structure for tab_item_graphic
-- ----------------------------
DROP TABLE IF EXISTS `tab_item_graphic`;
CREATE TABLE `tab_item_graphic` (
  `item_graphic_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `item_graphic_category` varchar(255) NOT NULL,
  `item_graphic_sub_category` varchar(255) NOT NULL,
  `item_graphic_name` varchar(255) NOT NULL,
  `item_graphic_desc` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`item_graphic_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tab_item_graphic
-- ----------------------------
BEGIN;
INSERT INTO `tab_item_graphic` VALUES (2, 2, 'Motion Graphic', 'Program Package', 'OBB', '', 999999, 'Developer Metro TV', '2021-03-05 12:57:30', 999999, 'Developer Metro TV', '2021-03-05 12:57:30');
INSERT INTO `tab_item_graphic` VALUES (3, 1, 'Tipe C', '-', 'Template Magna', '', 999999, 'Developer Metro TV', '2021-03-05 15:59:06', 999999, 'Developer Metro TV', '2021-03-05 15:59:06');
INSERT INTO `tab_item_graphic` VALUES (4, 1, 'Tipe C', '-', 'Template Bullet Poin', '', 999999, 'Developer Metro TV', '2021-03-05 16:00:25', 999999, 'Developer Metro TV', '2021-03-05 16:00:25');
INSERT INTO `tab_item_graphic` VALUES (5, 1, 'Tipe C', '-', 'Template Icon Data', '', 999999, 'Developer Metro TV', '2021-03-05 16:00:45', 999999, 'Developer Metro TV', '2021-03-05 16:00:45');
INSERT INTO `tab_item_graphic` VALUES (6, 1, 'Tipe C', '-', 'Template TImeline', '', 999999, 'Developer Metro TV', '2021-03-05 16:01:03', 999999, 'Developer Metro TV', '2021-03-05 16:01:03');
INSERT INTO `tab_item_graphic` VALUES (7, 1, 'Tipe B', '-', 'Template Augmented', '', 999999, 'Developer Metro TV', '2021-03-05 16:01:25', 999999, 'Developer Metro TV', '2021-03-05 16:01:25');
INSERT INTO `tab_item_graphic` VALUES (8, 1, 'Tipe B', '-', 'Infografis 2D', '', 999999, 'Developer Metro TV', '2021-03-05 16:01:47', 999999, 'Developer Metro TV', '2021-03-05 16:01:47');
INSERT INTO `tab_item_graphic` VALUES (9, 1, 'Tipe B', '-', 'Kronologi 2D', '', 999999, 'Developer Metro TV', '2021-03-05 16:02:19', 999999, 'Developer Metro TV', '2021-03-05 16:02:19');
INSERT INTO `tab_item_graphic` VALUES (10, 1, 'Tipe B', '-', 'Flash Bump', '', 999999, 'Developer Metro TV', '2021-03-05 16:03:32', 999999, 'Developer Metro TV', '2021-03-05 16:03:32');
INSERT INTO `tab_item_graphic` VALUES (11, 1, 'Tipe A', '-', 'Animasi 2D', 'contoh deskripsi', 999999, 'Developer Metro TV', '2021-03-05 16:04:03', 999999, 'Developer Metro TV', '2021-03-05 16:04:03');
INSERT INTO `tab_item_graphic` VALUES (12, 1, 'Tipe A', '-', 'Animasi 3D', '', 999999, 'Developer Metro TV', '2021-03-05 16:04:20', 999999, 'Developer Metro TV', '2021-03-05 16:04:20');
INSERT INTO `tab_item_graphic` VALUES (13, 1, 'Tipe A', '-', 'Kickers', '', 999999, 'Developer Metro TV', '2021-03-05 16:04:39', 999999, 'Developer Metro TV', '2021-03-05 16:04:39');
INSERT INTO `tab_item_graphic` VALUES (14, 1, 'Tipe A', '-', 'Augmented', '', 999999, 'Developer Metro TV', '2021-03-05 16:05:04', 999999, 'Developer Metro TV', '2021-03-05 16:05:04');
INSERT INTO `tab_item_graphic` VALUES (15, 2, 'Motion Graphic', 'Program Package', 'BIBO', '', 999999, 'Developer Metro TV', '2021-03-05 16:05:32', 999999, 'Developer Metro TV', '2021-03-05 16:05:32');
INSERT INTO `tab_item_graphic` VALUES (16, 2, 'Motion Graphic', 'Program Package', 'Upnext', '', 999999, 'Developer Metro TV', '2021-03-05 16:05:57', 999999, 'Developer Metro TV', '2021-03-05 16:05:57');
INSERT INTO `tab_item_graphic` VALUES (17, 2, 'Motion Graphic', 'Program Package', 'CG', '', 999999, 'Developer Metro TV', '2021-03-05 16:06:22', 999999, 'Developer Metro TV', '2021-03-05 16:06:22');
INSERT INTO `tab_item_graphic` VALUES (18, 2, 'Motion Graphic', 'Promotion', 'Promo Generik', '', 999999, 'Developer Metro TV', '2021-03-05 16:06:50', 999999, 'Developer Metro TV', '2021-03-05 16:06:50');
INSERT INTO `tab_item_graphic` VALUES (19, 2, 'Motion Graphic', 'Promotion', 'Promo Episodik', '', 999999, 'Developer Metro TV', '2021-03-05 16:07:45', 999999, 'Developer Metro TV', '2021-03-05 16:07:45');
INSERT INTO `tab_item_graphic` VALUES (20, 2, 'Motion Graphic', 'Promotion', 'VT', '', 999999, 'Developer Metro TV', '2021-03-05 16:07:58', 999999, 'Developer Metro TV', '2021-03-05 16:07:58');
INSERT INTO `tab_item_graphic` VALUES (21, 2, 'Motion Graphic', 'Promotion', 'Public Service', '', 999999, 'Developer Metro TV', '2021-03-05 16:08:27', 999999, 'Developer Metro TV', '2021-03-05 16:08:27');
INSERT INTO `tab_item_graphic` VALUES (22, 2, 'Motion Graphic', 'Event', 'VT Opening', '', 999999, 'Developer Metro TV', '2021-03-05 16:09:18', 999999, 'Developer Metro TV', '2021-03-05 16:09:18');
INSERT INTO `tab_item_graphic` VALUES (23, 2, 'Motion Graphic', 'Event', 'Video Mapping', '', 999999, 'Developer Metro TV', '2021-03-05 16:09:45', 999999, 'Developer Metro TV', '2021-03-05 16:09:45');
INSERT INTO `tab_item_graphic` VALUES (24, 2, 'Motion Graphic', 'Event', 'Digital Mapping', '', 999999, 'Developer Metro TV', '2021-03-05 16:10:00', 999999, 'Developer Metro TV', '2021-03-05 16:10:00');
INSERT INTO `tab_item_graphic` VALUES (25, 2, 'Motion Graphic', 'Event', 'Wall Tematik', '', 999999, 'Developer Metro TV', '2021-03-05 16:11:18', 999999, 'Developer Metro TV', '2021-03-05 16:11:18');
INSERT INTO `tab_item_graphic` VALUES (26, 2, 'Motion Graphic', 'Client', 'Creative Placement', '', 999999, 'Developer Metro TV', '2021-03-05 16:11:39', 999999, 'Developer Metro TV', '2021-03-05 16:11:39');
INSERT INTO `tab_item_graphic` VALUES (27, 2, 'Motion Graphic', 'Client', 'Dummy Creative Placement', '', 999999, 'Developer Metro TV', '2021-03-05 16:12:00', 999999, 'Developer Metro TV', '2021-03-05 16:12:00');
INSERT INTO `tab_item_graphic` VALUES (28, 2, 'Graphic Design', 'Program Package', 'Logo Program', '', 999999, 'Developer Metro TV', '2021-03-05 16:12:25', 999999, 'Developer Metro TV', '2021-03-05 16:12:25');
INSERT INTO `tab_item_graphic` VALUES (29, 2, 'Graphic Design', 'Program Package', 'Cue Card', '', 999999, 'Developer Metro TV', '2021-03-05 16:12:44', 999999, 'Developer Metro TV', '2021-03-05 16:12:44');
INSERT INTO `tab_item_graphic` VALUES (30, 2, 'Graphic Design', 'Promotion', 'Print Ad', '', 999999, 'Developer Metro TV', '2021-03-05 16:12:59', 999999, 'Developer Metro TV', '2021-03-05 16:12:59');
INSERT INTO `tab_item_graphic` VALUES (31, 2, 'Graphic Design', 'Promotion', 'Invitation Letter', '', 999999, 'Developer Metro TV', '2021-03-05 16:13:54', 999999, 'Developer Metro TV', '2021-03-05 16:13:54');
INSERT INTO `tab_item_graphic` VALUES (32, 2, 'Graphic Design', 'Event', 'Spanduk', '', 999999, 'Developer Metro TV', '2021-03-05 16:14:23', 999999, 'Developer Metro TV', '2021-03-05 16:14:23');
INSERT INTO `tab_item_graphic` VALUES (33, 2, 'Graphic Design', 'Event', 'Umbul-umbul', '', 999999, 'Developer Metro TV', '2021-03-05 16:14:46', 999999, 'Developer Metro TV', '2021-03-05 16:14:46');
INSERT INTO `tab_item_graphic` VALUES (34, 2, 'Graphic Design', 'Client', 'Strategic Creative Placement', '', 999999, 'Developer Metro TV', '2021-03-05 16:15:15', 999999, 'Developer Metro TV', '2021-03-05 16:15:15');
INSERT INTO `tab_item_graphic` VALUES (35, 2, 'Set Landscape', '-', 'Desain set on air/off air', '', 999999, 'Developer Metro TV', '2021-03-05 16:15:54', 999999, 'Developer Metro TV', '2021-03-05 16:15:54');
INSERT INTO `tab_item_graphic` VALUES (36, 2, 'Set Landscape', '-', 'Visualisasi Studio 3', '', 999999, 'Developer Metro TV', '2021-03-05 16:16:14', 999999, 'Developer Metro TV', '2021-03-05 16:16:14');
INSERT INTO `tab_item_graphic` VALUES (37, 2, 'Web Designer', '-', 'Wireframing', '', 999999, 'Developer Metro TV', '2021-03-05 16:16:30', 999999, 'Developer Metro TV', '2021-03-05 16:16:30');
INSERT INTO `tab_item_graphic` VALUES (38, 2, 'Web Designer', '-', 'Desain (Visual Layout)', '', 999999, 'Developer Metro TV', '2021-03-05 16:16:55', 999999, 'Developer Metro TV', '2021-03-05 16:16:55');
COMMIT;

-- ----------------------------
-- Table structure for tab_motion_graphic
-- ----------------------------
DROP TABLE IF EXISTS `tab_motion_graphic`;
CREATE TABLE `tab_motion_graphic` (
  `motion_graphic_id` int(11) NOT NULL AUTO_INCREMENT,
  `motion_graphic_type` int(11) NOT NULL COMMENT '1 = Program Package; 2 = Promotion; 3 = Calvent; 4 = Klien',
  `motion_graphic_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`motion_graphic_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_motion_graphic
-- ----------------------------
BEGIN;
INSERT INTO `tab_motion_graphic` VALUES (2, 2, 'OBB & BIBO', 1193748, '2021-02-15 09:29:43', 1193748, '2021-02-15 09:29:43');
INSERT INTO `tab_motion_graphic` VALUES (3, 2, 'Flash Bumper', 1193748, '2021-02-15 09:29:53', 1193748, '2021-02-15 09:29:53');
INSERT INTO `tab_motion_graphic` VALUES (4, 2, 'Up Next', 1193748, '2021-02-15 09:30:04', 1193748, '2021-02-15 09:30:04');
INSERT INTO `tab_motion_graphic` VALUES (5, 2, 'Sting', 1193748, '2021-02-15 09:30:16', 1193748, '2021-02-15 09:30:16');
INSERT INTO `tab_motion_graphic` VALUES (6, 2, 'Split Screen', 1193748, '2021-02-15 09:30:26', 1193748, '2021-02-15 09:30:26');
INSERT INTO `tab_motion_graphic` VALUES (7, 1, 'Promo Program Generic', 1193748, '2021-02-15 09:30:43', 1193748, '2021-02-15 09:30:43');
INSERT INTO `tab_motion_graphic` VALUES (8, 1, 'Promo Program Episodik', 1193748, '2021-02-15 09:30:55', 1193748, '2021-02-15 09:30:55');
INSERT INTO `tab_motion_graphic` VALUES (9, 1, 'TV Day - VT - Compro', 1193748, '2021-02-15 09:31:10', 1193748, '2021-02-15 09:31:10');
INSERT INTO `tab_motion_graphic` VALUES (10, 3, 'Video Mapping', 1193748, '2021-02-15 09:31:19', 1193748, '2021-02-15 09:31:19');
INSERT INTO `tab_motion_graphic` VALUES (11, 3, 'Digital Mapping', 1193748, '2021-02-15 09:31:32', 1193748, '2021-02-15 09:31:32');
INSERT INTO `tab_motion_graphic` VALUES (12, 4, 'Benefit C Placement', 1193748, '2021-02-15 09:31:46', 1193748, '2021-02-15 09:31:46');
COMMIT;

-- ----------------------------
-- Table structure for tab_nav
-- ----------------------------
DROP TABLE IF EXISTS `tab_nav`;
CREATE TABLE `tab_nav` (
  `nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(100) NOT NULL,
  `nav_ctr` varchar(100) NOT NULL,
  `nav_order` int(11) NOT NULL,
  `nav_icon` varchar(255) NOT NULL,
  `dev_only` int(11) NOT NULL DEFAULT 0 COMMENT '0 = NO ; 1 = YES',
  `create_date` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `edited_date` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`nav_id`) USING BTREE,
  KEY `nav_idx` (`nav_id`,`nav_name`,`nav_ctr`,`nav_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_nav
-- ----------------------------
BEGIN;
INSERT INTO `tab_nav` VALUES (1, 'Navigation', 'navigation', 6, 'ni ni-app', 0, '2021-02-08 10:03:04', 1193748, '2021-03-30 09:45:52', 1193755);
INSERT INTO `tab_nav` VALUES (2, 'Contact', 'contact', 3, 'ni ni-single-02', 0, '2021-03-15 21:15:04', 999999, '2021-03-17 09:44:10', 1193748);
INSERT INTO `tab_nav` VALUES (3, 'Dashboard', '', 1, 'ni ni-tv-2', 0, '2021-03-15 21:15:26', 999999, '2021-03-17 09:43:42', 1193748);
INSERT INTO `tab_nav` VALUES (4, 'List Order', 'list_order', 2, 'ni ni-bullet-list-67', 0, '2021-03-17 09:31:57', 1193748, '2021-03-17 09:48:35', 1193748);
INSERT INTO `tab_nav` VALUES (5, 'Uac', 'uac', 7, 'ni ni-settings', 0, '2021-03-17 12:00:06', 1193748, '2021-03-30 09:46:14', 1193755);
INSERT INTO `tab_nav` VALUES (6, 'Buat Order Baru', 'new_order', 9, '', 0, '2021-03-24 09:25:44', 1193748, '2021-03-24 09:25:44', 1193748);
INSERT INTO `tab_nav` VALUES (7, 'Item Graphic', 'item_graphic', 4, 'ni ni-tag', 0, '2021-04-19 08:10:57', 1193755, '2021-04-19 08:12:34', 1193755);
COMMIT;

-- ----------------------------
-- Table structure for tab_notification
-- ----------------------------
DROP TABLE IF EXISTS `tab_notification`;
CREATE TABLE `tab_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_for` varchar(255) NOT NULL COMMENT 'user_id receiver',
  `notification_message` varchar(255) NOT NULL,
  `notification_status` int(11) NOT NULL COMMENT '0 = Unseen ; 1 = Seen',
  `created_by` int(11) NOT NULL,
  `created_name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`notification_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_notification
-- ----------------------------
BEGIN;
INSERT INTO `tab_notification` VALUES (1, '1193748', 'Item Animasi 2D telah diambil oleh NURUL NOVIANA RAFIKA', 0, 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:49:57');
INSERT INTO `tab_notification` VALUES (2, '1193748', 'Item Kickers telah diambil oleh NURUL NOVIANA RAFIKA', 0, 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:50:02');
INSERT INTO `tab_notification` VALUES (3, '1193748', 'Item Kronologi 2D telah diambil oleh NURUL NOVIANA RAFIKA', 0, 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:51:10');
INSERT INTO `tab_notification` VALUES (4, '1153013', 'ADITYA YUDHA menambahkan pekerjaan', 0, 1111788, 'ADITYA YUDHA', '2021-06-21 12:06:23');
INSERT INTO `tab_notification` VALUES (5, '1193814', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 12:13:28');
INSERT INTO `tab_notification` VALUES (6, '1153013', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 12:14:00');
INSERT INTO `tab_notification` VALUES (7, '1153013', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 12:14:16');
INSERT INTO `tab_notification` VALUES (8, '1122165', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 12:14:29');
INSERT INTO `tab_notification` VALUES (9, '1061248', 'Item Infografis 2D telah diambil oleh YOSUA FIRDAUS PALALLO', 1, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 12:47:53');
INSERT INTO `tab_notification` VALUES (10, '1061248', 'Item Infografis 2D mengalami peningkatan', 1, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 12:48:21');
INSERT INTO `tab_notification` VALUES (11, '1061248', 'Item Infografis 2D mengalami peningkatan', 1, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 12:51:24');
INSERT INTO `tab_notification` VALUES (12, '1142859', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:17:57');
INSERT INTO `tab_notification` VALUES (13, '1121997', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:18:09');
INSERT INTO `tab_notification` VALUES (14, '1193814', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:18:19');
INSERT INTO `tab_notification` VALUES (15, '1193814', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:18:30');
INSERT INTO `tab_notification` VALUES (16, '1193814', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:18:40');
INSERT INTO `tab_notification` VALUES (17, '1153013', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 13:18:51');
INSERT INTO `tab_notification` VALUES (18, '1061248', 'Item Infografis 2D telah diambil oleh YOSUA FIRDAUS PALALLO', 0, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 13:40:13');
INSERT INTO `tab_notification` VALUES (19, '1061248', 'Item Infografis 2D mengalami peningkatan', 0, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 13:40:41');
INSERT INTO `tab_notification` VALUES (20, '1061248', 'Item Infografis 2D mengalami peningkatan', 0, 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 13:42:22');
INSERT INTO `tab_notification` VALUES (21, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-06-23 12:02:35');
INSERT INTO `tab_notification` VALUES (22, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-06-24 15:12:55');
INSERT INTO `tab_notification` VALUES (23, '1132200', 'AKBAR FERNANDA mengirimkan pesan', 1, 6231198, 'AKBAR FERNANDA', '2021-06-24 15:17:13');
INSERT INTO `tab_notification` VALUES (24, '6231865', 'Item Animasi 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-25 08:35:00');
INSERT INTO `tab_notification` VALUES (25, '6231865', 'Item Animasi 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-25 08:35:21');
INSERT INTO `tab_notification` VALUES (26, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-06-28 15:24:55');
INSERT INTO `tab_notification` VALUES (27, '1153000', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-29 09:32:43');
INSERT INTO `tab_notification` VALUES (28, '1153000', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-29 09:32:46');
INSERT INTO `tab_notification` VALUES (29, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-29 09:33:08');
INSERT INTO `tab_notification` VALUES (30, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-06-29 19:32:49');
INSERT INTO `tab_notification` VALUES (31, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-02 10:15:05');
INSERT INTO `tab_notification` VALUES (32, '1132200', 'GREGORIUS YOHANDI mengirimkan pesan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-02 13:31:02');
INSERT INTO `tab_notification` VALUES (33, '1132200', 'GREGORIUS YOHANDI mengirimkan pesan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-02 13:34:34');
INSERT INTO `tab_notification` VALUES (34, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-02 13:35:07');
INSERT INTO `tab_notification` VALUES (35, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-03 12:53:22');
INSERT INTO `tab_notification` VALUES (36, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-05 10:24:26');
INSERT INTO `tab_notification` VALUES (37, '1142826', 'Item Infografis 2D mengalami peningkatan', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-05 10:31:46');
INSERT INTO `tab_notification` VALUES (38, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-05 11:38:52');
INSERT INTO `tab_notification` VALUES (39, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-05 12:25:33');
INSERT INTO `tab_notification` VALUES (40, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-05 13:26:37');
INSERT INTO `tab_notification` VALUES (41, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-06 14:28:24');
INSERT INTO `tab_notification` VALUES (42, '1153000', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-06 15:19:00');
INSERT INTO `tab_notification` VALUES (43, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-06 16:00:28');
INSERT INTO `tab_notification` VALUES (44, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-07 12:30:48');
INSERT INTO `tab_notification` VALUES (45, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-07 14:08:02');
INSERT INTO `tab_notification` VALUES (46, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 15:00:25');
INSERT INTO `tab_notification` VALUES (47, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 15:00:30');
INSERT INTO `tab_notification` VALUES (48, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 16:06:11');
INSERT INTO `tab_notification` VALUES (49, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 16:06:23');
INSERT INTO `tab_notification` VALUES (50, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 16:38:17');
INSERT INTO `tab_notification` VALUES (51, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-07 16:38:28');
INSERT INTO `tab_notification` VALUES (52, '1142826', 'Item Infografis 2D mengalami peningkatan', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-07 18:59:21');
INSERT INTO `tab_notification` VALUES (53, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-08 10:14:54');
INSERT INTO `tab_notification` VALUES (54, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-08 10:15:09');
INSERT INTO `tab_notification` VALUES (55, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-08 11:58:17');
INSERT INTO `tab_notification` VALUES (56, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-08 12:00:35');
INSERT INTO `tab_notification` VALUES (57, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-08 13:33:49');
INSERT INTO `tab_notification` VALUES (58, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-09 16:13:26');
INSERT INTO `tab_notification` VALUES (59, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-09 17:04:10');
INSERT INTO `tab_notification` VALUES (60, '1142826', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-12 12:01:22');
INSERT INTO `tab_notification` VALUES (61, '1183642', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-12 12:13:53');
INSERT INTO `tab_notification` VALUES (62, '1183642', 'Item Infografis 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-12 12:14:03');
INSERT INTO `tab_notification` VALUES (63, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-12 16:56:55');
INSERT INTO `tab_notification` VALUES (64, '1183642', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-07-12 16:57:07');
INSERT INTO `tab_notification` VALUES (65, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-13 15:58:38');
INSERT INTO `tab_notification` VALUES (66, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-15 12:06:36');
INSERT INTO `tab_notification` VALUES (67, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-15 12:07:40');
INSERT INTO `tab_notification` VALUES (68, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-15 12:11:03');
INSERT INTO `tab_notification` VALUES (69, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-15 12:44:04');
INSERT INTO `tab_notification` VALUES (70, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-15 13:27:00');
INSERT INTO `tab_notification` VALUES (71, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-15 14:02:40');
INSERT INTO `tab_notification` VALUES (72, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-07-15 14:23:20');
INSERT INTO `tab_notification` VALUES (73, '1142826', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-15 15:52:55');
INSERT INTO `tab_notification` VALUES (74, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-16 13:17:44');
INSERT INTO `tab_notification` VALUES (75, '6231200', 'Item Animasi 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-19 19:07:24');
INSERT INTO `tab_notification` VALUES (76, '6231200', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-19 19:07:42');
INSERT INTO `tab_notification` VALUES (77, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-21 13:25:22');
INSERT INTO `tab_notification` VALUES (78, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-21 13:25:39');
INSERT INTO `tab_notification` VALUES (79, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-21 13:52:20');
INSERT INTO `tab_notification` VALUES (80, '6231200', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-21 15:20:37');
INSERT INTO `tab_notification` VALUES (81, '6231200', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-07-26 09:20:50');
INSERT INTO `tab_notification` VALUES (82, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-26 15:33:50');
INSERT INTO `tab_notification` VALUES (83, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-26 15:33:57');
INSERT INTO `tab_notification` VALUES (84, '1142826', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-26 18:23:02');
INSERT INTO `tab_notification` VALUES (85, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-07-26 20:51:41');
INSERT INTO `tab_notification` VALUES (86, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 13:34:53');
INSERT INTO `tab_notification` VALUES (87, '1153000', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 16:48:32');
INSERT INTO `tab_notification` VALUES (88, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 18:05:19');
INSERT INTO `tab_notification` VALUES (89, '1142826', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 18:06:12');
INSERT INTO `tab_notification` VALUES (90, '1153000', 'BENEDIKTUS AJI ANDANDI mengirimkan pesan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-28 16:27:03');
INSERT INTO `tab_notification` VALUES (91, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-07-30 11:26:13');
INSERT INTO `tab_notification` VALUES (92, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-08-03 12:14:17');
INSERT INTO `tab_notification` VALUES (93, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-08-03 12:15:32');
INSERT INTO `tab_notification` VALUES (94, '1153000', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-03 19:43:44');
INSERT INTO `tab_notification` VALUES (95, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-04 11:24:39');
INSERT INTO `tab_notification` VALUES (96, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-08-05 14:09:00');
INSERT INTO `tab_notification` VALUES (97, '1142826', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-06 11:15:35');
INSERT INTO `tab_notification` VALUES (98, '1142826', 'Item Infografis 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-06 17:18:11');
INSERT INTO `tab_notification` VALUES (99, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 1, 1142884, 'GREGORIUS YOHANDI', '2021-08-06 19:06:47');
INSERT INTO `tab_notification` VALUES (100, '1193825', 'Item Animasi 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-09 14:54:16');
INSERT INTO `tab_notification` VALUES (101, '1193825', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-09 14:54:29');
INSERT INTO `tab_notification` VALUES (102, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 1142884, 'GREGORIUS YOHANDI', '2021-08-09 15:12:34');
INSERT INTO `tab_notification` VALUES (103, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-08-09 17:31:25');
INSERT INTO `tab_notification` VALUES (104, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-08-09 20:04:51');
INSERT INTO `tab_notification` VALUES (105, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-08-09 20:05:01');
INSERT INTO `tab_notification` VALUES (106, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-08-09 20:06:03');
INSERT INTO `tab_notification` VALUES (107, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:33');
INSERT INTO `tab_notification` VALUES (108, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:37');
INSERT INTO `tab_notification` VALUES (109, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:41');
INSERT INTO `tab_notification` VALUES (110, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231198, 'AKBAR FERNANDA', '2021-08-11 18:47:52');
INSERT INTO `tab_notification` VALUES (111, '1193825', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-16 11:46:00');
INSERT INTO `tab_notification` VALUES (112, '1132200', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 1, 6231198, 'AKBAR FERNANDA', '2021-08-16 12:08:39');
INSERT INTO `tab_notification` VALUES (113, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231198, 'AKBAR FERNANDA', '2021-08-16 14:58:02');
INSERT INTO `tab_notification` VALUES (114, '1122165', 'BAYU AJIE ARIBOWO menambahkan pekerjaan', 0, 1122082, 'BAYU AJIE ARIBOWO', '2021-08-18 17:44:51');
INSERT INTO `tab_notification` VALUES (115, '1173426', 'Item Template Icon Data telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-19 17:11:59');
INSERT INTO `tab_notification` VALUES (116, '1173426', 'Item Template Icon Data mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-19 17:12:21');
INSERT INTO `tab_notification` VALUES (117, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-19 18:44:41');
INSERT INTO `tab_notification` VALUES (118, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-19 18:44:44');
INSERT INTO `tab_notification` VALUES (119, '1173426', 'Item Template Icon Data mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 11:02:06');
INSERT INTO `tab_notification` VALUES (120, '1173426', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 11:02:27');
INSERT INTO `tab_notification` VALUES (121, '1173426', 'Item Infografis 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 11:02:36');
INSERT INTO `tab_notification` VALUES (122, '1173426', 'Item Logo Program telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 11:56:15');
INSERT INTO `tab_notification` VALUES (123, '1173426', 'Item Logo Program mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 11:56:22');
INSERT INTO `tab_notification` VALUES (124, '1142826', 'Item Animasi 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 11:57:15');
INSERT INTO `tab_notification` VALUES (125, '1153000', 'Item Infografis 2D telah diambil oleh AKBAR FERNANDA', 0, 6231198, 'AKBAR FERNANDA', '2021-08-24 12:13:12');
INSERT INTO `tab_notification` VALUES (126, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231198, 'AKBAR FERNANDA', '2021-08-24 12:13:20');
INSERT INTO `tab_notification` VALUES (127, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231198, 'AKBAR FERNANDA', '2021-08-24 12:13:23');
INSERT INTO `tab_notification` VALUES (128, '1142826', 'Item Animasi 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 12:22:13');
INSERT INTO `tab_notification` VALUES (129, '1142826', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 12:22:30');
INSERT INTO `tab_notification` VALUES (130, '1142826', 'Item Animasi 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-24 12:29:34');
INSERT INTO `tab_notification` VALUES (131, '1142826', 'Item Animasi 2D mengalami peningkatan', 0, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 14:01:38');
INSERT INTO `tab_notification` VALUES (132, '1132200', 'Item Infografis 2D telah diambil oleh BENEDIKTUS AJI ANDANDI', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 14:15:52');
INSERT INTO `tab_notification` VALUES (133, '1132200', 'Item Infografis 2D mengalami peningkatan', 1, 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 16:43:09');
INSERT INTO `tab_notification` VALUES (134, '1153000', 'Item Infografis 2D mengalami peningkatan', 0, 6231198, 'AKBAR FERNANDA', '2021-08-25 12:28:43');
INSERT INTO `tab_notification` VALUES (135, '1132200', 'Item Infografis 2D telah diambil oleh GREGORIUS YOHANDI', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-26 11:59:45');
INSERT INTO `tab_notification` VALUES (136, '1132200', 'Item Infografis 2D mengalami peningkatan', 0, 1142884, 'GREGORIUS YOHANDI', '2021-08-26 16:19:42');
COMMIT;

-- ----------------------------
-- Table structure for tab_operational
-- ----------------------------
DROP TABLE IF EXISTS `tab_operational`;
CREATE TABLE `tab_operational` (
  `operational_id` int(11) NOT NULL AUTO_INCREMENT,
  `operational_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `operational_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`operational_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tab_role
-- ----------------------------
DROP TABLE IF EXISTS `tab_role`;
CREATE TABLE `tab_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(10) NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_role
-- ----------------------------
BEGIN;
INSERT INTO `tab_role` VALUES (1, 'Client');
INSERT INTO `tab_role` VALUES (2, 'Designer');
INSERT INTO `tab_role` VALUES (3, 'Admin');
INSERT INTO `tab_role` VALUES (4, 'Developer');
COMMIT;

-- ----------------------------
-- Table structure for tab_score_item
-- ----------------------------
DROP TABLE IF EXISTS `tab_score_item`;
CREATE TABLE `tab_score_item` (
  `item_score_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_graphic_id` int(11) NOT NULL,
  `item_score_count` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`item_score_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tab_score_item
-- ----------------------------
BEGIN;
INSERT INTO `tab_score_item` VALUES (27, 27, 10, 999999, 'Developer Metro TV', '2021-03-05 16:12:00', 999999, 'Developer Metro TV', '2021-03-05 16:12:00');
INSERT INTO `tab_score_item` VALUES (28, 28, 15, 999999, 'Developer Metro TV', '2021-03-05 16:12:25', 999999, 'Developer Metro TV', '2021-03-05 16:12:25');
INSERT INTO `tab_score_item` VALUES (29, 29, 1, 999999, 'Developer Metro TV', '2021-03-05 16:12:44', 999999, 'Developer Metro TV', '2021-03-05 16:12:44');
INSERT INTO `tab_score_item` VALUES (30, 30, 5, 999999, 'Developer Metro TV', '2021-03-05 16:12:59', 999999, 'Developer Metro TV', '2021-03-05 16:12:59');
INSERT INTO `tab_score_item` VALUES (31, 31, 10, 999999, 'Developer Metro TV', '2021-03-05 16:13:54', 999999, 'Developer Metro TV', '2021-03-05 16:13:54');
INSERT INTO `tab_score_item` VALUES (32, 32, 2, 999999, 'Developer Metro TV', '2021-03-05 16:14:23', 999999, 'Developer Metro TV', '2021-03-05 16:14:23');
INSERT INTO `tab_score_item` VALUES (33, 33, 2, 999999, 'Developer Metro TV', '2021-03-05 16:14:46', 999999, 'Developer Metro TV', '2021-03-05 16:14:46');
INSERT INTO `tab_score_item` VALUES (34, 34, 5, 999999, 'Developer Metro TV', '2021-03-05 16:15:15', 999999, 'Developer Metro TV', '2021-03-05 16:15:15');
INSERT INTO `tab_score_item` VALUES (35, 35, 50, 999999, 'Developer Metro TV', '2021-03-05 16:15:54', 999999, 'Developer Metro TV', '2021-03-05 16:15:54');
INSERT INTO `tab_score_item` VALUES (36, 36, 20, 999999, 'Developer Metro TV', '2021-03-05 16:16:14', 999999, 'Developer Metro TV', '2021-03-05 16:16:14');
INSERT INTO `tab_score_item` VALUES (37, 37, 15, 999999, 'Developer Metro TV', '2021-03-05 16:16:30', 999999, 'Developer Metro TV', '2021-03-05 16:16:30');
INSERT INTO `tab_score_item` VALUES (38, 38, 50, 999999, 'Developer Metro TV', '2021-03-05 16:16:55', 999999, 'Developer Metro TV', '2021-03-05 16:16:55');
COMMIT;

-- ----------------------------
-- Table structure for tab_set_landscape
-- ----------------------------
DROP TABLE IF EXISTS `tab_set_landscape`;
CREATE TABLE `tab_set_landscape` (
  `set_landscape_id` int(11) NOT NULL AUTO_INCREMENT,
  `set_landscape_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `set_landscape_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`set_landscape_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_set_landscape
-- ----------------------------
BEGIN;
INSERT INTO `tab_set_landscape` VALUES (2, 1, 'Design Set On Air/Off Air', 1193748, '2021-02-15 09:32:15', 1193748, '2021-02-15 09:32:15');
INSERT INTO `tab_set_landscape` VALUES (3, 1, 'Gambar Teknik', 1193748, '2021-02-15 09:32:24', 1193748, '2021-02-15 09:32:24');
INSERT INTO `tab_set_landscape` VALUES (4, 1, 'Interior Corporate', 1193748, '2021-02-15 09:32:35', 1193748, '2021-02-15 09:32:35');
INSERT INTO `tab_set_landscape` VALUES (5, 1, 'Exterior Corporate', 1193748, '2021-02-15 09:32:46', 1193748, '2021-02-15 09:32:46');
COMMIT;

-- ----------------------------
-- Table structure for tab_type
-- ----------------------------
DROP TABLE IF EXISTS `tab_type`;
CREATE TABLE `tab_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tab_type
-- ----------------------------
BEGIN;
INSERT INTO `tab_type` VALUES (1, 'Daily');
INSERT INTO `tab_type` VALUES (2, 'Development');
COMMIT;

-- ----------------------------
-- Table structure for tab_uac
-- ----------------------------
DROP TABLE IF EXISTS `tab_uac`;
CREATE TABLE `tab_uac` (
  `user_id` int(11) NOT NULL,
  `nav_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  PRIMARY KEY (`nav_id`,`user_id`) USING BTREE,
  KEY `uac_idx` (`user_id`,`nav_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_uac
-- ----------------------------
BEGIN;
INSERT INTO `tab_uac` VALUES (1153103, 1, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153216, 1, '2021-04-27 11:38:39', 1153216);
INSERT INTO `tab_uac` VALUES (1193748, 1, '2021-04-14 14:33:29', 1193748);
INSERT INTO `tab_uac` VALUES (1193755, 1, '2021-04-19 08:11:06', 1193755);
INSERT INTO `tab_uac` VALUES (1111788, 2, '2021-04-14 14:31:39', 1193755);
INSERT INTO `tab_uac` VALUES (1122082, 2, '2021-04-01 14:57:02', 1193755);
INSERT INTO `tab_uac` VALUES (1153103, 2, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153216, 2, '2021-04-27 11:38:39', 1153216);
INSERT INTO `tab_uac` VALUES (1193702, 2, '2021-04-14 14:32:02', 1193755);
INSERT INTO `tab_uac` VALUES (1193748, 2, '2021-04-14 14:33:30', 1193748);
INSERT INTO `tab_uac` VALUES (1193755, 2, '2021-04-19 08:11:07', 1193755);
INSERT INTO `tab_uac` VALUES (1000083, 3, '2021-06-17 15:57:14', 9999999);
INSERT INTO `tab_uac` VALUES (1000149, 3, '2021-06-16 15:10:01', 9999999);
INSERT INTO `tab_uac` VALUES (1061248, 3, '2021-06-11 16:13:58', 9999999);
INSERT INTO `tab_uac` VALUES (1071334, 3, '2021-06-21 13:12:12', 9999999);
INSERT INTO `tab_uac` VALUES (1091594, 3, '2021-06-17 11:39:26', 9999999);
INSERT INTO `tab_uac` VALUES (1111788, 3, '2021-04-14 14:31:39', 1193755);
INSERT INTO `tab_uac` VALUES (1111829, 3, '2021-06-17 11:42:20', 9999999);
INSERT INTO `tab_uac` VALUES (1121978, 3, '2021-06-17 12:10:20', 9999999);
INSERT INTO `tab_uac` VALUES (1121983, 3, '2021-06-29 18:32:32', 9999999);
INSERT INTO `tab_uac` VALUES (1122082, 3, '2021-04-01 14:57:02', 1193755);
INSERT INTO `tab_uac` VALUES (1132200, 3, '2021-06-17 11:42:06', 9999999);
INSERT INTO `tab_uac` VALUES (1132256, 3, '2021-08-05 15:26:33', 9999999);
INSERT INTO `tab_uac` VALUES (1132287, 3, '2021-06-07 14:52:23', 9999999);
INSERT INTO `tab_uac` VALUES (1132407, 3, '2021-06-17 12:29:50', 9999999);
INSERT INTO `tab_uac` VALUES (1132408, 3, '2021-06-17 12:34:56', 9999999);
INSERT INTO `tab_uac` VALUES (1132409, 3, '2021-06-17 12:34:27', 9999999);
INSERT INTO `tab_uac` VALUES (1132411, 3, '2021-06-17 11:44:20', 9999999);
INSERT INTO `tab_uac` VALUES (1132605, 3, '2021-06-16 17:46:55', 9999999);
INSERT INTO `tab_uac` VALUES (1132636, 3, '2021-06-17 12:26:21', 9999999);
INSERT INTO `tab_uac` VALUES (1132637, 3, '2021-06-17 12:05:32', 9999999);
INSERT INTO `tab_uac` VALUES (1132639, 3, '2021-06-18 11:00:10', 9999999);
INSERT INTO `tab_uac` VALUES (1142735, 3, '2021-06-17 12:30:27', 9999999);
INSERT INTO `tab_uac` VALUES (1142737, 3, '2021-06-21 13:24:46', 9999999);
INSERT INTO `tab_uac` VALUES (1142806, 3, '2021-06-17 12:06:30', 9999999);
INSERT INTO `tab_uac` VALUES (1142809, 3, '2021-06-21 13:31:43', 9999999);
INSERT INTO `tab_uac` VALUES (1142826, 3, '2021-06-17 11:45:38', 9999999);
INSERT INTO `tab_uac` VALUES (1142845, 3, '2021-06-17 12:06:42', 9999999);
INSERT INTO `tab_uac` VALUES (1142855, 3, '2021-06-23 11:31:26', 9999999);
INSERT INTO `tab_uac` VALUES (1142884, 3, '2021-06-23 10:39:36', 1153103);
INSERT INTO `tab_uac` VALUES (1152942, 3, '2021-06-17 12:09:59', 9999999);
INSERT INTO `tab_uac` VALUES (1152949, 3, '2021-06-17 11:53:44', 9999999);
INSERT INTO `tab_uac` VALUES (1153000, 3, '2021-06-28 16:53:55', 9999999);
INSERT INTO `tab_uac` VALUES (1153003, 3, '2021-06-17 12:48:00', 9999999);
INSERT INTO `tab_uac` VALUES (1153010, 3, '2021-07-02 10:34:05', 9999999);
INSERT INTO `tab_uac` VALUES (1153040, 3, '2021-06-17 12:12:52', 9999999);
INSERT INTO `tab_uac` VALUES (1153087, 3, '2021-06-21 13:25:46', 9999999);
INSERT INTO `tab_uac` VALUES (1153090, 3, '2021-06-17 13:56:21', 9999999);
INSERT INTO `tab_uac` VALUES (1153103, 3, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153162, 3, '2021-06-17 12:31:32', 9999999);
INSERT INTO `tab_uac` VALUES (1153191, 3, '2021-06-21 12:42:03', 1153103);
INSERT INTO `tab_uac` VALUES (1153199, 3, '2021-06-17 13:32:18', 9999999);
INSERT INTO `tab_uac` VALUES (1153216, 3, '2021-04-27 11:38:39', 1153216);
INSERT INTO `tab_uac` VALUES (1173426, 3, '2021-06-17 11:39:25', 9999999);
INSERT INTO `tab_uac` VALUES (1173448, 3, '2021-07-01 19:59:56', 9999999);
INSERT INTO `tab_uac` VALUES (1183556, 3, '2021-08-03 16:15:09', 9999999);
INSERT INTO `tab_uac` VALUES (1183636, 3, '2021-08-10 13:58:15', 9999999);
INSERT INTO `tab_uac` VALUES (1183641, 3, '2021-06-21 13:22:09', 9999999);
INSERT INTO `tab_uac` VALUES (1183642, 3, '2021-06-21 13:55:10', 9999999);
INSERT INTO `tab_uac` VALUES (1183653, 3, '2021-06-22 16:40:55', 9999999);
INSERT INTO `tab_uac` VALUES (1193702, 3, '2021-04-14 14:32:03', 1193755);
INSERT INTO `tab_uac` VALUES (1193726, 3, '2021-03-24 10:11:34', 1193748);
INSERT INTO `tab_uac` VALUES (1193748, 3, '2021-04-14 14:33:30', 1193748);
INSERT INTO `tab_uac` VALUES (1193751, 3, '2021-06-23 11:28:09', 1193755);
INSERT INTO `tab_uac` VALUES (1193755, 3, '2021-04-19 08:11:07', 1193755);
INSERT INTO `tab_uac` VALUES (1193761, 3, '2021-06-28 11:42:31', 9999999);
INSERT INTO `tab_uac` VALUES (1193771, 3, '2021-06-22 14:07:37', 9999999);
INSERT INTO `tab_uac` VALUES (1193825, 3, '2021-07-13 14:21:51', 9999999);
INSERT INTO `tab_uac` VALUES (6221303, 3, '2021-06-23 21:16:03', 9999999);
INSERT INTO `tab_uac` VALUES (6231198, 3, '2021-06-23 10:42:45', 1153103);
INSERT INTO `tab_uac` VALUES (6231200, 3, '2021-07-14 10:51:51', 9999999);
INSERT INTO `tab_uac` VALUES (6231865, 3, '2021-06-24 16:08:18', 9999999);
INSERT INTO `tab_uac` VALUES (6231979, 3, '2021-06-23 10:42:33', 1153103);
INSERT INTO `tab_uac` VALUES (1111788, 4, '2021-04-14 14:31:39', 1193755);
INSERT INTO `tab_uac` VALUES (1122082, 4, '2021-04-01 14:57:02', 1193755);
INSERT INTO `tab_uac` VALUES (1142884, 4, '2021-06-23 10:39:36', 1153103);
INSERT INTO `tab_uac` VALUES (1153103, 4, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153191, 4, '2021-06-21 12:42:03', 1153103);
INSERT INTO `tab_uac` VALUES (1153216, 4, '2021-04-27 11:38:40', 1153216);
INSERT INTO `tab_uac` VALUES (1193702, 4, '2021-04-14 14:32:03', 1193755);
INSERT INTO `tab_uac` VALUES (1193726, 4, '2021-03-24 10:11:34', 1193748);
INSERT INTO `tab_uac` VALUES (1193748, 4, '2021-04-14 14:33:30', 1193748);
INSERT INTO `tab_uac` VALUES (1193751, 4, '2021-06-23 11:28:09', 1193755);
INSERT INTO `tab_uac` VALUES (1193755, 4, '2021-04-19 08:11:07', 1193755);
INSERT INTO `tab_uac` VALUES (6231198, 4, '2021-06-23 10:42:45', 1153103);
INSERT INTO `tab_uac` VALUES (6231979, 4, '2021-06-23 10:42:33', 1153103);
INSERT INTO `tab_uac` VALUES (1111788, 5, '2021-04-14 14:31:39', 1193755);
INSERT INTO `tab_uac` VALUES (1153103, 5, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153216, 5, '2021-04-27 11:38:40', 1153216);
INSERT INTO `tab_uac` VALUES (1193702, 5, '2021-04-14 14:32:03', 1193755);
INSERT INTO `tab_uac` VALUES (1193748, 5, '2021-04-14 14:33:30', 1193748);
INSERT INTO `tab_uac` VALUES (1193755, 5, '2021-04-19 08:11:07', 1193755);
INSERT INTO `tab_uac` VALUES (1000083, 6, '2021-06-17 15:57:14', 9999999);
INSERT INTO `tab_uac` VALUES (1000149, 6, '2021-06-16 15:10:01', 9999999);
INSERT INTO `tab_uac` VALUES (1061248, 6, '2021-06-11 16:13:58', 9999999);
INSERT INTO `tab_uac` VALUES (1071334, 6, '2021-06-21 13:12:12', 9999999);
INSERT INTO `tab_uac` VALUES (1091594, 6, '2021-06-17 11:39:26', 9999999);
INSERT INTO `tab_uac` VALUES (1111788, 6, '2021-04-14 14:31:40', 1193755);
INSERT INTO `tab_uac` VALUES (1111829, 6, '2021-06-17 11:42:20', 9999999);
INSERT INTO `tab_uac` VALUES (1121978, 6, '2021-06-17 12:10:20', 9999999);
INSERT INTO `tab_uac` VALUES (1121983, 6, '2021-06-29 18:32:32', 9999999);
INSERT INTO `tab_uac` VALUES (1122082, 6, '2021-04-01 14:57:02', 1193755);
INSERT INTO `tab_uac` VALUES (1132200, 6, '2021-06-17 11:42:06', 9999999);
INSERT INTO `tab_uac` VALUES (1132256, 6, '2021-08-05 15:26:33', 9999999);
INSERT INTO `tab_uac` VALUES (1132287, 6, '2021-06-07 14:52:23', 9999999);
INSERT INTO `tab_uac` VALUES (1132407, 6, '2021-06-17 12:29:50', 9999999);
INSERT INTO `tab_uac` VALUES (1132408, 6, '2021-06-17 12:34:57', 9999999);
INSERT INTO `tab_uac` VALUES (1132409, 6, '2021-06-17 12:34:27', 9999999);
INSERT INTO `tab_uac` VALUES (1132411, 6, '2021-06-17 11:44:20', 9999999);
INSERT INTO `tab_uac` VALUES (1132605, 6, '2021-06-16 17:46:55', 9999999);
INSERT INTO `tab_uac` VALUES (1132636, 6, '2021-06-17 12:26:21', 9999999);
INSERT INTO `tab_uac` VALUES (1132637, 6, '2021-06-17 12:05:32', 9999999);
INSERT INTO `tab_uac` VALUES (1132639, 6, '2021-06-18 11:00:10', 9999999);
INSERT INTO `tab_uac` VALUES (1142735, 6, '2021-06-17 12:30:27', 9999999);
INSERT INTO `tab_uac` VALUES (1142737, 6, '2021-06-21 13:24:46', 9999999);
INSERT INTO `tab_uac` VALUES (1142806, 6, '2021-06-17 12:06:30', 9999999);
INSERT INTO `tab_uac` VALUES (1142809, 6, '2021-06-21 13:31:43', 9999999);
INSERT INTO `tab_uac` VALUES (1142826, 6, '2021-06-17 11:45:39', 9999999);
INSERT INTO `tab_uac` VALUES (1142845, 6, '2021-06-17 12:06:42', 9999999);
INSERT INTO `tab_uac` VALUES (1142855, 6, '2021-06-23 11:31:26', 9999999);
INSERT INTO `tab_uac` VALUES (1152942, 6, '2021-06-17 12:09:59', 9999999);
INSERT INTO `tab_uac` VALUES (1152949, 6, '2021-06-17 11:53:44', 9999999);
INSERT INTO `tab_uac` VALUES (1153000, 6, '2021-06-28 16:53:55', 9999999);
INSERT INTO `tab_uac` VALUES (1153003, 6, '2021-06-17 12:48:00', 9999999);
INSERT INTO `tab_uac` VALUES (1153010, 6, '2021-07-02 10:34:05', 9999999);
INSERT INTO `tab_uac` VALUES (1153040, 6, '2021-06-17 12:12:52', 9999999);
INSERT INTO `tab_uac` VALUES (1153087, 6, '2021-06-21 13:25:46', 9999999);
INSERT INTO `tab_uac` VALUES (1153090, 6, '2021-06-17 13:56:21', 9999999);
INSERT INTO `tab_uac` VALUES (1153103, 6, '2021-04-14 14:49:26', 1193755);
INSERT INTO `tab_uac` VALUES (1153162, 6, '2021-06-17 12:31:32', 9999999);
INSERT INTO `tab_uac` VALUES (1153199, 6, '2021-06-17 13:32:18', 9999999);
INSERT INTO `tab_uac` VALUES (1153216, 6, '2021-04-27 11:38:40', 1153216);
INSERT INTO `tab_uac` VALUES (1173426, 6, '2021-06-17 11:39:26', 9999999);
INSERT INTO `tab_uac` VALUES (1173448, 6, '2021-07-01 19:59:56', 9999999);
INSERT INTO `tab_uac` VALUES (1183556, 6, '2021-08-03 16:15:09', 9999999);
INSERT INTO `tab_uac` VALUES (1183636, 6, '2021-08-10 13:58:15', 9999999);
INSERT INTO `tab_uac` VALUES (1183641, 6, '2021-06-21 13:22:09', 9999999);
INSERT INTO `tab_uac` VALUES (1183642, 6, '2021-06-21 13:55:10', 9999999);
INSERT INTO `tab_uac` VALUES (1183653, 6, '2021-06-22 16:40:55', 9999999);
INSERT INTO `tab_uac` VALUES (1193702, 6, '2021-04-14 14:32:03', 1193755);
INSERT INTO `tab_uac` VALUES (1193748, 6, '2021-04-14 14:33:30', 1193748);
INSERT INTO `tab_uac` VALUES (1193755, 6, '2021-04-19 08:11:07', 1193755);
INSERT INTO `tab_uac` VALUES (1193761, 6, '2021-06-28 11:42:31', 9999999);
INSERT INTO `tab_uac` VALUES (1193771, 6, '2021-06-22 14:07:37', 9999999);
INSERT INTO `tab_uac` VALUES (1193825, 6, '2021-07-13 14:21:51', 9999999);
INSERT INTO `tab_uac` VALUES (6221303, 6, '2021-06-23 21:16:03', 9999999);
INSERT INTO `tab_uac` VALUES (6231200, 6, '2021-07-14 10:51:52', 9999999);
INSERT INTO `tab_uac` VALUES (6231865, 6, '2021-06-24 16:08:18', 9999999);
INSERT INTO `tab_uac` VALUES (1153216, 7, '2021-04-27 11:38:40', 1153216);
INSERT INTO `tab_uac` VALUES (1193755, 7, '2021-04-19 08:11:07', 1193755);
COMMIT;

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `user_nip` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_comp` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`user_nip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_user
-- ----------------------------
BEGIN;
INSERT INTO `tab_user` VALUES (1000083, 1, 0, '', 'GATOT SETIYONO', 'gatot.setiyono@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 15:57:14', 9999999, 'Developer Metro TV', '2021-06-17 15:57:14');
INSERT INTO `tab_user` VALUES (1000149, 1, 0, '', 'MEDO MAULIANZA', 'medo.maulianza@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-16 15:10:01', 9999999, 'Developer Metro TV', '2021-06-16 15:10:01');
INSERT INTO `tab_user` VALUES (1061248, 1, 0, '', 'PRIHADI', 'prihadi.prihadi@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-11 16:13:58', 9999999, 'Developer Metro TV', '2021-06-11 16:13:58');
INSERT INTO `tab_user` VALUES (1071334, 3, 0, 'Metro TV', 'TONY SURYANTO', 'tony.suryanto@metrotvnews.com', '081399006919', 9999999, 'Developer Metro TV', '2021-06-21 13:12:12', 1111788, 'ADITYA YUDHA', '2021-06-21 15:57:59');
INSERT INTO `tab_user` VALUES (1081539, 2, 1, 'Metro TV', 'SEFRI HIDAYAT', 'sefri@metrotvnews.com', '085720077277', 1111788, 'ADITYA YUDHA', '2021-06-23 12:36:26', 1111788, 'ADITYA YUDHA', '2021-06-23 12:36:26');
INSERT INTO `tab_user` VALUES (1091594, 1, 0, '', 'DENI FAUZAN SAPUTRA', 'deni.fauzan@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:39:26', 9999999, 'Developer Metro TV', '2021-06-17 11:39:26');
INSERT INTO `tab_user` VALUES (1111788, 3, 0, 'Metro TV', 'ADITYA YUDHA', 'aditya.yudha@metrotvnews.com', '087875477798', 1193755, 'Varuna Dewi', '2021-04-01 14:56:24', 1193755, 'Varuna Dewi', '2021-04-01 14:56:24');
INSERT INTO `tab_user` VALUES (1111829, 1, 0, '', 'GITHA FARAHDINA', 'githa.farahdina@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:42:20', 9999999, 'Developer Metro TV', '2021-06-17 11:42:20');
INSERT INTO `tab_user` VALUES (1121978, 1, 0, '', 'WILLY HARYONO', 'willy.haryono@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:10:20', 9999999, 'Developer Metro TV', '2021-06-17 12:10:20');
INSERT INTO `tab_user` VALUES (1121983, 1, 0, '', 'MAULANI PRATIWI', 'maulani.pratiwi@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-29 18:32:32', 9999999, 'Developer Metro TV', '2021-06-29 18:32:32');
INSERT INTO `tab_user` VALUES (1121997, 2, 2, 'Metro TV', 'BAYU YANU WIRANTO', 'bayu.wiranto@metrotvnews.com', '085693108862', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:07:16', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:07:16');
INSERT INTO `tab_user` VALUES (1122070, 2, 2, 'Metro TV', 'M. ROYANDI RAMADHAN', 'muhammad.royandi@metrotvnews.com', '0812194555461', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:59:09', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:59:09');
INSERT INTO `tab_user` VALUES (1122081, 2, 1, 'Metro TV', 'ALVINDO', 'alvindo_21@metrotvnews.com', '085217667570', 1111788, 'ADITYA YUDHA', '2021-06-23 12:08:06', 1111788, 'ADITYA YUDHA', '2021-06-23 12:08:06');
INSERT INTO `tab_user` VALUES (1122082, 3, 0, 'Metro TV', 'BAYU AJIE ARIBOWO', 'bayu.aribowo@metrotvnews.com', '081234123222', 1193755, 'Varuna Dewi', '2021-04-01 14:56:09', 1193755, 'Varuna Dewi', '2021-04-01 14:56:09');
INSERT INTO `tab_user` VALUES (1122090, 3, 0, 'Metro TV', 'ANDI ANWAR IKHRAM', 'andi.ikhram@metrotvnews.com', '085888455510', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:58:34', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:58:34');
INSERT INTO `tab_user` VALUES (1122091, 2, 2, 'Metro TV', 'RONI APRIANTO', 'roni.aprianto@metrotvnews.com', '085727348869', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:58:15', 1122082, 'BAYU AJIE ARIBOWO', '2021-06-21 12:17:22');
INSERT INTO `tab_user` VALUES (1122165, 2, 2, 'Metro TV', 'TATY NUR FITRIANI', 'taty.nur@metrotvnews.com', '081383180823', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:00:58', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:00:58');
INSERT INTO `tab_user` VALUES (1132200, 1, 0, '', 'WIJOKONGKO', 'wijokongko@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:42:06', 9999999, 'Developer Metro TV', '2021-06-17 11:42:06');
INSERT INTO `tab_user` VALUES (1132256, 1, 0, '', 'ARI RIZKI OKTAVIANO', 'ari.oktaviano@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-08-05 15:26:32', 9999999, 'Developer Metro TV', '2021-08-05 15:26:32');
INSERT INTO `tab_user` VALUES (1132287, 3, 0, 'Metro TV', 'M. ARYA RANGGA WIRANATAKUSUMAH', 'ranggayoman@yahoo.com', '087872125121', 9999999, 'Developer Metro TV', '2021-06-07 14:52:23', 1111788, 'ADITYA YUDHA', '2021-06-23 12:05:50');
INSERT INTO `tab_user` VALUES (1132407, 1, 0, '', 'LUKMAN DIAHSARI', 'lukman.ds@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:29:50', 9999999, 'Developer Metro TV', '2021-06-17 12:29:50');
INSERT INTO `tab_user` VALUES (1132408, 1, 0, '', 'DENY IRWANTO', 'denyirwanto@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:34:56', 9999999, 'Developer Metro TV', '2021-06-17 12:34:56');
INSERT INTO `tab_user` VALUES (1132409, 1, 0, '', 'DESI ANGRIANI', 'desiangriani@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:34:27', 9999999, 'Developer Metro TV', '2021-06-17 12:34:27');
INSERT INTO `tab_user` VALUES (1132411, 1, 0, '', 'RENATHA SWASTY MBUI', 'renatha.swasty@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:44:20', 9999999, 'Developer Metro TV', '2021-06-17 11:44:20');
INSERT INTO `tab_user` VALUES (1132605, 1, 0, '', 'SUCI TILAWATI', 'suci.tilwati@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-16 17:46:55', 9999999, 'Developer Metro TV', '2021-06-16 17:46:55');
INSERT INTO `tab_user` VALUES (1132636, 1, 0, '', 'HUSEN MIFTAHUDIN', 'husen.miftahudin@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:26:21', 9999999, 'Developer Metro TV', '2021-06-17 12:26:21');
INSERT INTO `tab_user` VALUES (1132637, 1, 0, '', 'NIA DEVIYANA', 'nia.deviyana@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:05:32', 9999999, 'Developer Metro TV', '2021-06-17 12:05:32');
INSERT INTO `tab_user` VALUES (1132639, 1, 0, '', 'SUCI SEDYA UTAMI', 'suci.utami@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-18 11:00:10', 9999999, 'Developer Metro TV', '2021-06-18 11:00:10');
INSERT INTO `tab_user` VALUES (1142735, 1, 0, '', 'AL ABRAR', 'alabrar_1984@yahoo.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:30:27', 9999999, 'Developer Metro TV', '2021-06-17 12:30:27');
INSERT INTO `tab_user` VALUES (1142737, 1, 0, '', 'WANDA INDANA', 'indanawanda@gmail.com', '', 9999999, 'Developer Metro TV', '2021-06-21 13:24:46', 9999999, 'Developer Metro TV', '2021-06-21 13:24:46');
INSERT INTO `tab_user` VALUES (1142806, 1, 0, '', 'ADE HAPSARI LESTARINI', 'ade.lestarini@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:06:30', 9999999, 'Developer Metro TV', '2021-06-17 12:06:30');
INSERT INTO `tab_user` VALUES (1142809, 1, 0, '', 'M. REZA MAHARDDHIKA', 'reza.maharddhika@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-21 13:31:43', 9999999, 'Developer Metro TV', '2021-06-21 13:31:43');
INSERT INTO `tab_user` VALUES (1142826, 1, 0, '', 'LENI ANGGRAENI', 'leni.anggraeni@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:45:38', 9999999, 'Developer Metro TV', '2021-06-17 11:45:38');
INSERT INTO `tab_user` VALUES (1142845, 1, 0, '', 'FAJAR NUGRAHA', 'fjr.nugraha@gmail.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:06:42', 9999999, 'Developer Metro TV', '2021-06-17 12:06:42');
INSERT INTO `tab_user` VALUES (1142855, 2, 1, 'Metro TV', 'ADINDA RIZA PUTRI', 'adinda.putri@metrotvnews.com', '085733476338', 9999999, 'Developer Metro TV', '2021-06-23 11:31:25', 1111788, 'ADITYA YUDHA', '2021-06-23 11:50:11');
INSERT INTO `tab_user` VALUES (1142859, 2, 2, 'Metro TV', 'M. IKBAL', 'muhammad.ikbal@metrotvnews.com', '081284135669', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:59:59', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:59:59');
INSERT INTO `tab_user` VALUES (1142884, 2, 1, 'Medcom', 'GREGORIUS YOHANDI', 'gregorius.yohandi@medcom.id', '08561390242', 9999999, 'Developer Metro TV', '2021-06-23 10:05:08', 1111788, 'ADITYA YUDHA', '2021-06-23 10:27:27');
INSERT INTO `tab_user` VALUES (1152942, 1, 0, '', 'ANNISA AYU ARTANTI', 'annisa.artanti@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:09:59', 9999999, 'Developer Metro TV', '2021-06-17 12:09:59');
INSERT INTO `tab_user` VALUES (1152949, 1, 0, '', 'ARGA SUMANTRI', 'argasumantri@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:53:44', 9999999, 'Developer Metro TV', '2021-06-17 11:53:44');
INSERT INTO `tab_user` VALUES (1153000, 1, 0, '', 'MARGARET PUSPITARINI', '', '', 9999999, 'Developer Metro TV', '2021-06-28 16:53:55', 9999999, 'Developer Metro TV', '2021-06-28 16:53:55');
INSERT INTO `tab_user` VALUES (1153003, 1, 0, '', 'ANGGA BRATADHARMA', 'angga.bratadharma@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:48:00', 9999999, 'Developer Metro TV', '2021-06-17 12:48:00');
INSERT INTO `tab_user` VALUES (1153010, 1, 0, '', 'R. TRIO SETYO MURDOWO', 'trio.murdowo@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-07-02 10:34:05', 9999999, 'Developer Metro TV', '2021-07-02 10:34:05');
INSERT INTO `tab_user` VALUES (1153013, 2, 2, 'Metro TV', 'M. AVIAN DWI CAHYO', 'mochammad.avian@metrotvnews.com', '082111183800', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:56:21', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:56:21');
INSERT INTO `tab_user` VALUES (1153026, 3, 2, 'Metro TV', 'FATHAN ARIEF H', 'fathan.arief@metrotvnews.com', '082210000686', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:57:43', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 16:57:58');
INSERT INTO `tab_user` VALUES (1153040, 1, 0, '', 'HARIANTY', 'harianty@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:12:52', 9999999, 'Developer Metro TV', '2021-06-17 12:12:52');
INSERT INTO `tab_user` VALUES (1153087, 1, 0, '', 'DAMANG NAULI LUBIS', 'damang.lubis@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-21 13:25:46', 9999999, 'Developer Metro TV', '2021-06-21 13:25:46');
INSERT INTO `tab_user` VALUES (1153090, 1, 0, '', 'ARVI RISTIANI PRATAMI', 'arvi.ristiani@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 13:56:21', 9999999, 'Developer Metro TV', '2021-06-17 13:56:21');
INSERT INTO `tab_user` VALUES (1153103, 3, 0, 'Metro TV', 'M. RIZA SETIAWAN', 'riza.setiawan@metrotvnews.com', '085751773322', 1193755, 'Varuna Dewi', '2021-04-14 14:48:57', 1193755, 'Varuna Dewi', '2021-04-14 14:48:57');
INSERT INTO `tab_user` VALUES (1153162, 1, 0, '', 'SRI YANTI NAINGGOLAN', 'srinainggolan@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 12:31:32', 9999999, 'Developer Metro TV', '2021-06-17 12:31:32');
INSERT INTO `tab_user` VALUES (1153191, 2, 1, 'METRO TV', 'YOSUA FIRDAUS PALALLO', 'yosua.firdaus@metrotvnews.com', '08119880504', 1153103, 'M. RIZA SETIAWAN', '2021-06-21 12:47:01', 1153103, 'M. RIZA SETIAWAN', '2021-06-21 12:47:01');
INSERT INTO `tab_user` VALUES (1153199, 1, 0, '', 'WAHYU DWI ANGGORO', 'wahyu.d.anggoro@gmail.com', '', 9999999, 'Developer Metro TV', '2021-06-17 13:32:17', 9999999, 'Developer Metro TV', '2021-06-17 13:32:17');
INSERT INTO `tab_user` VALUES (1153216, 3, 0, 'Metro TV', 'ANDRIANI SUASTIYU', 'andriani.suastiyu@metrotvnews.com', '083888968998', 1193748, 'Seftian Alfredo', '2021-03-29 11:03:52', 1193748, 'Seftian Alfredo', '2021-03-29 11:03:52');
INSERT INTO `tab_user` VALUES (1173426, 1, 0, '', 'ARIE', 'arie.bachdar@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-17 11:39:25', 9999999, 'Developer Metro TV', '2021-06-17 11:39:25');
INSERT INTO `tab_user` VALUES (1173448, 1, 0, '', 'AN\'AM ABDA\'OE SANI', 'anamabdaoe@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-07-01 19:59:56', 9999999, 'Developer Metro TV', '2021-07-01 19:59:56');
INSERT INTO `tab_user` VALUES (1173506, 2, 1, 'Metro TV', 'IVAN REYNALDI SYAPUTRA', 'navisyaputra@gmail.com', '082147548868', 1111788, 'ADITYA YUDHA', '2021-06-23 12:09:12', 1111788, 'ADITYA YUDHA', '2021-06-23 12:09:12');
INSERT INTO `tab_user` VALUES (1173512, 2, 1, 'Metro TV', 'ARUM PRAFITRI', 'arum.prafitri@metrotvnews.com', '085925062715', 1111788, 'ADITYA YUDHA', '2021-06-23 12:09:59', 1111788, 'ADITYA YUDHA', '2021-06-23 12:09:59');
INSERT INTO `tab_user` VALUES (1183554, 2, 1, 'Metro TV', 'ANNIKA RISMA LIANITA', 'annika.lianita@metrotvnews.com', '081212156143', 1111788, 'ADITYA YUDHA', '2021-06-23 12:11:58', 1111788, 'ADITYA YUDHA', '2021-06-23 12:11:58');
INSERT INTO `tab_user` VALUES (1183556, 1, 0, '', 'BOBBY CHRISTIAN', 'bobbychristiandien@gmail.com', '', 9999999, 'Developer Metro TV', '2021-08-03 16:15:08', 9999999, 'Developer Metro TV', '2021-08-03 16:15:08');
INSERT INTO `tab_user` VALUES (1183636, 1, 0, '', 'DESKA MAHARDIKA PUTRI', 'deskamahar@gmail.com', '', 9999999, 'Developer Metro TV', '2021-08-10 13:58:15', 9999999, 'Developer Metro TV', '2021-08-10 13:58:15');
INSERT INTO `tab_user` VALUES (1183641, 1, 0, '', 'INDRA MAULANA', 'indramaulana@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-21 13:22:09', 9999999, 'Developer Metro TV', '2021-06-21 13:22:09');
INSERT INTO `tab_user` VALUES (1183642, 1, 0, '', 'WIN MUHAMMAD ADAB', 'win@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-21 13:55:10', 9999999, 'Developer Metro TV', '2021-06-21 13:55:10');
INSERT INTO `tab_user` VALUES (1183653, 1, 0, '', 'DANANDIKA PRAMASTO', 'danandika.pramasto@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-22 16:40:55', 9999999, 'Developer Metro TV', '2021-06-22 16:40:55');
INSERT INTO `tab_user` VALUES (1193702, 3, 0, 'Metro TV', 'FADHLY MUHARRAM', 'fadhlym@gmail.com', '085886398830', 1111788, 'Aditya Yudha', '2021-04-06 17:56:34', 1111788, 'Aditya Yudha', '2021-04-06 17:56:34');
INSERT INTO `tab_user` VALUES (1193726, 2, 1, 'Metro TV', 'NURUL NOVIANA RAFIKA', 'nurul.noviana@metrotvnews.com', '085719149161', 1193748, 'Seftian Alfredo', '2021-03-17 09:28:17', 1193748, 'Seftian Alfredo', '2021-03-29 11:04:22');
INSERT INTO `tab_user` VALUES (1193733, 2, 2, 'Metro TV', 'KURNAIN ARSYI RAMADHAN', 'kurnain.ramadhan@metrotvnews.com', '085774439141', 1193748, 'Seftian Alfredo', '2021-03-17 09:29:18', 1193748, 'Seftian Alfredo', '2021-03-17 09:29:18');
INSERT INTO `tab_user` VALUES (1193741, 2, 1, 'Metro TV', 'MUHAMMAD BASAR NGARINGGOMI', 'basaromi43@gmail.com', '081271597103', 1111788, 'ADITYA YUDHA', '2021-06-23 12:25:12', 1111788, 'ADITYA YUDHA', '2021-06-23 12:25:12');
INSERT INTO `tab_user` VALUES (1193748, 3, 0, 'Metro TV', 'SEFTIAN ALFREDO', 'seftian.alfredo@metrotvnews.com', '087885803753', 1193748, 'Seftian Alfredo', '2021-03-17 09:28:43', 1193748, 'Seftian Alfredo', '2021-03-17 09:28:43');
INSERT INTO `tab_user` VALUES (1193751, 1, 0, '', 'ALTHEA ARIANI PUTRI', 'althea.putri@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-23 11:28:15', 9999999, 'Developer Metro TV', '2021-06-23 11:28:15');
INSERT INTO `tab_user` VALUES (1193755, 3, 0, 'Metro TV', 'VARUNA DEWI', 'varuna.dewi@metrotvnews.com', '085358632070', 1193748, 'Seftian Alfredo', '2021-03-17 09:27:27', 1193755, 'Varuna Dewi', '2021-03-30 09:43:40');
INSERT INTO `tab_user` VALUES (1193761, 1, 0, '', 'ABDEL RADZEQHY SHAFATHRA', 'aradzeqhy@gmail.com', '', 9999999, 'Developer Metro TV', '2021-06-28 11:42:31', 9999999, 'Developer Metro TV', '2021-06-28 11:42:31');
INSERT INTO `tab_user` VALUES (1193762, 2, 1, 'Metro TV', 'EMYR ZUHRI PAHLEVI', 'emyrzp@gmail.com', '082298062240', 1193702, 'FADHLY MUHARRAM', '2021-06-17 17:02:36', 1111788, 'ADITYA YUDHA', '2021-06-21 15:56:31');
INSERT INTO `tab_user` VALUES (1193764, 2, 1, 'Metro TV', 'ISNAR SITI SYARIFAH', 'isnar.syarifah@metrotvnews.com', '085891730410', 1111788, 'ADITYA YUDHA', '2021-06-23 12:27:40', 1111788, 'ADITYA YUDHA', '2021-06-23 12:27:40');
INSERT INTO `tab_user` VALUES (1193771, 1, 0, '', 'AHMAD AKMAL SAID', 'akmal.metrotv@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-22 14:07:37', 9999999, 'Developer Metro TV', '2021-06-22 14:07:37');
INSERT INTO `tab_user` VALUES (1193814, 2, 2, 'Metro TV', 'HAFIZ SUDWICAKSONO PRADITYA', 'hafiz.praditya@metrotvnews.com', '081280802502', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:00:28', 1122082, 'Bayu Ajie Aribowo', '2021-05-07 17:00:28');
INSERT INTO `tab_user` VALUES (1193825, 1, 0, '', 'KURNIA BETI', 'kurnia.beti@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-07-13 14:21:51', 9999999, 'Developer Metro TV', '2021-07-13 14:21:51');
INSERT INTO `tab_user` VALUES (6221303, 1, 0, '', 'M. ZAKARIA RHAZES', 'muhammad.rhazes@metrotvnews.com', '', 9999999, 'Developer Metro TV', '2021-06-23 21:16:03', 9999999, 'Developer Metro TV', '2021-06-23 21:16:03');
INSERT INTO `tab_user` VALUES (6231198, 2, 1, 'Medcom', 'AKBAR FERNANDA', 'akbar.fernanda@gmail.com', '085716246255', 1193702, 'FADHLY MUHARRAM', '2021-06-17 17:01:59', 1111788, 'ADITYA YUDHA', '2021-06-23 11:15:40');
INSERT INTO `tab_user` VALUES (6231200, 1, 0, '', 'MUHAMMAD ALFIAN AULIA', 'alfian.aulia@medcom.id', '', 9999999, 'Developer Metro TV', '2021-07-14 10:51:51', 9999999, 'Developer Metro TV', '2021-07-14 10:51:51');
INSERT INTO `tab_user` VALUES (6231865, 1, 0, '', 'ARLIN NURSOPHIANA', '0', '', 9999999, 'Developer Metro TV', '2021-06-24 16:08:18', 9999999, 'Developer Metro TV', '2021-06-24 16:08:18');
INSERT INTO `tab_user` VALUES (6231979, 2, 1, 'Medcom', 'BENEDIKTUS AJI ANDANDI', 'ben.andandi@medcom.id', '085717862282', 1193702, 'FADHLY MUHARRAM', '2021-06-17 17:05:34', 1111788, 'ADITYA YUDHA', '2021-06-23 10:28:46');
COMMIT;

-- ----------------------------
-- Table structure for tab_web_designer
-- ----------------------------
DROP TABLE IF EXISTS `tab_web_designer`;
CREATE TABLE `tab_web_designer` (
  `web_designer_id` int(11) NOT NULL AUTO_INCREMENT,
  `web_designer_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Non Other',
  `web_designer_name` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`web_designer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_web_designer
-- ----------------------------
BEGIN;
INSERT INTO `tab_web_designer` VALUES (2, 1, 'Wireframing', 999999, '2021-02-12 11:48:49', 999999, '2021-02-12 11:48:49');
INSERT INTO `tab_web_designer` VALUES (3, 1, 'Visual Layout', 999999, '2021-02-12 11:49:06', 999999, '2021-02-12 11:49:06');
INSERT INTO `tab_web_designer` VALUES (4, 1, 'Konversi Layout ke HTML dan CSS', 999999, '2021-02-12 11:49:26', 999999, '2021-02-12 11:49:26');
INSERT INTO `tab_web_designer` VALUES (5, 1, 'Susunan Markup dan HTML', 999999, '2021-02-12 11:49:42', 999999, '2021-02-12 11:49:42');
INSERT INTO `tab_web_designer` VALUES (6, 1, 'Maintenance Portal', 999999, '2021-02-12 11:49:55', 999999, '2021-02-12 11:49:55');
INSERT INTO `tab_web_designer` VALUES (7, 1, 'SEO Specialiast', 999999, '2021-02-12 11:50:05', 999999, '2021-02-12 11:50:05');
COMMIT;

-- ----------------------------
-- Table structure for tr_attachment
-- ----------------------------
DROP TABLE IF EXISTS `tr_attachment`;
CREATE TABLE `tr_attachment` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `attachment_name` varchar(255) NOT NULL,
  PRIMARY KEY (`attachment_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_attachment
-- ----------------------------
BEGIN;
INSERT INTO `tr_attachment` VALUES (4, 8, 'fe709aa08340de5eae47d135ebdaff3f.jpg');
INSERT INTO `tr_attachment` VALUES (5, 9, '43f72f409645172a2c10b34c581c4c6d.jpg');
INSERT INTO `tr_attachment` VALUES (6, 9, '10bf8e9ec77c561e647c25eb8d5314e0.jpg');
INSERT INTO `tr_attachment` VALUES (7, 9, '18752b2273fcfe65a700788447e286b2.jpg');
INSERT INTO `tr_attachment` VALUES (8, 10, '5db1e2a7c02bd2eb633a16428ac79117.psd');
INSERT INTO `tr_attachment` VALUES (9, 10, '572e76966d9ea6c1f980637d24443722.psd');
INSERT INTO `tr_attachment` VALUES (10, 11, 'd146bd433f8fa3448b717381ba97111f.jpg');
INSERT INTO `tr_attachment` VALUES (12, 15, '5df58e06597c750f7c42ba557e161819.jpeg');
INSERT INTO `tr_attachment` VALUES (13, 20, '7e5952f308410c1bb95b78247bf855ca.pdf');
INSERT INTO `tr_attachment` VALUES (14, 21, '376c0f9cc10735113673b89536d3bb2e.jpg');
INSERT INTO `tr_attachment` VALUES (15, 22, 'c3f2f1058ce8343d99b0e446981b03ca.jpg');
INSERT INTO `tr_attachment` VALUES (16, 22, '625bcc7bc77390c9cc2fea4ef678d435.jpg');
INSERT INTO `tr_attachment` VALUES (17, 22, 'a5015c3046d887364a4fd1aac068e32b.jpg');
INSERT INTO `tr_attachment` VALUES (18, 22, '25c495e100be247c6cb887d6aace6afd.jpg');
INSERT INTO `tr_attachment` VALUES (19, 22, '79b2431ab6d4b276d0852d9ca1e37a02.jpg');
INSERT INTO `tr_attachment` VALUES (20, 22, 'd709bd598cff98807120bd8a940318d4.jpeg');
INSERT INTO `tr_attachment` VALUES (21, 22, '20b86399f3a7f195b384644ae4d42f46.jpeg');
INSERT INTO `tr_attachment` VALUES (22, 23, '25ea903c2f6ff88d165666b839eabfdd.jpg');
INSERT INTO `tr_attachment` VALUES (23, 23, 'd0c6f2a1c8ea31e78d7bc4abd437acf6.jpg');
INSERT INTO `tr_attachment` VALUES (24, 23, 'da701563f0d15030d6b0c39dde6f4e7f.jpg');
INSERT INTO `tr_attachment` VALUES (25, 23, '8ad945f74979596581458f127e30b22c.jpg');
INSERT INTO `tr_attachment` VALUES (26, 23, '5858c74336128d626a5d2bb99339a508.jpg');
INSERT INTO `tr_attachment` VALUES (27, 23, '0526fe2839b7f1034ef7e16be8ae4c96.jpeg');
INSERT INTO `tr_attachment` VALUES (28, 23, 'befea2b2f70c9b685bbc5f67aa429090.jpeg');
INSERT INTO `tr_attachment` VALUES (29, 25, '482b1bd3fb228fdb9ead7d8436d4b136.jpeg');
INSERT INTO `tr_attachment` VALUES (30, 27, '91adf64d073168bab9b762329280a209.jpg');
INSERT INTO `tr_attachment` VALUES (31, 29, 'e8effd280190aa43d2a27a6b34739456.jpeg');
INSERT INTO `tr_attachment` VALUES (32, 32, 'bd682ae9f625deacaa731579ca27b7c6.jpeg');
INSERT INTO `tr_attachment` VALUES (33, 34, '2f133cb06dcf6b53b8f3fab4dc4a1a1a.jpg');
INSERT INTO `tr_attachment` VALUES (34, 34, '8d75af026fa5b8a43d47a33a5008d083.jpg');
INSERT INTO `tr_attachment` VALUES (35, 34, 'bd380ae624973b21d432ee82021a2263.jpg');
INSERT INTO `tr_attachment` VALUES (36, 34, 'a803272f54ed36d366c3e65d036c4d32.jpg');
INSERT INTO `tr_attachment` VALUES (37, 34, '859a6077524efc4eb5c153fd3458ec8b.jpg');
INSERT INTO `tr_attachment` VALUES (38, 34, 'd883c82050e929344a5bc087286a16fd.jpg');
INSERT INTO `tr_attachment` VALUES (39, 35, '6122b2ffe3c1d403867cf7bdd642c74c.docx');
INSERT INTO `tr_attachment` VALUES (40, 36, '120efcffa87b04cf12a40d19cfa62057.jpeg');
INSERT INTO `tr_attachment` VALUES (41, 37, '3c5c9855f0349f6d4d16c9731166c097.jpg');
INSERT INTO `tr_attachment` VALUES (44, 40, '14cfdc43b25b5a87bdd5742ec528f94a.jpg');
INSERT INTO `tr_attachment` VALUES (45, 40, '1dba5ff3e18798078fd60126cdcee86a.jpg');
INSERT INTO `tr_attachment` VALUES (46, 42, 'd97703c6835ae23db687502dcf0ea550.jpg');
INSERT INTO `tr_attachment` VALUES (47, 43, 'f4372dabef1bf247fe0cb733b88b2f29.png');
INSERT INTO `tr_attachment` VALUES (48, 44, '6fe9ac857caff9e0e05ed2412fa8ee34.jpeg');
INSERT INTO `tr_attachment` VALUES (49, 45, '679605f7f59c4b32a7ac96414bb0fccf.jpg');
INSERT INTO `tr_attachment` VALUES (50, 47, '754d4319c0b006ba3bfc36c6989c984a.jpeg');
INSERT INTO `tr_attachment` VALUES (51, 48, 'adfc67987c65f0ecb2cd760330c874e6.pptx');
INSERT INTO `tr_attachment` VALUES (52, 50, '80be4a010372488c91471abbb8a12afa.jpeg');
INSERT INTO `tr_attachment` VALUES (53, 52, '03c5d0a44949df2dd0706f64e787ed48.jpeg');
INSERT INTO `tr_attachment` VALUES (54, 53, '964116aa7002ebe0a8eccfd4ff65ec54.jpeg');
INSERT INTO `tr_attachment` VALUES (55, 53, '73c4ff3fcd9991bcdd2dc0769ffda447.jpeg');
INSERT INTO `tr_attachment` VALUES (56, 53, '6ae6692322cb98da972350904977e30e.jpeg');
INSERT INTO `tr_attachment` VALUES (57, 53, '09d97ac8b1bb4320569380912381bc07.jpeg');
INSERT INTO `tr_attachment` VALUES (58, 54, '41911b81d414a01e8c1ab5359d11dd96.docx');
INSERT INTO `tr_attachment` VALUES (59, 56, '23799028a2b138dd60288e14303a0f34.pdf');
INSERT INTO `tr_attachment` VALUES (60, 58, '6612340b1581e44a5b959ad6b1b3d893.jpeg');
INSERT INTO `tr_attachment` VALUES (61, 59, '776398412dd5e26113b90ebc9025ccfd.xlsx');
INSERT INTO `tr_attachment` VALUES (62, 60, 'fc4b994f76ac66bcd13f6e5e842cbae8.jpg');
INSERT INTO `tr_attachment` VALUES (63, 65, '01abad0651ad7ac4c4df75a1e842338a.jpeg');
INSERT INTO `tr_attachment` VALUES (64, 66, 'ef50a1d03d272f04c3edd14a2de1ff4a.jpeg');
INSERT INTO `tr_attachment` VALUES (65, 67, 'd5255ee3429b4a8e4ac0eb5cdfab5f8e.pdf');
INSERT INTO `tr_attachment` VALUES (72, 73, 'd4b6d8ad224a4accd3186a7b98ac4785.jpeg');
INSERT INTO `tr_attachment` VALUES (73, 73, 'afdd0c5fbc6c3f7131426adc64c97a84.png');
INSERT INTO `tr_attachment` VALUES (74, 73, '43d4794cfad2fc9ada80e2cc725fb6da.jpg');
INSERT INTO `tr_attachment` VALUES (75, 74, '658374b147cf413993a188cf5f18687f.jpg');
INSERT INTO `tr_attachment` VALUES (76, 74, 'fcf1baf595212bba8290c4c3aaf8c16e.jpg');
INSERT INTO `tr_attachment` VALUES (77, 74, '32a62399572013fe35c0f8eb3a33e0b1.jpg');
INSERT INTO `tr_attachment` VALUES (78, 74, 'c4c6dcf1806ecb0e9c39d7bd18d02c1c.jpg');
INSERT INTO `tr_attachment` VALUES (79, 75, '4aec3ea98fa4a91c39088c228363e1d3.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for tr_attachment_log
-- ----------------------------
DROP TABLE IF EXISTS `tr_attachment_log`;
CREATE TABLE `tr_attachment_log` (
  `attachment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `attachment_name` varchar(255) NOT NULL,
  PRIMARY KEY (`attachment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_attachment_log
-- ----------------------------
BEGIN;
INSERT INTO `tr_attachment_log` VALUES (1, 1, '441ef6683635b5bde7cecc9e6f4a1883.jpg');
COMMIT;

-- ----------------------------
-- Table structure for tr_chat_item_graphic
-- ----------------------------
DROP TABLE IF EXISTS `tr_chat_item_graphic`;
CREATE TABLE `tr_chat_item_graphic` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `chat_desc` text NOT NULL,
  `chat_sender` int(11) NOT NULL,
  `chat_sender_name` varchar(255) NOT NULL,
  `chat_sender_time` datetime NOT NULL,
  PRIMARY KEY (`chat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tr_chat_item_graphic
-- ----------------------------
BEGIN;
INSERT INTO `tr_chat_item_graphic` VALUES (1, 17, 'sudah di email ya mas, terimakasih', 6231198, 'AKBAR FERNANDA', '2021-06-24 15:17:13');
INSERT INTO `tr_chat_item_graphic` VALUES (2, 22, 'Done', 1142884, 'GREGORIUS YOHANDI', '2021-07-02 13:31:01');
INSERT INTO `tr_chat_item_graphic` VALUES (3, 22, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-02 13:34:34');
INSERT INTO `tr_chat_item_graphic` VALUES (4, 20, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-28 16:27:02');
COMMIT;

-- ----------------------------
-- Table structure for tr_detail_rating
-- ----------------------------
DROP TABLE IF EXISTS `tr_detail_rating`;
CREATE TABLE `tr_detail_rating` (
  `detail_rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `detail_rating_count` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`detail_rating_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_detail_rating
-- ----------------------------
BEGIN;
INSERT INTO `tr_detail_rating` VALUES (1, 1, 9, 0, 1061248, 'PRIHADI', '2021-06-21 12:56:09');
INSERT INTO `tr_detail_rating` VALUES (2, 2, 16, 0, 1061248, 'PRIHADI', '2021-06-21 13:43:05');
INSERT INTO `tr_detail_rating` VALUES (3, 3, 17, 0, 1132200, 'WIJOKONGKO', '2021-06-24 15:51:35');
INSERT INTO `tr_detail_rating` VALUES (4, 4, 19, 0, 1132200, 'WIJOKONGKO', '2021-06-30 07:03:27');
INSERT INTO `tr_detail_rating` VALUES (5, 5, 22, 0, 1132200, 'WIJOKONGKO', '2021-07-02 16:46:16');
INSERT INTO `tr_detail_rating` VALUES (6, 6, 24, 0, 1132200, 'WIJOKONGKO', '2021-07-05 17:25:49');
INSERT INTO `tr_detail_rating` VALUES (7, 7, 20, 0, 1153000, 'MARGARET PUSPITARINI', '2021-07-06 15:08:02');
INSERT INTO `tr_detail_rating` VALUES (8, 7, 21, 0, 1153000, 'MARGARET PUSPITARINI', '2021-07-06 15:08:02');
INSERT INTO `tr_detail_rating` VALUES (9, 8, 23, 0, 1142826, 'LENI ANGGRAENI', '2021-07-07 11:44:37');
INSERT INTO `tr_detail_rating` VALUES (10, 9, 25, 0, 1132200, 'WIJOKONGKO', '2021-07-07 13:12:20');
INSERT INTO `tr_detail_rating` VALUES (11, 10, 28, 0, 1132200, 'WIJOKONGKO', '2021-07-08 14:53:37');
INSERT INTO `tr_detail_rating` VALUES (12, 10, 29, 0, 1132200, 'WIJOKONGKO', '2021-07-08 14:53:37');
INSERT INTO `tr_detail_rating` VALUES (13, 11, 27, 0, 1142826, 'LENI ANGGRAENI', '2021-07-09 12:13:02');
INSERT INTO `tr_detail_rating` VALUES (14, 12, 30, 0, 1132200, 'WIJOKONGKO', '2021-07-13 10:11:10');
INSERT INTO `tr_detail_rating` VALUES (15, 13, 18, 5, 6231865, 'ARLIN NURSOPHIANA', '2021-07-14 10:50:17');
INSERT INTO `tr_detail_rating` VALUES (16, 14, 31, 0, 1142826, 'LENI ANGGRAENI', '2021-07-14 12:41:55');
INSERT INTO `tr_detail_rating` VALUES (17, 15, 35, 0, 1132200, 'WIJOKONGKO', '2021-07-15 14:29:18');
INSERT INTO `tr_detail_rating` VALUES (18, 16, 34, 0, 1132200, 'WIJOKONGKO', '2021-07-15 14:29:44');
INSERT INTO `tr_detail_rating` VALUES (19, 17, 26, 5, 1153000, 'MARGARET PUSPITARINI', '2021-07-16 14:26:59');
INSERT INTO `tr_detail_rating` VALUES (20, 18, 36, 0, 1142826, 'LENI ANGGRAENI', '2021-07-21 12:33:04');
INSERT INTO `tr_detail_rating` VALUES (21, 19, 37, 0, 1132200, 'WIJOKONGKO', '2021-07-22 15:44:53');
INSERT INTO `tr_detail_rating` VALUES (22, 20, 40, 0, 1142826, 'LENI ANGGRAENI', '2021-07-27 00:11:09');
INSERT INTO `tr_detail_rating` VALUES (23, 21, 41, 0, 1132200, 'WIJOKONGKO', '2021-07-27 11:09:07');
INSERT INTO `tr_detail_rating` VALUES (24, 22, 39, 0, 1132200, 'WIJOKONGKO', '2021-07-30 12:58:54');
INSERT INTO `tr_detail_rating` VALUES (25, 23, 43, 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-03 16:58:35');
INSERT INTO `tr_detail_rating` VALUES (26, 24, 44, 0, 1132200, 'WIJOKONGKO', '2021-08-05 10:37:48');
INSERT INTO `tr_detail_rating` VALUES (27, 25, 42, 0, 1142826, 'LENI ANGGRAENI', '2021-08-06 10:49:26');
INSERT INTO `tr_detail_rating` VALUES (28, 26, 47, 0, 1142826, 'LENI ANGGRAENI', '2021-08-06 17:58:02');
INSERT INTO `tr_detail_rating` VALUES (29, 27, 45, 0, 1132200, 'WIJOKONGKO', '2021-08-07 17:20:04');
INSERT INTO `tr_detail_rating` VALUES (30, 28, 51, 0, 1132200, 'WIJOKONGKO', '2021-08-10 16:16:09');
INSERT INTO `tr_detail_rating` VALUES (31, 29, 55, 0, 1132200, 'WIJOKONGKO', '2021-08-18 13:29:50');
INSERT INTO `tr_detail_rating` VALUES (32, 30, 50, 0, 1132200, 'WIJOKONGKO', '2021-08-18 13:29:59');
INSERT INTO `tr_detail_rating` VALUES (33, 31, 48, 0, 1132200, 'WIJOKONGKO', '2021-08-18 13:30:08');
INSERT INTO `tr_detail_rating` VALUES (34, 32, 52, 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:28:52');
INSERT INTO `tr_detail_rating` VALUES (35, 32, 53, 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:28:52');
INSERT INTO `tr_detail_rating` VALUES (36, 32, 54, 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:28:52');
INSERT INTO `tr_detail_rating` VALUES (37, 33, 46, 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:29:00');
INSERT INTO `tr_detail_rating` VALUES (38, 34, 65, 0, 1132200, 'WIJOKONGKO', '2021-08-26 08:41:14');
COMMIT;

-- ----------------------------
-- Table structure for tr_item_graphics
-- ----------------------------
DROP TABLE IF EXISTS `tr_item_graphics`;
CREATE TABLE `tr_item_graphics` (
  `item_graphics_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_graphics_category` varchar(255) NOT NULL,
  `item_graphics_sub_category` varchar(255) NOT NULL,
  `item_graphics_name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_graphics_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_item_graphics
-- ----------------------------
BEGIN;
INSERT INTO `tr_item_graphics` VALUES (12, 3, 'Graphic Design', 'Program Package', 'Logo Program');
INSERT INTO `tr_item_graphics` VALUES (13, 4, 'Motion Graphic', 'Event', 'Wall Tematik');
INSERT INTO `tr_item_graphics` VALUES (14, 4, 'Motion Graphic', 'Program Package', 'OBB');
INSERT INTO `tr_item_graphics` VALUES (15, 4, 'Motion Graphic', 'Program Package', 'BIBO');
INSERT INTO `tr_item_graphics` VALUES (16, 4, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (24, 6, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (33, 8, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (34, 9, 'Graphic Design', 'Client', 'Strategic Creative Placement');
INSERT INTO `tr_item_graphics` VALUES (35, 10, 'Graphic Design', 'Client', 'Strategic Creative Placement');
INSERT INTO `tr_item_graphics` VALUES (36, 11, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (37, 12, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (38, 12, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (39, 13, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (40, 14, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (41, 15, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (43, 19, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (44, 20, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (45, 21, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (47, 25, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (48, 26, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (49, 27, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (50, 28, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (51, 29, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (52, 30, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (53, 31, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (54, 32, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (55, 33, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (56, 34, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (57, 35, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (58, 36, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (59, 37, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (63, 40, 'Motion Graphic', 'Program Package', 'BIBO');
INSERT INTO `tr_item_graphics` VALUES (64, 40, 'Motion Graphic', 'Program Package', 'CG');
INSERT INTO `tr_item_graphics` VALUES (65, 40, 'Motion Graphic', 'Promotion', 'Promo Episodik');
INSERT INTO `tr_item_graphics` VALUES (66, 41, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (67, 42, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (68, 43, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (69, 44, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (70, 45, 'Motion Graphic', 'Program Package', 'BIBO');
INSERT INTO `tr_item_graphics` VALUES (71, 45, 'Motion Graphic', 'Program Package', 'CG');
INSERT INTO `tr_item_graphics` VALUES (72, 45, 'Motion Graphic', 'Promotion', 'Promo Episodik');
INSERT INTO `tr_item_graphics` VALUES (73, 46, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (74, 47, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (75, 48, 'Motion Graphic', 'Promotion', 'VT');
INSERT INTO `tr_item_graphics` VALUES (76, 49, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (77, 50, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (78, 51, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (79, 52, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (80, 53, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (81, 54, 'Motion Graphic', 'Client', 'Creative Placement');
INSERT INTO `tr_item_graphics` VALUES (82, 54, 'Motion Graphic', 'Event', 'VT Opening');
INSERT INTO `tr_item_graphics` VALUES (83, 54, 'Motion Graphic', 'Promotion', 'VT');
INSERT INTO `tr_item_graphics` VALUES (84, 54, 'Motion Graphic', 'Promotion', 'Public Service');
INSERT INTO `tr_item_graphics` VALUES (85, 55, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (86, 56, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (87, 57, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (88, 58, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (89, 59, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (90, 59, 'Tipe A', '-', 'Animasi 3D');
INSERT INTO `tr_item_graphics` VALUES (91, 59, 'Graphic Design', 'Event', 'Spanduk');
INSERT INTO `tr_item_graphics` VALUES (92, 59, 'Graphic Design', 'Promotion', 'Invitation Letter');
INSERT INTO `tr_item_graphics` VALUES (93, 60, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (94, 61, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (95, 62, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (96, 62, 'Set Landscape', '-', 'Visualisasi Studio 3');
INSERT INTO `tr_item_graphics` VALUES (97, 63, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (98, 63, 'Set Landscape', '-', 'Visualisasi Studio 3');
INSERT INTO `tr_item_graphics` VALUES (99, 64, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (100, 65, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (101, 66, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (102, 67, 'Set Landscape', '-', 'Desain set on air/off air');
INSERT INTO `tr_item_graphics` VALUES (103, 68, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (104, 69, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (105, 69, 'Tipe C', '-', 'Template Icon Data');
INSERT INTO `tr_item_graphics` VALUES (106, 69, 'Graphic Design', 'Program Package', 'Logo Program');
INSERT INTO `tr_item_graphics` VALUES (109, 72, 'Tipe B', '-', 'Infografis 2D');
INSERT INTO `tr_item_graphics` VALUES (110, 73, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (111, 74, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics` VALUES (112, 75, 'Tipe B', '-', 'Infografis 2D');
COMMIT;

-- ----------------------------
-- Table structure for tr_item_graphics_log
-- ----------------------------
DROP TABLE IF EXISTS `tr_item_graphics_log`;
CREATE TABLE `tr_item_graphics_log` (
  `item_graphics_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_graphics_category` varchar(255) NOT NULL,
  `item_graphics_sub_category` varchar(255) NOT NULL,
  `item_graphics_name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_graphics_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_item_graphics_log
-- ----------------------------
BEGIN;
INSERT INTO `tr_item_graphics_log` VALUES (1, 1, 'Tipe A', '-', 'Animasi 2D');
INSERT INTO `tr_item_graphics_log` VALUES (2, 1, 'Tipe A', '-', 'Animasi 3D');
INSERT INTO `tr_item_graphics_log` VALUES (3, 1, 'Tipe A', '-', 'Kickers');
INSERT INTO `tr_item_graphics_log` VALUES (4, 1, 'Tipe A', '-', 'Augmented');
COMMIT;

-- ----------------------------
-- Table structure for tr_order
-- ----------------------------
DROP TABLE IF EXISTS `tr_order`;
CREATE TABLE `tr_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_type` int(11) NOT NULL COMMENT '1 = Daily; 2 = Development',
  `order_name` varchar(255) NOT NULL,
  `order_deadline` datetime NOT NULL,
  `order_brief` text NOT NULL,
  `order_source` varchar(255) NOT NULL,
  `order_output` text NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0 = No; 1 = Yes',
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_order
-- ----------------------------
BEGIN;
INSERT INTO `tr_order` VALUES (3, 2, 'Inddonesia Green Summit 2021 ', '2021-06-21 00:00:00', 'logo program dengan 3 alternatif', '', '', 1, 1000149, 'MEDO MAULIANZA', '2021-06-16 15:18:11', 1000149, 'MEDO MAULIANZA', '2021-06-16 15:18:11');
INSERT INTO `tr_order` VALUES (4, 2, 'HUT DKI', '2021-06-20 00:00:00', 'Tolong buatkan untuk acara hut DKI.\r\nOBB, BOBO, Set desain untuk di studio grand', '', '', 1, 1061248, 'PRIHADI', '2021-06-17 19:09:19', 1061248, 'PRIHADI', '2021-06-17 19:09:19');
INSERT INTO `tr_order` VALUES (6, 1, 'metro siang', '0000-00-00 00:00:00', 'tolong buatkan graphic penambahan kasus covid di Pulau Jawa', 'NRC', '', 0, 1061248, 'PRIHADI', '2021-06-21 12:44:31', 1061248, 'PRIHADI', '2021-06-21 12:51:24');
INSERT INTO `tr_order` VALUES (8, 1, 'MHI', '0000-00-00 00:00:00', 'Tolong buatkan graphic Peta sebaran COvid di pulau Jawa', 'Datacaovid, NRC,', 'Dalet, Web.', 0, 1061248, 'PRIHADI', '2021-06-21 13:36:13', 1061248, 'PRIHADI', '2021-06-21 13:42:22');
INSERT INTO `tr_order` VALUES (9, 2, 'Launching dan Rapat Kerja Ditjen PHPL KLHK', '2021-06-24 00:00:00', 'membuat KV yg merepresentasikan linkungan hidup dgn warna Dominan Hijau dan kuning keemasan', '', 'landscape ukuyran full HD (1920x1080 px) format PNG ', 1, 1193771, 'AHMAD AKMAL SAID', '2021-06-22 14:21:53', 1193771, 'AHMAD AKMAL SAID', '2021-06-22 14:21:53');
INSERT INTO `tr_order` VALUES (10, 2, 'Danamon wealth series', '2021-07-06 00:00:00', 'Membuat still desain untuk kebutuhan multimedia konten, seperti : \r\n- Desain Looping Background speakers\r\n- Desain Looping Background narsum\r\n- Desain CG/lowerthird\r\n- Desain Content title\r\n- Desain Framing ( 1,2,3,ppt)\r\n', '', 'output landscape 16:9\r\nfile format jpg', 1, 1183653, 'DANANDIKA PRAMASTO', '2021-06-22 17:10:05', 1183653, 'DANANDIKA PRAMASTO', '2021-06-22 17:10:05');
INSERT INTO `tr_order` VALUES (11, 1, 'infografis', '2021-06-24 08:00:00', 'Om, saya minta tolong dibuatkan grafis dengan tema \'makanan tinggi kolesterol yang sebaiknya dihindari\'', 'https://www.medcom.id/gaya/fitness-health/xkEX8Mxb-jenis-makanan-tinggi-kolesterol-yang-sebaiknya-dihindari', 'Grafis berbentuk portrait dengan format file jpeg', 0, 1132200, 'WIJOKONGKO', '2021-06-23 09:49:06', 1132200, 'WIJOKONGKO', '2021-06-24 15:12:55');
INSERT INTO `tr_order` VALUES (12, 2, 'IMF X BAKTI KOMINFO', '2021-06-25 12:00:00', 'Membuat materi promo dan multimedia untuk kebutuhan pre-event & event IMF berdasarkan Key Visual yang telah ada. ', 'Tim Aktivasi IDM (M. Rhazes & Deska Mahardika)', '1. E-FLyer (Format Square dan Potrait untuk kebutuhan Instagram Feed dan Story)\r\n2. Virtual Background Moderator (FHD 1920 x 1080, file MP4)\r\n3. Virtual Background Narasumber (FHD 1920 x 1080, file MP4)\r\n4. Virtual Background Split (FHD 1920 x 1080, file MP4)\r\n5. OBB (FHD 1920 x 1080, file MP4) ada tambahan foto narasumber & logo client (to be updated)\r\n6. CBB (FHD 1920 x 1080, file MP4) ada tambahan logo client (to be updated)\r\n7. BI/BO (FHD 1920 x 1080, file MP4) ada tambahan logo client (to be updated)\r\n8. Template CG (file MOV Alva)\r\n9. Content Title Keynote Speaker (FHD 1920 x 1080, file MP4) ada tambahan nama dan foto speaker (to be updated)', 1, 6221303, 'M. ZAKARIA RHAZES', '2021-06-23 21:41:29', 6221303, 'M. ZAKARIA RHAZES', '2021-06-23 21:41:29');
INSERT INTO `tr_order` VALUES (13, 2, 'Launching dan Rapat Kerja Ditjen PHPL KLHK', '2021-06-28 00:00:00', 'membuat layout ruangan & design stage untuk acara Raker KLHK : \r\n1. Stage ukuran 9.6 m T : 60 cm dengan LED uk. 3x5 m dan kanan kiri LED diberi Ornamen (ornamen menyesuaikan yg tersedia d Inhouse selain tiang\"), matador TV 42 inch 2 unit, posisi tangga di tengah depan stage (contoh terlampir)\r\n2. Layout peserta dgn Sofa (60 unit) + Meja Kecil, Phisical Distancing (contoh terlampir) \r\n3. ukuran Ballroom 16 x 39 meter (di file menggunakan ballroom 2)\r\n\r\nNote : sederhananya dgn layout yg sudah ada minta dibuat berbeda ornamen stagenya + layout kursi disesuaikan untuk kapasitas 60 unit sofa.', '', 'Output detail design layout dan Gambar kerja untuk stage dan Layout ballroom ', 1, 1193771, 'AHMAD AKMAL SAID', '2021-06-24 10:31:34', 1193771, 'AHMAD AKMAL SAID', '2021-06-24 10:31:34');
INSERT INTO `tr_order` VALUES (14, 1, 'Web Banner mobile OSC', '2021-06-25 14:09:52', 'mohon untuk membuat design web banner mobil promo OSC 2021 ukuran 320X50 dalam format .gif\r\n\r\n(banner sudah jadi sebelumnya, req ini hanya untuk arsip)', 'medcom', 'web banner mobil promo OSC 2021 ukuran 320X50 dalam format .gif', 0, 6231865, 'ARLIN NURSOPHIANA', '2021-06-24 16:19:19', 6231865, 'ARLIN NURSOPHIANA', '2021-06-25 08:35:21');
INSERT INTO `tr_order` VALUES (15, 1, 'infografis untuk medcom.id', '2021-06-28 08:00:00', 'Om, mohon dibuatkan grafis dengan tema \'cara isolasi mandiri di rumah bagi pasien covid-19\'', 'https://www.medcom.id/nasional/peristiwa/xkEXvjxb-isolasi-mandiri-di-rumah-perhatikan-hal-hal-ini', 'Infografis berbentuk lanskape, ditambah tumbnail. contoh infografis ada di lampiran', 0, 1132200, 'WIJOKONGKO', '2021-06-26 15:26:45', 1132200, 'WIJOKONGKO', '2021-06-29 19:32:49');
INSERT INTO `tr_order` VALUES (16, 2, 'Metro iCare (Kalbe)', '2021-06-29 00:00:00', 'Sebelum Program Hamil, Persiapkan Hal Ini\r\n\r\n1. Pola Makan Sehat dan Seimbang\r\nTerapkan pola makan sehat dan seimbang tiga bulan sebelum program hamil berjalan untuk meningkatkan kesuburan.\r\n\r\n2. Hindari Stres\r\nStudi menyebutkan, stres bisa menjadi salah satu penyebab infertilitas.\r\n\r\n3. Olahraga\r\nHindari olahraga berat dan berlebihan, termasuk gerakan olahraga yang melibatkan otot perut, seperti push up. Cobalah olahraga, seperti aerobik, jalan kaki, jogging, dan bersepeda.\r\n\r\n4. Capai dan Pertahankan Berat Badan Ideal\r\nIndeks massa tubuh ideal berkisar antara 20-25. Berat badan yang ideal membantu Anda mengurangi risiko terjadinya komplikasi saat kehamilan.\r\n\r\n5. Hindari Rokok, Kafein, dan Alkohol\r\nKebiasaan merokok, serta mengonsumsi kafein dan alkohol dapat mengganggu sistem reproduksi baik wanita maupun pria.\r\n\r\n6. Tidur Cukup\r\nSebelum dan selama program hamil, tidurlah 8 jam setiap hari untuk meningkatkan daya tahan tubuh dan produksi melatonin.', '', 'Infografis untuk Instagram', 1, 1153000, 'MARGARET PUSPITARINI', '2021-06-28 17:10:37', 1153000, 'MARGARET PUSPITARINI', '2021-06-28 17:10:37');
INSERT INTO `tr_order` VALUES (17, 2, 'Metro iCare (Kalbe)', '2021-06-29 00:00:00', 'Sebelum Program Hamil, Persiapkan Hal Ini\r\n\r\n1.	Pola Makan Sehat dan Seimbang\r\nTerapkan pola makan sehat dan seimbang tiga bulan sebelum program hamil berjalan untuk meningkatkan kesuburan.\r\n\r\n2.	Hindari Stres\r\nStudi menyebutkan, stres bisa menjadi salah satu penyebab infertilitas.\r\n\r\n3.	Olahraga\r\nHindari olahraga berat dan berlebihan, termasuk gerakan olahraga yang melibatkan otot perut, seperti push up. Cobalah olahraga, seperti aerobik, jalan kaki, jogging, dan bersepeda.\r\n\r\n4.	Capai dan Pertahankan Berat Badan Ideal\r\nIndeks massa tubuh ideal berkisar antara 20-25. Berat badan yang ideal membantu Anda mengurangi risiko terjadinya komplikasi saat kehamilan.\r\n\r\n5.	Hindari Rokok, Kafein, dan Alkohol\r\nKebiasaan merokok, serta mengonsumsi kafein dan alkohol dapat mengganggu sistem reproduksi baik wanita maupun pria.\r\n\r\n6.	Tidur Cukup\r\nSebelum dan selama program hamil, tidurlah 8 jam setiap hari untuk meningkatkan daya tahan tubuh dan produksi melatonin.', '', 'Infografis untuk Instagram', 1, 1153000, 'MARGARET PUSPITARINI', '2021-06-28 17:52:45', 1153000, 'MARGARET PUSPITARINI', '2021-06-28 17:52:45');
INSERT INTO `tr_order` VALUES (19, 1, 'Metro iCare (Kalbe)', '2021-06-29 10:00:00', 'Sebelum Program Hamil, Persiapkan Hal Ini\r\n\r\n1. Pola Makan Sehat dan Seimbang\r\nTerapkan pola makan sehat dan seimbang tiga bulan sebelum program hamil berjalan untuk meningkatkan kesuburan.\r\n\r\n2. Hindari Stres\r\nStudi menyebutkan, stres bisa menjadi salah satu penyebab infertilitas.\r\n\r\n3. Olahraga\r\nHindari olahraga berat dan berlebihan, termasuk gerakan olahraga yang melibatkan otot perut, seperti push up. Cobalah olahraga, seperti aerobik, jalan kaki, jogging, dan bersepeda.\r\n\r\n4. Capai dan Pertahankan Berat Badan Ideal\r\nIndeks massa tubuh ideal berkisar antara 20-25. Berat badan yang ideal membantu Anda mengurangi risiko terjadinya komplikasi saat kehamilan.\r\n\r\n5. Hindari Rokok, Kafein, dan Alkohol\r\nKebiasaan merokok, serta mengonsumsi kafein dan alkohol dapat mengganggu sistem reproduksi baik wanita maupun pria.\r\n\r\n6. Tidur Cukup\r\nSebelum dan selama program hamil, tidurlah 8 jam setiap hari untuk meningkatkan daya tahan tubuh dan produksi melatonin.', 'Klikdokter.com', 'Infografis untuk Instagram', 0, 1153000, 'MARGARET PUSPITARINI', '2021-06-28 19:17:32', 1153000, 'MARGARET PUSPITARINI', '2021-06-29 09:33:08');
INSERT INTO `tr_order` VALUES (20, 2, 'TP Jazz Festival', '2021-01-07 00:00:00', 'membuat floor plan dan stage desain pada 3 ruangan yang dipakai untuk acara tpjazz\r\n- mirten\r\n- tropical garden\r\n- suagi', '', '', 1, 1193761, 'ABDEL RADZEQHY SHAFATHRA', '2021-06-28 19:17:59', 1193761, 'ABDEL RADZEQHY SHAFATHRA', '2021-06-28 19:17:59');
INSERT INTO `tr_order` VALUES (21, 1, 'infografis untuk medcom.id', '2021-07-01 10:00:00', 'Om, mohon dibuatkan grafis dengan tema perbedaan tes PCR, GeNose, dan Rapid test Antigen', 'https://www.medcom.id/gaya/fitness-health/1bVA6W1N-beda-pcr-genose-dan-rapid-test-antigen', 'grafis medcom berbentuk landscape dengan format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-06-30 16:47:13', 1132200, 'WIJOKONGKO', '2021-07-02 13:35:07');
INSERT INTO `tr_order` VALUES (22, 2, 'CROSSCHECK', '2021-07-03 00:00:00', 'Pembuatan Flyer/Poster dan Thumbnail CROSSCHECK\r\n\r\nJudul 		\r\nJOKOWI ‘THE KING OF LIPS SERVICE’, ITU SADIS!\r\n\r\nThumbnail		\r\nTAU KANTOR STAF PRESIDEN: MASA PRESIDEN DIBILANG RAJA PEMBUAL?\r\n\r\nNarasumber	\r\nALI MOCHTAR NGABALIN (TENAGA AHLI UTAMA KSP)\r\nADI PRAYITNO (DIREKTUR EKSEKUTIF PARAMETER POLITIK INDONESIA)\r\nYAYAN SEPTIADI (SEKJEN BEM PTAI PERGURUAN TINGGI AGAMA ISLAM)\r\n\r\nPremiere		\r\nMINGGU 4 JULI PUKUL 10:00 WIB\r\n\r\nNotes:\r\n1. Thumbnail: font TAU KANTOR STAF PRESIDEN: ukuran kecil \r\n2. Foto Narsum di Thuhmbnail Ali Mochta Ngabalin berhadapan dengan Ketua BEM PTAI Yayan\r\n\r\nContoh Flyer & Thumbnail Crosscheck ada attachment\r\n\r\n', '', 'Contoh Flyer & Thumbnail Crosscheck ada attachment', 1, 1183642, 'WIN MUHAMMAD ADAB', '2021-07-02 14:08:06', 1183642, 'WIN MUHAMMAD ADAB', '2021-07-02 14:08:06');
INSERT INTO `tr_order` VALUES (23, 2, 'CROSSCHECK', '2021-07-03 00:00:00', 'Pembuatan Flyer/Poster dan Thumbnail CROSSCHECK\r\n\r\nJudul 		\r\nJOKOWI ‘THE KING OF LIPS SERVICE’, ITU SADIS!\r\n\r\nThumbnail		\r\nTAU KANTOR STAF PRESIDEN: MASA PRESIDEN DIBILANG RAJA PEMBUAL?\r\n\r\nNarasumber	\r\nALI MOCHTAR NGABALIN (TENAGA AHLI UTAMA KSP)\r\nADI PRAYITNO (DIREKTUR EKSEKUTIF PARAMETER POLITIK INDONESIA)\r\nYAYAN SEPTIADI (SEKJEN BEM PTAI PERGURUAN TINGGI AGAMA ISLAM)\r\n\r\nPremiere		\r\nMINGGU 4 JULI PUKUL 10:00 WIB\r\n\r\nNotes:\r\n1. Thumbnail: font TAU KANTOR STAF PRESIDEN: ukuran kecil \r\n2. Foto Narsum di Thuhmbnail Ali Mochta Ngabalin berhadapan dengan Ketua BEM PTAI Yayan\r\n\r\nContoh Flyer & Thumbnail Crosscheck ada attachment\r\n\r\n', '', 'Contoh Flyer & Thumbnail Crosscheck ada attachment', 1, 1183642, 'WIN MUHAMMAD ADAB', '2021-07-02 14:42:19', 1183642, 'WIN MUHAMMAD ADAB', '2021-07-02 14:42:19');
INSERT INTO `tr_order` VALUES (25, 1, 'infografis untuk medcom.id', '2021-07-05 10:00:00', 'Temans, minta tolong dibuatkan grafis dengan tema \'5 Fakta Varian Covid-19 Kappa\'', 'https://www.medcom.id/gaya/fitness-health/wkB4n0xN-penularannya-disamakan-dengan-campak-ini-5-fakta-varian-covid-19-kappa', 'Grafis untuk portal medcom berbentuk potrait dengan format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-02 17:09:28', 1132200, 'WIJOKONGKO', '2021-07-05 13:26:37');
INSERT INTO `tr_order` VALUES (26, 1, 'Infografis Lokasi Pembatasan Mobilitas', '2021-07-03 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Lokasi Pembatasan Mobilitas Warga Jadetabek Selama PPKM Darurat\r\n\r\nSlide 1:\r\nPenyekatan kendaraan di dalam kota:\r\n1. Bundaran Senayan\r\n2. Semanggi\r\n3. Bundaran Hotel Indonesia\r\n4. Traffic Light Harmoni\r\n\r\nPenyekatan kendaraan di dalam tol:\r\nArah timur ke barat\r\n1. Gerbang Tol (GT) Tegal Parang\r\n2. GT Polda\r\n\r\nArah barat ke timur\r\n3. GT Semanggi\r\n4. GT Senayan\r\n5. GT Pancoran\r\n\r\nPenyekatan kendaraan di batas kota:\r\n1. Ringroad Tegal Alur, Jakarta Utara\r\n2. Pos Joglo Raya, Jakarta Barat\r\n3. Pos LTS Kalideres, Jakarta Barat\r\n4. Perempatan Pasar Rumput, Jakarta Selatan\r\n5. Ciledug Raya (Universitas Budiluhur), Jakarta Selatan\r\n6. Lampiri Kalimalang, Jakarta Timur\r\n7. Panasonic Jalan Raya Bogor, Jakarta Timur\r\n8. Depan SPBU Cilangkap, Depok\r\n9. Jalan Parung, Depok\r\n10. Batu Ceper, Tangerang Kota\r\n11. Jati Uwung, Tangerang Kota\r\n12. Jalan Sultan Agung Meda Satria, Bekasi Kota\r\n13. Jalan Nur Ali Sumber Arta, Bekasi Kota\r\n14. Kedung Waringin, Bekasi Kabupaten\r\n15. Tambun, Bekasi Kabupaten\r\n16. Bintaro, Tangerang Selatan\r\n17. Legok, Tangerang Selatan\r\n18. Lenteng Agung, Jakarta Selatan\r\n19. Kolong Cakung, Jakarta Timur\r\n\r\n(Note : Disekat selama 24 Jam)\r\n\r\nSlide 2:\r\nPembatasan Mobilitas:\r\n\r\nJakarta Pusat\r\n1. Jalan Sabang\r\n2. Jalan Cikini Raya\r\n3. Jalan Asia Afrika\r\n4. Jalan Apron\r\n\r\nJakarta Timur\r\n5. Banjir Kanal Timur (BKT)\r\n\r\nJakarta Selatan\r\n6. Kemang\r\n7. Bulungan\r\n\r\nJakarta Barat\r\n8. Kawasan Kota Tua\r\n9. Jalan Pemancingan, Srengseng\r\n\r\nJakarta Utara\r\n10. Jalan Boulevard Raya Kelapa Gading\r\n\r\nTangerang Kota\r\n11. Jalan Kali Pasir\r\n12. Jalan Banding Raya\r\n\r\nTangerang Selatan\r\n13. Jalan Boulevard Alam Sutera\r\n14. Jalan Sutera Utama\r\n15. Jalan Clique Gading Serpong\r\n\r\nDepok\r\n16. Jalan M. Yasin (depan STIE MBI)\r\n17. Jalan M. Yasin (depan McDonald\'s)\r\n\r\nBekasi Kota\r\n18. Jalan Boulevard Selatan\r\n19. Summarecon Bekasi\r\n\r\nKabupaten Bekasi\r\n20. Cikarang Baru\r\n21. Cifest Cikarang Selatan\r\n\r\nPengendalian Mobilitas:\r\n\r\nJakarta Pusat\r\n1. Jalan Cassa\r\n2. Jalan Salemba Tengah\r\n\r\nJakarta Timur\r\n3. Jalan Jenderal Urip/ Jatinegara Timur\r\n4. Jalan Sutoyo Kramat Jati\r\n5. Jalan Raya Bogor Pusdikes\r\n\r\nJakarta Selatan\r\n6. Jalan Wolter Monginsidi\r\n7. Jalan Cipete Raya\r\n8. Jalan Cikajang\r\n9. Jalan Gunawarman\r\n\r\nJakarta Utara\r\n10. Sunter\r\n11. PIK II\r\n\r\nJakarta Barat\r\n12. Jalan Mangga Besar\r\n\r\nCikarang\r\n13. Taman Sehati, Gor Wibawa Mukti\r\n14. Distrik I, Meikarta.\r\n\r\n(Note: Disekat sampai pukul 20.00 WIB)\r\n\r\nSumber: Polda Metro Jaya', 'Polda Metro Jaya', 'Ukuran untuk instagram (1080x1080 pixel) dan untuk kanal foto (portrait). Output format: JPEG', 0, 1142826, 'LENI ANGGRAENI', '2021-07-03 12:06:30', 1142826, 'LENI ANGGRAENI', '2021-07-05 10:31:46');
INSERT INTO `tr_order` VALUES (27, 1, 'infografis untuk medcom.id', '2021-07-06 10:00:00', 'Temans minta tlng dibuatkan grafis dengan tema \'Cara Mengurus STRP\'', 'https://www.medcom.id/nasional/peristiwa/VNxg3adK-keluar-masuk-jakarta-wajib-pegang-strp-mulai-hari-ini-ini-cara-mengurusnya', 'grafis di portal medcom.id bisa berbentuk potrait dan juga landscape, tergantung materi, dengan forman JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-05 17:38:16', 1132200, 'WIJOKONGKO', '2021-07-07 12:30:48');
INSERT INTO `tr_order` VALUES (28, 1, 'Metro iCare', '2021-07-07 10:00:00', 'Asupan Nutrisi untuk Pernapasan pada Pasien COVID-19\r\n\r\n- Pilih karbohidrat yang kompleks\r\nMisalnya, beras merah, gandum, dan kentang.\r\n- Cukupi kebutuhan protein\r\nOtot dada yang bekerja saat bernapas membutuhkan makanan yang tinggi protein, seperti ikan, dada ayam, dan tahu.\r\n- Lemak\r\nUntuk pasien COVID-19 dalam kondisi sesak, kebutuhan karbohidrat dikurangi namun akan diberikan makanan dengan kandungan lemak lebih tinggi sekitar 30% dari biasanya.\r\n- Vitamin dan Mineral\r\nSayuran dan buah menjadi sumber vitamin, seperti vitamin A, B, C, dan D.', 'Sumber: Klikdokter', 'Infografis untuk Instagram Post', 0, 1153000, 'MARGARET PUSPITARINI', '2021-07-06 15:10:52', 1153000, 'MARGARET PUSPITARINI', '2021-07-06 16:00:28');
INSERT INTO `tr_order` VALUES (29, 1, 'infografis untuk medcom.id', '2021-07-08 10:00:00', 'Temans, sy minta tolong dibuatkan grafis dengan tema \'Cara Daftar Vaksin Covid-19 pada Masa PPKM Darurat\'. Terima kasih sebelumnya', 'https://www.medcom.id/gaya/fitness-health/VNxg3eBK-cara-daftar-vaksin-covid-19-pada-masa-ppkm-darurat', 'grafis untuk portal medcom.id berbentuk potrait atau landscape, tergantung materi yg akan dibuat. Sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-07 13:15:35', 1132200, 'WIJOKONGKO', '2021-07-08 13:33:49');
INSERT INTO `tr_order` VALUES (30, 1, 'Infografis Obat Gratis untuk Isoman', '2021-07-07 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Cara Dapatkan Obat Gratis Pasien Isoman via Telemedicine\r\n\r\nSyarat layanan telemedicine gratis:\r\n1. Pasien positif covid-19 yang melakukan tes PCR 7 hari terakhir sebelum layanan pengobatan gratis dibuka\r\n2. Pasien reaktif berdasarkan hasil rapid test antigen 2 hari terakhir sebelum layanan dibuka\r\n3. Tes bisa dilakukan di rumah sakit, puskesmas, hingga klinik swasta di Jakarta\r\n4. Mereka yang dinyatakan positif covid-19 akan menerima pesan WhatsApp berisi link untuk telemedicine gratis. \r\n\r\nProsedur layanan telemedicine gratis:\r\n1. Setelah mendapat link telemedicine gratis dari Kemenkes, pasien dapat memilih 11 layanan yang ada (Alodokter, GetWell, Good Doctor, HaloDoc, KlikDokter, KlinikGo, LinkSehat, Milvik Dokter, ProSehat, SehatQ, dan YesDok)\r\n2. Pasien dapat berkonsultasi dengan dokter secara virtual\r\n3. Dokter akan melakukan screening kondisi kesehatan pasien\r\n4. Jika masuk kategori orang tanpa gejala atau gejala ringan, akan diberikan resep obat serta vitamin yang didapat secara gratis\r\n5. Resep obat itu harus ditebus pasien dengan mengirimkan pesan WhatsApp ke salah satu gerai apotek Kimia Farma\r\n6. Pasien harus mengirimkan resep digital yang dikeluarkan dari platform telemedicine beserta KTP dan alamat pengiriman ke nomor WhatsApp Kimia Farma yang dituju\r\n7. Obat dan vitamin akan ditanggung Kemenkes sesuai dengan ketentuan\r\n8. Pasien bergejala sedang hingga berat akan dirujuk ke rumah sakit terdekat.\r\n\r\nDaftar obat gratis untuk pasien isoman:\r\n \r\nPaket A OTG (orang tanpa gejala):\r\n-Multivitamin (C,D,R, Zinc) 10 butir\r\n\r\nPaket B (gejala ringan):\r\n-Multivitamin 10 butir\r\n-Azitromisin 500 mg 5 butir\r\n-Oseltamivir 75 mg 14 butir\r\n-Parasetamol Tab 500 mg 10 butir\r\n\r\n\r\nKontak WhatsApp apotek Kimia Farma yang bekerja sama dengan Kemenkes:\r\n1. Jakarta Timur (08112223049)\r\n2. Jakarta Utara (08112221832)\r\n3. Jakarta Pusat (087877241590)\r\n4. Jakarta Selatan (0895324874355)', 'Medcom.id', 'Ukuran instagram (1080x1080 pixel) dan kanal foto (portrait). Format: JPEG', 0, 1142826, 'LENI ANGGRAENI', '2021-07-07 13:24:16', 1142826, 'LENI ANGGRAENI', '2021-07-07 18:59:21');
INSERT INTO `tr_order` VALUES (31, 2, 'MGN GREEN SUMMIT', '2021-07-09 00:00:00', 'Lay Out Event MGN GREEN SUMMIT. \r\n\r\nKurang lebih layout sama dengan MGN SUmmit\r\n\r\nkomponen:\r\n\r\nArea luar grand\r\nArea T-Banner / Umbul2:\r\nnempel dipohon dengan total banyaknya 20 buah\r\n\r\nDepan Media CLinic:\r\n2 Tenda Sarnafil 3x3 (2 Buah Dengan Meja Dan kursi) + Kipas ANgin\r\n\r\nLT.1: \r\n- Galery Foto (Menggunakan Standing plasma  Inch)  6 Unit: Samakan posisi dengan Acara Bakti di lobby grand\r\n- Area Nobar dengan kursi 20 kursi (Psical DIstancing) + TV LED 62 Inch (samakan dengan layout MGN Summit) Sebelah kiri lobby dari pintu masuk kaca\"\r\n- Photo wall 6,10 X 2,44 (Depan Receptionist)\r\n- Registrasi (Lokasi pjok Lift) dilengkapi dengan rope stand dan Backdrop 2,44 X 2,44\r\n- Standing Banner 4 Unit (2 Depan Pintu lobby kaca (Kiri Kanan Pintu), 1 Unit Dekat lift (Sebelah kiri lift), 1 Unit Dekat patung Nobar\r\n\r\n\r\nLt.2 \r\n- Area makan (6 Round Table)\r\n- 2 Tv Plasma + Standing (Looping Sponsor & Event) (1 Buah di Tempat makan), 1 Buah lagi depan Lift \r\n\r\nLt. 3\r\n- Area Tea & Coffee\r\n\r\n\r\n\r\n\r\n\r\n', '', 'Harap buat layout perlantai, view masing2 3 sudut pandang dengan format JPG ', 1, 1153010, 'R. TRIO SETYO MURDOWO', '2021-07-07 17:48:57', 1153010, 'R. TRIO SETYO MURDOWO', '2021-07-07 17:48:57');
INSERT INTO `tr_order` VALUES (32, 1, 'infografis untuk medcom.id', '2021-07-09 10:00:00', 'Temans, sy minta tolong dibuatkan grafis dengan tema \'Perbedaan jenis vaksin covid-19 yang sedang dan akan digunakan di Indonesia\'', 'https://www.medcom.id/gaya/fitness-health/JKRWnnpN-perbedaan-jenis-vaksin-covid-19-yang-sedang-dan-akan-digunakan-di-indonesia', '', 0, 1132200, 'WIJOKONGKO', '2021-07-08 15:13:39', 1132200, 'WIJOKONGKO', '2021-07-12 16:56:55');
INSERT INTO `tr_order` VALUES (33, 1, 'Infografis Sabu', '2021-07-09 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Kenali Ciri Pemakai dan Efek Sabu\r\n\r\nCiri pemakai sabu:\r\n- Perubahan fisik (kulit pucat, penampilan kusam)\r\n- Berat badan turun drastis\r\n- Berbicara terlalu halus\r\n- Pupil mata membesar\r\n- Sakit kepala\r\n- Kelelahan ekstrim\r\n- Gigi membusuk\r\n- Rambut lebih sedikit\r\n- Memiliki luka yang tak kunjung sembuh\r\n- Mata yang kering atau berwarna merah\r\n\r\nEfek:\r\n- Peningkatan tekanan darah\r\n- Mood swing (perubahan emosi)\r\n- Nafsu makan berkurang\r\n- Gelisah\r\n- Susah tidur\r\n- Sulit berkonsentrasi\r\n- Psikosis (skrizofrenia)\r\n', 'Gaya.id', 'Ukuran instagram (1080x1080 pixel) dan untuk kanal foto (portrait). Format: jpeg', 0, 1142826, 'LENI ANGGRAENI', '2021-07-09 12:19:46', 1142826, 'LENI ANGGRAENI', '2021-07-12 12:01:22');
INSERT INTO `tr_order` VALUES (34, 1, 'CROSSCHECK', '2021-07-10 12:00:00', 'Pembuatan\r\n1. Flyer \r\n2. Thumbnail\r\nContoh dan materi ada di Attachment. File foto di attachment juga', 'JPG ', 'Contoh output/hasilnya ada di attachment', 0, 1183642, 'WIN MUHAMMAD ADAB', '2021-07-09 20:08:51', 1183642, 'WIN MUHAMMAD ADAB', '2021-07-12 12:14:03');
INSERT INTO `tr_order` VALUES (35, 1, 'IDUL ADHA 2021 MEDCOM.ID', '2021-07-14 12:00:00', 'Dear All, medcom.id menyambut Idul Adha membuat 7 infografis untuk ditayangkan di IG, FB dan twitter mulai 15 Juli. 7 infografis ini semua memakai sumber yang jelas. Terima Kasih (Win, 0818904718)\r\n\r\n', 'JPG ', '', 1, 1183642, 'WIN MUHAMMAD ADAB', '2021-07-10 23:56:01', 1183642, 'WIN MUHAMMAD ADAB', '2021-07-10 23:56:01');
INSERT INTO `tr_order` VALUES (36, 1, 'infografis untuk medcom.id', '2021-07-13 16:00:00', 'Temans, sy minta tolong dibuatkan grafis dengan tema \'Panduan isolasi mandiri untuk anak-anak\'. terima kasih sebelumnya', 'https://www.medcom.id/nasional/peristiwa/zNApwGAK-catat-ini-panduan-isolasi-mandiri-untuk-anak', 'grafis untuk kanal medcom.id bisa berbentuk potrait ataupun landscape tergantung materinya, sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-13 10:18:36', 1132200, 'WIJOKONGKO', '2021-07-15 12:11:03');
INSERT INTO `tr_order` VALUES (37, 1, 'infografis untuk medcom.id', '2021-07-15 10:00:00', 'Temans, minta tolong dibuatkan grafis dengan tema \'buah-buahan asli Indonesia yang bisa tingkatkan kekebalan tubuh hadapi covid-19', 'https://www.medcom.id/gaya/fitness-health/ob3eM60K-5-buah-asli-indonesia-ini-bisa-tingkatkan-kekebalan-tubuh-hadapi-covid-19', 'Grafis untuk kanal medcom.id bisa potrait atau landscape tergantung materi yang ada, sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-14 08:27:38', 1132200, 'WIJOKONGKO', '2021-07-15 14:23:20');
INSERT INTO `tr_order` VALUES (40, 2, 'Ngobras Spesial', '2021-07-15 00:00:00', 'Mohon dibuatkan poster promo, frame & Bumper Ngobras Spesial sebagai berikut:\r\n\r\nNgobras Spesial\r\nJudul: Yang Baru dari D\'Masiv\r\nJumat, 16 Juli 2021\r\npukul : 16.00 - 17.00 WIB\r\nBersama: Rian D\'Masiv\r\nHost: Theofilus Ifan\r\n\r\n*Foto terlampir', '', '-Promo: ukuran instagram feed + story\r\n-Frame: landscape + portrait (format png)\r\n-Bumper: landscape + portrait (format mp4)', 1, 1142826, 'LENI ANGGRAENI', '2021-07-14 12:54:38', 1142826, 'LENI ANGGRAENI', '2021-07-14 12:54:38');
INSERT INTO `tr_order` VALUES (41, 1, 'Infografis Daftar Penyekatan', '2021-07-15 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Diperluas, Ini Daftar 100 Titik Penyekatan di Jadetabek\r\n\r\nA. Dalam Kota\r\n\r\n1. TL Fatmawati\r\n2. JL Pangeran Antansari\r\n3. Underpass Mampang\r\n4. TL Green Garden\r\n5. TL Coca Cola\r\n6. Underpass Basura\r\n7. Flyover Ladogi\r\n8. Flyover Pesing Arah Timur\r\n9. DI Panjaitan Arah Kampung Melayu\r\n10. Hasyim Ashari (TL Donat)\r\n11. Jembatan Merah\r\n12. Megaria\r\n13. JL Casa Kemayoran\r\n14. JL Benyamin Sueb\r\n15. JL Apron\r\n16. JL Medan Merdeka Timur\r\n17. JL Veteran 3\r\n18. Joglo Raya\r\n19. Pasar Rebo Cijantung\r\n\r\nB. Tol Batas Kota\r\n\r\n1. GT Cikarang Pusat\r\n2. GT Cibatu\r\n3. GT Cikarang Barat\r\n4. GT Tambun\r\n5. GT Bekasi Timur\r\n6. GT Bekasi Barat\r\n7. Offramp Bukopin\r\n8. Offramp Tegal Parang\r\n9. Offramp Polda\r\n10. Offramp MPR/DPR\r\n11. Offramp Darmais\r\n12. Offramp Farmasi\r\n13. Offramp Semanggi\r\n14. Offramp Pancoran\r\n15. Offramp Pangeran Antasari\r\n\r\nC. Batas Kota\r\n\r\n1. Pasar Jumat (Tangsel-Jaksel)\r\n2. Budi Luhur (Tangerang-Jaksel)\r\n3. Kalideres (Tangkot-Jakbar)\r\n4. Panasonic (Depok-Jaktim)\r\n5. Kalimalang (Bekasi Kota-Jaktim)\r\n6. Sumber Arta (Bekasi Kabupaten-Jaktim)\r\n7. Harapan Indah\r\n8. Bintaro\r\n9. Batu Ceper\r\n10. Lenteng Agung (Depok-Jaksel)\r\n\r\nD. Wilayah Penyangga\r\n\r\n- 13 Titik Wilayah Bekasi Kabupaten\r\n1. Sasak Jarang-Tambun\r\n2. Kalimalang\r\n3. Kedung Waringin\r\n4. Jababeka (Bundaran Patung Kuda)\r\n5. Cikarang Festival\r\n6. Simpang Pecenongan\r\n7. Stadion Wibawa Mukti\r\n8. Simpang Jalan\r\n9. Simpang Jalan Movieland\r\n10. Simpang Jalan SGC\r\n11. JL Yos Sudarso\r\n12. Terminal Kalijaya\r\n13. Distrik 1 Meikarta\r\n\r\n- 6 Titik Wilayah Tangerang Selatan\r\n1. Legok\r\n2. Gading Serpong\r\n3. JL Camar Bintaro Sektor 3\r\n4. Pamulang JL Raya Bogor\r\n5. JL IR H Juanda\r\n6. Gading Boulevard\r\n\r\n- 1 Titik Wilayah Tangerang Kota\r\n1. Jatiuwung\r\n\r\n- 9 Titik Wilayah Depok\r\n1. Bawah flyover UI\r\n2. JL Komjen M Yasin\r\n3. JL Margonda Raya\r\n4. Gerbang GDC\r\n5. Pertigaan Apotek Margonda\r\n6. Pertigaan Kartini\r\n7. JL Raya Bogor 8\r\n8. JL Raya Parung Ciputat\r\n9. JL Raya Bogor Cilangkap\r\n\r\nE. Ruas Sudirman-Thamrin\r\n\r\n- Arah Utara\r\n1. Bundaran Senayan\r\n2. FX Sudirman\r\n3. Semanggi\r\n4. Bendungan Hilir\r\n5. Karet\r\n6. Setiabudi\r\n7. Dukuh Bawah\r\n8. JL Tanjung Karang\r\n9. Betung\r\n10. Bundaran HI\r\n11. TL Sarinah\r\n12. TL Kebon Sirih\r\n13. Budi Kemuliaan (TL Patung Kuda)\r\n14. Museum\r\n15. RRI\r\n16. Oteva\r\n17. TL Harmoni\r\n\r\n- Arah Selatan\r\n1. Kedutaan Prancis\r\n2. Sumenep\r\n3. TL HOS Cokroaminoto\r\n4. Dukuh Bawah\r\n5. Setiabudi\r\n6. JL Suryo\r\n7. SCBD\r\n8. Bapindo\r\n9. Menpan\r\n10. Bundaran Senayan\r\n\r\nKeterangan:\r\n-Penyekatan berlaku mulai 15 Juli, pukul 06.00-22.00 WIB\r\n-Pukul 06.00-10.00 WIB: Pekerja sektor esensial, kritikal, tenaga kesehatan hingga dokter diperbolehkan melintas\r\n-Pukul 10.00 WIB-22.00 WIB: Hanya tenaga kesehatan, dokter, perawat, TNI-Polri dan petugas darurat yang boleh melintas\r\n-22.00 WIB-06.00 WIB: Penyekatan dibuka', 'Medcom.id', 'Ukuran instagram (1080x1080 pixel) dan kanal foto (portrait)+covernya. Format: jpeg', 0, 1142826, 'LENI ANGGRAENI', '2021-07-15 11:52:05', 1142826, 'LENI ANGGRAENI', '2021-07-15 15:52:55');
INSERT INTO `tr_order` VALUES (42, 1, 'infografis untuk medcom.id', '2021-07-16 10:00:00', 'Temans, sy minta tolong dibuatkan grafis dengan tema \'manfaat vitamin C, D, E, dan Zinc untuk Pasien Covid-19\'', 'https://www.medcom.id/gaya/fitness-health/PNg65q9K-ini-manfaat-vitamin-c-d-e-dan-zinc-untuk-pasien-covid-19', 'grafis untuk kanal medcom.id bisa berbentuk potrait maupun landscape tergantung materi. sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-15 14:52:40', 1132200, 'WIJOKONGKO', '2021-07-21 13:25:22');
INSERT INTO `tr_order` VALUES (43, 1, 'Online Scholarship Competition (OSC) 2021', '2021-07-21 16:50:50', 'Kepada Tim Grafis\r\n\r\nMohon bantuannya untuk diproduksi grafis teaser promo sosmed OSC 2021.\r\n\r\nAdapun terlampir wording sbg acuan desain.\r\n\r\nTerima kasih\r\nAlfian Aulia\r\n', 'Internal Corcomm Medcom', 'Spesifikasi ukuran berupa versi square untuk feeds dan versi instagram story', 0, 6231200, 'MUHAMMAD ALFIAN AULIA', '2021-07-19 10:44:28', 6231200, 'MUHAMMAD ALFIAN AULIA', '2021-07-26 09:20:50');
INSERT INTO `tr_order` VALUES (44, 1, 'infografis untuk medcom.id', '2021-07-22 10:00:00', 'Temans, saya minta tolong dibuatkan grafis dengan tema \'Manfaat Latihan Pernapasan untuk Pasien Covid-19\'', 'https://www.medcom.id/gaya/fitness-health/ObzVApYb-manfaat-latihan-pernapasan-untuk-pasien-covid-19', 'Grafis untuk kanal medcom.id bisa potrait atau landscape tergantung materinya, sementara format grafis JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-21 08:43:44', 1132200, 'WIJOKONGKO', '2021-07-26 15:33:50');
INSERT INTO `tr_order` VALUES (45, 2, 'Ngobras Spesial Didi Riyadi', '2021-07-22 00:00:00', 'Mohon dibuatkan poster promo, frame & Bumper Ngobras Spesial sebagai berikut:\r\n\r\nNgobras Spesial\r\nJudul: Rahasia Hati Didi Riyadi\r\nJumat, 23 Juli 2021\r\npukul : 16.00 - 17.00 WIB\r\nBersama: Didi Riyadi\r\nHost: Widya Saputra', '', '-Promo: ukuran instagram feed + story\r\n-Frame: landscape + portrait (format png)\r\n-Bumper: landscape + portrait (format mp4)', 1, 1142826, 'LENI ANGGRAENI', '2021-07-21 12:34:29', 1142826, 'LENI ANGGRAENI', '2021-07-21 12:34:29');
INSERT INTO `tr_order` VALUES (46, 1, 'Infografis Aturan PPKM Level 4', '2021-07-21 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Begini Aturan Pelaku Perjalanan Selama PPKM Level 4\r\n\r\nKementerian Dalam Negeri (Kemendagri) merilis aturan terkait Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) Level 4 di tengah pandemi Covid-19.\r\n\r\nPelaku perjalanan domestik yang menggunakan mobil pribadi, sepeda motor dan transportasi umum jarak jauh (pesawat udara, bis, kapal laut dan kereta api) harus:\r\n\r\n1. Menunjukkan kartu vaksin, minimal vaksinasi dosis pertama\r\n2. Menunjukkan hasil tes PCR (H-2) untuk pesawat udara serta hasil tes swab antigen (H-1) untuk moda transportasi pribadi, sepeda motor, bis, kereta api, dan kapal laut\r\n3. Kedua ketentuan di atas hanya berlaku bagi kedatangan dan keberangkatan dari dan ke Jawa atau Bali. Serta tidak berlaku untuk transportasi dalam wilayah aglomerasi seperti Jakarta, Bogor, Depok, Tangerang, dan Bekasi (Jabodetabek)\r\n4. Sopir kendaraan logistik dan transportasi barang lainnya dikecualikan dari ketentuan memiliki kartu vaksin.\r\n\r\nSumber: Inmendagri Nomor 22 Tahun 2021', 'Inmendagri Nomor 22 Tahun 2021', 'Ukuran instagram (1080x1080 pixel) dan kanal foto (potrait). Format: jpeg', 0, 1142826, 'LENI ANGGRAENI', '2021-07-21 13:37:48', 1142826, 'LENI ANGGRAENI', '2021-07-26 18:23:02');
INSERT INTO `tr_order` VALUES (47, 1, 'infografis untuk medcom.id', '2021-07-23 10:00:00', 'Temans, saya minta tolong dibuatkan grafis tentang makanan yang bisa menurunkan kadar kolesterol', 'https://www.medcom.id/gaya/fitness-health/GNlg4JBK-6-makanan-yang-bisa-menurunkan-kadar-kolesterol-dalam-tubuh', 'Grafis untuk kanal medcom.id bisa berbentuk potrait maupun landscape tergantung materi yang ada. Sementara untuk format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-22 16:39:40', 1132200, 'WIJOKONGKO', '2021-07-26 20:51:41');
INSERT INTO `tr_order` VALUES (48, 2, 'Online Scholarship Competition (OSC) 2021', '2021-07-28 00:00:00', 'Dear team desain kreatif\r\n\r\nMohon bantuannya untuk diproduksi motion graphic + backsound teaser promo osc 2021 berdurasi 15 second.\r\n\r\nDetail brief terlampir pada file ppt \r\n\r\nTerima kasih\r\n\r\n\r\nKind Regards,\r\nAlfian Aulia', '', 'Output VT berupa motion graphic + backsound full HD dengan dua versi rasio ukuran feeds instagram dan story instagram\r\n\r\nTerima kasih', 1, 6231200, 'MUHAMMAD ALFIAN AULIA', '2021-07-23 13:03:15', 6231200, 'MUHAMMAD ALFIAN AULIA', '2021-07-23 13:03:15');
INSERT INTO `tr_order` VALUES (49, 1, 'Infografis pelonggaran PPKM', '2021-07-27 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Simak Aturan Pelonggaran Aktivitas PPKM Level 3 & 4\r\n\r\nPPKM Level 3:\r\n1. Pasar rakyat non sembako:\r\n-Kapasitas maksimal 50%\r\n-Buka hingga pukul 15.00 waktu setempat\r\n\r\n2. Pedagang kaki lima, toko kelontong, barbershop, laundry, dan usaha sejenis:\r\n-Buka hingga pukul 21.00 waktu setempat\r\n\r\n3. Warung makan/warteg, PKL, lapak jajanan, dan sejenisnya:\r\n-Buka hingga pukul 20.00 waktu setempat\r\n-Waktu makan maksimal 30 menit\r\n\r\n4. Mall/pusat perdagangan:\r\n-Kapasitas 25%\r\n-Buka hingga pukul 17.00 waktu setempat\r\n\r\n5. Tempat ibadah:\r\n-Kapasitas 25% atau maksimal 20 orang\r\n\r\n6. Resepsi pernikahan:\r\n-Kapasitas 20 orang\r\n-Tidak boleh makan di tempat\r\n\r\n7. Transportasi umum:\r\n-Kapasitas maksimal 70%\r\n\r\n---\r\n\r\nPPKM level 4:\r\n\r\n1. Pasar rakyat non sembako:\r\n-Kapasitas maksimal 50%\r\n-Buka hingga pukul 15.00 waktu setempat\r\n\r\n2. Pedagang kaki lima, toko kelontong, barbershop, laundry, dan usaha sejenis:\r\n-Buka hingga pukul 21.00 waktu setempat\r\n\r\n3. Warung makan/warteg, PKL, lapak jajanan, dan sejenisnya:\r\n-Buka hingga pukul 20.00 waktu setempat\r\n-Jumlah pengunjung maksimal 3 orang\r\n-Waktu makan maksimal 20 menit\r\n\r\n4. Mall/pusat perdagangan:\r\n-Dibuka hanya untuk pegawai yang melayani penjualan online dengan maksimal 3 orang setiap toko\r\n-Supermarket, dan pasar swalayan boleh buka\r\n\r\n5. Transportasi umum:\r\n-Kapasitas maksimal 50%\r\n\r\nSumber: Inmendagri No.24 Tahun 2021', 'Inmendagri No.24 Tahun 2021', 'Ukuran instagram (1080x1080 pixel) dan kanal foto (potrait)', 0, 1142826, 'LENI ANGGRAENI', '2021-07-27 00:14:03', 1142826, 'LENI ANGGRAENI', '2021-07-27 18:06:12');
INSERT INTO `tr_order` VALUES (50, 1, 'infografis untuk medcom.id', '2021-07-28 10:00:00', 'temans, saya minta tolong dibuatkan grafis dengan tema 10 hal yang perlu diingat saat anak isoman', 'https://www.medcom.id/gaya/family/Wb74x8nk-10-hal-yang-perlu-diingat-saat-anak-isoman', 'Grafis untuk kanal medcom.id bisa berbentuk potrait maupun landscape tergantung materi yang ada. Sementara format file berbentuk JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-27 11:14:52', 1132200, 'WIJOKONGKO', '2021-08-03 12:14:17');
INSERT INTO `tr_order` VALUES (51, 1, 'Metro iCare', '2021-07-28 13:00:00', 'Minta tolong dibuatkan infografis untuk Metro iCare dalam bentuk multiple post dengan materi sebagai berikut:\r\n\r\nSlide 1 : Stres Selama Pandemi, Harus Apa?\r\nSlide 2 : Stres adalah proses yang normal terjadi pada setiap orang. Saat stres, kita harus bisa mengatur pola pikir kita supaya tetap netral dan positif. \r\nSlide 3 : Selain itu kita perlu stabilkan tubuh yang terlanjur tegang dengan cara :\r\n- Kegiatan relaksasi, misalnya mengatur napas, breathing exercise, yoga, dan meditasi.\r\n- Alihkan pikiran dengan kegiatan yang memunculkan rasa senang, misalnya berbicara dengan orang terdekat atau mendengarkan musik.\r\n- Hobi baru, misalnya memasak atau bercocok tanam.\r\n\r\nSumber : Tara De Thouars, Psikolog, dalam acara Metro iCare\r\n\r\nUntuk referensi desain bisa dilihat di link berikut:\r\nhttps://www.instagram.com/p/CRYrZ0fB4Am/?utm_medium=copy_link\r\nhttps://www.instagram.com/p/CMUWKldhaTt/?utm_medium=copy_link\r\n\r\nTerima kasih', 'Sumber : Tara De Thouars, Psikolog, dalam acara Metro iCare', '', 0, 1153000, 'MARGARET PUSPITARINI', '2021-07-27 16:25:24', 1153000, 'MARGARET PUSPITARINI', '2021-07-27 18:05:19');
INSERT INTO `tr_order` VALUES (52, 1, 'infografis untuk medcom.id', '2021-08-02 10:00:00', 'Temans, saya mint tolong dibuatkan grafis dengan tema \'langkah-langkah mencegah kebakaran mobil\'', 'https://www.medcom.id/otomotif/tips-otomotif/ZkeEY25k-8-langkah-mencegah-kebakaran-mobil', 'Grafis untuk kanal medcom.id bisa berbentuk potrait maupun landscape, tergantung materi yang ada. sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-07-30 13:03:41', 1132200, 'WIJOKONGKO', '2021-08-05 14:09:00');
INSERT INTO `tr_order` VALUES (53, 1, 'infografis untuk medcom.id', '2021-08-03 10:00:00', 'Temans, saya minta tolong order grafis lagi ya', 'Direktorat Jenderal Pencegahan dan Pengendalian Penyakit', 'grafis kanal medcom bisa berbentuk potrait maupun landscape, tergantung materi yang ada, sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-02 15:20:07', 1132200, 'WIJOKONGKO', '2021-08-09 15:12:34');
INSERT INTO `tr_order` VALUES (54, 2, 'UOB 15 sept 2021', '2021-09-01 00:00:00', 'mas bayu ini ada project UOB, kebetulan isi nya footage + super, kami sendiri masih develop footagenya, ini masukin requestan dulu', '', '', 1, 1183556, 'BOBBY CHRISTIAN', '2021-08-03 16:19:28', 1183556, 'BOBBY CHRISTIAN', '2021-08-03 16:19:28');
INSERT INTO `tr_order` VALUES (55, 1, 'Metro iCare', '2021-08-04 13:00:00', 'Mohon bantuannya untuk dibuatkan infografis Instagram untuk Metro iCare (Kalbe) dengan materi sebagai berikut :\r\n\r\n5 Mitos Menyusui\r\n1. Payudara Kecil Tidak Dapat Memproduksi ASI yang Cukup\r\nUkuran payudara ditentukan oleh jaringan lemak di dalamnya, sementara ASI diproduksi oleh sel alveoli. \r\n\r\n2. Menyusui Akan Mengubah Bentuk Payudara\r\nUsia, gravitasi, kelebihan berat badan, dan merokok merupakan penyebab payudara kendur.\r\n\r\n3. Sering Menyusu Akan Membuat Bayi Mengalami Obesitas\r\nASI menyesuaikan kebutuhan nutrisi anak sesuai usia sehingga tidak akan menyebabkan obesitas.\r\n\r\n4. Menyusui Membuat Ibu Mengalami Depresi Postpartum\r\nPenyebab utama depresi postpartum adalah perubahan hormon dan kondisi fisik ibu pascamelahirkan, terlebih jika tidak mendapatkan dukungan dari keluarga.\r\n\r\n5. Jangan Membangunkan Bayi Saat Waktu Menyusui\r\nTetap bangunkan bayi sesuai jawdal menyusu, yakni setiap 3 jam sekali agar produksi ASI tetap baik dan kebutuhan nutrisi bayi tercukupi.\r\n\r\nSumber: Klikdokter.com\r\n\r\nUntuk referensi grafis bisa dilihat di link berikut:\r\nhttps://www.instagram.com/p/CMg0Uf7BhKx/?utm_medium=copy_link\r\nhttps://www.instagram.com/p/CL52FVeBHvU/?utm_medium=copy_link\r\nhttps://www.instagram.com/p/CMSD-B3Ml3m/?utm_medium=copy_link\r\n\r\nTerima kasih :)', 'Sumber: Klikdokter', '', 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-03 17:04:54', 1153000, 'MARGARET PUSPITARINI', '2021-08-04 11:24:39');
INSERT INTO `tr_order` VALUES (56, 1, 'infografis untuk medcom.id', '2021-06-08 10:00:00', 'Temans, saya minta tolong dibuatkan grafis dengan tema \'PPKM Jawa-Bali Mampu Menurunkan Kasus covid-19\'.', 'Kementerian Kesehatan', 'grafis kanal medcom.id bisa berbentuk potrait maupun landscape, sementara format JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-05 10:46:29', 1132200, 'WIJOKONGKO', '2021-08-09 20:06:03');
INSERT INTO `tr_order` VALUES (57, 2, 'Sharia summit 2021', '2021-08-09 00:00:00', 'Mohon dibuatkan Design set panggung untuk Virtual. Referensi sudah saya serahkan ke mas Bayu. Terima Kasih sebelumnya', '', 'Format Sketch up, atau C4d', 1, 1132256, 'ARI RIZKI OKTAVIANO', '2021-08-05 15:30:26', 1132256, 'ARI RIZKI OKTAVIANO', '2021-08-05 15:30:26');
INSERT INTO `tr_order` VALUES (58, 1, 'Infografis Pertumbuhan Ekonomi', '2021-08-06 00:00:00', 'Mohon dibuatkan infografis sebagai berikut:\r\n\r\nJudul: Akhirnya, Indonesia Keluar Dari Resesi Ekonomi!\r\n\r\n-Pertumbuhan Ekonomi Indonesia Triwulan II-2021:\r\nY-ON-Y: 7,07%\r\nQ-TO-Q: 3,31%\r\nC-TO-C: 3,10%\r\nProduk Domestik Bruto (PDB) Harga Berlaku: Rp4.175,8 triliun\r\n\r\n-Pertumbuhan Produk Domestik Bruto (PDB) 2019-2021\r\nTriwulan I 2019: 5,06%\r\nTriwulan II 2019: 5,05%\r\nTriwulan III 2019: 5,01%\r\nTriwulan IV 2019: 4,96%\r\nTriwulan I 2020: 2,97%\r\nTriwulan II 2020: -5,32%\r\nTriwulan III 2020: -3,49%\r\nTriwulan IV 2020: -2,19%\r\nTriwulan I 2021: -0,71%\r\nTriwulan II 2021: 7,07%\r\n\r\n-Pertumbuhan PDB Menurut Lapangan Usaha (Y-on-Y)\r\nPertanian: 0,38%\r\nPertambangan & Penggalian: 5,22%\r\nIndustri Pengolahan: 6,58%\r\nKonstruksi: 4,42%\r\nPerdagangan & Reparasi: 9,44%\r\nLainnya: 10,37%\r\n\r\n-Pertumbuhan PDB Menurut Pengeluaran (Y-on-Y):\r\nKonsumsi Rumah Tangga: 5,93%\r\nKonsumsi LNPRT: 4,12%\r\nKonsumsi Pemerintah: 8,05%\r\nPMTB: 7,54%\r\nEkspor: 31,78%\r\nImpor: 31,22%\r\n\r\n-Pertumbuhan dan Kontribusi PDB Menurut Wilayah:\r\nPulau Jawa memberikan kontribusi terhadap perekonomian Indonesia sebesar 57,92% dengan pertumbuhan 7,88%.\r\n\r\nSumatra:\r\nKontribusi: 21,73%\r\nPertumbuhan: 5,27%\r\n\r\nKalimantan\r\nKontribusi: 8,21%\r\nPertumbuhan: 6,28%\r\n\r\nSulawesi:\r\nKontribusi: 6,88%\r\nPertumbuhan: 8,51%\r\n\r\nMaluku & Papua:\r\nKontribusi: 2,41%\r\nPertumbuhan: 8,75%\r\n\r\nJawa:\r\nKontribusi: 57,92%\r\nPertumbuhan: 7,88%\r\n\r\nBali & Nusa Tenggara:\r\nKontribusi: 2,85%\r\nPertumbuhan: 3,70%\r\n\r\n\r\nSumber: Badan Pusat Statistik (BPS)\r\n\r\n----\r\n\r\nContoh materinya terlampir seperti di gambar.\r\n\r\n*note: jika data terlalu penuh, bisa dibikin instaseries/multiple.\r\n\r\nTerima kasih', 'Badan Pusat Statistik (BPS)', 'Ukuran instagram (1080x1080 pixel) dan kanal foto (portrait). Format: JPEG', 0, 1142826, 'LENI ANGGRAENI', '2021-08-06 10:52:46', 1142826, 'LENI ANGGRAENI', '2021-08-06 17:18:11');
INSERT INTO `tr_order` VALUES (59, 1, 'Jiipe Webinar', '2021-08-11 10:30:00', 'Pembuatan digital aset\r\nKV dengan acuan logo Jiipe\r\nKebutuhan turunan terlampir', 'Logo Jiipe', 'AI dan PNG untuk yang grafikdesainer\r\nMP4 Full HD untuk yang Motion grafik', 1, 6221303, 'M. ZAKARIA RHAZES', '2021-08-06 14:41:39', 6221303, 'M. ZAKARIA RHAZES', '2021-08-06 14:41:39');
INSERT INTO `tr_order` VALUES (60, 1, 'infografis untuk medcom.id', '2021-09-08 14:00:00', 'Temans, saya minta tolong order grafis dengan tema \'cara unduh sertifikat covid-19\'', 'https://www.medcom.id/nasional/peristiwa/ybD4D9qb-begini-cara-unduh-sertifikat-vaksinasi-covid-19', 'grafis kanal medcom.id bisa berbetuk potrait maupun landscape, sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-07 17:22:43', 1132200, 'WIJOKONGKO', '2021-08-09 20:05:01');
INSERT INTO `tr_order` VALUES (61, 1, 'Update Website Medcom.id Tema HUT RI ', '2021-08-13 00:00:00', 'Dear Tim Design,\r\n\r\nMohon bantuannya untuk mengupdate website Medcom.id (desktop dan mobile) dan social media Medcom dengan tema HUT RI. Dapat memasukan logo HUT RI, Tagline HUT RI, dan Logo Media Group News. Demikian, terima kasih. ', 'SETNEG - https://drive.google.com/drive/folders/1xBp-Vqb667xzSofsTlQpUYOK1HXwX8UR ', 'Website Mobile dan Desktop ', 0, 1193825, 'KURNIA BETI', '2021-08-09 14:52:23', 1193825, 'KURNIA BETI', '2021-08-16 11:46:00');
INSERT INTO `tr_order` VALUES (62, 2, 'UOB INDONESIA ECONOMIC OUTLOOK 2021/22', '2021-08-13 00:00:00', 'Membuat set design untuk event hybrid event UOB, lokasi di Grand Studio.', '', 'Real Set ', 1, 1183636, 'DESKA MAHARDIKA PUTRI', '2021-08-10 14:00:40', 1183636, 'DESKA MAHARDIKA PUTRI', '2021-08-10 14:00:40');
INSERT INTO `tr_order` VALUES (63, 2, 'UOB INDONESIA ECONOMIC OUTLOOK 2021/22', '2021-08-13 00:00:00', 'Membuat set design untuk event hybrid event UOB, lokasi di Grand Studio.', '', 'Real Set ', 1, 1183636, 'DESKA MAHARDIKA PUTRI', '2021-08-10 14:01:12', 1183636, 'DESKA MAHARDIKA PUTRI', '2021-08-10 14:01:12');
INSERT INTO `tr_order` VALUES (64, 1, 'Metro iCare', '2021-08-11 11:00:00', 'Tolong dibuatkan infografis untuk Instagram Metro iCare dengan materi sebagai berikut:\r\n\r\nSudah berusia senja bukan berarti tidak bisa produktif ! Lakukan ini ya supaya tetap sehat dan produktif :\r\n-	Tidur 7-8 jam setiap hari\r\n-	Perhatikan konsumsi makanan dengan memperhatikan kondisi penyakit yang diderita\r\n-	Olahraga ringan (gambarnya aja yang lagi jogging nanti)\r\n-      Hindari stress dan terus latih daya ingat (ilustrasinya misal main catur atau TTS)\r\n-	Rutin cek kesehatan\r\n-	Hati-hati beraktivitas untuk hindari risiko jatuh\r\n\r\nSumber: Klikdokter.com\r\n\r\nUntuk referensi bisa lihat di link ini https://www.instagram.com/p/CPccFcEh02q/?utm_medium=copy_link\r\n\r\nTerima kasih :)', 'Klikdokter.com', '', 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-10 15:56:16', 1153000, 'MARGARET PUSPITARINI', '2021-08-11 18:47:52');
INSERT INTO `tr_order` VALUES (65, 1, 'infografis untuk medcom.id', '2021-11-08 10:00:00', 'temans, minta tolong dibuatkan grafis dengan tema \'10 Tips Membersihkan Rumah selama Isoman\'', 'https://www.medcom.id/gaya/fitness-health/zNApp86K-10-tips-membersihkan-rumah-selama-isoman', 'grafis kanal medcom.id bisa berbentuk landscape maupun potrait, sementara format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-10 16:19:29', 1132200, 'WIJOKONGKO', '2021-08-16 14:58:02');
INSERT INTO `tr_order` VALUES (66, 1, 'infografis untuk medcom.id', '2021-12-08 10:00:00', 'Temans, sy minta tolong dibuatkan grafis dengan tema \'3 cara pendaftaran vaksin covid-19 lewat online\'', 'https://www.medcom.id/nasional/peristiwa/1bVA9AaN-ini-3-cara-pendaftaran-vaksin-covid-19-via-online', 'format file JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-18 15:31:30', 1132200, 'WIJOKONGKO', '2021-08-24 16:43:09');
INSERT INTO `tr_order` VALUES (67, 2, 'Agung sedayu group - persembahan untuk pahlawan olimpiade', '2021-08-22 00:00:00', 'membuat layout untuk event off air, dengan menggunakan tenda rooder 20 x 20', '', 'ukuran panggung 20x20 / brief direct by dika / kiko', 1, 1183653, 'DANANDIKA PRAMASTO', '2021-08-18 17:29:04', 1183653, 'DANANDIKA PRAMASTO', '2021-08-18 17:29:04');
INSERT INTO `tr_order` VALUES (68, 1, 'Metro iCare (Kalbe)', '2021-08-20 10:00:00', 'Mohon dibuatkan infografis Instagram tentang makanan penurun kolesterol dengan materi sebagai berikut:\r\n\r\nSlide 1 : Bagaimana menurunkan kolesterol tinggi ya? Mudah kok!\r\nSlide 2 : Rajin konsumsi makanan ini ya :\r\n1. Ikan Salmon dan Tuna\r\n2. Oatmeal\r\n3. Kacang-kacangan (Kenari, Kedelai, dan Almond Almond)\r\n4. Minyak Zaitun dan Minyak Krill atau Minyak Udang\r\n5. Jus Jeruk dan Jus Buah Beri\r\n6. Alpukat\r\n7. Apel\r\n8. Bawang Bombay dan Bawang Putih\r\n9. Teh Hijau\r\n10. Kunyit\r\n11. Timun\r\n12.Terong\r\n13. Tahu dan Tempe\r\n\r\nUntuk slide 2 diwakilkan sama gambar dan keterangan aja.\r\n\r\nSumber : Klikdokter.com (Penulisan sumber dicantumkan di slide 2 saja)\r\n\r\nTerima kasih :)', 'Klikdokter.com', '', 0, 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:33:03', 1153000, 'MARGARET PUSPITARINI', '2021-08-24 12:13:23');
INSERT INTO `tr_order` VALUES (69, 1, 'Medcom Hari ini (MHI)', '2021-08-18 17:00:00', '1. Template Poster Promo untuk LIVE IG \r\n2. Template IGTV\r\n\r\nKonsep dan tone warna sudah briefing dengan Mas Adit melalui chat WhatsApp. Terima kasih...', '', '', 0, 1173426, 'ARIE', '2021-08-19 14:55:16', 1173426, 'ARIE', '2021-08-24 11:56:22');
INSERT INTO `tr_order` VALUES (72, 1, 'Metro iCare (Kalbe)', '2021-08-25 10:00:00', 'Minta tolong dibuatkan infogarafis Instagram Metro iCare (Kalbe) dengan materi sebagai berikut:\r\n\r\nNutrisi untuk Si Kecil apa saja ya?\r\n1. Vitamin A\r\nBantu lawan penyakit dan jaga kesehatan mata, \r\n(Gambarnya sesuaikan yg mengandung vitamin A ya, misalnya sayur dan buah-buahan, minyak kelapa, telur, produk susu, hati, ikan, daging, makanan yang difortifikasi, dan ASI)\r\n\r\n2. Yodium\r\nBisa mengatur pertumbuhan dan metabolisme.\r\n(Gambar garam)\r\n\r\n3. Zat Besi\r\nMenunjang perkembangan otot, otak, sistem kekebalan tubuh, serta mencegah anemia.\r\n(Gambar sayuran hijau seperti bayam, hati, daging, dan ikan)\r\n\r\n4. Asam Lemak Omega-3\r\nOmega-3 merupakan asam lemak esensial yang berperan penting dalam perkembangan otak, kesehatan mata, psikologis anak, serta meningkatkan daya ingat anak.\r\n(Gambar ASI, salmon, sarden, bandeng, daging sapi, udang, flaxseeds, chia seeds, kedelai, telur, dan produk susu yang difortifikasi)\r\n\r\n5. Kalsium\r\nBantu pertumbuhan tulang dan gigi anak.\r\n(Gambar susu, yoghurt, keju, dan sayuran hijau seperti kale, brokoli, dan bayam)\r\n\r\nSumber: Klikdokter.com\r\n\r\n- Untuk background warna putih', 'Sumber: Klikdokter.com', '', 1, 1153000, 'MARGARET PUSPITARINI', '2021-08-24 09:46:06', 1153000, 'MARGARET PUSPITARINI', '2021-08-24 09:46:06');
INSERT INTO `tr_order` VALUES (73, 1, 'Shindu’s Scoop', '2021-08-24 00:00:00', 'Dear tim desain, mohon dibuatkan poster sebagai berikut:\r\n\r\nShindu’s Scoop x Iwan Fals\r\n\r\nRabu, 25 Agustus 2021 pukul 19.00 WIB (Part I)\r\n\r\nSenin, 30 Agustus 2021 19.00 WIB (Part II)\r\n\r\nPremiere di YouTube dan Facebook Medcom ID', '', 'Mohon dibuatkan ukuran instagram feed (1080x1080 pixel) dan story (I080x1920 pixel)', 0, 1142826, 'LENI ANGGRAENI', '2021-08-24 11:27:26', 1142826, 'LENI ANGGRAENI', '2021-08-24 12:29:34');
INSERT INTO `tr_order` VALUES (74, 1, 'Wawancara Ekslusif Yung Bae', '2021-08-25 00:00:00', 'Dear tim desain, mohon dibuatkan poster promo sebagai berikut. Foto terlampir (Bisa dipilih salah satu)\r\n\r\nComing Soon\r\nYung Bae\r\n\r\nWawancara Eksklusif bersama Krispen Pakpahan\r\n\r\nNantikan di (akun sosmed medcom)', '', 'Mohon dibuatkan ukuran instagram feed (1080x1080 pixel) dan story (I080x1920 pixel)', 0, 1142826, 'LENI ANGGRAENI', '2021-08-24 11:30:02', 1142826, 'LENI ANGGRAENI', '2021-08-24 14:01:38');
INSERT INTO `tr_order` VALUES (75, 1, 'infografis untuk medcom.id', '2021-08-27 10:00:00', 'Temans, saya minta tolong dibuatkan grafis tentang \'Pelni menyiapkan 5 kapal untuk isolasi terapung\'', 'https://covid19.go.id/edukasi/masyarakat-umum/isoter-terapung-kapal-pelni-untuk-isolasi-pasien-covid-19-tanpa-gejala-dan-gejala-ringan', 'Format grafis kanal medcom JPEG', 0, 1132200, 'WIJOKONGKO', '2021-08-26 08:45:21', 1132200, 'WIJOKONGKO', '2021-08-26 16:19:42');
COMMIT;

-- ----------------------------
-- Table structure for tr_order_log
-- ----------------------------
DROP TABLE IF EXISTS `tr_order_log`;
CREATE TABLE `tr_order_log` (
  `order_id` int(11) NOT NULL,
  `order_type` int(11) NOT NULL COMMENT '1 = Daily; 2 = Development',
  `order_name` varchar(255) NOT NULL,
  `order_deadline` datetime NOT NULL,
  `order_brief` text NOT NULL,
  `order_source` varchar(255) NOT NULL,
  `order_output` text NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0 = No; 1 = Yes',
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_name` varchar(255) NOT NULL,
  `edited_date` datetime NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_order_log
-- ----------------------------
BEGIN;
INSERT INTO `tr_order_log` VALUES (1, 1, 'Project 1', '2021-05-17 11:00:00', 'Brief Project 1', 'Sumber Project 1', 'Output Project 1', 1, 1193748, 'SEFTIAN ALFREDO', '2021-05-12 14:49:49', 1193748, 'SEFTIAN ALFREDO', '2021-05-12 14:49:49');
COMMIT;

-- ----------------------------
-- Table structure for tr_rating
-- ----------------------------
DROP TABLE IF EXISTS `tr_rating`;
CREATE TABLE `tr_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_message` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`rating_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_rating
-- ----------------------------
BEGIN;
INSERT INTO `tr_rating` VALUES (1, 6, 5, '', 1061248, 'PRIHADI', '2021-06-21 12:56:09');
INSERT INTO `tr_rating` VALUES (2, 8, 4, '', 1061248, 'PRIHADI', '2021-06-21 13:43:05');
INSERT INTO `tr_rating` VALUES (3, 11, 5, '', 1132200, 'WIJOKONGKO', '2021-06-24 15:51:35');
INSERT INTO `tr_rating` VALUES (4, 15, 5, '', 1132200, 'WIJOKONGKO', '2021-06-30 07:03:27');
INSERT INTO `tr_rating` VALUES (5, 21, 5, '', 1132200, 'WIJOKONGKO', '2021-07-02 16:46:16');
INSERT INTO `tr_rating` VALUES (6, 25, 5, '', 1132200, 'WIJOKONGKO', '2021-07-05 17:25:49');
INSERT INTO `tr_rating` VALUES (7, 19, 5, '', 1153000, 'MARGARET PUSPITARINI', '2021-07-06 15:08:02');
INSERT INTO `tr_rating` VALUES (8, 26, 5, '', 1142826, 'LENI ANGGRAENI', '2021-07-07 11:44:37');
INSERT INTO `tr_rating` VALUES (9, 27, 5, '', 1132200, 'WIJOKONGKO', '2021-07-07 13:12:20');
INSERT INTO `tr_rating` VALUES (10, 29, 5, '', 1132200, 'WIJOKONGKO', '2021-07-08 14:53:37');
INSERT INTO `tr_rating` VALUES (11, 30, 5, '', 1142826, 'LENI ANGGRAENI', '2021-07-09 12:13:02');
INSERT INTO `tr_rating` VALUES (12, 32, 5, '', 1132200, 'WIJOKONGKO', '2021-07-13 10:11:10');
INSERT INTO `tr_rating` VALUES (13, 14, 5, '', 6231865, 'ARLIN NURSOPHIANA', '2021-07-14 10:50:17');
INSERT INTO `tr_rating` VALUES (14, 33, 5, '', 1142826, 'LENI ANGGRAENI', '2021-07-14 12:41:55');
INSERT INTO `tr_rating` VALUES (15, 37, 5, '', 1132200, 'WIJOKONGKO', '2021-07-15 14:29:18');
INSERT INTO `tr_rating` VALUES (16, 36, 5, '', 1132200, 'WIJOKONGKO', '2021-07-15 14:29:44');
INSERT INTO `tr_rating` VALUES (17, 28, 5, '', 1153000, 'MARGARET PUSPITARINI', '2021-07-16 14:26:59');
INSERT INTO `tr_rating` VALUES (18, 41, 5, '', 1142826, 'LENI ANGGRAENI', '2021-07-21 12:33:04');
INSERT INTO `tr_rating` VALUES (19, 42, 5, '', 1132200, 'WIJOKONGKO', '2021-07-22 15:44:53');
INSERT INTO `tr_rating` VALUES (20, 46, 5, '', 1142826, 'LENI ANGGRAENI', '2021-07-27 00:11:09');
INSERT INTO `tr_rating` VALUES (21, 47, 5, '', 1132200, 'WIJOKONGKO', '2021-07-27 11:09:07');
INSERT INTO `tr_rating` VALUES (22, 44, 5, '', 1132200, 'WIJOKONGKO', '2021-07-30 12:58:54');
INSERT INTO `tr_rating` VALUES (23, 51, 5, '', 1153000, 'MARGARET PUSPITARINI', '2021-08-03 16:58:35');
INSERT INTO `tr_rating` VALUES (24, 50, 5, '', 1132200, 'WIJOKONGKO', '2021-08-05 10:37:48');
INSERT INTO `tr_rating` VALUES (25, 49, 5, '', 1142826, 'LENI ANGGRAENI', '2021-08-06 10:49:26');
INSERT INTO `tr_rating` VALUES (26, 58, 5, '', 1142826, 'LENI ANGGRAENI', '2021-08-06 17:58:02');
INSERT INTO `tr_rating` VALUES (27, 52, 5, '', 1132200, 'WIJOKONGKO', '2021-08-07 17:20:04');
INSERT INTO `tr_rating` VALUES (28, 56, 5, '', 1132200, 'WIJOKONGKO', '2021-08-10 16:16:09');
INSERT INTO `tr_rating` VALUES (29, 65, 5, '', 1132200, 'WIJOKONGKO', '2021-08-18 13:29:50');
INSERT INTO `tr_rating` VALUES (30, 60, 5, '', 1132200, 'WIJOKONGKO', '2021-08-18 13:29:59');
INSERT INTO `tr_rating` VALUES (31, 53, 5, '', 1132200, 'WIJOKONGKO', '2021-08-18 13:30:07');
INSERT INTO `tr_rating` VALUES (32, 64, 5, '', 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:28:52');
INSERT INTO `tr_rating` VALUES (33, 55, 5, '', 1153000, 'MARGARET PUSPITARINI', '2021-08-19 09:29:00');
INSERT INTO `tr_rating` VALUES (34, 66, 5, '', 1132200, 'WIJOKONGKO', '2021-08-26 08:41:13');
COMMIT;

-- ----------------------------
-- Table structure for tr_task_item_graphic
-- ----------------------------
DROP TABLE IF EXISTS `tr_task_item_graphic`;
CREATE TABLE `tr_task_item_graphic` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_graphics_id` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `is_active` int(11) NOT NULL COMMENT '0 = NO; 1 = YES',
  `previous` varchar(255) NOT NULL,
  `taken_by` int(11) NOT NULL,
  `taken_name` varchar(255) NOT NULL,
  `taken_date` datetime NOT NULL,
  `finish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tr_task_item_graphic
-- ----------------------------
BEGIN;
INSERT INTO `tr_task_item_graphic` VALUES (1, 1, 0, 1, '', 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:49:57', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (2, 3, 0, 1, '', 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:50:02', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (3, 6, 0, 1, '', 1193726, 'NURUL NOVIANA RAFIKA', '2021-05-12 14:51:10', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (4, 12, 0, 1, '', 1153013, 'M. AVIAN DWI CAHYO', '2021-06-21 12:06:23', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (5, 13, 0, 1, '', 1193814, 'HAFIZ SUDWICAKSONO PRADITYA', '2021-06-21 12:13:28', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (6, 14, 0, 1, '', 1153013, 'M. AVIAN DWI CAHYO', '2021-06-21 12:14:00', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (7, 15, 0, 1, '', 1153013, 'M. AVIAN DWI CAHYO', '2021-06-21 12:14:16', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (8, 16, 0, 1, '', 1122165, 'TATY NUR FITRIANI', '2021-06-21 12:14:29', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (9, 24, 100, 1, '', 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 12:47:53', '2021-06-21 12:51:24');
INSERT INTO `tr_task_item_graphic` VALUES (10, 25, 0, 1, '', 1142859, 'M. IKBAL', '2021-06-21 13:17:57', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (11, 26, 0, 1, '', 1121997, 'BAYU YANU WIRANTO', '2021-06-21 13:18:09', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (12, 27, 0, 1, '', 1193814, 'HAFIZ SUDWICAKSONO PRADITYA', '2021-06-21 13:18:19', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (13, 28, 0, 1, '', 1193814, 'HAFIZ SUDWICAKSONO PRADITYA', '2021-06-21 13:18:30', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (14, 29, 0, 1, '', 1193814, 'HAFIZ SUDWICAKSONO PRADITYA', '2021-06-21 13:18:40', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (15, 30, 0, 1, '', 1153013, 'M. AVIAN DWI CAHYO', '2021-06-21 13:18:51', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (16, 33, 100, 1, '', 1153191, 'YOSUA FIRDAUS PALALLO', '2021-06-21 13:40:13', '2021-06-21 13:42:22');
INSERT INTO `tr_task_item_graphic` VALUES (17, 36, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-06-23 12:02:35', '2021-06-24 15:12:55');
INSERT INTO `tr_task_item_graphic` VALUES (18, 40, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-25 08:35:00', '2021-06-25 08:35:21');
INSERT INTO `tr_task_item_graphic` VALUES (19, 41, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-06-28 15:24:55', '2021-06-29 19:32:49');
INSERT INTO `tr_task_item_graphic` VALUES (20, 43, 0, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-29 09:32:43', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (21, 43, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-06-29 09:32:46', '2021-06-29 09:33:08');
INSERT INTO `tr_task_item_graphic` VALUES (22, 45, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-02 10:15:05', '2021-07-02 13:35:07');
INSERT INTO `tr_task_item_graphic` VALUES (23, 48, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-03 12:53:22', '2021-07-05 10:31:46');
INSERT INTO `tr_task_item_graphic` VALUES (24, 47, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-05 10:24:26', '2021-07-05 13:26:36');
INSERT INTO `tr_task_item_graphic` VALUES (25, 49, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-06 14:28:24', '2021-07-07 12:30:48');
INSERT INTO `tr_task_item_graphic` VALUES (26, 50, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-06 15:19:00', '2021-07-06 16:00:28');
INSERT INTO `tr_task_item_graphic` VALUES (27, 52, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-07 14:08:01', '2021-07-07 18:59:20');
INSERT INTO `tr_task_item_graphic` VALUES (28, 51, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-07 15:00:25', '2021-07-08 13:33:49');
INSERT INTO `tr_task_item_graphic` VALUES (29, 51, 98, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-07 15:00:30', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (30, 54, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-09 16:13:26', '2021-07-12 16:56:55');
INSERT INTO `tr_task_item_graphic` VALUES (31, 55, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-09 17:04:10', '2021-07-12 12:01:22');
INSERT INTO `tr_task_item_graphic` VALUES (32, 56, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-12 12:13:53', '2021-07-12 12:14:03');
INSERT INTO `tr_task_item_graphic` VALUES (33, 57, 0, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-12 16:57:06', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (34, 58, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-13 15:58:38', '2021-07-15 12:11:03');
INSERT INTO `tr_task_item_graphic` VALUES (35, 59, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-15 12:06:36', '2021-07-15 14:23:20');
INSERT INTO `tr_task_item_graphic` VALUES (36, 66, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-15 12:44:04', '2021-07-15 15:52:55');
INSERT INTO `tr_task_item_graphic` VALUES (37, 67, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-16 13:17:44', '2021-07-21 13:25:22');
INSERT INTO `tr_task_item_graphic` VALUES (38, 68, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-07-19 19:07:24', '2021-07-26 09:20:50');
INSERT INTO `tr_task_item_graphic` VALUES (39, 69, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-21 13:25:39', '2021-07-26 15:33:50');
INSERT INTO `tr_task_item_graphic` VALUES (40, 73, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-21 13:52:20', '2021-07-26 18:23:02');
INSERT INTO `tr_task_item_graphic` VALUES (41, 74, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-26 15:33:57', '2021-07-26 20:51:40');
INSERT INTO `tr_task_item_graphic` VALUES (42, 76, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 13:34:53', '2021-07-27 18:06:12');
INSERT INTO `tr_task_item_graphic` VALUES (43, 78, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-07-27 16:48:32', '2021-07-27 18:05:19');
INSERT INTO `tr_task_item_graphic` VALUES (44, 77, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-07-30 11:26:13', '2021-08-03 12:14:16');
INSERT INTO `tr_task_item_graphic` VALUES (45, 79, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-03 12:15:32', '2021-08-05 14:09:00');
INSERT INTO `tr_task_item_graphic` VALUES (46, 85, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-03 19:43:44', '2021-08-04 11:24:39');
INSERT INTO `tr_task_item_graphic` VALUES (47, 88, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-06 11:15:35', '2021-08-06 17:18:11');
INSERT INTO `tr_task_item_graphic` VALUES (48, 80, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-06 19:06:47', '2021-08-09 15:12:34');
INSERT INTO `tr_task_item_graphic` VALUES (49, 94, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-09 14:54:16', '2021-08-16 11:46:00');
INSERT INTO `tr_task_item_graphic` VALUES (50, 93, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-09 17:31:25', '2021-08-09 20:05:01');
INSERT INTO `tr_task_item_graphic` VALUES (51, 86, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-09 20:04:51', '2021-08-09 20:06:03');
INSERT INTO `tr_task_item_graphic` VALUES (52, 99, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:33', '2021-08-11 18:47:52');
INSERT INTO `tr_task_item_graphic` VALUES (53, 99, 0, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:36', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (54, 99, 0, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-11 02:36:41', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (55, 100, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-16 12:08:39', '2021-08-16 14:58:02');
INSERT INTO `tr_task_item_graphic` VALUES (56, 102, 0, 1, '', 1122165, 'TATY NUR FITRIANI', '2021-08-18 17:44:51', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (57, 105, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-19 17:11:59', '2021-08-24 11:02:06');
INSERT INTO `tr_task_item_graphic` VALUES (58, 103, 100, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-19 18:44:41', '2021-08-24 12:13:23');
INSERT INTO `tr_task_item_graphic` VALUES (59, 103, 0, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-19 18:44:44', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (60, 104, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-24 11:02:27', '2021-08-24 11:02:36');
INSERT INTO `tr_task_item_graphic` VALUES (61, 106, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 11:56:15', '2021-08-24 11:56:21');
INSERT INTO `tr_task_item_graphic` VALUES (62, 111, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 11:57:15', '2021-08-24 14:01:37');
INSERT INTO `tr_task_item_graphic` VALUES (63, 109, 50, 1, '', 6231198, 'AKBAR FERNANDA', '2021-08-24 12:13:12', NULL);
INSERT INTO `tr_task_item_graphic` VALUES (64, 110, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-24 12:22:13', '2021-08-24 12:29:34');
INSERT INTO `tr_task_item_graphic` VALUES (65, 101, 100, 1, '', 6231979, 'BENEDIKTUS AJI ANDANDI', '2021-08-24 14:15:51', '2021-08-24 16:43:09');
INSERT INTO `tr_task_item_graphic` VALUES (66, 112, 100, 1, '', 1142884, 'GREGORIUS YOHANDI', '2021-08-26 11:59:45', '2021-08-26 16:19:42');
COMMIT;

-- ----------------------------
-- View structure for vw_active_head_order
-- ----------------------------
DROP VIEW IF EXISTS `vw_active_head_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_active_head_order` AS select `tr_order`.`order_id` AS `order_id`,`tr_order`.`order_type` AS `order_type`,`tr_order`.`order_name` AS `order_name`,`tr_order`.`order_deadline` AS `order_deadline`,`tr_order`.`order_brief` AS `order_brief`,`tr_order`.`order_source` AS `order_source`,`tr_order`.`order_output` AS `order_output`,`tr_order`.`is_active` AS `is_active`,`tr_order`.`create_by` AS `create_by`,`tr_order`.`create_name` AS `create_name`,`tr_order`.`create_date` AS `create_date`,`tr_order`.`edited_by` AS `edited_by`,`tr_order`.`edited_name` AS `edited_name`,`tr_order`.`edited_date` AS `edited_date` from `tr_order` where `tr_order`.`is_active` = 1;

-- ----------------------------
-- View structure for vw_admin
-- ----------------------------
DROP VIEW IF EXISTS `vw_admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_admin` AS select `tbl1`.`user_nip` AS `user_nip`,`tbl1`.`role_id` AS `role_id`,`tbl2`.`role_name` AS `role_name`,`tbl1`.`type_id` AS `type_id`,`tbl3`.`type_name` AS `type_name`,`tbl1`.`user_comp` AS `user_comp`,`tbl1`.`user_name` AS `user_name`,`tbl1`.`user_email` AS `user_email`,`tbl1`.`user_phone` AS `user_phone`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_name` AS `edited_name`,`tbl1`.`edited_date` AS `edited_date` from ((`tab_user` `tbl1` left join `tab_role` `tbl2` on(`tbl1`.`role_id` = `tbl2`.`role_id`)) left join `tab_type` `tbl3` on(`tbl1`.`type_id` = `tbl3`.`type_id`)) where `tbl1`.`role_id` = 3;

-- ----------------------------
-- View structure for vw_all_user
-- ----------------------------
DROP VIEW IF EXISTS `vw_all_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_all_user` AS select `tbl1`.`user_nip` AS `user_nip`,`tbl1`.`role_id` AS `role_id`,`tbl2`.`role_name` AS `role_name`,`tbl1`.`type_id` AS `type_id`,`tbl3`.`type_name` AS `type_name`,`tbl1`.`user_comp` AS `user_comp`,`tbl1`.`user_name` AS `user_name`,`tbl1`.`user_email` AS `user_email`,`tbl1`.`user_phone` AS `user_phone`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_name` AS `edited_name`,`tbl1`.`edited_date` AS `edited_date` from ((`tab_user` `tbl1` left join `tab_role` `tbl2` on(`tbl1`.`role_id` = `tbl2`.`role_id`)) left join `tab_type` `tbl3` on(`tbl1`.`type_id` = `tbl3`.`type_id`)) where `tbl1`.`role_id` <> 4;

-- ----------------------------
-- View structure for vw_chat
-- ----------------------------
DROP VIEW IF EXISTS `vw_chat`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_chat` AS select `tbl1`.`order_id` AS `order_id`,`tbl1`.`order_type` AS `order_type`,`tbl1`.`order_name` AS `order_name`,`tbl1`.`order_deadline` AS `order_deadline`,`tbl1`.`order_brief` AS `order_brief`,`tbl1`.`order_source` AS `order_source`,`tbl1`.`order_output` AS `order_output`,`tbl1`.`is_active` AS `is_active`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl2`.`item_graphics_id` AS `item_graphics_id`,`tbl2`.`item_graphics_category` AS `item_graphics_category`,`tbl2`.`item_graphics_sub_category` AS `item_graphics_sub_category`,`tbl2`.`item_graphics_name` AS `item_graphics_name`,`tbl3`.`task_id` AS `task_id`,`tbl3`.`progress` AS `progress`,`tbl3`.`is_active` AS `is_active_task`,`tbl3`.`previous` AS `previous`,`tbl3`.`taken_by` AS `taken_by`,`tbl3`.`taken_name` AS `taken_name`,`tbl3`.`taken_date` AS `taken_date`,`tbl3`.`finish_date` AS `finish_date`,`tbl4`.`chat_id` AS `chat_id`,`tbl4`.`chat_desc` AS `chat_desc`,`tbl4`.`chat_sender` AS `chat_sender`,`tbl4`.`chat_sender_name` AS `chat_sender_name`,`tbl4`.`chat_sender_time` AS `chat_sender_time` from (((`tr_order` `tbl1` join `tr_item_graphics` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) left join `tr_task_item_graphic` `tbl3` on(`tbl2`.`item_graphics_id` = `tbl3`.`item_graphics_id`)) left join `tr_chat_item_graphic` `tbl4` on(`tbl3`.`task_id` = `tbl4`.`task_id`));

-- ----------------------------
-- View structure for vw_client
-- ----------------------------
DROP VIEW IF EXISTS `vw_client`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_client` AS select `tbl1`.`user_nip` AS `user_nip`,`tbl1`.`role_id` AS `role_id`,`tbl2`.`role_name` AS `role_name`,`tbl1`.`type_id` AS `type_id`,`tbl3`.`type_name` AS `type_name`,`tbl1`.`user_comp` AS `user_comp`,`tbl1`.`user_name` AS `user_name`,`tbl1`.`user_email` AS `user_email`,`tbl1`.`user_phone` AS `user_phone`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_name` AS `edited_name`,`tbl1`.`edited_date` AS `edited_date` from ((`tab_user` `tbl1` left join `tab_role` `tbl2` on(`tbl1`.`role_id` = `tbl2`.`role_id`)) left join `tab_type` `tbl3` on(`tbl1`.`type_id` = `tbl3`.`type_id`)) where `tbl1`.`role_id` = 1;

-- ----------------------------
-- View structure for vw_designer
-- ----------------------------
DROP VIEW IF EXISTS `vw_designer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_designer` AS select `tbl1`.`user_nip` AS `user_nip`,`tbl1`.`role_id` AS `role_id`,`tbl2`.`role_name` AS `role_name`,`tbl1`.`type_id` AS `type_id`,`tbl3`.`type_name` AS `type_name`,`tbl1`.`user_comp` AS `user_comp`,`tbl1`.`user_name` AS `user_name`,`tbl1`.`user_email` AS `user_email`,`tbl1`.`user_phone` AS `user_phone`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_name` AS `edited_name`,`tbl1`.`edited_date` AS `edited_date` from ((`tab_user` `tbl1` left join `tab_role` `tbl2` on(`tbl1`.`role_id` = `tbl2`.`role_id`)) left join `tab_type` `tbl3` on(`tbl1`.`type_id` = `tbl3`.`type_id`)) where `tbl1`.`role_id` = 2;

-- ----------------------------
-- View structure for vw_item_graphic
-- ----------------------------
DROP VIEW IF EXISTS `vw_item_graphic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_item_graphic` AS select `tbl1`.`item_graphic_id` AS `item_graphic_id`,`tbl1`.`type_id` AS `type_id`,`tbl2`.`type_name` AS `type_name`,`tbl1`.`item_graphic_category` AS `item_graphic_category`,`tbl1`.`item_graphic_sub_category` AS `item_graphic_sub_category`,`tbl1`.`item_graphic_name` AS `item_graphic_name`,`tbl1`.`item_graphic_desc` AS `item_graphic_desc`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_name` AS `edited_name`,`tbl1`.`edited_date` AS `edited_date` from (`tab_item_graphic` `tbl1` left join `tab_type` `tbl2` on(`tbl1`.`type_id` = `tbl2`.`type_id`));

-- ----------------------------
-- View structure for vw_nav
-- ----------------------------
DROP VIEW IF EXISTS `vw_nav`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_nav` AS select `tab_nav`.`nav_id` AS `nav_id`,`tab_nav`.`nav_name` AS `nav_name`,`tab_nav`.`nav_ctr` AS `nav_ctr`,`tab_nav`.`nav_order` AS `nav_order`,`tab_nav`.`nav_icon` AS `nav_icon`,`tab_nav`.`dev_only` AS `dev_only`,`tab_nav`.`create_date` AS `create_date`,`tab_nav`.`create_by` AS `create_by`,`tab_nav`.`edited_date` AS `edited_date`,`tab_nav`.`edited_by` AS `edited_by` from `tab_nav`;

-- ----------------------------
-- View structure for vw_not_active_head_order
-- ----------------------------
DROP VIEW IF EXISTS `vw_not_active_head_order`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_not_active_head_order` AS select `tr_order`.`order_id` AS `order_id`,`tr_order`.`order_type` AS `order_type`,`tr_order`.`order_name` AS `order_name`,`tr_order`.`order_deadline` AS `order_deadline`,`tr_order`.`order_brief` AS `order_brief`,`tr_order`.`order_source` AS `order_source`,`tr_order`.`order_output` AS `order_output`,`tr_order`.`is_active` AS `is_active`,`tr_order`.`create_by` AS `create_by`,`tr_order`.`create_name` AS `create_name`,`tr_order`.`create_date` AS `create_date`,`tr_order`.`edited_by` AS `edited_by`,`tr_order`.`edited_name` AS `edited_name`,`tr_order`.`edited_date` AS `edited_date` from `tr_order` where `tr_order`.`is_active` = 0;

-- ----------------------------
-- View structure for vw_order_attachment
-- ----------------------------
DROP VIEW IF EXISTS `vw_order_attachment`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_order_attachment` AS select `tbl1`.`attachment_id` AS `attachment_id`,`tbl1`.`order_id` AS `order_id`,`tbl2`.`order_name` AS `order_name`,`tbl1`.`attachment_name` AS `attachment_name` from (`tr_attachment` `tbl1` join `tr_order` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`));

-- ----------------------------
-- View structure for vw_order_item_graphic
-- ----------------------------
DROP VIEW IF EXISTS `vw_order_item_graphic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_order_item_graphic` AS select `tbl1`.`item_graphics_id` AS `item_graphics_id`,`tbl1`.`order_id` AS `order_id`,`tbl2`.`order_name` AS `order_name`,`tbl1`.`item_graphics_category` AS `item_graphics_category`,`tbl1`.`item_graphics_sub_category` AS `item_graphics_sub_category`,`tbl1`.`item_graphics_name` AS `item_graphics_name` from (`tr_item_graphics` `tbl1` join `tr_order` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`));

-- ----------------------------
-- View structure for vw_score_item_graphic
-- ----------------------------
DROP VIEW IF EXISTS `vw_score_item_graphic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_score_item_graphic` AS select `tbl1`.`item_graphic_id` AS `item_graphic_id`,`tbl1`.`type_id` AS `type_id`,`tbl3`.`type_name` AS `type_name`,`tbl1`.`item_graphic_category` AS `item_graphic_category`,`tbl1`.`item_graphic_sub_category` AS `item_graphic_sub_category`,`tbl1`.`item_graphic_name` AS `item_graphic_name`,`tbl2`.`item_score_id` AS `item_score_id`,`tbl2`.`item_score_count` AS `item_score_count`,`tbl2`.`create_by` AS `create_by`,`tbl2`.`create_name` AS `create_name`,`tbl2`.`create_date` AS `create_date`,`tbl2`.`edited_by` AS `edited_by`,`tbl2`.`edited_name` AS `edited_name`,`tbl2`.`edited_date` AS `edited_date` from ((`tab_item_graphic` `tbl1` left join `tab_score_item` `tbl2` on(`tbl1`.`item_graphic_id` = `tbl2`.`item_graphic_id`)) left join `tab_type` `tbl3` on(`tbl1`.`type_id` = `tbl3`.`type_id`));

-- ----------------------------
-- View structure for vw_task
-- ----------------------------
DROP VIEW IF EXISTS `vw_task`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_task` AS select `tbl1`.`order_id` AS `order_id`,`tbl1`.`order_type` AS `order_type`,`tbl1`.`order_name` AS `order_name`,`tbl1`.`order_deadline` AS `order_deadline`,`tbl1`.`order_brief` AS `order_brief`,`tbl1`.`order_source` AS `order_source`,`tbl1`.`order_output` AS `order_output`,`tbl1`.`is_active` AS `is_active`,`tbl1`.`create_by` AS `create_by`,`tbl1`.`create_name` AS `create_name`,`tbl1`.`create_date` AS `create_date`,`tbl2`.`item_graphics_id` AS `item_graphics_id`,`tbl2`.`item_graphics_category` AS `item_graphics_category`,`tbl2`.`item_graphics_sub_category` AS `item_graphics_sub_category`,`tbl2`.`item_graphics_name` AS `item_graphics_name`,`tbl3`.`task_id` AS `task_id`,`tbl3`.`progress` AS `progress`,`tbl3`.`is_active` AS `is_active_task`,`tbl3`.`previous` AS `previous`,`tbl3`.`taken_by` AS `taken_by`,`tbl3`.`taken_name` AS `taken_name`,`tbl3`.`taken_date` AS `taken_date`,`tbl3`.`finish_date` AS `finish_date` from ((`tr_order` `tbl1` join `tr_item_graphics` `tbl2` on(`tbl1`.`order_id` = `tbl2`.`order_id`)) left join `tr_task_item_graphic` `tbl3` on(`tbl2`.`item_graphics_id` = `tbl3`.`item_graphics_id`));

-- ----------------------------
-- View structure for vw_uac
-- ----------------------------
DROP VIEW IF EXISTS `vw_uac`;
CREATE ALGORITHM=UNDEFINED DEFINER=`dev`@`%` SQL SECURITY DEFINER VIEW `vw_uac` AS select `tbl1`.`user_id` AS `user_id`,`tbl1`.`nav_id` AS `nav_id`,`tbl1`.`create_date` AS `create_date`,`tbl1`.`create_by` AS `create_by`,`tbl2`.`nav_name` AS `nav_name`,`tbl2`.`nav_ctr` AS `nav_ctr`,`tbl2`.`nav_order` AS `nav_order`,`tbl2`.`nav_icon` AS `nav_icon`,`tbl2`.`dev_only` AS `dev_only` from (`tab_uac` `tbl1` left join `tab_nav` `tbl2` on(`tbl1`.`nav_id` = `tbl2`.`nav_id`));

SET FOREIGN_KEY_CHECKS = 1;
