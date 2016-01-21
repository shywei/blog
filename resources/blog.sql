-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.19 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 blog 的数据库结构
DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog`;


-- 导出  表 blog.articles 结构
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) unsigned NOT NULL DEFAULT '0',
  `content_text` text NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `deleteflag` int(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- 正在导出表  blog.articles 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `type`, `content_text`, `create_date`, `update_date`, `deleteflag`, `title`, `content`) VALUES
    (1, 0, '\r\n                a\r\n                   ', '2016-01-19 13:26:12', '2016-01-19 22:29:01', 0, 's', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>'),
    (2, 0, '??2????????k?n?3?????????4???5??????????6??????????????7????????8?????????9???10??????????11??', '2016-01-19 14:20:13', '2016-01-19 14:20:13', 0, '???', '<p><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">2</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????k?n?</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">3</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">4</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">5</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">6</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">7</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">8</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">9</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">10</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">11</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span></p>'),
    (3, 0, 'fdsds', '2016-01-19 14:23:24', '2016-01-19 14:23:24', 0, 'dada', '<p>fdsds</p>'),
    (4, 0, 'aaaa', '2016-01-19 14:24:38', '2016-01-19 14:24:38', 0, 'dsaaaaa', '<p>aaaa</p>'),
    (5, 0, 'rwrw', '2016-01-19 14:25:48', '2016-01-19 14:25:48', 0, 'fwrwrw', '<p>rwrw</p>'),
    (6, 0, 'fsfs', '2016-01-19 14:26:32', '2016-01-19 14:26:32', 0, 'sfsfs', '<p>fsfs</p>'),
    (7, 0, '????', '2016-01-19 14:27:24', '2016-01-19 14:27:24', 0, '????', '<p>????</p>'),
    (8, 0, '??2????????k?n?3?????????4???5??????????6??????????????7????????8?????????9???10??????????11??', '2016-01-19 14:29:38', '2016-01-19 14:29:38', 0, '???', '<p><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">2</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????k?n?</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">3</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">4</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">5</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">6</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">7</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">8</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">9</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">10</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">11</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span></p>'),
    (9, 0, '北冥2有鱼，其名为鲲（kūn）3。鲲之大，不知其几4千里也5；化而为鸟，其名为鹏6。鹏之背，不知其几千里也；怒7而飞，其翼若垂天8之云。是鸟也，海运9则将徙10于南冥。南冥者，天池11也。', '2016-01-19 14:29:38', '2016-01-19 14:29:38', 0, '逍遥游', '<p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">北冥</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">2</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">有鱼，其名为鲲（kūn）</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">3</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">。鲲之大，不知其几</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">4</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">千里也</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">5</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">；化而为鸟，其名为鹏</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">6</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">。鹏之背，不知其几千里也；怒</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">7</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">而飞，其翼若垂天</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">8</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">之云。是鸟也，海运</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">9</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">则将徙</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">10</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">于南冥。南冥者，天池</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, 宋体, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">11</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">也。</span></p>'),
    (10, 0, '??2????????k?n?3?????????4???5??????????6??????????????7????????8?????????9???10??????????11??', '2016-01-19 14:33:17', '2016-01-19 14:33:17', 0, '??', '<p><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">2</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????k?n?</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">3</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">4</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">5</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">6</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">7</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">8</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">?????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">9</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">???</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">10</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??????????</span><span class="normal" style="font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 51, 51); cursor: default; padding: 0px 2px; font-family: arial, ??, sans-serif; text-indent: 28px; background-color: rgb(255, 255, 255);">11</span><span style="color: rgb(51, 51, 51); font-family: arial, ??, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">??</span></p>'),
    (11, 0, '北冥有鱼，其名为鲲。鲲之大，不知其几千里也；化而为鸟，其名为鹏。鹏之背，不知其几千里也；怒而飞，其翼若垂天之云。是鸟也，海运则将徙于南冥。南冥者，天池也。', '2016-01-19 14:40:54', '2016-01-20 14:35:08', 0, '逍遥游', '<p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">北冥</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">有鱼，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">其名为鲲</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">。</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">鲲之大，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">不知其几</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">千里也</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">；</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">化而为鸟，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">其名为鹏</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">。</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">鹏之背，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">不知其几千里也；</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">怒</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">而飞，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">其翼若垂天</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">之云。</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">是鸟也，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">海运</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">则将徙</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">于南冥。</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">南冥者，</span></p><p><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">天池</span><span style="color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);">也。</span></p>');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;


-- 导出  表 blog.comments 结构
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `deleteflag` int(1) unsigned NOT NULL DEFAULT '0',
  `update_date` datetime NOT NULL,
  `article_id` bigint(20) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `type` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文章评论';

-- 正在导出表  blog.comments 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `content`, `deleteflag`, `update_date`, `article_id`, `create_date`, `create_by`, `type`) VALUES
    (1, '我叫你一声猴子你敢答应吗', 0, '2016-01-19 22:22:45', 1, '2016-01-19 22:22:46', '大王叫我来巡山', 0),
    (2, 'eez', 0, '2016-01-19 22:22:58', 2, '2016-01-19 22:22:59', '长身', 0),
    (3, '？？？？', 0, '2016-01-19 22:23:07', 1, '2016-01-19 22:23:10', '猴子', 0),
    (4, '"hahaa"', 0, '2016-01-20 17:15:51', 10, '2016-01-20 17:15:51', '"孔明"', 1),
    (5, '岂不美哉', 0, '2016-01-20 17:24:40', 11, '2016-01-20 17:24:40', '不愿透露姓名的王司徒', 1),
    (6, '7878', 0, '2016-01-20 17:25:38', 11, '2016-01-20 17:25:38', '不愿透露姓名的王司徒', 1),
    (7, '我有一言，请诸君静听。', 0, '2016-01-20 17:31:55', 11, '2016-01-20 17:31:55', '诸葛村夫', 0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;