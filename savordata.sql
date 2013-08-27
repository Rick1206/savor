-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2012 年 12 月 29 日 07:26
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `savordata`
--

-- --------------------------------------------------------

--
-- 表的结构 `savor_promotions`
--

CREATE TABLE IF NOT EXISTS `savor_promotions` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(4) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `url` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `description_cn` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `savor_promotions`
--

INSERT INTO `savor_promotions` (`promotion_id`, `type_id`, `name`, `name_cn`, `name_en`, `photo`, `url`, `description`, `description_cn`, `description_en`, `orderby`) VALUES
(1, 1, 'Savor On-site Services', '品味现场服务 ', 'Savor On-site Services', '1354547378_PhALiuGCOO.png', 'occasions.php', 'We have a team of professional waiters for your meetings or parties.\nWith a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste!! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', '我们拥有一支专业服务员。\r\n与一个坚定的信念,客户都是独特的,我们准备工作在特制的菜单创建和惊喜!我们的食物是由多关注健康、安全及多喜欢美味! !我们的目标是提供食品爱好者和辨别味道,使餐美味和难忘!', 'We have a team of professional waiters for your meetings or parties.\r\nWith a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste!! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', 5),
(2, 1, '', '船河', '船河', '1356715171_QgjaQvRQDy.png', 'occasions.php', '', '在船上一個美麗的陽光燦爛日子裡配合我們特定套餐中西菜式及大型宴會配合。我們為您提供美味的食品，甚至安排租船出海！婚禮雞尾酒這是我們美味的食物和無敵服務，保證所有的歡樂和輝煌的最重要的一天，你的生活，你所愛的人！持續永遠的珍貴回憶，帶給所有心愛的貴客每一個難忘愉快的時刻！', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
