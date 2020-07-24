/*
Navicat MySQL Data Transfer

Source Server         : treeants
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : crmdemo_db

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-07-24 17:27:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add user info', '6', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('22', 'Can change user info', '6', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete user info', '6', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('24', 'Can view user info', '6', 'view_userinfo');
INSERT INTO `auth_permission` VALUES ('25', 'Can add class list', '7', 'add_classlist');
INSERT INTO `auth_permission` VALUES ('26', 'Can change class list', '7', 'change_classlist');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete class list', '7', 'delete_classlist');
INSERT INTO `auth_permission` VALUES ('28', 'Can view class list', '7', 'view_classlist');
INSERT INTO `auth_permission` VALUES ('29', 'Can add course', '8', 'add_course');
INSERT INTO `auth_permission` VALUES ('30', 'Can change course', '8', 'change_course');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete course', '8', 'delete_course');
INSERT INTO `auth_permission` VALUES ('32', 'Can view course', '8', 'view_course');
INSERT INTO `auth_permission` VALUES ('33', 'Can add course record', '9', 'add_courserecord');
INSERT INTO `auth_permission` VALUES ('34', 'Can change course record', '9', 'change_courserecord');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete course record', '9', 'delete_courserecord');
INSERT INTO `auth_permission` VALUES ('36', 'Can view course record', '9', 'view_courserecord');
INSERT INTO `auth_permission` VALUES ('37', 'Can add customer', '10', 'add_customer');
INSERT INTO `auth_permission` VALUES ('38', 'Can change customer', '10', 'change_customer');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete customer', '10', 'delete_customer');
INSERT INTO `auth_permission` VALUES ('40', 'Can view customer', '10', 'view_customer');
INSERT INTO `auth_permission` VALUES ('41', 'Can add department', '11', 'add_department');
INSERT INTO `auth_permission` VALUES ('42', 'Can change department', '11', 'change_department');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete department', '11', 'delete_department');
INSERT INTO `auth_permission` VALUES ('44', 'Can view department', '11', 'view_department');
INSERT INTO `auth_permission` VALUES ('45', 'Can add school', '12', 'add_school');
INSERT INTO `auth_permission` VALUES ('46', 'Can change school', '12', 'change_school');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete school', '12', 'delete_school');
INSERT INTO `auth_permission` VALUES ('48', 'Can view school', '12', 'view_school');
INSERT INTO `auth_permission` VALUES ('49', 'Can add student', '13', 'add_student');
INSERT INTO `auth_permission` VALUES ('50', 'Can change student', '13', 'change_student');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete student', '13', 'delete_student');
INSERT INTO `auth_permission` VALUES ('52', 'Can view student', '13', 'view_student');
INSERT INTO `auth_permission` VALUES ('53', 'Can add study record', '14', 'add_studyrecord');
INSERT INTO `auth_permission` VALUES ('54', 'Can change study record', '14', 'change_studyrecord');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete study record', '14', 'delete_studyrecord');
INSERT INTO `auth_permission` VALUES ('56', 'Can view study record', '14', 'view_studyrecord');
INSERT INTO `auth_permission` VALUES ('57', 'Can add score record', '15', 'add_scorerecord');
INSERT INTO `auth_permission` VALUES ('58', 'Can change score record', '15', 'change_scorerecord');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete score record', '15', 'delete_scorerecord');
INSERT INTO `auth_permission` VALUES ('60', 'Can view score record', '15', 'view_scorerecord');
INSERT INTO `auth_permission` VALUES ('61', 'Can add payment record', '16', 'add_paymentrecord');
INSERT INTO `auth_permission` VALUES ('62', 'Can change payment record', '16', 'change_paymentrecord');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete payment record', '16', 'delete_paymentrecord');
INSERT INTO `auth_permission` VALUES ('64', 'Can view payment record', '16', 'view_paymentrecord');
INSERT INTO `auth_permission` VALUES ('65', 'Can add consult record', '17', 'add_consultrecord');
INSERT INTO `auth_permission` VALUES ('66', 'Can change consult record', '17', 'change_consultrecord');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete consult record', '17', 'delete_consultrecord');
INSERT INTO `auth_permission` VALUES ('68', 'Can view consult record', '17', 'view_consultrecord');
INSERT INTO `auth_permission` VALUES ('69', 'Can add menu', '18', 'add_menu');
INSERT INTO `auth_permission` VALUES ('70', 'Can change menu', '18', 'change_menu');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete menu', '18', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('72', 'Can view menu', '18', 'view_menu');
INSERT INTO `auth_permission` VALUES ('73', 'Can add permission', '19', 'add_permission');
INSERT INTO `auth_permission` VALUES ('74', 'Can change permission', '19', 'change_permission');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete permission', '19', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('76', 'Can view permission', '19', 'view_permission');
INSERT INTO `auth_permission` VALUES ('77', 'Can add role', '20', 'add_role');
INSERT INTO `auth_permission` VALUES ('78', 'Can change role', '20', 'change_role');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete role', '20', 'delete_role');
INSERT INTO `auth_permission` VALUES ('80', 'Can view role', '20', 'view_role');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_web_userinfo_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_web_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('18', 'rbac', 'menu');
INSERT INTO `django_content_type` VALUES ('19', 'rbac', 'permission');
INSERT INTO `django_content_type` VALUES ('20', 'rbac', 'role');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'web', 'classlist');
INSERT INTO `django_content_type` VALUES ('17', 'web', 'consultrecord');
INSERT INTO `django_content_type` VALUES ('8', 'web', 'course');
INSERT INTO `django_content_type` VALUES ('9', 'web', 'courserecord');
INSERT INTO `django_content_type` VALUES ('10', 'web', 'customer');
INSERT INTO `django_content_type` VALUES ('11', 'web', 'department');
INSERT INTO `django_content_type` VALUES ('16', 'web', 'paymentrecord');
INSERT INTO `django_content_type` VALUES ('12', 'web', 'school');
INSERT INTO `django_content_type` VALUES ('15', 'web', 'scorerecord');
INSERT INTO `django_content_type` VALUES ('13', 'web', 'student');
INSERT INTO `django_content_type` VALUES ('14', 'web', 'studyrecord');
INSERT INTO `django_content_type` VALUES ('6', 'web', 'userinfo');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'rbac', '0001_initial', '2020-07-23 08:09:40.994590');
INSERT INTO `django_migrations` VALUES ('2', 'web', '0001_initial', '2020-07-23 08:09:43.305808');
INSERT INTO `django_migrations` VALUES ('3', 'contenttypes', '0001_initial', '2020-07-23 08:09:48.836771');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2020-07-23 08:09:48.947975');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2020-07-23 08:09:49.282301');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0003_logentry_add_action_flag_choices', '2020-07-23 08:09:49.302247');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2020-07-23 08:09:49.599510');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0001_initial', '2020-07-23 08:09:49.882036');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0002_alter_permission_name_max_length', '2020-07-23 08:09:50.734243');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0003_alter_user_email_max_length', '2020-07-23 08:09:50.756442');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0004_alter_user_username_opts', '2020-07-23 08:09:50.776477');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0005_alter_user_last_login_null', '2020-07-23 08:09:50.794466');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0006_require_contenttypes_0002', '2020-07-23 08:09:50.806541');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0007_alter_validators_add_error_messages', '2020-07-23 08:09:50.822499');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0008_alter_user_username_max_length', '2020-07-23 08:09:50.842535');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0009_alter_user_last_name_max_length', '2020-07-23 08:09:50.861699');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0010_alter_group_name_max_length', '2020-07-23 08:09:51.053202');
INSERT INTO `django_migrations` VALUES ('18', 'auth', '0011_update_proxy_permissions', '2020-07-23 08:09:51.081165');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2020-07-23 08:09:51.162710');
INSERT INTO `django_migrations` VALUES ('20', 'web', '0002_auto_20200723_1824', '2020-07-23 10:24:40.068339');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('z6ay34bd2an7b0oatkm7o0e7o7e9b0er', 'NmI0MWE4Yzc1MWE3MDVlZDY4N2RjNDFkN2MwYTIwYmYxMTI4N2Q0ZTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5BbGxvd0FsbFVzZXJzTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjY2NWMxZWZkMjZkYzBmODFiNTAwOGQ5YTcyZTYyM2UzNjBhZGM4ZSIsInBlcm1pc3Npb25fdXJsX2xpc3Rfa2V5Ijp7IndlYl9kZXBhcnRtZW50X2xpc3QiOnsiaWQiOjEsInVybCI6Ii9zdGFyay93ZWIvZGVwYXJ0bWVudC9saXN0LyIsInRpdGxlIjoiXHU5MGU4XHU5NWU4XHU1MjE3XHU4ODY4IiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbH0sIndlYl9zY2hvb2xfbGlzdCI6eyJpZCI6MTAsInVybCI6Ii9zdGFyay93ZWIvc2Nob29sL2xpc3QvIiwidGl0bGUiOiJcdTY4MjFcdTUzM2FcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsInBuYW1lIjpudWxsfSwid2ViX2NvdXJzZV9saXN0Ijp7ImlkIjoxNCwidXJsIjoiL3N0YXJrL3dlYi9jb3Vyc2UvbGlzdC8iLCJ0aXRsZSI6Ilx1OGJmZVx1N2EwYlx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwicG5hbWUiOm51bGx9LCJ3ZWJfY2xhc3NsaXN0X2xpc3QiOnsiaWQiOjE4LCJ1cmwiOiIvc3Rhcmsvd2ViL2NsYXNzbGlzdC9saXN0LyIsInRpdGxlIjoiXHU3M2VkXHU3ZWE3XHU1MjE3XHU4ODY4IiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbH0sIndlYl9jdXN0b21lcl9wdWJfbGlzdCI6eyJpZCI6MjIsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHViL2xpc3QvIiwidGl0bGUiOiJcdTUxNmNcdTYyMzdcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsInBuYW1lIjpudWxsfSwid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCI6eyJpZCI6MjcsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHJpdi9saXN0LyIsInRpdGxlIjoiXHU2MjExXHU3Njg0XHU1YmEyXHU2MjM3IiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbH0sIndlYl9wYXltZW50cmVjb3JkX2NoZWNrX2xpc3QiOnsiaWQiOjM3LCJ1cmwiOiIvc3Rhcmsvd2ViL3BheW1lbnRyZWNvcmQvY2hlY2svbGlzdC8iLCJ0aXRsZSI6Ilx1NWJhMVx1NjgzOFx1N2YzNFx1OGQzOVx1OGJiMFx1NWY1NSIsInBpZCI6bnVsbCwicG5hbWUiOm51bGx9LCJ3ZWJfc3R1ZGVudF9saXN0Ijp7ImlkIjozOCwidXJsIjoiL3N0YXJrL3dlYi9zdHVkZW50L2xpc3QvIiwidGl0bGUiOiJcdTViNjZcdTc1MWZcdTUyMTdcdTg4NjgiLCJwaWQiOm51bGwsInBuYW1lIjpudWxsfSwid2ViX3VzZXJpbmZvX2xpc3QiOnsiaWQiOjUsInVybCI6Ii9zdGFyay93ZWIvdXNlcmluZm8vbGlzdC8iLCJ0aXRsZSI6Ilx1NzUyOFx1NjIzN1x1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwicG5hbWUiOm51bGx9LCJyYmFjOnJvbGVfbGlzdCI6eyJpZCI6NDcsInVybCI6Ii9yYmFjL3JvbGUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODlkMlx1ODI3Mlx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwicG5hbWUiOm51bGx9LCJyYmFjOm1lbnVfbGlzdCI6eyJpZCI6NTEsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8iLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1NTIxN1x1ODg2OCIsInBpZCI6bnVsbCwicG5hbWUiOm51bGx9LCJyYmFjOmRpc3RyaWJ1dGVfcGVybWlzc2lvbnMiOnsiaWQiOjYzLCJ1cmwiOiIvcmJhYy9kaXN0cmlidXRlL3Blcm1pc3Npb25zLyIsInRpdGxlIjoiXHU1MjA2XHU5MTRkXHU2NzQzXHU5NjUwIiwicGlkIjpudWxsLCJwbmFtZSI6bnVsbH0sIndlYl9kZXBhcnRtZW50X2FkZCI6eyJpZCI6MiwidXJsIjoiL3N0YXJrL3dlYi9kZXBhcnRtZW50L2FkZC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1OTBlOFx1OTVlOCIsInBpZCI6MSwicG5hbWUiOiJ3ZWJfZGVwYXJ0bWVudF9saXN0In0sIndlYl9kZXBhcnRtZW50X2NoYW5nZSI6eyJpZCI6MywidXJsIjoiL3N0YXJrL3dlYi9kZXBhcnRtZW50L2NoYW5nZS8oP1A8cGs+XFxkKykvIiwidGl0bGUiOiJcdTRmZWVcdTY1MzlcdTkwZThcdTk1ZTgiLCJwaWQiOjEsInBuYW1lIjoid2ViX2RlcGFydG1lbnRfbGlzdCJ9LCJ3ZWJfZGVwYXJ0bWVudF9kZWxldGUiOnsiaWQiOjQsInVybCI6Ii9zdGFyay93ZWIvZGVwYXJ0bWVudC9kZWxldGUvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4IiwicGlkIjoxLCJwbmFtZSI6IndlYl9kZXBhcnRtZW50X2xpc3QifSwid2ViX3VzZXJpbmZvX2FkZCI6eyJpZCI6NiwidXJsIjoiL3N0YXJrL3dlYi91c2VyaW5mby9hZGQvIiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTc1MjhcdTYyMzciLCJwaWQiOjUsInBuYW1lIjoid2ViX3VzZXJpbmZvX2xpc3QifSwid2ViX3VzZXJpbmZvX2NoYW5nZSI6eyJpZCI6NywidXJsIjoiL3N0YXJrL3dlYi91c2VyaW5mby9jaGFuZ2UvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU0ZmVlXHU2NTM5XHU3NTI4XHU2MjM3IiwicGlkIjo1LCJwbmFtZSI6IndlYl91c2VyaW5mb19saXN0In0sIndlYl91c2VyaW5mb19kZWxldGUiOnsiaWQiOjgsInVybCI6Ii9zdGFyay93ZWIvdXNlcmluZm8vZGVsZXRlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NzUyOFx1NjIzNyIsInBpZCI6NSwicG5hbWUiOiJ3ZWJfdXNlcmluZm9fbGlzdCJ9LCJ3ZWJfdXNlcmluZm9fcmVzZXRfcHdkIjp7ImlkIjo5LCJ1cmwiOiIvc3Rhcmsvd2ViL3VzZXJpbmZvL3Jlc2V0L3Bhc3N3b3JkLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1OTFjZFx1N2Y2ZVx1NWJjNlx1NzgwMSIsInBpZCI6NSwicG5hbWUiOiJ3ZWJfdXNlcmluZm9fbGlzdCJ9LCJ3ZWJfc2Nob29sX2FkZCI6eyJpZCI6MTEsInVybCI6Ii9zdGFyay93ZWIvc2Nob29sL2FkZC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NjgyMVx1NTMzYSIsInBpZCI6MTAsInBuYW1lIjoid2ViX3NjaG9vbF9saXN0In0sIndlYl9zY2hvb2xfY2hhbmdlIjp7ImlkIjoxMiwidXJsIjoiL3N0YXJrL3dlYi9zY2hvb2wvY2hhbmdlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1NjgyMVx1NTMzYSIsInBpZCI6MTAsInBuYW1lIjoid2ViX3NjaG9vbF9saXN0In0sIndlYl9zY2hvb2xfZGVsZXRlIjp7ImlkIjoxMywidXJsIjoiL3N0YXJrL3dlYi9zY2hvb2wvZGVsZXRlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NjgyMVx1NTMzYSIsInBpZCI6MTAsInBuYW1lIjoid2ViX3NjaG9vbF9saXN0In0sIndlYl9jb3Vyc2VfYWRkIjp7ImlkIjoxNSwidXJsIjoiL3N0YXJrL3dlYi9jb3Vyc2UvYWRkLyIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU4YmZlXHU3YTBiIiwicGlkIjoxNCwicG5hbWUiOiJ3ZWJfY291cnNlX2xpc3QifSwid2ViX2NvdXJzZV9jaGFuZ2UiOnsiaWQiOjE2LCJ1cmwiOiIvc3Rhcmsvd2ViL2NvdXJzZS9jaGFuZ2UvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU0ZmVlXHU2NTM5XHU4YmZlXHU3YTBiIiwicGlkIjoxNCwicG5hbWUiOiJ3ZWJfY291cnNlX2xpc3QifSwid2ViX2NvdXJzZV9kZWxldGUiOnsiaWQiOjE3LCJ1cmwiOiIvc3Rhcmsvd2ViL2NvdXJzZS9kZWxldGUvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU1MjIwXHU5NjY0XHU4YmZlXHU3YTBiIiwicGlkIjoxNCwicG5hbWUiOiJ3ZWJfY291cnNlX2xpc3QifSwid2ViX2NsYXNzbGlzdF9hZGQiOnsiaWQiOjE5LCJ1cmwiOiIvc3Rhcmsvd2ViL2NsYXNzbGlzdC9hZGQvIiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTczZWRcdTdlYTciLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJ3ZWJfY2xhc3NsaXN0X2NoYW5nZSI6eyJpZCI6MjAsInVybCI6Ii9zdGFyay93ZWIvY2xhc3NsaXN0L2NoYW5nZS8oP1A8cGs+XFxkKykvIiwidGl0bGUiOiJcdTRmZWVcdTY1MzlcdTczZWRcdTdlYTciLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJ3ZWJfY2xhc3NsaXN0X2RlbGV0ZSI6eyJpZCI6MjEsInVybCI6Ii9zdGFyay93ZWIvY2xhc3NsaXN0L2RlbGV0ZS8oP1A8cGs+XFxkKykvIiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdTczZWRcdTdlYTciLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJ3ZWJfY3VzdG9tZXJfcHViX2FkZCI6eyJpZCI6MjMsInVybCI6Ii9zdGFyay93ZWIvY3VzdG9tZXIvcHViL2FkZC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NTE2Y1x1NjIzNyIsInBpZCI6MjIsInBuYW1lIjoid2ViX2N1c3RvbWVyX3B1Yl9saXN0In0sIndlYl9jdXN0b21lcl9wdWJfY2hhbmdlIjp7ImlkIjoyNCwidXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wdWIvY2hhbmdlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1NTE2Y1x1NjIzNyIsInBpZCI6MjIsInBuYW1lIjoid2ViX2N1c3RvbWVyX3B1Yl9saXN0In0sIndlYl9jdXN0b21lcl9wdWJfZGVsZXRlIjp7ImlkIjoyNSwidXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wdWIvZGVsZXRlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NTE2Y1x1NjIzNyIsInBpZCI6MjIsInBuYW1lIjoid2ViX2N1c3RvbWVyX3B1Yl9saXN0In0sIndlYl9jdXN0b21lcl9wdWJfcmVjb3JkX3ZpZXciOnsiaWQiOjI2LCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3B1Yi9yZWNvcmQvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU2N2U1XHU3NzBiXHU1MTZjXHU2MjM3XHU4ZGRmXHU4ZmRiIiwicGlkIjoyMiwicG5hbWUiOiJ3ZWJfY3VzdG9tZXJfcHViX2xpc3QifSwid2ViX2N1c3RvbWVyX3ByaXZfYWRkIjp7ImlkIjoyOCwidXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wcml2L2FkZC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfY3VzdG9tZXJfcHJpdl9jaGFuZ2UiOnsiaWQiOjI5LCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvY2hhbmdlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfY3VzdG9tZXJfcHJpdl9kZWxldGUiOnsiaWQiOjMwLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvZGVsZXRlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NjIxMVx1NzY4NFx1NWJhMlx1NjIzNyIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfY29uc3VsdHJlY29yZF9saXN0Ijp7ImlkIjozMSwidXJsIjoiL3N0YXJrL3dlYi9jb25zdWx0cmVjb3JkL2xpc3QvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsInRpdGxlIjoiXHU4ZGRmXHU4ZmRiXHU4YmIwXHU1ZjU1XHU1MjE3XHU4ODY4IiwicGlkIjoyNywicG5hbWUiOiJ3ZWJfY3VzdG9tZXJfcHJpdl9saXN0In0sIndlYl9jb25zdWx0cmVjb3JkX2FkZCI6eyJpZCI6MzIsInVybCI6Ii9zdGFyay93ZWIvY29uc3VsdHJlY29yZC9hZGQvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU4ZGRmXHU4ZmRiXHU4YmIwXHU1ZjU1IiwicGlkIjoyNywicG5hbWUiOiJ3ZWJfY3VzdG9tZXJfcHJpdl9saXN0In0sIndlYl9jb25zdWx0cmVjb3JkX2NoYW5nZSI6eyJpZCI6MzMsInVybCI6Ii9zdGFyay93ZWIvY29uc3VsdHJlY29yZC9jaGFuZ2UvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfY29uc3VsdHJlY29yZF9kZWxldGUiOnsiaWQiOjM0LCJ1cmwiOiIvc3Rhcmsvd2ViL2NvbnN1bHRyZWNvcmQvZGVsZXRlLyg/UDxjdXN0b21lcl9pZD5cXGQrKS8oP1A8cGs+XFxkKykvIiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdThkZGZcdThmZGJcdThiYjBcdTVmNTUiLCJwaWQiOjI3LCJwbmFtZSI6IndlYl9jdXN0b21lcl9wcml2X2xpc3QifSwid2ViX3BheW1lbnRyZWNvcmRfbGlzdCI6eyJpZCI6MzUsInVybCI6Ii9zdGFyay93ZWIvcGF5bWVudHJlY29yZC9saXN0Lyg/UDxjdXN0b21lcl9pZD5cXGQrKS8iLCJ0aXRsZSI6Ilx1N2YzNFx1OGQzOVx1OGJiMFx1NWY1NVx1NTIxN1x1ODg2OCIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfcGF5bWVudHJlY29yZF9hZGQiOnsiaWQiOjM2LCJ1cmwiOiIvc3Rhcmsvd2ViL3BheW1lbnRyZWNvcmQvYWRkLyg/UDxjdXN0b21lcl9pZD5cXGQrKS8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1N2YzNFx1OGQzOVx1OGJiMFx1NWY1NSIsInBpZCI6MjcsInBuYW1lIjoid2ViX2N1c3RvbWVyX3ByaXZfbGlzdCJ9LCJ3ZWJfc3R1ZGVudF9jaGFuZ2UiOnsiaWQiOjM5LCJ1cmwiOiIvc3Rhcmsvd2ViL3N0dWRlbnQvY2hhbmdlLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NGZlZVx1NjUzOVx1NWI2Nlx1NzUxZlx1NGZlMVx1NjA2ZiIsInBpZCI6MzgsInBuYW1lIjoid2ViX3N0dWRlbnRfbGlzdCJ9LCJ3ZWJfc2NvcmVyZWNvcmRfbGlzdCI6eyJpZCI6NDAsInVybCI6Ii9zdGFyay93ZWIvc2NvcmVyZWNvcmQvbGlzdC8oP1A8c3R1ZGVudF9pZD5cXGQrKS8iLCJ0aXRsZSI6Ilx1NzllZlx1NTIwNlx1OGJiMFx1NWY1NVx1NTIxN1x1ODg2OCIsInBpZCI6MzgsInBuYW1lIjoid2ViX3N0dWRlbnRfbGlzdCJ9LCJ3ZWJfc2NvcmVyZWNvcmRfYWRkIjp7ImlkIjo0MSwidXJsIjoiL3N0YXJrL3dlYi9zY29yZXJlY29yZC9hZGQvKD9QPHN0dWRlbnRfaWQ+XFxkKykvIiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTc5ZWZcdTUyMDZcdThiYjBcdTVmNTUiLCJwaWQiOjM4LCJwbmFtZSI6IndlYl9zdHVkZW50X2xpc3QifSwid2ViX2NvdXJzZXJlY29yZF9saXN0Ijp7ImlkIjo0MiwidXJsIjoiL3N0YXJrL3dlYi9jb3Vyc2VyZWNvcmQvbGlzdC8oP1A8Y2xhc3NfaWQ+XFxkKykvIiwidGl0bGUiOiJcdTRlMGFcdThiZmVcdThiYjBcdTVmNTVcdTUyMTdcdTg4NjgiLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJ3ZWJfY291cnNlcmVjb3JkX2FkZCI6eyJpZCI6NDMsInVybCI6Ii9zdGFyay93ZWIvY291cnNlcmVjb3JkL2FkZC8oP1A8Y2xhc3NfaWQ+XFxkKykvIiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTRlMGFcdThiZmVcdThiYjBcdTVmNTUiLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJ3ZWJfY291cnNlcmVjb3JkX2NoYW5nZSI6eyJpZCI6NDQsInVybCI6Ii9zdGFyay93ZWIvY291cnNlcmVjb3JkL2NoYW5nZS8oP1A8Y2xhc3NfaWQ+XFxkKykvKD9QPHBrPlxcZCspLyIsInRpdGxlIjoiXHU0ZmVlXHU2NTM5XHU0ZTBhXHU4YmZlXHU4YmIwXHU1ZjU1IiwicGlkIjoxOCwicG5hbWUiOiJ3ZWJfY2xhc3NsaXN0X2xpc3QifSwid2ViX2NvdXJzZXJlY29yZF9kZWxldGUiOnsiaWQiOjQ1LCJ1cmwiOiIvc3Rhcmsvd2ViL2NvdXJzZXJlY29yZC9kZWxldGUvKD9QPGNsYXNzX2lkPlxcZCspLyg/UDxwaz5cXGQrKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1NGUwYVx1OGJmZVx1OGJiMFx1NWY1NSIsInBpZCI6MTgsInBuYW1lIjoid2ViX2NsYXNzbGlzdF9saXN0In0sIndlYl9jb3Vyc2VyZWNvcmRfYXR0ZW5kYW5jZSI6eyJpZCI6NDYsInVybCI6Ii9zdGFyay93ZWIvY291cnNlcmVjb3JkL2F0dGVuZGFuY2UvKD9QPGNvdXJzZV9yZWNvcmRfaWQ+XFxkKykvIiwidGl0bGUiOiJcdTViNjZcdTc1MWZcdTgwMDNcdTUyZTRcdTdiYTFcdTc0MDYiLCJwaWQiOjE4LCJwbmFtZSI6IndlYl9jbGFzc2xpc3RfbGlzdCJ9LCJyYmFjOnJvbGVfYWRkIjp7ImlkIjo0OCwidXJsIjoiL3JiYWMvcm9sZS9hZGQvIiwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTg5ZDJcdTgyNzIiLCJwaWQiOjQ3LCJwbmFtZSI6InJiYWM6cm9sZV9saXN0In0sInJiYWM6cm9sZV9lZGl0Ijp7ImlkIjo0OSwidXJsIjoiL3JiYWMvcm9sZS9lZGl0Lyg/UDxwaz5bMC05XSspLyIsInRpdGxlIjoiXHU3ZjE2XHU4ZjkxXHU4OWQyXHU4MjcyIiwicGlkIjo0NywicG5hbWUiOiJyYmFjOnJvbGVfbGlzdCJ9LCJyYmFjOnJvbGVfZGVsIjp7ImlkIjo1MCwidXJsIjoiL3JiYWMvcm9sZS9kZWwvKD9QPHBrPlswLTldKykvIiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdTg5ZDJcdTgyNzIiLCJwaWQiOjQ3LCJwbmFtZSI6InJiYWM6cm9sZV9saXN0In0sInJiYWM6bWVudV9hZGQiOnsiaWQiOjUyLCJ1cmwiOiIvcmJhYy9tZW51L2FkZC8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1ODNkY1x1NTM1NSIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzptZW51X2VkaXQiOnsiaWQiOjUzLCJ1cmwiOiIvcmJhYy9tZW51L2VkaXQvKD9QPHBrPlswLTldKykvIiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTgzZGNcdTUzNTUiLCJwaWQiOjUxLCJwbmFtZSI6InJiYWM6bWVudV9saXN0In0sInJiYWM6bWVudV9kZWwiOnsiaWQiOjU0LCJ1cmwiOiIvcmJhYy9tZW51L2RlbC8oP1A8cGs+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1ODNkY1x1NTM1NSIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzpzZWNvbmRfbWVudV9hZGQiOnsiaWQiOjU1LCJ1cmwiOiIvcmJhYy9zZWNvbmQvbWVudS9hZGQvKD9QPG1lbnVfaWQ+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1NGU4Y1x1N2VhN1x1ODNkY1x1NTM1NSIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzpzZWNvbmRfbWVudV9lZGl0Ijp7ImlkIjo1NiwidXJsIjoiL3JiYWMvc2Vjb25kL21lbnUvZWRpdC8oP1A8cGs+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NGU4Y1x1N2VhN1x1ODNkY1x1NTM1NSIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzpzZWNvbmRfbWVudV9kZWwiOnsiaWQiOjU3LCJ1cmwiOiIvcmJhYy9zZWNvbmQvbWVudS9kZWwvKD9QPHBrPlswLTldKykvIiwidGl0bGUiOiJcdTUyMjBcdTk2NjRcdTRlOGNcdTdlYTdcdTgzZGNcdTUzNTUiLCJwaWQiOjUxLCJwbmFtZSI6InJiYWM6bWVudV9saXN0In0sInJiYWM6cGVybWlzc2lvbl9hZGQiOnsiaWQiOjU4LCJ1cmwiOiIvcmJhYy9wZXJtaXNzaW9uL2FkZC8oP1A8c2Vjb25kX21lbnVfaWQ+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1NmRmYlx1NTJhMFx1Njc0M1x1OTY1MCIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzpwZXJtaXNzaW9uX2VkaXQiOnsiaWQiOjU5LCJ1cmwiOiIvcmJhYy9wZXJtaXNzaW9uL2VkaXQvKD9QPHBrPlswLTldKykvIiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTY3NDNcdTk2NTAiLCJwaWQiOjUxLCJwbmFtZSI6InJiYWM6bWVudV9saXN0In0sInJiYWM6cGVybWlzc2lvbl9kZWwiOnsiaWQiOjYwLCJ1cmwiOiIvcmJhYy9wZXJtaXNzaW9uL2RlbC8oP1A8cGs+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1NTIyMFx1OTY2NFx1Njc0M1x1OTY1MCIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifSwicmJhYzptdWx0aV9wZXJtaXNzaW9ucyI6eyJpZCI6NjEsInVybCI6Ii9yYmFjL211bHRpL3Blcm1pc3Npb25zLyIsInRpdGxlIjoiXHU2Mjc5XHU5MWNmXHU2NGNkXHU0ZjVjXHU2NzQzXHU5NjUwIiwicGlkIjo1MSwicG5hbWUiOiJyYmFjOm1lbnVfbGlzdCJ9LCJyYmFjOm11bHRpX3Blcm1pc3Npb25zX2RlbCI6eyJpZCI6NjIsInVybCI6Ii9yYmFjL211bHRpL3Blcm1pc3Npb25zL2RlbC8oP1A8cGs+WzAtOV0rKS8iLCJ0aXRsZSI6Ilx1NjI3OVx1OTFjZlx1NTIyMFx1OTY2NFx1Njc0M1x1OTY1MCIsInBpZCI6NTEsInBuYW1lIjoicmJhYzptZW51X2xpc3QifX0sInBlcm1pc3Npb25fbWVudV9rZXkiOnsiMSI6eyJ0aXRsZSI6Ilx1NjgyMVx1NTMzYVx1N2JhMVx1NzQwNiIsImljb24iOiJmYS1iYW5rIiwiY2hpbGRyZW4iOlt7ImlkIjoxLCJ0aXRsZSI6Ilx1OTBlOFx1OTVlOFx1NTIxN1x1ODg2OCIsInVybCI6Ii9zdGFyay93ZWIvZGVwYXJ0bWVudC9saXN0LyJ9LHsiaWQiOjEwLCJ0aXRsZSI6Ilx1NjgyMVx1NTMzYVx1NTIxN1x1ODg2OCIsInVybCI6Ii9zdGFyay93ZWIvc2Nob29sL2xpc3QvIn0seyJpZCI6MTQsInRpdGxlIjoiXHU4YmZlXHU3YTBiXHU1MjE3XHU4ODY4IiwidXJsIjoiL3N0YXJrL3dlYi9jb3Vyc2UvbGlzdC8ifSx7ImlkIjoxOCwidGl0bGUiOiJcdTczZWRcdTdlYTdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvc3Rhcmsvd2ViL2NsYXNzbGlzdC9saXN0LyJ9XX0sIjIiOnsidGl0bGUiOiJcdTViYTJcdTYyMzdcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtYXV0b21vYmlsZSIsImNoaWxkcmVuIjpbeyJpZCI6MjIsInRpdGxlIjoiXHU1MTZjXHU2MjM3XHU1MjE3XHU4ODY4IiwidXJsIjoiL3N0YXJrL3dlYi9jdXN0b21lci9wdWIvbGlzdC8ifSx7ImlkIjoyNywidGl0bGUiOiJcdTYyMTFcdTc2ODRcdTViYTJcdTYyMzciLCJ1cmwiOiIvc3Rhcmsvd2ViL2N1c3RvbWVyL3ByaXYvbGlzdC8ifSx7ImlkIjozNywidGl0bGUiOiJcdTViYTFcdTY4MzhcdTdmMzRcdThkMzlcdThiYjBcdTVmNTUiLCJ1cmwiOiIvc3Rhcmsvd2ViL3BheW1lbnRyZWNvcmQvY2hlY2svbGlzdC8ifV19LCIzIjp7InRpdGxlIjoiXHU1YjY2XHU1NDU4XHU3YmExXHU3NDA2IiwiaWNvbiI6ImZhLWNhbGN1bGF0b3IiLCJjaGlsZHJlbiI6W3siaWQiOjM4LCJ0aXRsZSI6Ilx1NWI2Nlx1NzUxZlx1NTIxN1x1ODg2OCIsInVybCI6Ii9zdGFyay93ZWIvc3R1ZGVudC9saXN0LyJ9XX0sIjQiOnsidGl0bGUiOiJcdTY3NDNcdTk2NTBcdTdiYTFcdTc0MDYiLCJpY29uIjoiZmEtY3ViZSIsImNoaWxkcmVuIjpbeyJpZCI6NSwidGl0bGUiOiJcdTc1MjhcdTYyMzdcdTUyMTdcdTg4NjgiLCJ1cmwiOiIvc3Rhcmsvd2ViL3VzZXJpbmZvL2xpc3QvIn0seyJpZCI6NDcsInRpdGxlIjoiXHU4OWQyXHU4MjcyXHU1MjE3XHU4ODY4IiwidXJsIjoiL3JiYWMvcm9sZS9saXN0LyJ9LHsiaWQiOjUxLCJ0aXRsZSI6Ilx1ODNkY1x1NTM1NVx1NTIxN1x1ODg2OCIsInVybCI6Ii9yYmFjL21lbnUvbGlzdC8ifSx7ImlkIjo2MywidGl0bGUiOiJcdTUyMDZcdTkxNGRcdTY3NDNcdTk2NTAiLCJ1cmwiOiIvcmJhYy9kaXN0cmlidXRlL3Blcm1pc3Npb25zLyJ9XX19fQ==', '2020-08-07 09:23:55.341215');

-- ----------------------------
-- Table structure for rbac_menu
-- ----------------------------
DROP TABLE IF EXISTS `rbac_menu`;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_menu
-- ----------------------------
INSERT INTO `rbac_menu` VALUES ('1', '校区管理', 'fa-bank');
INSERT INTO `rbac_menu` VALUES ('2', '客户管理', 'fa-automobile');
INSERT INTO `rbac_menu` VALUES ('3', '学员管理', 'fa-calculator');
INSERT INTO `rbac_menu` VALUES ('4', '权限管理', 'fa-cube');

-- ----------------------------
-- Table structure for rbac_permission
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permission`;
CREATE TABLE `rbac_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `url` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` (`menu_id`),
  KEY `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` (`parent_id`),
  CONSTRAINT `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` FOREIGN KEY (`parent_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_permission
-- ----------------------------
INSERT INTO `rbac_permission` VALUES ('1', '部门列表', '/stark/web/department/list/', 'web_department_list', '1', null);
INSERT INTO `rbac_permission` VALUES ('2', '添加部门', '/stark/web/department/add/', 'web_department_add', null, '1');
INSERT INTO `rbac_permission` VALUES ('3', '修改部门', '/stark/web/department/change/(?P<pk>\\d+)/', 'web_department_change', null, '1');
INSERT INTO `rbac_permission` VALUES ('4', '删除部门', '/stark/web/department/delete/(?P<pk>\\d+)/', 'web_department_delete', null, '1');
INSERT INTO `rbac_permission` VALUES ('5', '用户列表', '/stark/web/userinfo/list/', 'web_userinfo_list', '4', null);
INSERT INTO `rbac_permission` VALUES ('6', '添加用户', '/stark/web/userinfo/add/', 'web_userinfo_add', null, '5');
INSERT INTO `rbac_permission` VALUES ('7', '修改用户', '/stark/web/userinfo/change/(?P<pk>\\d+)/', 'web_userinfo_change', null, '5');
INSERT INTO `rbac_permission` VALUES ('8', '删除用户', '/stark/web/userinfo/delete/(?P<pk>\\d+)/', 'web_userinfo_delete', null, '5');
INSERT INTO `rbac_permission` VALUES ('9', '重置密码', '/stark/web/userinfo/reset/password/(?P<pk>\\d+)/', 'web_userinfo_reset_pwd', null, '5');
INSERT INTO `rbac_permission` VALUES ('10', '校区列表', '/stark/web/school/list/', 'web_school_list', '1', null);
INSERT INTO `rbac_permission` VALUES ('11', '添加校区', '/stark/web/school/add/', 'web_school_add', null, '10');
INSERT INTO `rbac_permission` VALUES ('12', '修改校区', '/stark/web/school/change/(?P<pk>\\d+)/', 'web_school_change', null, '10');
INSERT INTO `rbac_permission` VALUES ('13', '删除校区', '/stark/web/school/delete/(?P<pk>\\d+)/', 'web_school_delete', null, '10');
INSERT INTO `rbac_permission` VALUES ('14', '课程列表', '/stark/web/course/list/', 'web_course_list', '1', null);
INSERT INTO `rbac_permission` VALUES ('15', '添加课程', '/stark/web/course/add/', 'web_course_add', null, '14');
INSERT INTO `rbac_permission` VALUES ('16', '修改课程', '/stark/web/course/change/(?P<pk>\\d+)/', 'web_course_change', null, '14');
INSERT INTO `rbac_permission` VALUES ('17', '删除课程', '/stark/web/course/delete/(?P<pk>\\d+)/', 'web_course_delete', null, '14');
INSERT INTO `rbac_permission` VALUES ('18', '班级列表', '/stark/web/classlist/list/', 'web_classlist_list', '1', null);
INSERT INTO `rbac_permission` VALUES ('19', '添加班级', '/stark/web/classlist/add/', 'web_classlist_add', null, '18');
INSERT INTO `rbac_permission` VALUES ('20', '修改班级', '/stark/web/classlist/change/(?P<pk>\\d+)/', 'web_classlist_change', null, '18');
INSERT INTO `rbac_permission` VALUES ('21', '删除班级', '/stark/web/classlist/delete/(?P<pk>\\d+)/', 'web_classlist_delete', null, '18');
INSERT INTO `rbac_permission` VALUES ('22', '公户列表', '/stark/web/customer/pub/list/', 'web_customer_pub_list', '2', null);
INSERT INTO `rbac_permission` VALUES ('23', '添加公户', '/stark/web/customer/pub/add/', 'web_customer_pub_add', null, '22');
INSERT INTO `rbac_permission` VALUES ('24', '修改公户', '/stark/web/customer/pub/change/(?P<pk>\\d+)/', 'web_customer_pub_change', null, '22');
INSERT INTO `rbac_permission` VALUES ('25', '删除公户', '/stark/web/customer/pub/delete/(?P<pk>\\d+)/', 'web_customer_pub_delete', null, '22');
INSERT INTO `rbac_permission` VALUES ('26', '查看公户跟进', '/stark/web/customer/pub/record/(?P<pk>\\d+)/', 'web_customer_pub_record_view', null, '22');
INSERT INTO `rbac_permission` VALUES ('27', '我的客户', '/stark/web/customer/priv/list/', 'web_customer_priv_list', '2', null);
INSERT INTO `rbac_permission` VALUES ('28', '添加我的客户', '/stark/web/customer/priv/add/', 'web_customer_priv_add', null, '27');
INSERT INTO `rbac_permission` VALUES ('29', '修改我的客户', '/stark/web/customer/priv/change/(?P<pk>\\d+)/', 'web_customer_priv_change', null, '27');
INSERT INTO `rbac_permission` VALUES ('30', '删除我的客户', '/stark/web/customer/priv/delete/(?P<pk>\\d+)/', 'web_customer_priv_delete', null, '27');
INSERT INTO `rbac_permission` VALUES ('31', '跟进记录列表', '/stark/web/consultrecord/list/(?P<customer_id>\\d+)/', 'web_consultrecord_list', null, '27');
INSERT INTO `rbac_permission` VALUES ('32', '添加跟进记录', '/stark/web/consultrecord/add/(?P<customer_id>\\d+)/', 'web_consultrecord_add', null, '27');
INSERT INTO `rbac_permission` VALUES ('33', '修改跟进记录', '/stark/web/consultrecord/change/(?P<customer_id>\\d+)/(?P<pk>\\d+)/', 'web_consultrecord_change', null, '27');
INSERT INTO `rbac_permission` VALUES ('34', '删除跟进记录', '/stark/web/consultrecord/delete/(?P<customer_id>\\d+)/(?P<pk>\\d+)/', 'web_consultrecord_delete', null, '27');
INSERT INTO `rbac_permission` VALUES ('35', '缴费记录列表', '/stark/web/paymentrecord/list/(?P<customer_id>\\d+)/', 'web_paymentrecord_list', null, '27');
INSERT INTO `rbac_permission` VALUES ('36', '添加缴费记录', '/stark/web/paymentrecord/add/(?P<customer_id>\\d+)/', 'web_paymentrecord_add', null, '27');
INSERT INTO `rbac_permission` VALUES ('37', '审核缴费记录', '/stark/web/paymentrecord/check/list/', 'web_paymentrecord_check_list', '2', null);
INSERT INTO `rbac_permission` VALUES ('38', '学生列表', '/stark/web/student/list/', 'web_student_list', '3', null);
INSERT INTO `rbac_permission` VALUES ('39', '修改学生信息', '/stark/web/student/change/(?P<pk>\\d+)/', 'web_student_change', null, '38');
INSERT INTO `rbac_permission` VALUES ('40', '积分记录列表', '/stark/web/scorerecord/list/(?P<student_id>\\d+)/', 'web_scorerecord_list', null, '38');
INSERT INTO `rbac_permission` VALUES ('41', '添加积分记录', '/stark/web/scorerecord/add/(?P<student_id>\\d+)/', 'web_scorerecord_add', null, '38');
INSERT INTO `rbac_permission` VALUES ('42', '上课记录列表', '/stark/web/courserecord/list/(?P<class_id>\\d+)/', 'web_courserecord_list', null, '18');
INSERT INTO `rbac_permission` VALUES ('43', '添加上课记录', '/stark/web/courserecord/add/(?P<class_id>\\d+)/', 'web_courserecord_add', null, '18');
INSERT INTO `rbac_permission` VALUES ('44', '修改上课记录', '/stark/web/courserecord/change/(?P<class_id>\\d+)/(?P<pk>\\d+)/', 'web_courserecord_change', null, '18');
INSERT INTO `rbac_permission` VALUES ('45', '删除上课记录', '/stark/web/courserecord/delete/(?P<class_id>\\d+)/(?P<pk>\\d+)/', 'web_courserecord_delete', null, '18');
INSERT INTO `rbac_permission` VALUES ('46', '学生考勤管理', '/stark/web/courserecord/attendance/(?P<course_record_id>\\d+)/', 'web_courserecord_attendance', null, '18');
INSERT INTO `rbac_permission` VALUES ('47', '角色列表', '/rbac/role/list/', 'rbac:role_list', '4', null);
INSERT INTO `rbac_permission` VALUES ('48', '添加角色', '/rbac/role/add/', 'rbac:role_add', null, '47');
INSERT INTO `rbac_permission` VALUES ('49', '编辑角色', '/rbac/role/edit/(?P<pk>[0-9]+)/', 'rbac:role_edit', null, '47');
INSERT INTO `rbac_permission` VALUES ('50', '删除角色', '/rbac/role/del/(?P<pk>[0-9]+)/', 'rbac:role_del', null, '47');
INSERT INTO `rbac_permission` VALUES ('51', '菜单列表', '/rbac/menu/list/', 'rbac:menu_list', '4', null);
INSERT INTO `rbac_permission` VALUES ('52', '添加菜单', '/rbac/menu/add/', 'rbac:menu_add', null, '51');
INSERT INTO `rbac_permission` VALUES ('53', '编辑菜单', '/rbac/menu/edit/(?P<pk>[0-9]+)/', 'rbac:menu_edit', null, '51');
INSERT INTO `rbac_permission` VALUES ('54', '删除菜单', '/rbac/menu/del/(?P<pk>[0-9]+)/', 'rbac:menu_del', null, '51');
INSERT INTO `rbac_permission` VALUES ('55', '添加二级菜单', '/rbac/second/menu/add/(?P<menu_id>[0-9]+)/', 'rbac:second_menu_add', null, '51');
INSERT INTO `rbac_permission` VALUES ('56', '编辑二级菜单', '/rbac/second/menu/edit/(?P<pk>[0-9]+)/', 'rbac:second_menu_edit', null, '51');
INSERT INTO `rbac_permission` VALUES ('57', '删除二级菜单', '/rbac/second/menu/del/(?P<pk>[0-9]+)/', 'rbac:second_menu_del', null, '51');
INSERT INTO `rbac_permission` VALUES ('58', '添加权限', '/rbac/permission/add/(?P<second_menu_id>[0-9]+)/', 'rbac:permission_add', null, '51');
INSERT INTO `rbac_permission` VALUES ('59', '编辑权限', '/rbac/permission/edit/(?P<pk>[0-9]+)/', 'rbac:permission_edit', null, '51');
INSERT INTO `rbac_permission` VALUES ('60', '删除权限', '/rbac/permission/del/(?P<pk>[0-9]+)/', 'rbac:permission_del', null, '51');
INSERT INTO `rbac_permission` VALUES ('61', '批量操作权限', '/rbac/multi/permissions/', 'rbac:multi_permissions', null, '51');
INSERT INTO `rbac_permission` VALUES ('62', '批量删除权限', '/rbac/multi/permissions/del/(?P<pk>[0-9]+)/', 'rbac:multi_permissions_del', null, '51');
INSERT INTO `rbac_permission` VALUES ('63', '分配权限', '/rbac/distribute/permissions/', 'rbac:distribute_permissions', '4', null);
INSERT INTO `rbac_permission` VALUES ('64', '首页', '/index/', 'index', null, null);

-- ----------------------------
-- Table structure for rbac_role
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role`;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role
-- ----------------------------
INSERT INTO `rbac_role` VALUES ('1', 'CEO');
INSERT INTO `rbac_role` VALUES ('2', '教质总监');
INSERT INTO `rbac_role` VALUES ('3', '班主任');
INSERT INTO `rbac_role` VALUES ('4', '财务');
INSERT INTO `rbac_role` VALUES ('5', '销售');
INSERT INTO `rbac_role` VALUES ('6', '运营');

-- ----------------------------
-- Table structure for rbac_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role_permissions`;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`),
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role_permissions
-- ----------------------------
INSERT INTO `rbac_role_permissions` VALUES ('31', '1', '1');
INSERT INTO `rbac_role_permissions` VALUES ('25', '1', '2');
INSERT INTO `rbac_role_permissions` VALUES ('7', '1', '3');
INSERT INTO `rbac_role_permissions` VALUES ('13', '1', '4');
INSERT INTO `rbac_role_permissions` VALUES ('1', '1', '5');
INSERT INTO `rbac_role_permissions` VALUES ('62', '1', '6');
INSERT INTO `rbac_role_permissions` VALUES ('50', '1', '7');
INSERT INTO `rbac_role_permissions` VALUES ('41', '1', '8');
INSERT INTO `rbac_role_permissions` VALUES ('51', '1', '9');
INSERT INTO `rbac_role_permissions` VALUES ('24', '1', '10');
INSERT INTO `rbac_role_permissions` VALUES ('58', '1', '11');
INSERT INTO `rbac_role_permissions` VALUES ('46', '1', '12');
INSERT INTO `rbac_role_permissions` VALUES ('60', '1', '13');
INSERT INTO `rbac_role_permissions` VALUES ('47', '1', '14');
INSERT INTO `rbac_role_permissions` VALUES ('16', '1', '15');
INSERT INTO `rbac_role_permissions` VALUES ('32', '1', '16');
INSERT INTO `rbac_role_permissions` VALUES ('57', '1', '17');
INSERT INTO `rbac_role_permissions` VALUES ('48', '1', '18');
INSERT INTO `rbac_role_permissions` VALUES ('49', '1', '19');
INSERT INTO `rbac_role_permissions` VALUES ('4', '1', '20');
INSERT INTO `rbac_role_permissions` VALUES ('53', '1', '21');
INSERT INTO `rbac_role_permissions` VALUES ('44', '1', '22');
INSERT INTO `rbac_role_permissions` VALUES ('23', '1', '23');
INSERT INTO `rbac_role_permissions` VALUES ('42', '1', '24');
INSERT INTO `rbac_role_permissions` VALUES ('17', '1', '25');
INSERT INTO `rbac_role_permissions` VALUES ('22', '1', '26');
INSERT INTO `rbac_role_permissions` VALUES ('29', '1', '27');
INSERT INTO `rbac_role_permissions` VALUES ('59', '1', '28');
INSERT INTO `rbac_role_permissions` VALUES ('20', '1', '29');
INSERT INTO `rbac_role_permissions` VALUES ('36', '1', '30');
INSERT INTO `rbac_role_permissions` VALUES ('26', '1', '31');
INSERT INTO `rbac_role_permissions` VALUES ('3', '1', '32');
INSERT INTO `rbac_role_permissions` VALUES ('9', '1', '33');
INSERT INTO `rbac_role_permissions` VALUES ('38', '1', '34');
INSERT INTO `rbac_role_permissions` VALUES ('63', '1', '35');
INSERT INTO `rbac_role_permissions` VALUES ('40', '1', '36');
INSERT INTO `rbac_role_permissions` VALUES ('14', '1', '37');
INSERT INTO `rbac_role_permissions` VALUES ('34', '1', '38');
INSERT INTO `rbac_role_permissions` VALUES ('18', '1', '39');
INSERT INTO `rbac_role_permissions` VALUES ('8', '1', '40');
INSERT INTO `rbac_role_permissions` VALUES ('28', '1', '41');
INSERT INTO `rbac_role_permissions` VALUES ('55', '1', '42');
INSERT INTO `rbac_role_permissions` VALUES ('11', '1', '43');
INSERT INTO `rbac_role_permissions` VALUES ('33', '1', '44');
INSERT INTO `rbac_role_permissions` VALUES ('39', '1', '45');
INSERT INTO `rbac_role_permissions` VALUES ('21', '1', '46');
INSERT INTO `rbac_role_permissions` VALUES ('27', '1', '47');
INSERT INTO `rbac_role_permissions` VALUES ('30', '1', '48');
INSERT INTO `rbac_role_permissions` VALUES ('2', '1', '49');
INSERT INTO `rbac_role_permissions` VALUES ('52', '1', '50');
INSERT INTO `rbac_role_permissions` VALUES ('15', '1', '51');
INSERT INTO `rbac_role_permissions` VALUES ('19', '1', '52');
INSERT INTO `rbac_role_permissions` VALUES ('61', '1', '53');
INSERT INTO `rbac_role_permissions` VALUES ('35', '1', '54');
INSERT INTO `rbac_role_permissions` VALUES ('54', '1', '55');
INSERT INTO `rbac_role_permissions` VALUES ('12', '1', '56');
INSERT INTO `rbac_role_permissions` VALUES ('43', '1', '57');
INSERT INTO `rbac_role_permissions` VALUES ('37', '1', '58');
INSERT INTO `rbac_role_permissions` VALUES ('6', '1', '59');
INSERT INTO `rbac_role_permissions` VALUES ('10', '1', '60');
INSERT INTO `rbac_role_permissions` VALUES ('5', '1', '61');
INSERT INTO `rbac_role_permissions` VALUES ('56', '1', '62');
INSERT INTO `rbac_role_permissions` VALUES ('45', '1', '63');
INSERT INTO `rbac_role_permissions` VALUES ('125', '2', '1');
INSERT INTO `rbac_role_permissions` VALUES ('123', '2', '2');
INSERT INTO `rbac_role_permissions` VALUES ('115', '2', '3');
INSERT INTO `rbac_role_permissions` VALUES ('119', '2', '4');
INSERT INTO `rbac_role_permissions` VALUES ('122', '2', '10');
INSERT INTO `rbac_role_permissions` VALUES ('136', '2', '11');
INSERT INTO `rbac_role_permissions` VALUES ('129', '2', '12');
INSERT INTO `rbac_role_permissions` VALUES ('137', '2', '13');
INSERT INTO `rbac_role_permissions` VALUES ('130', '2', '14');
INSERT INTO `rbac_role_permissions` VALUES ('118', '2', '15');
INSERT INTO `rbac_role_permissions` VALUES ('138', '2', '16');
INSERT INTO `rbac_role_permissions` VALUES ('135', '2', '17');
INSERT INTO `rbac_role_permissions` VALUES ('131', '2', '18');
INSERT INTO `rbac_role_permissions` VALUES ('132', '2', '19');
INSERT INTO `rbac_role_permissions` VALUES ('114', '2', '20');
INSERT INTO `rbac_role_permissions` VALUES ('133', '2', '21');
INSERT INTO `rbac_role_permissions` VALUES ('127', '2', '38');
INSERT INTO `rbac_role_permissions` VALUES ('120', '2', '39');
INSERT INTO `rbac_role_permissions` VALUES ('116', '2', '40');
INSERT INTO `rbac_role_permissions` VALUES ('124', '2', '41');
INSERT INTO `rbac_role_permissions` VALUES ('134', '2', '42');
INSERT INTO `rbac_role_permissions` VALUES ('117', '2', '43');
INSERT INTO `rbac_role_permissions` VALUES ('126', '2', '44');
INSERT INTO `rbac_role_permissions` VALUES ('128', '2', '45');
INSERT INTO `rbac_role_permissions` VALUES ('121', '2', '46');
INSERT INTO `rbac_role_permissions` VALUES ('144', '3', '14');
INSERT INTO `rbac_role_permissions` VALUES ('148', '3', '15');
INSERT INTO `rbac_role_permissions` VALUES ('146', '3', '16');
INSERT INTO `rbac_role_permissions` VALUES ('150', '3', '18');
INSERT INTO `rbac_role_permissions` VALUES ('143', '3', '19');
INSERT INTO `rbac_role_permissions` VALUES ('139', '3', '20');
INSERT INTO `rbac_role_permissions` VALUES ('141', '3', '38');
INSERT INTO `rbac_role_permissions` VALUES ('140', '3', '39');
INSERT INTO `rbac_role_permissions` VALUES ('149', '3', '40');
INSERT INTO `rbac_role_permissions` VALUES ('147', '3', '41');
INSERT INTO `rbac_role_permissions` VALUES ('145', '3', '42');
INSERT INTO `rbac_role_permissions` VALUES ('151', '3', '43');
INSERT INTO `rbac_role_permissions` VALUES ('142', '3', '44');
INSERT INTO `rbac_role_permissions` VALUES ('152', '3', '46');
INSERT INTO `rbac_role_permissions` VALUES ('113', '4', '37');
INSERT INTO `rbac_role_permissions` VALUES ('104', '5', '22');
INSERT INTO `rbac_role_permissions` VALUES ('97', '5', '26');
INSERT INTO `rbac_role_permissions` VALUES ('106', '5', '27');
INSERT INTO `rbac_role_permissions` VALUES ('105', '5', '28');
INSERT INTO `rbac_role_permissions` VALUES ('96', '5', '29');
INSERT INTO `rbac_role_permissions` VALUES ('99', '5', '30');
INSERT INTO `rbac_role_permissions` VALUES ('103', '5', '31');
INSERT INTO `rbac_role_permissions` VALUES ('98', '5', '32');
INSERT INTO `rbac_role_permissions` VALUES ('102', '5', '33');
INSERT INTO `rbac_role_permissions` VALUES ('100', '5', '34');
INSERT INTO `rbac_role_permissions` VALUES ('107', '5', '35');
INSERT INTO `rbac_role_permissions` VALUES ('101', '5', '36');
INSERT INTO `rbac_role_permissions` VALUES ('111', '6', '22');
INSERT INTO `rbac_role_permissions` VALUES ('109', '6', '23');
INSERT INTO `rbac_role_permissions` VALUES ('110', '6', '24');
INSERT INTO `rbac_role_permissions` VALUES ('112', '6', '25');
INSERT INTO `rbac_role_permissions` VALUES ('108', '6', '26');

-- ----------------------------
-- Table structure for web_classlist
-- ----------------------------
DROP TABLE IF EXISTS `web_classlist`;
CREATE TABLE `web_classlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date DEFAULT NULL,
  `memo` longtext,
  `class_teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_classlist_class_teacher_id_adda1501_fk_web_userinfo_id` (`class_teacher_id`),
  KEY `web_classlist_course_id_0d0bb3df_fk_web_course_id` (`course_id`),
  KEY `web_classlist_school_id_cc9a49ba_fk_web_school_id` (`school_id`),
  CONSTRAINT `web_classlist_class_teacher_id_adda1501_fk_web_userinfo_id` FOREIGN KEY (`class_teacher_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_classlist_course_id_0d0bb3df_fk_web_course_id` FOREIGN KEY (`course_id`) REFERENCES `web_course` (`id`),
  CONSTRAINT `web_classlist_school_id_cc9a49ba_fk_web_school_id` FOREIGN KEY (`school_id`) REFERENCES `web_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_classlist
-- ----------------------------
INSERT INTO `web_classlist` VALUES ('1', '1', '10000', '2020-07-27', null, '', '7', '1', '1');
INSERT INTO `web_classlist` VALUES ('2', '1', '8000', '2020-07-27', null, '', '7', '2', '1');
INSERT INTO `web_classlist` VALUES ('3', '2', '10000', '2020-08-03', null, '', '7', '1', '2');
INSERT INTO `web_classlist` VALUES ('4', '2', '8000', '2020-08-03', null, '', '7', '2', '2');

-- ----------------------------
-- Table structure for web_classlist_tech_teachers
-- ----------------------------
DROP TABLE IF EXISTS `web_classlist_tech_teachers`;
CREATE TABLE `web_classlist_tech_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userinfo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_classlist_tech_teach_classlist_id_userinfo_id_b70ec689_uniq` (`classlist_id`,`userinfo_id`),
  KEY `web_classlist_tech_t_userinfo_id_7d6dfc5e_fk_web_useri` (`userinfo_id`),
  CONSTRAINT `web_classlist_tech_t_classlist_id_c24729e2_fk_web_class` FOREIGN KEY (`classlist_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_classlist_tech_t_userinfo_id_7d6dfc5e_fk_web_useri` FOREIGN KEY (`userinfo_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_classlist_tech_teachers
-- ----------------------------
INSERT INTO `web_classlist_tech_teachers` VALUES ('1', '1', '1');
INSERT INTO `web_classlist_tech_teachers` VALUES ('3', '2', '4');
INSERT INTO `web_classlist_tech_teachers` VALUES ('4', '3', '1');
INSERT INTO `web_classlist_tech_teachers` VALUES ('5', '4', '4');

-- ----------------------------
-- Table structure for web_consultrecord
-- ----------------------------
DROP TABLE IF EXISTS `web_consultrecord`;
CREATE TABLE `web_consultrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  `date` date NOT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_consultrecord_consultant_id_914c38fa_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_consultrecord_customer_id_befb7f7f_fk_web_customer_id` (`customer_id`),
  CONSTRAINT `web_consultrecord_consultant_id_914c38fa_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_consultrecord_customer_id_befb7f7f_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_consultrecord
-- ----------------------------
INSERT INTO `web_consultrecord` VALUES ('1', '来吧~', '2020-07-23', '5', '7');
INSERT INTO `web_consultrecord` VALUES ('2', '来吧222', '2020-07-23', '5', '7');
INSERT INTO `web_consultrecord` VALUES ('3', '来吧333', '2020-07-23', '5', '7');
INSERT INTO `web_consultrecord` VALUES ('4', '没问题', '2020-07-23', '5', '3');
INSERT INTO `web_consultrecord` VALUES ('5', 'come on !', '2020-07-23', '5', '2');

-- ----------------------------
-- Table structure for web_course
-- ----------------------------
DROP TABLE IF EXISTS `web_course`;
CREATE TABLE `web_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_course
-- ----------------------------
INSERT INTO `web_course` VALUES ('1', 'Python全栈');
INSERT INTO `web_course` VALUES ('2', 'Linux运维');

-- ----------------------------
-- Table structure for web_courserecord
-- ----------------------------
DROP TABLE IF EXISTS `web_courserecord`;
CREATE TABLE `web_courserecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `class_object_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_courserecord_class_object_id_e107b311_fk_web_classlist_id` (`class_object_id`),
  KEY `web_courserecord_teacher_id_3d847927_fk_web_userinfo_id` (`teacher_id`),
  CONSTRAINT `web_courserecord_class_object_id_e107b311_fk_web_classlist_id` FOREIGN KEY (`class_object_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_courserecord_teacher_id_3d847927_fk_web_userinfo_id` FOREIGN KEY (`teacher_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_courserecord
-- ----------------------------
INSERT INTO `web_courserecord` VALUES ('1', '1', '2020-07-23', '2', '1');
INSERT INTO `web_courserecord` VALUES ('2', '1', '2020-07-23', '2', '4');
INSERT INTO `web_courserecord` VALUES ('3', '2', '2020-07-23', '1', '1');

-- ----------------------------
-- Table structure for web_customer
-- ----------------------------
DROP TABLE IF EXISTS `web_customer`;
CREATE TABLE `web_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `qq` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `gender` smallint(6) NOT NULL,
  `source` smallint(6) NOT NULL,
  `education` int(11) DEFAULT NULL,
  `graduation_school` varchar(64) DEFAULT NULL,
  `major` varchar(64) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `work_status` int(11) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `salary` varchar(64) DEFAULT NULL,
  `date` date NOT NULL,
  `last_consult_date` date NOT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `referral_from_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qq` (`qq`),
  KEY `web_customer_consultant_id_e3c377b3_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_customer_referral_from_id_cba5a965_fk_web_customer_id` (`referral_from_id`),
  CONSTRAINT `web_customer_consultant_id_e3c377b3_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_customer_referral_from_id_cba5a965_fk_web_customer_id` FOREIGN KEY (`referral_from_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_customer
-- ----------------------------
INSERT INTO `web_customer` VALUES ('1', '周杰伦', '121456465', '2', '1', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', '5', null);
INSERT INTO `web_customer` VALUES ('2', '朗朗', '33法法', '2', '1', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', null, null);
INSERT INTO `web_customer` VALUES ('3', '孙小姐', '1234549', '1', '2', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', '5', null);
INSERT INTO `web_customer` VALUES ('4', '猪八戒', '3333333', '2', '1', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', null, null);
INSERT INTO `web_customer` VALUES ('5', '唐小姐', '5555555', '2', '2', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', null, null);
INSERT INTO `web_customer` VALUES ('6', '周瑜', '5555556469', '1', '1', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', '5', null);
INSERT INTO `web_customer` VALUES ('7', '江小白', '95153123', '1', '1', '1', null, null, null, null, '1', null, null, '2020-07-23', '2020-07-23', '5', null);

-- ----------------------------
-- Table structure for web_customer_course
-- ----------------------------
DROP TABLE IF EXISTS `web_customer_course`;
CREATE TABLE `web_customer_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_customer_course_customer_id_course_id_4c572199_uniq` (`customer_id`,`course_id`),
  KEY `web_customer_course_course_id_7f7b8902_fk_web_course_id` (`course_id`),
  CONSTRAINT `web_customer_course_course_id_7f7b8902_fk_web_course_id` FOREIGN KEY (`course_id`) REFERENCES `web_course` (`id`),
  CONSTRAINT `web_customer_course_customer_id_8ce5dbc5_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_customer_course
-- ----------------------------
INSERT INTO `web_customer_course` VALUES ('1', '1', '1');
INSERT INTO `web_customer_course` VALUES ('2', '1', '2');
INSERT INTO `web_customer_course` VALUES ('3', '2', '1');
INSERT INTO `web_customer_course` VALUES ('10', '3', '1');
INSERT INTO `web_customer_course` VALUES ('4', '3', '2');
INSERT INTO `web_customer_course` VALUES ('5', '4', '1');
INSERT INTO `web_customer_course` VALUES ('6', '4', '2');
INSERT INTO `web_customer_course` VALUES ('7', '5', '2');
INSERT INTO `web_customer_course` VALUES ('8', '6', '2');
INSERT INTO `web_customer_course` VALUES ('9', '7', '1');

-- ----------------------------
-- Table structure for web_department
-- ----------------------------
DROP TABLE IF EXISTS `web_department`;
CREATE TABLE `web_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_department
-- ----------------------------
INSERT INTO `web_department` VALUES ('1', '管理层');
INSERT INTO `web_department` VALUES ('2', '销售部');
INSERT INTO `web_department` VALUES ('3', '运营部');
INSERT INTO `web_department` VALUES ('4', '教质部');
INSERT INTO `web_department` VALUES ('5', 'Linux教学部');
INSERT INTO `web_department` VALUES ('6', 'Python教学部');
INSERT INTO `web_department` VALUES ('7', '财务部');

-- ----------------------------
-- Table structure for web_paymentrecord
-- ----------------------------
DROP TABLE IF EXISTS `web_paymentrecord`;
CREATE TABLE `web_paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_type` int(11) NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `apply_date` datetime(6) NOT NULL,
  `confirm_status` int(11) NOT NULL,
  `confirm_date` datetime(6) DEFAULT NULL,
  `note` longtext,
  `class_list_id` int(11) NOT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_paymentrecord_class_list_id_9f0826ec_fk_web_classlist_id` (`class_list_id`),
  KEY `web_paymentrecord_confirm_user_id_1668de5d_fk_web_userinfo_id` (`confirm_user_id`),
  KEY `web_paymentrecord_consultant_id_3a7e9446_fk_web_userinfo_id` (`consultant_id`),
  KEY `web_paymentrecord_customer_id_da57a16c_fk_web_customer_id` (`customer_id`),
  CONSTRAINT `web_paymentrecord_class_list_id_9f0826ec_fk_web_classlist_id` FOREIGN KEY (`class_list_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_paymentrecord_confirm_user_id_1668de5d_fk_web_userinfo_id` FOREIGN KEY (`confirm_user_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_paymentrecord_consultant_id_3a7e9446_fk_web_userinfo_id` FOREIGN KEY (`consultant_id`) REFERENCES `web_userinfo` (`id`),
  CONSTRAINT `web_paymentrecord_customer_id_da57a16c_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_paymentrecord
-- ----------------------------
INSERT INTO `web_paymentrecord` VALUES ('1', '1', '10000', '2020-07-23 13:21:16.903881', '2', null, '', '1', null, '5', '3');
INSERT INTO `web_paymentrecord` VALUES ('2', '1', '8000', '2020-07-23 13:21:33.366320', '2', null, '', '2', null, '5', '3');
INSERT INTO `web_paymentrecord` VALUES ('3', '1', '10000', '2020-07-23 13:22:16.052294', '2', null, '', '1', null, '5', '7');
INSERT INTO `web_paymentrecord` VALUES ('4', '1', '8000', '2020-07-23 13:22:36.824178', '2', null, '', '2', null, '5', '6');

-- ----------------------------
-- Table structure for web_school
-- ----------------------------
DROP TABLE IF EXISTS `web_school`;
CREATE TABLE `web_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_school
-- ----------------------------
INSERT INTO `web_school` VALUES ('1', '广州校区');
INSERT INTO `web_school` VALUES ('2', '深圳校区');
INSERT INTO `web_school` VALUES ('3', '北京校区');

-- ----------------------------
-- Table structure for web_scorerecord
-- ----------------------------
DROP TABLE IF EXISTS `web_scorerecord`;
CREATE TABLE `web_scorerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `score` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `web_scorerecord_student_id_f8f7a771_fk_web_student_id` (`student_id`),
  KEY `web_scorerecord_user_id_179a77da_fk_web_userinfo_id` (`user_id`),
  CONSTRAINT `web_scorerecord_student_id_f8f7a771_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`),
  CONSTRAINT `web_scorerecord_user_id_179a77da_fk_web_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_scorerecord
-- ----------------------------
INSERT INTO `web_scorerecord` VALUES ('1', '好人好事', '20', '3', '7');

-- ----------------------------
-- Table structure for web_student
-- ----------------------------
DROP TABLE IF EXISTS `web_student`;
CREATE TABLE `web_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `emergency_contract` varchar(32) NOT NULL,
  `student_status` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `memo` longtext,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `web_student_customer_id_10f0afe4_fk_web_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `web_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_student
-- ----------------------------
INSERT INTO `web_student` VALUES ('1', '123456912', '145645646', '4545645646', '2', '100', null, '3');
INSERT INTO `web_student` VALUES ('2', 'e43rf3r3r', 'r3r3r3r3r3', '3r23234r32r', '2', '100', null, '7');
INSERT INTO `web_student` VALUES ('3', '343242345', '325r32532', '3243243242', '2', '120', null, '6');

-- ----------------------------
-- Table structure for web_student_class_list
-- ----------------------------
DROP TABLE IF EXISTS `web_student_class_list`;
CREATE TABLE `web_student_class_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_student_class_list_student_id_classlist_id_7937e885_uniq` (`student_id`,`classlist_id`),
  KEY `web_student_class_list_classlist_id_c9c47794_fk_web_classlist_id` (`classlist_id`),
  CONSTRAINT `web_student_class_list_classlist_id_c9c47794_fk_web_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `web_classlist` (`id`),
  CONSTRAINT `web_student_class_list_student_id_76222b07_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_student_class_list
-- ----------------------------
INSERT INTO `web_student_class_list` VALUES ('1', '1', '1');
INSERT INTO `web_student_class_list` VALUES ('2', '1', '2');
INSERT INTO `web_student_class_list` VALUES ('3', '2', '1');
INSERT INTO `web_student_class_list` VALUES ('4', '3', '2');

-- ----------------------------
-- Table structure for web_studyrecord
-- ----------------------------
DROP TABLE IF EXISTS `web_studyrecord`;
CREATE TABLE `web_studyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` varchar(64) NOT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_studyrecord_course_record_id_a3162b0f_fk_web_courserecord_id` (`course_record_id`),
  KEY `web_studyrecord_student_id_a81eb429_fk_web_student_id` (`student_id`),
  CONSTRAINT `web_studyrecord_course_record_id_a3162b0f_fk_web_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `web_courserecord` (`id`),
  CONSTRAINT `web_studyrecord_student_id_a81eb429_fk_web_student_id` FOREIGN KEY (`student_id`) REFERENCES `web_student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_studyrecord
-- ----------------------------
INSERT INTO `web_studyrecord` VALUES ('1', 'vacate', '2', '1');
INSERT INTO `web_studyrecord` VALUES ('2', 'checked', '2', '3');
INSERT INTO `web_studyrecord` VALUES ('3', 'checked', '1', '1');
INSERT INTO `web_studyrecord` VALUES ('4', 'checked', '1', '3');
INSERT INTO `web_studyrecord` VALUES ('5', 'checked', '3', '1');
INSERT INTO `web_studyrecord` VALUES ('6', 'checked', '3', '2');

-- ----------------------------
-- Table structure for web_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `web_userinfo`;
CREATE TABLE `web_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `realname` varchar(32) NOT NULL,
  `gender` int(11) NOT NULL,
  `age` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `depart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `web_userinfo_depart_id_4df860bd_fk_web_department_id` (`depart_id`),
  CONSTRAINT `web_userinfo_depart_id_4df860bd_fk_web_department_id` FOREIGN KEY (`depart_id`) REFERENCES `web_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_userinfo
-- ----------------------------
INSERT INTO `web_userinfo` VALUES ('1', 'pbkdf2_sha256$150000$1NSc0PQbjlea$vgxlYZcaHa7OdnXsG03qhYhd9V5ZngFbHs6vIZUNs84=', '2020-07-23 12:30:51.739506', 'wupeiqi', '1', '0', '2020-07-23 09:33:47.679384', '武沛齐', '1', '28', 'wupeiqi@live.com', '13612345678', '6');
INSERT INTO `web_userinfo` VALUES ('2', 'pbkdf2_sha256$150000$hHlkgowcbyTG$ImtOWlkjYSeQPHJDwHUvjYNvJj0J02N3xzXsRqcPFa0=', '2020-07-23 13:23:59.337391', 'ceo', '1', '0', '2020-07-23 09:55:45.443903', 'CEO', '1', '30', 'ceo@qq.com', '13574545213', '1');
INSERT INTO `web_userinfo` VALUES ('3', 'pbkdf2_sha256$150000$NaZOmG6GXCXt$SW0giKn4wtVzcVSpsVZWfryRyhwaiYPzSK0N/QDAhZw=', '2020-07-23 12:41:17.592413', 'yy', '1', '0', '2020-07-23 10:07:09.923517', '歪歪', '2', '18', 'yy@qq.com', '186123456789', '3');
INSERT INTO `web_userinfo` VALUES ('4', 'pbkdf2_sha256$150000$oQu59hFiyCxM$4wwnTLogSgn8ZGSuvcSSnvgEgSVZrwAS+AGh+RnD/MI=', null, 'zt', '1', '0', '2020-07-23 10:09:12.108728', '中天', '1', '28', 'zt@qq.com', '139123456789', '5');
INSERT INTO `web_userinfo` VALUES ('5', 'pbkdf2_sha256$150000$CD8cxRqysuSX$3tTAQVThc4sCS92LWeq1jozuuhpVFrIZG6j6WIwe2yc=', '2020-07-23 13:25:05.781669', 'sale', '1', '0', '2020-07-23 10:12:07.784547', '销售', '2', '18', 'sale@qq.com', '139987654321', '2');
INSERT INTO `web_userinfo` VALUES ('6', 'pbkdf2_sha256$150000$VXhCmQ2eKRWJ$PFt4Rr/3edDOr7MM+oIT7+IqRE4Oo5lQI4HE4tmxHHc=', '2020-07-24 09:23:55.276392', 'admin', '1', '1', '2020-07-23 10:24:58.454673', '', '1', '', '', '', null);
INSERT INTO `web_userinfo` VALUES ('7', 'pbkdf2_sha256$150000$4rQsVl1cHDvq$Cvh5bPem5gk5b5qFYCHSQiqG1UIqWWq1BNxEq/kazn0=', '2020-07-23 13:44:58.974918', 'poke', '1', '0', '2020-07-23 12:08:03.946806', '比卡丘', '1', '6', 'poke@qq.com', '12345612345', '4');

-- ----------------------------
-- Table structure for web_userinfo_roles
-- ----------------------------
DROP TABLE IF EXISTS `web_userinfo_roles`;
CREATE TABLE `web_userinfo_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userinfo_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_userinfo_roles_userinfo_id_role_id_e0435f62_uniq` (`userinfo_id`,`role_id`),
  KEY `web_userinfo_roles_role_id_c9cdbf1d_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `web_userinfo_roles_role_id_c9cdbf1d_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`),
  CONSTRAINT `web_userinfo_roles_userinfo_id_090d779f_fk_web_userinfo_id` FOREIGN KEY (`userinfo_id`) REFERENCES `web_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_userinfo_roles
-- ----------------------------
INSERT INTO `web_userinfo_roles` VALUES ('1', '1', '2');
INSERT INTO `web_userinfo_roles` VALUES ('7', '2', '4');
INSERT INTO `web_userinfo_roles` VALUES ('3', '3', '6');
INSERT INTO `web_userinfo_roles` VALUES ('4', '4', '3');
INSERT INTO `web_userinfo_roles` VALUES ('5', '5', '5');
INSERT INTO `web_userinfo_roles` VALUES ('6', '6', '1');
INSERT INTO `web_userinfo_roles` VALUES ('8', '7', '3');
