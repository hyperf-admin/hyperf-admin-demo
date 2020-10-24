/*
 Navicat MySQL Data Transfer

 Source Server         : local1
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : hyperf_admin

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 24/10/2020 16:38:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for common_config
-- ----------------------------
DROP TABLE IF EXISTS `common_config`;
CREATE TABLE `common_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(50) NOT NULL DEFAULT '' COMMENT '命名空间, 字母',
  `name` varchar(100) NOT NULL COMMENT '配置名, 字母',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '可读配置名',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `rules` text COMMENT '配置规则描述',
  `value` text COMMENT '具体配置值 key:value',
  `permissions` text COMMENT '权限',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_need_form` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用表单：0，否；1，是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`,`namespace`),
  KEY `namespace` (`namespace`),
  KEY `update_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='通用配置';

-- ----------------------------
-- Records of common_config
-- ----------------------------
BEGIN;
INSERT INTO `common_config` VALUES (1, 'system', 'namespace', '可用空间', '系统模块', '', '{\"common\":\"\\u901a\\u7528\",\"default\":\"\\u901a\\u7528Rock\",\"system\":\"\\u7cfb\\u7edf\"}', NULL, '2019-10-18 16:47:52', '2020-06-10 15:43:50', 0);
INSERT INTO `common_config` VALUES (2, 'system', 'website_config', '站点配置', '', '{\"open_export|\\u5f00\\u542f\\u5bfc\\u51fa\":{\"type\":\"switch\"},\"navbar_notice|\\u5168\\u5c40\\u63d0\\u9192\":\"\",\"system_module|\\u7cfb\\u7edf\\u6a21\\u5757\":{\"type\":\"sub-form\",\"children\":{\"icon\":{\"type\":\"icon-select\"},\"name\":\"\",\"label\":\"\",\"indexUrl\":\"\",\"type\":{\"type\":\"select\",\"options\":{\"local\":\"local\",\"remote\":\"remote\"},\"default\":\"local\"},\"remote_base_uri\":{\"rule\":\"url\"}},\"repeat\":true,\"props\":{\"sort\":true}},\"open_screen_lock|\\u95f2\\u7f6e\\u9501\\u5c4f\":{\"type\":\"switch\"},\"screen_autho_lock_time|\\u95f2\\u7f6e\\u9501\\u5c4f\\u65f6\\u957f\":{\"type\":\"number\",\"info\":\"\\u5355\\u4f4d\\u79d2\"}}', '{\"open_export\":0,\"navbar_notice\":\"\\u89c9\\u5f97\\u4e0d\\u9519\\u5c31\\u7ed9\\u6211\\u4eec\\u70b9\\u4e2aStar\\u2728\\u5427 https:\\/\\/github.com\\/hyperf-admin\\/hyperf-admin\",\"system_module\":[{\"icon\":\"el-icon-setting\",\"name\":\"system\",\"label\":\"\\u7cfb\\u7edf\",\"indexUrl\":\"\\/system\\/#\\/dashboard\",\"type\":\"local\",\"remote_base_uri\":\"\"},{\"icon\":\"eye-open\",\"name\":\"default\",\"label\":\"\\u9996\\u9875\",\"indexUrl\":\"\\/default\\/#\\/dashboard\",\"type\":\"local\",\"remote_base_uri\":\"\"},{\"icon\":\"el-icon-more-outline\",\"name\":\"remote\",\"label\":\"\\u8fdc\\u7a0b\\u6a21\\u5757\",\"indexUrl\":\"\",\"type\":\"remote\",\"remote_base_uri\":\"http:\\/\\/127.0.0.1:9501\"}],\"open_screen_lock\":0,\"screen_autho_lock_time\":36}', NULL, '2020-03-17 08:29:10', '2020-10-15 07:40:08', 1);
INSERT INTO `common_config` VALUES (3, 'system', 'permissions', '公共权限', '', '{\"open_api|\\u516c\\u5171\\u8d44\\u6e90\":{\"rule\":\"array\",\"type\":\"table-transfer\",\"props\":{\"tableHeader\":[{\"title\":\"\\u63a7\\u5236\\u5668\",\"field\":\"controller\"},{\"title\":\"\\u65b9\\u6cd5\",\"field\":\"action\"},{\"title\":\"\\u8bf7\\u6c42\\u65b9\\u5f0f\",\"field\":\"http_method\"}],\"remoteApi\":\"\\/menu\\/getOpenApis?field=open_api\"}},\"user_open_api|\\u7528\\u6237\\u5f00\\u653e\\u8d44\\u6e90\":{\"rule\":\"array\",\"type\":\"table-transfer\",\"props\":{\"tableHeader\":[{\"title\":\"\\u63a7\\u5236\\u5668\",\"field\":\"controller\"},{\"title\":\"\\u65b9\\u6cd5\",\"field\":\"action\"},{\"title\":\"\\u8bf7\\u6c42\\u65b9\\u5f0f\",\"field\":\"http_method\"}],\"remoteApi\":\"\\/menu\\/getOpenApis?field=user_open_api\"}}}', '{\"open_api\":[\"POST::\\/user\\/login\",\"GET::\\/tools\\/app\\/configs\",\"POST::\\/upload\\/image\"],\"user_open_api\":[\"GET::\\/user\\/menu\",\"GET::\\/search\\/user\",\"GET::\\/search\\/mall\",\"GET::\\/search\\/goods\",\"GET::\\/search\\/category\",\"GET::\\/search\\/activity\",\"GET::\\/search\\/special\",\"GET::\\/search\\/couponbrand\",\"GET::\\/search\\/saleattr\",\"GET::\\/search\\/commonspec\",\"GET::\\/search\\/allact\",\"GET::\\/search\\/channel\",\"GET::\\/search\\/weblink\",\"GET::\\/search\\/topicgroup\",\"GET::\\/search\\/coupon\",\"GET::\\/search\\/buyer\",\"GET::\\/search\\/coupon\\/onsale\",\"GET::\\/system\\/config\",\"GET::\\/system\\/state\",\"GET::\\/user\\/exports\",\"GET::\\/user\\/roles\",\"GET::\\/menu\\/getOpenApis\",\"GET::\\/coupongetgroup\\/searchgroup\",\"GET::\\/lucky\\/prize\\/search\",\"POST::\\/upload\\/image\",\"GET::\\/upload\\/ossprivateurl\",\"GET::\\/search\\/aftersale\\/reason\",\"GET::\\/search\\/aftersale\\/reason\\/outer\",\"GET::\\/buyer_group\\/act\",\"GET::\\/search\\/brands\"]}', NULL, '2020-03-29 15:47:19', '2020-06-08 16:02:43', 1);
COMMIT;

-- ----------------------------
-- Table structure for config_center
-- ----------------------------
DROP TABLE IF EXISTS `config_center`;
CREATE TABLE `config_center` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '存储位置',
  `value` text COMMENT '节点值',
  `create_uid` int(12) NOT NULL COMMENT '创建者id',
  `is_locked` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否被锁定',
  `owner_uids` varchar(255) NOT NULL COMMENT '所有者',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of config_center
-- ----------------------------
BEGIN;
INSERT INTO `config_center` VALUES (1, 'test.test', '{\"key\":\"val1111ccccc\"}', 1, 0, '1', '2020-06-18 09:17:54', '2020-06-18 21:30:59');
COMMIT;

-- ----------------------------
-- Table structure for cron_job_run_log
-- ----------------------------
DROP TABLE IF EXISTS `cron_job_run_log`;
CREATE TABLE `cron_job_run_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned NOT NULL COMMENT '任务id',
  `start_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务开始时间',
  `end_at` datetime DEFAULT NULL COMMENT '任务结束时间',
  `state` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cron_jobs
-- ----------------------------
DROP TABLE IF EXISTS `cron_jobs`;
CREATE TABLE `cron_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '任务名',
  `title` varchar(255) NOT NULL COMMENT '任务可读名',
  `type` varchar(255) NOT NULL COMMENT '类型: command, ',
  `rule` varchar(255) NOT NULL COMMENT '规则',
  `alert_receiver` varchar(255) NOT NULL DEFAULT '' COMMENT '报警接收人',
  `alert_rule` text COMMENT '报警规则',
  `bind_nodes` varchar(255) NOT NULL DEFAULT '' COMMENT '绑定执行节点',
  `config` text NOT NULL COMMENT '具体配置',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1启用, 0禁用',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除 1是, 0否',
  `state` text COMMENT '运行状态',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='计划任务';

-- ----------------------------
-- Records of cron_jobs
-- ----------------------------
BEGIN;
INSERT INTO `cron_jobs` VALUES (1, 'cron_center_test', 'CronCenterTest', 'class', '* * * * *', '', '\"\"', '14', '{\"execute\":\"App\\\\Service\\\\TestCronJob\",\"api\":\"\",\"method\":\"GET\",\"params\":\"\",\"headers\":\"\",\"singleton\":1,\"on_one_server\":1}', 0, 0, '{\"start_time\":\"2020-06-16 02:31:52\",\"last_time\":\"2020-10-15 07:05:59\",\"counter\":226,\"memory_usage\":119686784}', '2020-06-16 02:28:38', '2020-10-15 07:06:10');
INSERT INTO `cron_jobs` VALUES (2, 'export_service', '导出服务', 'class', '* * * * *', '', '\"\"', '14', '{\"execute\":\"HyperfAdmin\\\\Admin\\\\Crontab\\\\ExportTask\",\"api\":\"\",\"method\":\"GET\",\"params\":\"\",\"headers\":\"\",\"singleton\":1,\"on_one_server\":1}', 1, 0, '{\"start_time\":\"2020-10-15 05:30:29\",\"last_time\":\"2020-10-15 07:42:00\",\"counter\":627,\"memory_usage\":121247344}', '2020-10-15 05:13:30', '2020-10-15 15:42:00');
COMMIT;

-- ----------------------------
-- Table structure for cron_nodes
-- ----------------------------
DROP TABLE IF EXISTS `cron_nodes`;
CREATE TABLE `cron_nodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '节点名称',
  `status` tinyint(4) unsigned NOT NULL COMMENT '节点状态, 0下线, 1正常, 2锁定',
  `info` text COMMENT '节点信息',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='cron-center可用节点';

-- ----------------------------
-- Records of cron_nodes
-- ----------------------------
BEGIN;
INSERT INTO `cron_nodes` VALUES (14, '10.105.40.35:9511', 1, '{\"enable_coroutine\":true,\"worker_num\":4,\"pid_file\":\"\\/opt\\/www\\/hyperf-admin\\/hyperf-admin-demo\\/backend\\/runtime\\/hyperf.pid\",\"open_tcp_nodelay\":true,\"max_coroutine\":100000,\"open_http2_protocol\":true,\"max_request\":100000,\"socket_buffer_size\":2097152,\"buffer_output_size\":2097152}', '2020-10-15 13:22:13', '2020-10-15 07:42:00');
INSERT INTO `cron_nodes` VALUES (16, '127.0.0.1:9511', 1, '{\"enable_coroutine\":true,\"worker_num\":4,\"pid_file\":\"\\/opt\\/www\\/hyperf-admin\\/hyperf-admin-demo\\/backend\\/runtime\\/hyperf.pid\",\"open_tcp_nodelay\":true,\"max_coroutine\":100000,\"open_http2_protocol\":true,\"max_request\":100000,\"socket_buffer_size\":2097152,\"buffer_output_size\":2097152}', '2020-10-15 14:55:00', '2020-10-15 06:56:00');
COMMIT;

-- ----------------------------
-- Table structure for dsn
-- ----------------------------
DROP TABLE IF EXISTS `dsn`;
CREATE TABLE `dsn` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '类型, 1 mysql',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `config` tinytext NOT NULL COMMENT '配置',
  `create_uid` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '创建者id',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0启用, 1禁用',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for export_tasks
-- ----------------------------
DROP TABLE IF EXISTS `export_tasks`;
CREATE TABLE `export_tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '任务名称',
  `list_api` varchar(255) NOT NULL COMMENT '列表接口',
  `filters` text COMMENT '过滤条件',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '任务状态: 0未开始, 1进行中, 2已完成, 3失败',
  `total_pages` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '总页数',
  `current_page` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '当前页',
  `operator_id` int(11) unsigned NOT NULL COMMENT '管理员id',
  `download_url` varchar(100) NOT NULL DEFAULT '' COMMENT '下载地址',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `host_ip` varchar(50) DEFAULT '' COMMENT '主机ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='导出任务';

-- ----------------------------
-- Records of export_tasks
-- ----------------------------
BEGIN;
INSERT INTO `export_tasks` VALUES (2, '执行节点', '/cronnodes/list', '[]', 2, 1, 1, 1, 'oss/1/export_task/《执行节点》下载-20201015071032.csv', '2020-06-11 14:35:39', '2020-10-15 07:10:33', '');
INSERT INTO `export_tasks` VALUES (3, '角色管理', '/role/list', '[]', 2, 1, 1, 1, 'oss/1/export_task/《角色管理》下载-20201015072300.csv', '2020-10-15 05:10:44', '2020-10-15 07:23:01', '');
COMMIT;

-- ----------------------------
-- Table structure for front_routes
-- ----------------------------
DROP TABLE IF EXISTS `front_routes`;
CREATE TABLE `front_routes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `label` varchar(50) NOT NULL DEFAULT '' COMMENT 'label名称',
  `module` varchar(50) NOT NULL DEFAULT '' COMMENT '模块',
  `path` varchar(100) NOT NULL DEFAULT '' COMMENT '路径',
  `view` varchar(100) NOT NULL DEFAULT '' COMMENT '非脚手架渲染是且path路径为正则时, vue文件路径',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT 'icon',
  `open_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '打开方式 0 当前页面 2 新标签页',
  `is_scaffold` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '是否脚手架渲染, 1是, 0否',
  `is_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否菜单 0 否 1 是',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态：0 禁用 1 启用',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序，数字越大越在前面',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `permission` text NOT NULL COMMENT '权限标识',
  `http_method` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '请求方式; 0, Any; 1, GET; 2, POST; 3, PUT; 4, DELETE;',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '菜单类型 0 目录  1 菜单 2 其他',
  `page_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '页面类型： 0 列表  1 表单',
  `scaffold_action` varchar(255) NOT NULL DEFAULT '' COMMENT '脚手架预置权限',
  `config` text COMMENT '配置化脚手架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COMMENT='前端路由(菜单)';

-- ----------------------------
-- Records of front_routes
-- ----------------------------
BEGIN;
INSERT INTO `front_routes` VALUES (1, 0, '系统管理', 'system', '#', '', 'el-icon-s-tools', 0, 1, 1, 1, 99, '2020-03-27 10:53:43', '2020-06-10 14:20:27', '', 0, 0, 0, '\'\'', NULL);
INSERT INTO `front_routes` VALUES (2, 1, '菜单管理', 'system', '/menu/list', '', 'nested', 0, 1, 1, 1, 99, '2020-03-28 22:16:42', '2020-06-11 04:22:53', 'GET::/menu/list', 1, 1, 0, '{\"create\":239,\"edit\":240,\"delete\":242,\"import\":243,\"export\":244,\"rowchange\":245}', NULL);
INSERT INTO `front_routes` VALUES (8, 2, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 97, '2020-03-28 22:19:18', '2020-03-28 22:19:18', '/menu/rowchange/{id:\\d+}', 2, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (9, 1, '通用表单', 'system', '/cconf/list', '', 'el-icon-s-tools', 0, 1, 1, 1, 98, '2020-06-10 06:45:13', '2020-06-18 23:00:27', 'GET::/cconf/list.json', 0, 1, 0, '{\"list\":10,\"create\":11,\"edit\":12,\"delete\":13}', NULL);
INSERT INTO `front_routes` VALUES (10, 9, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 06:45:13', '2020-06-10 06:45:13', 'GET::/cconf/info,GET::/cconf/list,GET::/cconf/list.json,GET::/cconf/childs/{id:\\d+},GET::/cconf/act,GET::/cconf/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (11, 9, '新建', 'system', '/cconf/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 06:45:13', '2020-06-10 06:45:13', 'GET::/cconf/form,GET::/cconf/form.json,POST::/cconf/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (12, 9, '编辑', 'system', '/cconf/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 06:45:13', '2020-06-10 06:45:13', 'GET::/cconf/{id:\\d+},GET::/cconf/{id:\\d+}.json,POST::/cconf/{id:\\d+},GET::/cconf/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (13, 9, '删除', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 06:45:13', '2020-06-10 06:45:13', 'POST::/cconf/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (14, 9, '表单预览', 'system', '/cconf/cconf_(.*)', '', '', 0, 1, 0, 1, 99, '2020-06-10 07:10:29', '2020-06-10 07:13:35', 'POST::/cconf/form,GET::/cconf/{id:\\d+}', 0, 1, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (15, 1, '用户管理', 'system', '/user/list', '', 'user', 0, 1, 1, 1, 99, '2020-06-10 08:03:01', '2020-06-10 08:04:39', '', 0, 1, 0, '{\"list\":16,\"create\":17,\"edit\":18,\"rowchange\":19,\"delete\":20,\"export\":21}', NULL);
INSERT INTO `front_routes` VALUES (16, 15, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 08:03:01', '2020-06-10 16:03:34', 'GET::/user/info,GET::/user/list,GET::/user/list.json,GET::/user/childs/{id:\\d+},GET::/user/act,GET::/user/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (17, 15, '新建', 'system', '/user/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 08:03:01', '2020-06-10 16:03:35', 'GET::/user/form,GET::/user/form.json,POST::/user/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (18, 15, '编辑', 'system', '/user/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 08:03:01', '2020-06-10 16:03:36', 'GET::/user/{id:\\d+},GET::/user/{id:\\d+}.json,POST::/user/{id:\\d+},GET::/user/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (19, 15, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 08:03:01', '2020-06-10 16:03:38', 'POST::/user/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (20, 15, '删除', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-10 08:03:01', '2020-06-10 16:03:39', 'POST::/user/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (21, 15, '导出', 'system', '', '', '', 0, 0, 0, 1, 94, '2020-06-10 08:03:01', '2020-06-10 16:03:41', 'POST::/user/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (22, 0, 'CronCenter', 'system', '#', '', 'oms-icon-lucky', 0, 1, 1, 1, 99, '2020-06-10 08:40:01', '2020-06-10 08:40:01', '', 0, 0, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (23, 22, '执行节点', 'system', '/cronnodes/list', '', 'el-icon-more', 0, 1, 1, 1, 99, '2020-06-10 08:49:07', '2020-06-10 08:49:07', '', 0, 1, 0, '{\"list\":24}', NULL);
INSERT INTO `front_routes` VALUES (24, 23, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 08:49:07', '2020-06-10 08:49:07', 'GET::/cronnodes/info,GET::/cronnodes/list,GET::/cronnodes/list.json,GET::/cronnodes/childs/{id:\\d+},GET::/cronnodes/act,GET::/cronnodes/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (25, 22, '执行计划', 'system', '/crontab/list', '', 'el-icon-message-solid', 0, 1, 1, 1, 99, '2020-06-10 08:49:46', '2020-06-10 08:49:46', '', 0, 1, 0, '{\"list\":26,\"create\":27,\"edit\":28,\"rowchange\":29,\"delete\":30,\"export\":31}', NULL);
INSERT INTO `front_routes` VALUES (26, 25, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'GET::/crontab/info,GET::/crontab/list,GET::/crontab/list.json,GET::/crontab/childs/{id:\\d+},GET::/crontab/act,GET::/crontab/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (27, 25, '新建', 'system', '/crontab/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'GET::/crontab/form,GET::/crontab/form.json,POST::/crontab/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (28, 25, '编辑', 'system', '/crontab/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'GET::/crontab/{id:\\d+},GET::/crontab/{id:\\d+}.json,POST::/crontab/{id:\\d+},GET::/crontab/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (29, 25, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'POST::/crontab/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (30, 25, '删除', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'POST::/crontab/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (31, 25, '导出', 'system', '', '', '', 0, 0, 0, 1, 94, '2020-06-10 08:49:46', '2020-06-10 08:49:46', 'POST::/crontab/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (32, 0, '开发工具', 'system', '#', '', 'oms-icon-tool', 0, 1, 1, 1, 99, '2020-06-10 09:50:21', '2020-06-10 09:50:21', '', 0, 0, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (33, 32, '代码生成', 'system', '/devtools/maker', '/devtools/maker', 'el-icon-star-off', 0, 0, 1, 1, 99, '2020-06-10 09:52:23', '2020-06-10 09:52:45', 'GET::/upload/ossprivateurl,GET::/dev/act,GET::/dev/controllermaker,GET::/dev/dbAct,GET::/dev/tableAct,GET::/dev/tableSchema', 0, 1, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (34, 0, 'DataFocus', 'system', '#', '', 'dashboard', 0, 1, 1, 1, 99, '2020-06-10 12:22:51', '2020-06-10 12:22:51', '', 0, 0, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (35, 34, '数据大盘', 'system', '/reports/list', '', 'oms-icon-project', 0, 1, 1, 1, 99, '2020-06-10 12:24:01', '2020-06-10 12:24:01', '', 0, 1, 0, '{\"list\":36,\"create\":37,\"edit\":38,\"delete\":39,\"export\":40}', NULL);
INSERT INTO `front_routes` VALUES (36, 35, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 12:24:01', '2020-06-10 12:24:01', 'GET::/reports/info,GET::/reports/list,GET::/reports/list.json,GET::/reports/childs/{id:\\d+},GET::/reports/act,GET::/reports/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (37, 35, '新建', 'system', '/reports/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 12:24:01', '2020-06-10 12:24:01', 'GET::/reports/form,GET::/reports/form.json,POST::/reports/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (38, 35, '编辑', 'system', '/reports/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 12:24:01', '2020-06-10 12:24:01', 'GET::/reports/{id:\\d+},GET::/reports/{id:\\d+}.json,POST::/reports/{id:\\d+},GET::/reports/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (39, 35, '删除', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 12:24:01', '2020-06-10 12:24:01', 'POST::/reports/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (40, 35, '导出', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-10 12:24:01', '2020-06-10 12:24:01', 'POST::/reports/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (41, 35, '数据面板', 'system', '/reports/panel/:id', '/datafocus/report', '', 0, 0, 0, 1, 99, '2020-06-10 12:24:54', '2020-06-16 01:04:56', 'GET::/reports/execute/{id:\\d+}', 0, 1, 0, '\"\"', NULL);
INSERT INTO `front_routes` VALUES (42, 34, 'DSN', 'system', '/dsn/list', '', 'oms-icon-automation', 0, 1, 1, 1, 99, '2020-06-10 12:30:19', '2020-06-10 12:30:19', '', 0, 1, 0, '{\"list\":43,\"create\":44,\"edit\":45,\"rowchange\":46,\"delete\":47,\"export\":48}', NULL);
INSERT INTO `front_routes` VALUES (43, 42, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'GET::/dsn/info,GET::/dsn/list,GET::/dsn/list.json,GET::/dsn/childs/{id:\\d+},GET::/dsn/act,GET::/dsn/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (44, 42, '新建', 'system', '/dsn/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'GET::/dsn/form,GET::/dsn/form.json,POST::/dsn/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (45, 42, '编辑', 'system', '/dsn/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'GET::/dsn/{id:\\d+},GET::/dsn/{id:\\d+}.json,POST::/dsn/{id:\\d+},GET::/dsn/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (46, 42, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'POST::/dsn/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (47, 42, '删除', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'POST::/dsn/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (48, 42, '导出', 'system', '', '', '', 0, 0, 0, 1, 94, '2020-06-10 12:30:19', '2020-06-10 12:30:19', 'POST::/dsn/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (49, 34, '系统插件', 'system', '/plugin_function/list', '', 'oms-icon-baoxian', 0, 1, 1, 1, 99, '2020-06-10 12:31:06', '2020-06-10 12:31:06', '', 0, 1, 0, '{\"list\":50,\"create\":51,\"edit\":52,\"rowchange\":53,\"delete\":54,\"import\":55,\"export\":56}', NULL);
INSERT INTO `front_routes` VALUES (50, 49, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'GET::/plugin_function/info,GET::/plugin_function/list,GET::/plugin_function/list.json,GET::/plugin_function/childs/{id:\\d+},GET::/plugin_function/act,GET::/plugin_function/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (51, 49, '新建', 'system', '/plugin_function/form', '', '', 0, 1, 0, 1, 98, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'GET::/plugin_function/form,GET::/plugin_function/form.json,POST::/plugin_function/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (52, 49, '编辑', 'system', '/plugin_function/:id', '', '', 0, 1, 0, 1, 97, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'GET::/plugin_function/{id:\\d+},GET::/plugin_function/{id:\\d+}.json,POST::/plugin_function/{id:\\d+},GET::/plugin_function/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (53, 49, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'POST::/plugin_function/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (54, 49, '删除', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'POST::/plugin_function/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (55, 49, '导入', 'system', '', '', '', 0, 0, 0, 1, 94, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'POST::/plugin_function/import', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (56, 49, '导出', 'system', '', '', '', 0, 0, 0, 1, 93, '2020-06-10 12:31:06', '2020-06-10 12:31:06', 'POST::/plugin_function/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (58, 2, '编辑', 'system', '/menu/:id', '', '', 0, 1, 0, 1, 98, '2020-06-11 04:22:53', '2020-06-11 04:22:53', 'GET::/menu/{id:\\d+},GET::/menu/{id:\\d+}.json,POST::/menu/{id:\\d+},GET::/menu/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (59, 2, '删除', 'system', '', '', '', 0, 0, 0, 1, 97, '2020-06-11 04:22:53', '2020-06-11 04:22:53', 'POST::/menu/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (60, 2, '导入', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-11 04:22:53', '2020-06-11 04:22:53', 'POST::/menu/import', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (61, 2, '导出', 'system', '', '', '', 0, 0, 0, 1, 95, '2020-06-11 04:22:53', '2020-06-11 04:22:53', 'POST::/menu/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (62, 2, '行编辑', 'system', '', '', '', 0, 0, 0, 1, 94, '2020-06-11 04:22:53', '2020-06-11 04:22:53', 'POST::/menu/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (63, 2, '新建', 'system', '/menu/form', '', '', 0, 1, 0, 1, 99, '2020-06-11 04:28:51', '2020-06-11 04:28:51', 'GET::/menu/form,GET::/menu/form.json,POST::/menu/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (69, 77, '学生成绩', 'default', '/student_score/list', '', 'el-icon-user-solid', 0, 1, 1, 1, 99, '2020-06-13 12:25:34', '2020-06-13 12:38:00', 'GET::/student_score/list.json', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (70, 69, '列表', 'default', '#', '', '', 0, 0, 0, 1, 99, '2020-06-13 12:25:34', '2020-06-15 06:54:02', 'GET::/student_score/list.json,GET::/student_score/form.json,GET::/student_score/info,GET::/student_score/form,GET::/student_score/list,GET::/student_score/act', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (71, 69, '新建', 'default', '/student_score/form', '', '', 0, 1, 0, 1, 98, '2020-06-13 12:25:34', '2020-06-15 06:55:04', 'GET::/student_score/form,POST::/student_score/form,POST::/student_score/{id:\\d+},POST::/menu/rowchange/{id:\\d+},GET::/student_score/{id:\\d+}.json,GET::/student_score/{id:\\d+},GET::/student_score/childs/{id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (72, 69, '编辑', 'default', '/student_score/:id', '', '', 0, 1, 0, 1, 97, '2020-06-13 12:25:34', '2020-06-15 06:55:43', 'GET::/student_score/list.json,GET::/student_score/form,GET::/student_score/{id:\\d+},GET::/student_score/{id:\\d+}.json,POST::/student_score/{id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (73, 69, '行编辑', 'default', '', '', '', 0, 0, 0, 1, 96, '2020-06-13 12:25:34', '2020-06-13 12:25:34', 'POST::/studen_score/rowchange/{id:\\d+}', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (74, 69, '删除', 'default', '#', '', '', 0, 0, 0, 1, 95, '2020-06-13 12:25:34', '2020-06-15 06:56:03', 'POST::/student_score/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (75, 69, '导入', 'default', '#', '', '', 0, 0, 0, 1, 94, '2020-06-13 12:25:34', '2020-06-15 06:56:17', 'POST::/student_score/import', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (76, 69, '导出', 'default', '#', '', '', 0, 0, 0, 1, 93, '2020-06-13 12:25:34', '2020-06-15 06:56:33', 'POST::/student_score/export', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (77, 0, '学生管理', 'default', '#', '', 'user', 0, 1, 1, 1, 99, '2020-06-13 12:34:35', '2020-06-13 12:34:35', '', 0, 0, 0, '', NULL);
INSERT INTO `front_routes` VALUES (78, 1, '角色管理', 'system', '/role/list', '', 'eye-open', 0, 1, 1, 1, 99, '2020-06-16 03:05:50', '2020-06-16 11:13:56', '', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (79, 78, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-16 03:05:50', '2020-06-16 11:13:59', 'GET::/role/info,GET::/role/list,GET::/role/list.json,GET::/role/childs/{id:\\d+},GET::/role/act,GET::/role/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (80, 78, '新建', 'system', '/role/form', '', '', 0, 1, 0, 1, 98, '2020-06-16 03:05:50', '2020-06-16 11:14:01', 'GET::/role/form,GET::/role/form.json,POST::/role/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (81, 78, '编辑', 'system', '/role/:id', '', '', 0, 1, 0, 1, 97, '2020-06-16 03:05:50', '2020-06-16 11:14:03', 'GET::/role/{id:\\d+},GET::/role/{id:\\d+}.json,POST::/role/{id:\\d+},GET::/role/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (82, 78, '删除', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-16 03:05:50', '2020-06-16 11:14:05', 'POST::/role/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (83, 1, '配置中心', 'system', '/config_center/list', '', 'el-icon-star-on', 0, 1, 1, 1, 99, '2020-06-18 08:47:51', '2020-06-18 08:47:51', '', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (84, 83, '列表', 'system', '', '', '', 0, 0, 0, 1, 99, '2020-06-18 08:47:51', '2020-06-18 08:47:51', 'GET::/config_center/info,GET::/config_center/list,GET::/config_center/list.json,GET::/config_center/childs/{id:\\d+},GET::/config_center/act,GET::/config_center/notice', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (85, 83, '新建', 'system', '/config_center/form', '', '', 0, 1, 0, 1, 98, '2020-06-18 08:47:51', '2020-06-18 08:47:51', 'GET::/config_center/form,GET::/config_center/form.json,POST::/config_center/form', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (86, 83, '编辑', 'system', '/config_center/:id', '', '', 0, 1, 0, 1, 97, '2020-06-18 08:47:51', '2020-06-18 08:47:51', 'GET::/config_center/{id:\\d+},GET::/config_center/{id:\\d+}.json,POST::/config_center/{id:\\d+},GET::/config_center/newversion/{id:\\d+}/{last_ver_id:\\d+}', 0, 1, 0, '', NULL);
INSERT INTO `front_routes` VALUES (87, 83, '删除', 'system', '', '', '', 0, 0, 0, 1, 96, '2020-06-18 08:47:51', '2020-06-18 08:47:51', 'POST::/config_center/delete', 0, 2, 0, '', NULL);
INSERT INTO `front_routes` VALUES (88, 0, '新配置化测试', 'system', '#', '', 'el-icon-star-on', 0, 1, 1, 1, 99, '2020-09-18 07:53:27', '2020-09-18 07:53:27', '', 0, 0, 0, '', NULL);
INSERT INTO `front_routes` VALUES (89, 88, '用户管理v2', 'system', '/user/list2', '', 'el-icon-plus', 0, 2, 1, 1, 99, '2020-09-18 07:55:48', '2020-09-18 11:15:20', '', 0, 1, 0, '', '{\"getApi\":\"http:\\/\\/127.0.0.1:9511\\/user\\/{id}\",\"saveApi\":\"http:\\/\\/127.0.0.1:9511\\/user\\/{id}\",\"listApi\":\"http:\\/\\/127.0.0.1:9511\\/user\\/list\",\"createAble\":false,\"deleteAble\":true,\"defaultList\":true,\"filter\":[\"realname%\",\"username%\",\"create_at\"],\"form\":{\"id\":\"int\",\"username|\\u767b\\u5f55\\u8d26\\u53f7\":{\"rule\":\"required\",\"readonly\":true},\"avatar|\\u5934\\u50cf\":{\"type\":\"image\",\"rule\":\"string\"},\"realname|\\u6635\\u79f0\":\"\",\"mobile|\\u624b\\u673a\":\"\",\"email|\\u90ae\\u7bb1\":\"email\",\"sign|\\u7b7e\\u540d\":\"\",\"pwd|\\u5bc6\\u7801\":{\"virtual_field\":true,\"default\":\"\",\"props\":{\"size\":\"small\",\"maxlength\":20},\"info\":\"\\u82e5\\u8bbe\\u7f6e, \\u5c06\\u4f1a\\u66f4\\u65b0\\u7528\\u6237\\u5bc6\\u7801\"},\"status|\\u72b6\\u6001\":{\"rule\":\"required\",\"type\":\"radio\",\"options\":[\"\\u7981\\u7528\",\"\\u542f\\u7528\"],\"default\":0},\"is_admin|\\u7c7b\\u578b\":{\"rule\":\"int\",\"type\":\"radio\",\"options\":[\"\\u666e\\u901a\\u7ba1\\u7406\\u5458\",\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\"],\"info\":\"\\u666e\\u901a\\u7ba1\\u7406\\u5458\\u9700\\u8981\\u5206\\u914d\\u89d2\\u8272\\u624d\\u80fd\\u8bbf\\u95ee\\u89d2\\u8272\\u5bf9\\u5e94\\u7684\\u8d44\\u6e90\\uff1b\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\\u53ef\\u4ee5\\u8bbf\\u95ee\\u5168\\u90e8\\u8d44\\u6e90\",\"default\":0,\"render\":[]},\"role_ids|\\u89d2\\u8272\":{\"rule\":\"array\",\"type\":\"el-cascader-panel\",\"virtual_field\":true,\"props\":{\"props\":{\"multiple\":true,\"leaf\":\"leaf\",\"emitPath\":false,\"checkStrictly\":true}},\"render\":[]},\"create_at|\\u521b\\u5efa\\u65f6\\u95f4\":{\"form\":false,\"type\":\"date_range\"}},\"hasOne\":[],\"table\":{\"columns\":[\"id\",\"realname\",\"username\",{\"field\":\"mobile\",\"render\":[]},{\"field\":\"avatar\",\"render\":\"avatarRender\"},\"email\",{\"field\":\"status\",\"enum\":[\"info\",\"success\"]},{\"field\":\"role_id\",\"title\":\"\\u6743\\u9650\",\"virtual_field\":true}],\"rowActions\":[{\"type\":\"form\",\"target\":\"\\/system\\/form\\/89\\/{id}\",\"text\":\"\\u7f16\\u8f91\"},{\"type\":\"form\",\"target\":\"_proxy@http:\\/\\/127.0.0.1:9511\\/user\\/form\",\"text\":\"\\u7f16\\u8f912\"}],\"topActions\":[{\"type\":\"form\",\"target\":\"\\/system\\/form\\/89\\/form\",\"text\":\"\\u65b0\\u5efa\"}]}}');
COMMIT;

-- ----------------------------
-- Table structure for global_config
-- ----------------------------
DROP TABLE IF EXISTS `global_config`;
CREATE TABLE `global_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(100) NOT NULL DEFAULT '',
  `value` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`),
  KEY `namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全局配置';

-- ----------------------------
-- Table structure for operator_log
-- ----------------------------
DROP TABLE IF EXISTS `operator_log`;
CREATE TABLE `operator_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(50) DEFAULT '' COMMENT '页面url',
  `page_name` varchar(50) DEFAULT '' COMMENT '页面面包屑/名称',
  `action` varchar(50) DEFAULT '' COMMENT '动作',
  `operator_id` int(11) DEFAULT '0' COMMENT '操作人ID',
  `nickname` varchar(50) DEFAULT '' COMMENT '操作人名称',
  `relation_ids` text COMMENT '多个id-当前版本ID[id-current_version_id,]',
  `detail_json` text COMMENT '需要灵活记录的json',
  `client_ip` varchar(50) DEFAULT '' COMMENT '客户端地址',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通用操作日志';

-- ----------------------------
-- Records of operator_log
-- ----------------------------
BEGIN;
INSERT INTO `operator_log` VALUES (1, '/cronnodes/list', 'CronCenter/执行节点', '导出', 1, '刀刀', '[2]', '{\"description\":\"刀刀于2020-06-11 14:35:39 在CronCenter/执行节点页导出了ID为2的记录\"}', '127.0.0.1', '2020-06-11 14:35:39', '2020-06-11 14:35:39');
INSERT INTO `operator_log` VALUES (2, '/role/list', '系统管理/角色管理', '导出', 1, '刀刀', '[3]', '{\"description\":\"刀刀于2020-10-15 05:10:44 在系统管理/角色管理页导出了ID为3的记录\"}', '127.0.0.1', '2020-10-15 05:10:44', '2020-10-15 05:10:44');
COMMIT;

-- ----------------------------
-- Table structure for plugin_function
-- ----------------------------
DROP TABLE IF EXISTS `plugin_function`;
CREATE TABLE `plugin_function` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '中文名称',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '方法类型 1列插件, 2表插件',
  `func_name` varchar(50) NOT NULL COMMENT '方法名',
  `context` text COMMENT '方法体定义',
  `create_uid` int(120) unsigned NOT NULL DEFAULT '0' COMMENT '创建者id',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `func_name` (`func_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of plugin_function
-- ----------------------------
BEGIN;
INSERT INTO `plugin_function` VALUES (1, '列表转置', 2, 'df_list_transposition', 'function df_list_transposition($list, $key_field, $val_field) {\n	$arr = [];\n	foreach($list as $item) {\n		$arr[][$item[$key_field]] = $item[$val_field];\n	}\n	// test\n	return $arr;\n}', 0, 1, '2020-06-16 01:25:29', '2020-06-28 14:55:44');
COMMIT;

-- ----------------------------
-- Table structure for report_change_log
-- ----------------------------
DROP TABLE IF EXISTS `report_change_log`;
CREATE TABLE `report_change_log` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int(12) unsigned NOT NULL COMMENT '报表id',
  `dev_uid` int(12) unsigned NOT NULL COMMENT '开发者id',
  `dev_content` text COMMENT '内容',
  `published` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0未发布, 1已发布',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of report_change_log
-- ----------------------------
BEGIN;
INSERT INTO `report_change_log` VALUES (1, 1, 1, '<sql id=\"HyperfAdmin用户状态统计\" dsn=\"hyperf_admin\" chart=\"PieChart\" table_plugin=\"df_list_transposition:状态,数量\">\n	SELECT\n	CASE\n		WHEN\n			`status` = 1 THEN\n				\'启用\' \n				WHEN `status` = 0 THEN\n				\'禁用\' \n			END AS 状态,\n			count( 1 ) AS 数量 \n		FROM\n		USER \n	GROUP BY\n		STATUS;\n</sql>', 0, '2020-06-16 08:53:29', '2020-06-16 08:53:29');
INSERT INTO `report_change_log` VALUES (2, 1, 1, '<sql id=\"HyperfAdmin用户状态统计\" dsn=\"hyperf_admin\" chart=\"PieChart\" table_plugin=\"df_list_transposition:状态,数量\">\nSELECT\n	CASE\n		WHEN `status` = 1 THEN \'启用\' \n		WHEN `status` = 0 THEN \'禁用\' \n	END AS 状态,\n	count( 1 ) AS 数量 \nFROM\n	`user` \nGROUP BY `status`;\n</sql>', 0, '2020-06-28 15:10:15', '2020-06-28 15:10:15');
INSERT INTO `report_change_log` VALUES (3, 1, 1, '<sql id=\"HyperfAdmin用户状态统计\" dsn=\"hyperf_admin\" chart=\"PieChart\" table_plugin=\"df_list_transposition:状态,数量\">\nSELECT\n	CASE\n		WHEN `status` = 1 THEN \'启用\' \n		WHEN `status` = 0 THEN \'禁用\' \n	END AS 状态,\n	count(1) AS 数量 \nFROM\n	`user` \nGROUP BY `status`;\n</sql>', 0, '2020-06-28 15:10:56', '2020-06-28 15:10:56');
COMMIT;

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `pid` int(12) unsigned NOT NULL COMMENT '父id',
  `publish_content` text COMMENT '发布的报表内容',
  `dev_content` text COMMENT '开发中的报表内容',
  `bind_rold_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '授权的角色id',
  `bind_uids` varchar(255) NOT NULL DEFAULT '' COMMENT '绑定的用户id',
  `create_uid` int(12) unsigned NOT NULL COMMENT '创建者id',
  `dev_uid` int(12) unsigned NOT NULL COMMENT '开发者id',
  `crontab` varchar(255) NOT NULL DEFAULT '' COMMENT '定时任务',
  `config` text COMMENT '配置',
  `publish_at` datetime DEFAULT NULL COMMENT '最后一次发布时间',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of reports
-- ----------------------------
BEGIN;
INSERT INTO `reports` VALUES (1, 'HyperfAdmin用户状态统计', 0, NULL, '<sql id=\"HyperfAdmin用户状态统计\" dsn=\"hyperf_admin\" chart=\"PieChart\" table_plugin=\"df_list_transposition:状态,数量\">\nSELECT\n	CASE\n		WHEN `status` = 1 THEN \'启用\' \n		WHEN `status` = 0 THEN \'禁用\' \n	END AS 状态,\n	count(1) AS 数量 \nFROM\n	`user` \nGROUP BY `status`;\n</sql>', '', '', 1, 1, '', '{\n	\"cc\":13,\n	\"ccc\":233.234,\n	\"sef\":34\n}', NULL, '2020-06-16 00:57:31', '2020-06-28 15:10:56');
COMMIT;

-- ----------------------------
-- Table structure for role_menus
-- ----------------------------
DROP TABLE IF EXISTS `role_menus`;
CREATE TABLE `role_menus` (
  `role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `router_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '路由ID',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `role_router_id` (`role_id`,`router_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色菜单';

-- ----------------------------
-- Records of role_menus
-- ----------------------------
BEGIN;
INSERT INTO `role_menus` VALUES (1, 1, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 2, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 8, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 9, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 10, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 11, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 12, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 13, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 14, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 15, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 16, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 17, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 18, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 19, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 20, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 21, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 22, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 23, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 24, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 25, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 26, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 27, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 28, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 29, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 30, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 31, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 32, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 33, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 34, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 35, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 36, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 37, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 38, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 39, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 40, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 41, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 42, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 43, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 44, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 45, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 46, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 47, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 48, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 49, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 50, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 51, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 52, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 53, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 54, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 55, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 56, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 58, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 59, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 60, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 61, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 62, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 63, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 78, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 79, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 80, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 81, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
INSERT INTO `role_menus` VALUES (1, 82, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `permissions` text NOT NULL COMMENT '角色拥有的权限',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态：0 禁用 1 启用',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序，数字越大越在前面',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 0, '超管', '\"[[\\\"system\\\",1,2,3],[\\\"system\\\",1,2,63],[\\\"system\\\",1,2,57],[\\\"system\\\",1,2,4],[\\\"system\\\",1,2,64],[\\\"system\\\",1,2,58],[\\\"system\\\",1,2,65],[\\\"system\\\",1,2,59],[\\\"system\\\",1,2,8],[\\\"system\\\",1,2,60],[\\\"system\\\",1,2,66],[\\\"system\\\",1,2,5],[\\\"system\\\",1,2,61],[\\\"system\\\",1,2,6],[\\\"system\\\",1,2,67],[\\\"system\\\",1,2,7],[\\\"system\\\",1,2,62],[\\\"system\\\",1,2,68],[\\\"system\\\",1,78,79],[\\\"system\\\",1,78,80],[\\\"system\\\",1,78,81],[\\\"system\\\",1,78,82],[\\\"system\\\",1,15,16],[\\\"system\\\",1,15,17],[\\\"system\\\",1,15,18],[\\\"system\\\",1,15,19],[\\\"system\\\",1,15,20],[\\\"system\\\",1,15,21],[\\\"system\\\",1,9,10],[\\\"system\\\",1,9,14],[\\\"system\\\",1,9,11],[\\\"system\\\",1,9,12],[\\\"system\\\",1,9,13],[\\\"system\\\",34,49,50],[\\\"system\\\",34,49,51],[\\\"system\\\",34,49,52],[\\\"system\\\",34,49,53],[\\\"system\\\",34,49,54],[\\\"system\\\",34,49,55],[\\\"system\\\",34,49,56],[\\\"system\\\",34,42,43],[\\\"system\\\",34,42,44],[\\\"system\\\",34,42,45],[\\\"system\\\",34,42,46],[\\\"system\\\",34,42,47],[\\\"system\\\",34,42,48],[\\\"system\\\",34,35,41],[\\\"system\\\",34,35,36],[\\\"system\\\",34,35,37],[\\\"system\\\",34,35,38],[\\\"system\\\",34,35,39],[\\\"system\\\",34,35,40],[\\\"system\\\",32,33],[\\\"system\\\",22,23,24],[\\\"system\\\",22,25,26],[\\\"system\\\",22,25,27],[\\\"system\\\",22,25,28],[\\\"system\\\",22,25,29],[\\\"system\\\",22,25,30],[\\\"system\\\",22,25,31]]\"', 1, 0, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `password` char(40) NOT NULL,
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_time` timestamp NULL DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is admin',
  `is_default_pass` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否初始密码1:是,0:否',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT '用户qq',
  `roles` varchar(50) NOT NULL DEFAULT '10',
  `sign` varchar(255) NOT NULL DEFAULT '' COMMENT '签名',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `avatar_small` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='后台用户';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'daodao', '刀刀', '1ab3ea2f16515d5ac4c1b2194f5610e45ad3e0d6', '', '', 1, '2020-05-26 21:02:32', NULL, 1, 1, '', '1', '', 'http://qupinapptest.oss-cn-beijing.aliyuncs.com/1/202002/d81d3c9dc7c3df7590d333f783a97995.jpeg', '', '2017-12-12 10:49:11', '2020-06-15 13:46:24');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `role_id` int(11) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES (1, 1, 1, '2020-06-16 03:20:34', '2020-06-16 03:20:34');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
