DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` CHARACTER SET 'utf8mb4';
USE `test`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student_score
-- ----------------------------
DROP TABLE IF EXISTS `student_score`;
CREATE TABLE `student_score` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `grade` tinyint(4) unsigned NOT NULL COMMENT '年级',
  `class` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '班级',
  `subject` tinyint(4) unsigned NOT NULL COMMENT '学科',
  `score` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '分数',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '学生名称',
  `sex` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '性别, 0女生, 1难受',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


SET FOREIGN_KEY_CHECKS = 1;
