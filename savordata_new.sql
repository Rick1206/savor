-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2013 年 04 月 16 日 04:39
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
-- 表的结构 `savor_admin`
--

CREATE TABLE IF NOT EXISTS `savor_admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  `user_group` int(4) NOT NULL,
  `out_time` date NOT NULL DEFAULT '0000-00-00',
  `note` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `savor_admin`
--

INSERT INTO `savor_admin` (`admin_id`, `usertype`, `userid`, `pwd`, `uname`, `tname`, `email`, `logintime`, `loginip`, `user_group`, `out_time`, `note`) VALUES
(1, 0, '', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', '', '', 0, '', 1, '2012-11-25', '');

-- --------------------------------------------------------

--
-- 表的结构 `savor_banners`
--

CREATE TABLE IF NOT EXISTS `savor_banners` (
  `banner_id` int(8) NOT NULL AUTO_INCREMENT,
  `link` varchar(250) CHARACTER SET utf8 NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title_cn` varchar(750) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(750) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(250) CHARACTER SET utf8 NOT NULL,
  `photo_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `photo_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `savor_banners`
--

INSERT INTO `savor_banners` (`banner_id`, `link`, `title`, `title_cn`, `title_en`, `photo`, `photo_cn`, `photo_en`, `orderby`) VALUES
(1, 'luncheonmenu.php', '生日party食物 生日到會 生日party到會 生日會食物 小食到會 外賣到會 外賣炒粉麵 各國到會 自助餐到會 到會美食 到會美食服務 到會小食 到會沙律 到會服務 到會食品 到會餐單 美食到會 食物到會 泰式到會 素食到會 甜品到會 團體美食到會 餐飲到會 茶會到會 酒會到會 商務到會 婚宴到會 船河到會 遊船河到會 外賣便當 外賣飯盒 飯盒 飯盒外賣 飯盒美食 飯盒套餐 聖誕party到會 聖誕party食物 聖誕到會 聖誕食物 聖誕套餐到會 聖誕到會 聖誕到會2012 聖誕到會套餐', '到會服務 ,到會美食, 2013 到會套餐', 'The birthday party food to the birthday party to the birthday party food snacks to take out to take out Fried powder surface countries to the buffet to to the food to the food service to the snacks to the salad to the service to the food to dine together single food to the food to the Thai to the vegetarian food to dessert to the group to catering to the tea party to the party to the business to the wedding banquet to ship river cruise to the river to take out lunch take out lunch box lunch box lunch box take-away food lunch box lunch box package Christmas party to the Christmas party food Christmas to the Christmas food Christmas package to Christmas to the Christmas 2012 Christmas to the package\r\n ', '1354421551_CJ5VL8ld9z.jpg', '1356781039_YpIOy6H37T.jpg', '1356689789_dsLsrJi5RO.jpg', 0),
(2, 'luncheonmenu.php', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好', 'The birthday party food to the birthday party to the birthday party food snacks to take out to take out Fried powder surface countries to the buffet to to the food to the food service to the snacks to the salad to the service to the food to dine together single food to the food to the Thai to the vegetarian food to dessert to the group to catering to the tea party to the party to the business to the wedding banquet to ship river cruise to the river to take out lunch take out lunch box lunch box lunch box take-away food lunch box lunch box package Christmas party to the Christmas party food Christmas to the Christmas food Christmas package to Christmas to the Christmas 2012 Christmas to the package', '1354421572_quueVcoojk.jpg', '1356781069_TDaKfEY1ZA.jpg', '1356689827_I2VW9aigoS.jpg', 5),
(3, 'luncheonmenu.php', 'boat trip catering boat trip food set cater caterer catering catering service catering services christmas party set cocktail party food set food catering hong kong food delivery food delivery kowloon hong kong catering services outside catering party', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好', 'boat trip catering boat trip food set cater caterer catering catering service catering services christmas party set cocktail party food set food catering hong kong food delivery food delivery kowloon hong kong catering services outside catering party', '1354421586_CHoRHTzikP.jpg', '1356781085_9SWpImYqIa.jpg', '1356689853_VZgDz6qb7J.jpg', 10),
(4, 'luncheonmenu.php', '開心聖誕派對美食到會服務 中西食品 聖誕特色選擇 歡迎立刻網上預訂', '開心聖誕派對美食到會服務 中西食品 聖誕特色選擇 歡迎立刻網上預訂 到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好', 'The birthday party food to the birthday party to the birthday party food snacks to take out to take out Fried powder surface countries to the buffet to to the food to the food service to the snacks to the salad to the service to the food to dine together single food to the food to the Thai to the vegetarian food to dessert to the group to catering to the tea party to the party to the business to the wedding banquet to ship river cruise to the river to take out lunch take out lunch box lunch box lunch box take-away food lunch box lunch box package Christmas party to the Christmas party food Christmas to the Christmas food Christmas package to Christmas to the Christmas 2012 Christmas to the package\r\n ', '1354421604_Zbwq074XmF.jpg', '1356781114_YzmzyEpqLi.jpg', '1356689877_wFwIaDr6w1.jpg', 15);

-- --------------------------------------------------------

--
-- 表的结构 `savor_carts`
--

CREATE TABLE IF NOT EXISTS `savor_carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` tinyint(3) unsigned NOT NULL,
  `user_session_id` char(32) NOT NULL,
  `product_type` enum('menu','occasion') NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `product_type` (`product_type`,`product_id`),
  KEY `user_session_id` (`user_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- 转存表中的数据 `savor_carts`
--

INSERT INTO `savor_carts` (`id`, `quantity`, `user_session_id`, `product_type`, `product_id`, `date_created`, `date_modified`) VALUES
(188, 1, '0ffce5895640de8d82cc3be587ac5a93', 'menu', 81, '2012-12-11 11:43:17', '0000-00-00 00:00:00'),
(187, 1, '039f4a3a317786793351b31548c1715f', 'menu', 49, '2012-12-10 18:17:28', '0000-00-00 00:00:00'),
(191, 1, 'fe86cc4978fc588f1b622e708a427669', 'occasion', 4, '2012-12-29 16:14:18', '0000-00-00 00:00:00'),
(192, 1, 'fe86cc4978fc588f1b622e708a427669', 'menu', 69, '2012-12-29 16:15:04', '0000-00-00 00:00:00'),
(193, 1, 'fe86cc4978fc588f1b622e708a427669', 'menu', 70, '2012-12-29 16:15:04', '0000-00-00 00:00:00'),
(174, 1, 'f5645daa14da9d927760eb114d831dc1', 'occasion', 5, '2012-12-06 19:51:40', '0000-00-00 00:00:00'),
(186, 1, '039f4a3a317786793351b31548c1715f', 'menu', 48, '2012-12-10 18:17:28', '0000-00-00 00:00:00'),
(156, 8, 'f869cbc5da0a82ea842154d9752a1037', 'occasion', 0, '2012-12-06 11:49:42', '0000-00-00 00:00:00'),
(151, 2, '82c05d285fa6c5058fa354f4d62fa8de', 'menu', 8, '2012-12-03 19:02:41', '0000-00-00 00:00:00'),
(147, 1, 'f854d9e0c78672e3eb0e85e482cded7f', 'menu', 9, '2012-12-03 09:08:51', '0000-00-00 00:00:00'),
(115, 1, '01168408b3e9c7d03c37a4a8fec8378f', 'menu', 38, '2012-12-01 20:52:44', '0000-00-00 00:00:00'),
(114, 1, '01168408b3e9c7d03c37a4a8fec8378f', 'menu', 33, '2012-12-01 20:52:44', '0000-00-00 00:00:00'),
(113, 1, '01168408b3e9c7d03c37a4a8fec8378f', 'menu', 31, '2012-12-01 20:52:44', '0000-00-00 00:00:00'),
(112, 1, '01168408b3e9c7d03c37a4a8fec8378f', 'menu', 30, '2012-12-01 20:52:44', '0000-00-00 00:00:00'),
(111, 1, '01168408b3e9c7d03c37a4a8fec8378f', 'menu', 28, '2012-12-01 20:52:44', '0000-00-00 00:00:00'),
(63, 1, 'f3f4f5af6cd445b96e75ed4b20d9290b', 'occasion', 6, '2012-11-30 02:56:59', '0000-00-00 00:00:00'),
(62, 1, '2168f3f1db0acf9da6cd627fdd012389', 'occasion', 7, '2012-11-29 18:41:22', '0000-00-00 00:00:00'),
(61, 2, '945839115d671add9a1e6d29828b6b2a', 'menu', 65, '2012-11-29 11:56:09', '0000-00-00 00:00:00'),
(60, 2, '945839115d671add9a1e6d29828b6b2a', 'menu', 28, '2012-11-29 11:56:00', '0000-00-00 00:00:00'),
(59, 12, '51d6c14522d8d0bec098994414c0a112', 'menu', 49, '2012-11-29 11:53:04', '0000-00-00 00:00:00'),
(58, 1, 'e0613c0485f29767552675aa985b9b4a', 'menu', 44, '2012-11-29 11:22:20', '0000-00-00 00:00:00'),
(57, 1, 'e0613c0485f29767552675aa985b9b4a', 'menu', 8, '2012-11-29 11:21:03', '0000-00-00 00:00:00'),
(55, 1, '611e2682aab8c88573e7140ff2bf34b7', 'menu', 81, '2012-11-28 17:15:44', '0000-00-00 00:00:00'),
(54, 1, '611e2682aab8c88573e7140ff2bf34b7', 'menu', 80, '2012-11-28 17:15:44', '0000-00-00 00:00:00'),
(53, 1, '611e2682aab8c88573e7140ff2bf34b7', 'menu', 79, '2012-11-28 17:15:44', '0000-00-00 00:00:00'),
(154, 8, 'f869cbc5da0a82ea842154d9752a1037', 'occasion', 0, '2012-12-06 11:41:30', '0000-00-00 00:00:00'),
(52, 1, '611e2682aab8c88573e7140ff2bf34b7', 'menu', 77, '2012-11-28 17:15:44', '0000-00-00 00:00:00'),
(189, 3, '381425e259f8b45ea6e943dd88239b0f', 'menu', 50, '2012-12-22 14:37:16', '0000-00-00 00:00:00'),
(194, 3, '798ea2105a903ae8dedb1e2c33e9c414', 'menu', 89, '2013-01-02 07:08:33', '0000-00-00 00:00:00'),
(195, 20, '6108600374acc6b1c907f51788157e06', 'occasion', 4, '2013-01-02 16:38:15', '0000-00-00 00:00:00'),
(196, 3, '83ce319793556bbc5290f5285d52559e', 'menu', 24, '2013-01-02 19:18:35', '0000-00-00 00:00:00'),
(197, 1, '45d17b11901c6b4acc1a94fa7843c898', 'menu', 82, '2013-01-03 16:09:17', '0000-00-00 00:00:00'),
(198, 1, '45d17b11901c6b4acc1a94fa7843c898', 'menu', 87, '2013-01-03 16:09:17', '0000-00-00 00:00:00'),
(199, 1, '45d17b11901c6b4acc1a94fa7843c898', 'menu', 89, '2013-01-03 16:09:17', '0000-00-00 00:00:00'),
(200, 1, '45d17b11901c6b4acc1a94fa7843c898', 'menu', 92, '2013-01-03 16:09:17', '0000-00-00 00:00:00'),
(201, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 8, '2013-01-04 09:06:45', '0000-00-00 00:00:00'),
(202, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 9, '2013-01-04 09:06:45', '0000-00-00 00:00:00'),
(203, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 10, '2013-01-04 09:06:46', '0000-00-00 00:00:00'),
(204, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 12, '2013-01-04 09:06:46', '0000-00-00 00:00:00'),
(205, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 65, '2013-01-04 09:07:11', '0000-00-00 00:00:00'),
(206, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 66, '2013-01-04 09:07:11', '0000-00-00 00:00:00'),
(207, 1, '230b15e3ee5968f42c3a05f2031d363b', 'menu', 67, '2013-01-04 09:07:11', '0000-00-00 00:00:00'),
(208, 2, 'b085ec4c255bad745d93b594d2546244', 'menu', 8, '2013-01-05 05:55:49', '0000-00-00 00:00:00'),
(209, 2, 'b085ec4c255bad745d93b594d2546244', 'menu', 29, '2013-01-05 05:56:02', '0000-00-00 00:00:00'),
(210, 2, 'b085ec4c255bad745d93b594d2546244', 'menu', 31, '2013-01-05 05:56:02', '0000-00-00 00:00:00'),
(211, 1, 'c9d448edd6215155cfe92b962023d5b1', 'menu', 65, '2013-01-25 11:03:19', '0000-00-00 00:00:00'),
(214, 1, '0c6e81f0eab510f2a8cfc766b37ba523', 'menu', 40, '2013-02-07 16:17:23', '0000-00-00 00:00:00'),
(215, 1, 'adb3afe7ac83f2298ec0f859a56be7bb', 'occasion', 5, '2013-02-15 08:32:04', '0000-00-00 00:00:00'),
(239, 3, '6f920ddce495ef9d48cdbd13e4f4b991', 'menu', 42, '2013-03-27 10:13:51', '2013-03-27 03:14:17'),
(238, 1, '2063720fdfe5d4d68139ff1cea9c3bce', 'occasion', 5, '2013-03-22 05:18:31', '0000-00-00 00:00:00'),
(240, 2, '6f920ddce495ef9d48cdbd13e4f4b991', 'menu', 40, '2013-03-27 10:14:05', '2013-03-27 03:14:17'),
(241, 1, '6f920ddce495ef9d48cdbd13e4f4b991', 'menu', 31, '2013-03-27 10:14:17', '0000-00-00 00:00:00'),
(242, 1, '473f3223bb31a32446d9079e8be489e1', 'menu', 36, '2013-04-01 04:45:21', '0000-00-00 00:00:00'),
(250, 1, 'f3572b02ce659c82751d0dfcc21a869d', 'menu', 8, '2013-04-10 04:34:02', '0000-00-00 00:00:00'),
(251, 1, 'f3572b02ce659c82751d0dfcc21a869d', 'menu', 9, '2013-04-10 04:34:02', '0000-00-00 00:00:00'),
(252, 1, 'f3572b02ce659c82751d0dfcc21a869d', 'menu', 20, '2013-04-10 04:34:02', '0000-00-00 00:00:00'),
(253, 1, 'f3572b02ce659c82751d0dfcc21a869d', 'menu', 98, '2013-04-10 04:34:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `savor_customers`
--

CREATE TABLE IF NOT EXISTS `savor_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(80) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(60) NOT NULL,
  ` country` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` mediumint(5) unsigned zerofill NOT NULL,
  `phone` varchar(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `savor_customers`
--

INSERT INTO `savor_customers` (`id`, `email`, `password`, `first_name`, `last_name`, `address`, `city`, ` country`, `state`, `zip`, `phone`, `date_created`) VALUES
(37, 'test@test.com', 'e10adc3949ba59abbe56e057f20f883e', 'Test', 'Leung', 'Flat F, 19/F,Block 3, Ricland koeloon', 'Hong Kong', '', '', 00000, '60821313', '2012-12-01 16:00:00'),
(36, 'rick@sss.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'tt', 'yitest', 'yitest', '', '', 00000, '62578045', '2012-12-01 16:00:00'),
(35, 'shy_1206@hotmail.com', 'fc089d511c2a064110792f4fd67b71c6', 'rick', 'shi', 'rr', 'rr', '', '', 00000, '12345678', '2012-12-01 16:00:00'),
(34, 'test3@test3.com', 'e10adc3949ba59abbe56e057f20f883e', 'sam', 'test', 'hjkjh', 'kon', '', '', 00000, '55554444', '2012-12-01 16:00:00'),
(33, 'email@email.com', 'e10adc3949ba59abbe56e057f20f883e', 'Email', 'Account', 'Baidujdu', 'Kowloon', '', '', 00000, '60821313', '2012-12-01 16:00:00'),
(32, 'test1@test.com', 'e10adc3949ba59abbe56e057f20f883e', 'Sam', 'L', 'Fkjd', 'HKI', '', '', 00000, '60821313', '2012-12-01 16:00:00'),
(31, 'test@samuel.com', 'e10adc3949ba59abbe56e057f20f883e', 'samuel', 'Leung', 'FlatF', 'kowloon', '', '', 00000, '60821313', '2012-12-01 16:00:00'),
(22, 'shy_1207@hotmail.com', '81dc9bdb52d04dc20036', 'rr', 'rr', '1234', '1234', '', '', 00000, '15002128137', '2012-11-24 16:00:00'),
(23, 'v@v.vc', '48b24f673516ebd0d4b6', 'v@v.vc', 'v@v.vc', 'v@v.vc', 'v@v.vc', '', '', 00000, '15301883558', '2012-11-24 16:00:00'),
(24, 'shy_127@hotmail.com', '81dc9bdb52d04dc20036', '11', '11', '11', '11', '', '', 00000, '15002128137', '2012-11-24 16:00:00'),
(25, 'samuel@samuel.com', 'e10adc3949ba59abbe56e057f20f883e', 'Sam', 'Leung', 'r23r', 'HongKong', '', '', 00000, '13817091609', '2012-11-24 16:00:00'),
(26, 'ss@ccc.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'rick', 'rr', 'rr', '', '', 00000, '15002128137', '2012-11-26 16:00:00'),
(27, 'rick1206@gamail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'shi', 'rrr', 'rrr', '', '', 00000, '12345678', '2012-11-29 16:00:00'),
(28, 'samuel@samueleung.com', 'e10adc3949ba59abbe56e057f20f883e', 'Samuel', 'Leung', 'Flat', 'Kowloon', '', '', 00000, '60821313', '2012-11-29 16:00:00'),
(29, 'Rick.Shi@sh.leoburnett.com', 'e10adc3949ba59abbe56e057f20f883e', 'Rick', 'Shi', 'FlatF19/FBLock3RichlandGarden,KowloonBay', 'HongKongIsland', '', '', 00000, '60821313', '2012-11-30 16:00:00'),
(30, 'rick@rick.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rr', 'rr', 'rr', 'rr', '', '', 00000, '12345678', '2012-11-30 16:00:00'),
(38, 'kk@kk.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'shy', 'shanghai hongfang', 'shanghai', '', '', 00000, '62578084', '2012-12-01 16:00:00'),
(39, 'samuel@ud.com', '202cb962ac59075b964b07152d234b70', 'sam', 'leung', 'flat F, 19/F, blovk 3, richlanfd  ', 'fdg gh', '', '', 00000, '60000000', '2012-12-01 16:00:00'),
(40, 'v@v.com', '9e3669d19b675bd57058fd4664205d2a', '', '', '', '', '', '', 00000, '55555555', '2012-12-02 16:00:00'),
(41, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'rr', '', '', '', 00000, '', '2012-12-02 16:00:00'),
(42, 'rr@rr.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'rick', 'rick', 'rick', '', '', 00000, '12345678', '2012-12-03 16:00:00'),
(43, 'rick@test.com', 'e10adc3949ba59abbe56e057f20f883e', 'Test', 'Test', 'Flat F, 19/F, Block 3, Rich Land', 'Hong Kong', '', '', 00000, '68021313', '2012-12-05 16:00:00'),
(44, 'tstt@ttt.com', '81dc9bdb52d04dc20036dbd8313ed055', 'rick', 'rick', 'rick', 'rick', '', '', 00000, '12345678', '2012-12-05 16:00:00'),
(45, 'v@v.v', 'c81e728d9d4c2f636f067f89cc14862c', '', '', '', '', '', '', 00000, '22222222', '2012-12-05 16:00:00'),
(46, 'v@v.vcc', 'c81e728d9d4c2f636f067f89cc14862c', '', '', '', '', '', '', 00000, '22222222', '2012-12-05 16:00:00'),
(47, 'test@test.test', 'c81e728d9d4c2f636f067f89cc14862c', 'test', 'test', '3333', '2', '', '', 00000, '22222222', '2012-12-06 16:00:00'),
(48, 'West.oz@bigpond.com', 'bc702bbbad6680002a216727b2d24f40', 'Lai', 'Liu', 'Hong kong bowling city, KITEC, 1 Trademart Drive', 'Kowloon bay', '', '', 00000, '64752326', '2012-12-06 16:00:00'),
(49, 'c@c.cc', '3961bb34a42d37435d17d4ff4fa52339', 'c@c.cc', 'c@c.cc', 'c@c.cc', 'c@c.cc', '', '', 00000, '33333399', '2012-12-21 16:00:00'),
(50, 'shy_1205@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'rick', 'shi', 'shanghai', 'shanghai', '', '', 00000, '15002129177', '2013-03-03 16:00:00'),
(51, 'ss@ss.com', '202cb962ac59075b964b07152d234b70', 'rick', 'shi', 'shanghai', 'shanghai', '', '', 00000, '15002128199', '2013-03-03 16:00:00'),
(52, 'ss2@ss.com', '202cb962ac59075b964b07152d234b70', 'rick', 'shy', '123', '123', '', '', 00000, '12345678', '2013-03-17 16:00:00'),
(53, '22@22.com', '202cb962ac59075b964b07152d234b70', 'rr', 'rr', '11', '11', '', '', 00000, '12345678', '2013-03-17 16:00:00'),
(54, 'ccck@rick.com', '202cb962ac59075b964b07152d234b70', 'rick', '123', 'rr', 'rr', '', '', 00000, '12345678', '2013-03-18 16:00:00'),
(55, '2211@hotmail.com', '202cb962ac59075b964b07152d234b70', 'EEE', 'EEE', 'qqqq', 'qqq', '', '', 00000, '12345678', '2013-03-18 16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `savor_occasions`
--

CREATE TABLE IF NOT EXISTS `savor_occasions` (
  `occasion_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(4) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` mediumint(8) NOT NULL,
  `image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `description_cn` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`occasion_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `savor_occasions`
--

INSERT INTO `savor_occasions` (`occasion_id`, `type_id`, `name`, `name_cn`, `name_en`, `price`, `quantity`, `image`, `description`, `description_cn`, `description_en`, `orderby`) VALUES
(1, 1, 'Christmas Set Menu B', '', 'Christmas Set Menu B', 1888.00, 0, '', '', '', '', 20),
(2, 1, 'Christmas Set Menu A', '', 'Christmas Set Menu A', 1688.00, 0, '', '(ENTREES 2)\r\n-BROILED SQUAB ONION COMPOTE \r\n-SAUTEED FOIE GRASS COM PANCAKE\r\n-GRILLED RED SNAPPER\r\n-BACON WRAPPED TIGER PRWAN W/AVOCADO PASSION FRUIT AND CUMIN HONEY\r\n-CRISPY CRAB CAKE WITH CELERZAC REMOULADE\r\n\r\n(DESSERT)\r\n-TIRAMISU\r\n-APPLE CRUMBLE\r\n-SEIRADURA PUDDING CUP\r\n-CHOCOLATE MUSSE AGAR AGAR\r\n-FRESH FRUIT HOT CAKE\r\n-MINI FRUIT TARTIES\r\n-SOFT CHOCOLATE PUDDING \r\n-LEMON YOGURT CAKE\r\n-CRÈME BRULEE\r\n', '', '', 0),
(4, 7, 'Savor Set Menu', '廚師推介B套餐', 'Chef''s Recommendation Set B', 168.00, 0, '', '<p style="text-align: center;">\r\n	<strong style="text-align: center;"><em>HKD 600.00 per person</em></strong></p>\r\n<p style="text-align: center;">\r\n	&nbsp;</p>\r\n<div style="text-align: center;">\r\n	<strong>Salad</strong></div>\r\n<div style="text-align: center;">\r\n	Salad Nicoise</div>\r\n<div style="text-align: center;">\r\n	Mozzarella and tomato salad</div>\r\n<div style="text-align: center;">\r\n	Roasted honey glazed pumpkin salad</div>\r\n<div style="text-align: center;">\r\n	French smoked duck breast salad with raisin, walnut vinaigrette</div>\r\n<div style="text-align: center;">\r\n	Fresh garden leaves</div>\r\n<div style="text-align: center;">\r\n	Trio bell peppers, Mesulun, Romaine lettuce</div>\r\n<div style="text-align: center;">\r\n	Beetroots, Sweet corn, Cherry tomato</div>\r\n<div style="text-align: center;">\r\n	Dressing &amp; Condiments</div>\r\n<div style="text-align: center;">\r\n	Dried raisin, Crispy bacon, Bread crouton, assorted nuts</div>\r\n<div style="text-align: center;">\r\n	Parmesan cheese, Caesar dressing, 1000 island dressing</div>\r\n<div style="text-align: center;">\r\n	Italian dressing, French dressing, Balsamico</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Appetizer</strong></div>\r\n<div style="text-align: center;">\r\n	Parma ham with honey melon &amp; fig</div>\r\n<div style="text-align: center;">\r\n	Smoked salmon with capers &amp; onion or with dill herbs</div>\r\n<div style="text-align: center;">\r\n	Assorted Italian cold cut platter with gherkin</div>\r\n<div style="text-align: center;">\r\n	Assorted cheese platter</div>\r\n<div style="text-align: center;">\r\n	Swiss gruyere, Emmenthal, Brie cheese, Cheddar</div>\r\n<div style="text-align: center;">\r\n	Served with Crackers, Vegetable crudit&eacute;s, Grapes</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Soup</strong></div>\r\n<div style="text-align: center;">\r\n	New England clam chower</div>\r\n<div style="text-align: center;">\r\n	Or</div>\r\n<div style="text-align: center;">\r\n	French onion soup</div>\r\n<div style="text-align: center;">\r\n	Or</div>\r\n<div style="text-align: center;">\r\n	Minestra Di Pomodoro</div>\r\n<div style="text-align: center;">\r\n	(Assorted bred served with butter or margarine)</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Seafood counter on ice</strong></div>\r\n<div style="text-align: center;">\r\n	Green whelk, Blue mussel, Prawns cooked, Snow crab leg, Lobster slipper</div>\r\n<div style="text-align: center;">\r\n	Served with shallot vinaigrette, Cocktail sauce &amp; lemon</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Carving</strong></div>\r\n<div style="text-align: center;">\r\n	Roasted bone smoked ham with whisky sauce</div>\r\n<div style="text-align: center;">\r\n	Or</div>\r\n<div style="text-align: center;">\r\n	Rock salt encrusted O.P Rib of beef with herbs</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Hot dishes</strong></div>\r\n<div style="text-align: center;">\r\n	Saute mixed vegetable with garlic &amp; herbs</div>\r\n<div style="text-align: center;">\r\n	Roasted new potatoes with cajun &amp; onion</div>\r\n<div style="text-align: center;">\r\n	Saffron rice with butter &amp; raisin</div>\r\n<div style="text-align: center;">\r\n	Pasta with seafood tomato concasse sauce</div>\r\n<div style="text-align: center;">\r\n	Served with linguine, angle hair, spagatti</div>\r\n<div style="text-align: center;">\r\n	Penne, squid ink fettuccine</div>\r\n<div style="text-align: center;">\r\n	Braised chicken in wild mushroom sauce</div>\r\n<div style="text-align: center;">\r\n	Rack of lamb with rosemany sauce</div>\r\n<div style="text-align: center;">\r\n	Seafood skewer with Miso sauce</div>\r\n<div style="text-align: center;">\r\n	Grilled Cod Fish with Black Truffle sauce</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Dessert</strong></div>\r\n<div style="text-align: center;">\r\n	Tiramisu ,&nbsp;</div>\r\n<div style="text-align: center;">\r\n	Black Forest Cake,</div>\r\n<div style="text-align: center;">\r\n	&nbsp;Fresh Cream cake ,</div>\r\n<div style="text-align: center;">\r\n	Chocolate Brownies ,</div>\r\n<div style="text-align: center;">\r\n	French Macaroon ,</div>\r\n<div style="text-align: center;">\r\n	American Cheese Cake</div>\r\n<div style="text-align: center;">\r\n	Mango Mosses Cake,</div>\r\n<div style="text-align: center;">\r\n	Seasonal Fresh Tropical Fruit Platter</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong style="text-align: center;"><em>HKD 600.00 per person</em></strong></div>\r\n', '<div style="text-align: center;">\r\n	<em><strong>到會每位168起 (10-15位起)</strong></em></div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>沙律</strong></div>\r\n<div style="text-align: center;">\r\n	凱撒沙律</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>頭盤</strong></div>\r\n<div style="text-align: center;">\r\n	<div>\r\n		忌廉芝士煙三文魚多士</div>\r\n	<div>\r\n		焗海鮮酥盒</div>\r\n	<div>\r\n		芝士煙肉焗薯皮</div>\r\n	<div>\r\n		芝士焗迷你漢堡扒</div>\r\n</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>主菜</strong></div>\r\n<div style="text-align: center;">\r\n	<div>\r\n		燴牛尾</div>\r\n	<div>\r\n		香檳蘋果烤豬柳</div>\r\n	<div>\r\n		白酒檸檬烤雞翼</div>\r\n	<div>\r\n		意式千層麪</div>\r\n</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>甜品</strong></div>\r\n<div style="text-align: center;">\r\n	法式焦糖燉旦</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<em><strong>到會每位168起 (10-15位起)</strong></em></div>\r\n<p>\r\n	&nbsp;</p>\r\n', '<p style="text-align: center;">\r\n	<em><strong>Catering for Each $168 up (10-15 Person up)</strong></em></p>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Salad</strong></div>\r\n<div style="text-align: center;">\r\n	Caesar Salad</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Appetizer</strong></div>\r\n<div style="text-align: center;">\r\n	<div>\r\n		Cream Cheese and Smoked Salmon Toast&nbsp;</div>\r\n	<div>\r\n		Mixed Seafood &nbsp;A La Vote&nbsp;</div>\r\n	<div>\r\n		Baked Potato Skin with Cheese and Bacon</div>\r\n	<div>\r\n		Baked Mini Burger Steak with Cheese</div>\r\n</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Main dishes</strong></div>\r\n<div style="text-align: center;">\r\n	<div>\r\n		Braised XO-tail&nbsp;</div>\r\n	<div>\r\n		Gilled Pork Loin with Apple and Champagne　</div>\r\n	<div>\r\n		Fried Chicken Wings with Lemon and white wine　</div>\r\n	<div>\r\n		Lasagna&nbsp;</div>\r\n</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Dessert</strong></div>\r\n<div style="text-align: center;">\r\n	Cr&egrave;me Bulee&nbsp;</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<em><strong>Catering for Each $168 up (10-15 Person up)&nbsp;</strong></em></div>\r\n', 5),
(5, 6, 'Christmas Set Menu', '廚師推介套餐A', 'Chef''s Recommendation Set A', 198.00, 0, '', '<p style="text-align: center;">\r\n	<strong><em>HKD 400.00 per person</em></strong></p>\r\n<div style="text-align: center;">\r\n	<strong>Salad</strong></div>\r\n<div style="text-align: center;">\r\n	Caribbean style turkey salad</div>\r\n<div style="text-align: center;">\r\n	Mozzarella and tomato salad</div>\r\n<div style="text-align: center;">\r\n	Marinated green mussels with tarragon herbs</div>\r\n<div style="text-align: center;">\r\n	French smoked duck breast salad with raisin, walnut vinaigrette</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Fresh garden leaves</strong></div>\r\n<div style="text-align: center;">\r\n	Lettuces, Baby spinach, Belgium endives, Rocket</div>\r\n<div style="text-align: center;">\r\n	Red lollorosso lettuce, Frisee, Beetroots</div>\r\n<div style="text-align: center;">\r\n	Red chicory, Sweet corn, Cherry tomato</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Dressing &amp; Condiments</strong></div>\r\n<div style="text-align: center;">\r\n	Dried raisin, Crispy bacon, Bread crouton, assorted nuts</div>\r\n<div style="text-align: center;">\r\n	Parmesan cheese, Caesar dressing, 1000 island dressing</div>\r\n<div style="text-align: center;">\r\n	Italian dressing, French dressing, Balsamico</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Appetizer</strong></div>\r\n<div style="text-align: center;">\r\n	Parma ham with honey melon and cantaloupe melon</div>\r\n<div style="text-align: center;">\r\n	Smoked salmon with capers &amp; onion</div>\r\n<div style="text-align: center;">\r\n	Charcutiere selection platter</div>\r\n<div style="text-align: center;">\r\n	Dried chorizo sausages, Black forest ham,</div>\r\n<div style="text-align: center;">\r\n	Mushroom sausages, Beef pastrami, Italian salami Milano</div>\r\n<div style="text-align: center;">\r\n	Assorted cheese platter</div>\r\n<div style="text-align: center;">\r\n	Swiss gruyere, Emmenthal, Brie cheese, Cheddar</div>\r\n<div style="text-align: center;">\r\n	Served with Crackers, Vegetable crudit&eacute;s, Grapes</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Seafood counter on ice</strong></div>\r\n<div style="text-align: center;">\r\n	Green whelk, Blue mussel, Prawns cooked</div>\r\n<div style="text-align: center;">\r\n	Snow crab leg, Lobster slipper</div>\r\n<div style="text-align: center;">\r\n	Served with shallot vinaigrette, Cocktail sauce &amp; lemon</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Soup</strong></div>\r\n<div style="text-align: center;">\r\n	Pumpkin &amp; chestnut soup with garlic croutons</div>\r\n<div style="text-align: center;">\r\n	(Assorted bread served with butter or margarine)</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Carving</strong></div>\r\n<div style="text-align: center;">\r\n	Roasted Christmas turkey with cranberry sauce</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Hot dishes</strong></div>\r\n<div style="text-align: center;">\r\n	Festival vegetable buttered Brussels sprout &amp; caramelized chestnuts</div>\r\n<div style="text-align: center;">\r\n	Gratinated potatoes with swiss cheese, black truffle</div>\r\n<div style="text-align: center;">\r\n	Oven roasted rack of lamb with thyme jus</div>\r\n<div style="text-align: center;">\r\n	Grill halibut fillet with parsley butter sauce</div>\r\n<div style="text-align: center;">\r\n	Braised OX-tail with red wine vegetable sauce</div>\r\n<div style="text-align: center;">\r\n	Linguine pasta with seafood tomato concasse sauce</div>\r\n<div style="text-align: center;">\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong>Dessert</strong></div>\r\n<div style="text-align: center;">\r\n	Traditional Christmas stolen</div>\r\n<div style="text-align: center;">\r\n	Assorted Christmas cookies</div>\r\n<div style="text-align: center;">\r\n	Gingerbread man</div>\r\n<div style="text-align: center;">\r\n	American cheese cake</div>\r\n<div style="text-align: center;">\r\n	Tiramisu</div>\r\n<div style="text-align: center;">\r\n	Chocolate brownies</div>\r\n<div style="text-align: center;">\r\n	Macaroon</div>\r\n<div style="text-align: center;">\r\n	Chestnut cream cake</div>\r\n<div style="text-align: center;">\r\n	Fresh fruit platter with seasonal berries</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style="text-align: center;">\r\n	<strong style="text-align: center;"><em>HKD 400.00 per person</em></strong></div>\r\n', '<div style="text-align: center;">\r\n	<div>\r\n		<em><strong>到會每位$198 (15位起)</strong></em></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>沙拉</strong></div>\r\n	<div>\r\n		<div>\r\n			田園沙律配千島汁</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>頭盤</strong></div>\r\n	<div>\r\n		<div>\r\n			波菜芝士焗青口</div>\r\n		<div>\r\n			煙肉焗讓薯皮</div>\r\n		<div>\r\n			田螺酥盒</div>\r\n		<div>\r\n			日式壽司和紫菜卷</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>主菜</strong></div>\r\n	<div>\r\n		<div>\r\n			煙肉波菜雞卷</div>\r\n		<div>\r\n			燒安格斯西冷<span class="Apple-tab-span" style="white-space:pre"> </span></div>\r\n		<div>\r\n			烤香草羊鞍</div>\r\n		<div>\r\n			香煎盲鰽魚柳配香草忌廉汁</div>\r\n		<div>\r\n			菠菜疍批<span class="Apple-tab-span" style="white-space:pre"> </span> <span class="Apple-tab-span" style="white-space:pre"> </span></div>\r\n		<div>\r\n			哥倫布豬柳&nbsp;</div>\r\n		<div>\r\n			或&nbsp;</div>\r\n		<div>\r\n			香橙鴨胸&nbsp;</div>\r\n		<div>\r\n			意式千層麪&nbsp;</div>\r\n		<div>\r\n			或&nbsp;</div>\r\n		<div>\r\n			香草海鮮意大利飯</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>甜品</strong></div>\r\n	<div>\r\n		<div>\r\n			特濃朱古力蛋糕</div>\r\n		<div>\r\n			或</div>\r\n		<div>\r\n			法式焦糖燉旦</div>\r\n	</div>\r\n</div>\r\n<p style="text-align: center;">\r\n	<em><strong>到會每位$198 (15位起)</strong></em></p>\r\n', '<div style="text-align: center;">\r\n	<p>\r\n		<em><strong>Catering for Each $198 Up (15 Person up)</strong></em></p>\r\n	<div>\r\n		<strong>Salad</strong></div>\r\n	<div>\r\n		Green Salad with Thousand Island Dressing</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>Appetizers</strong></div>\r\n	<div>\r\n		<div>\r\n			Baked Mussels with Spinach and Cheese</div>\r\n		<div>\r\n			Baked Potato Skin with Bacon</div>\r\n		<div>\r\n			Escargots A La Vote</div>\r\n		<div>\r\n			Japanese sushi and nori rolls</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>Main Dishes</strong></div>\r\n	<div>\r\n		<div>\r\n			French Roll Chicken</div>\r\n		<div>\r\n			Grilled Angus Sirloin</div>\r\n		<div>\r\n			Grilled Lamb Rack with Herbs</div>\r\n		<div>\r\n			Fried Barramundi with Herbs Cream Sauce</div>\r\n		<div>\r\n			Danjia batch of spinach</div>\r\n		<div>\r\n			Gordan Bleu Pork Loin</div>\r\n		<div>\r\n			Or</div>\r\n		<div>\r\n			Fried Duck Breast with Orange</div>\r\n		<div>\r\n			Lasagna</div>\r\n		<div>\r\n			Or</div>\r\n		<div>\r\n			Seafood Risotto</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>Dessert</strong></div>\r\n	<div>\r\n		<div>\r\n			Espresso Chocolate Cake</div>\r\n		<div>\r\n			Or</div>\r\n		<div>\r\n			Cr&egrave;me Bulee</div>\r\n	</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<em><strong>Catering for Each $198 Up (15 Person up)</strong></em></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 5);

-- --------------------------------------------------------

--
-- 表的结构 `savor_occasions_categories`
--

CREATE TABLE IF NOT EXISTS `savor_occasions_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `thumbnail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `description_cn` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `savor_occasions_categories`
--

INSERT INTO `savor_occasions_categories` (`category_id`, `name`, `name_cn`, `name_en`, `thumbnail`, `photo`, `price`, `description`, `description_cn`, `description_en`, `orderby`) VALUES
(6, 'Christmas Set Menu', '廚師推介套餐A', 'Chef''s Recommendation Set A', '', '1357879217_qtRNVI4dDk.png', 0.00, 'X''mas is around the corner! For this festive season, we have prepared goodies that  accompany the joyful ambience with many surprises!', '我們已經準備好佳餚，隨著歡快的氣氛，有許多的驚喜！', 'We have prepared goodies that  accompany the joyful ambience with many surprises!', 10),
(7, 'Savor Set Menu', '廚師推介套餐B', 'Chef''s Recommendation Set B', '', '1354426341_PwJsuKwQr7.png', 0.00, 'With a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', '有了一個堅定的信念，客戶都是獨一無二的，我們的準備度身定做的菜單來迎接節日。', 'With a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', 20);

-- --------------------------------------------------------

--
-- 表的结构 `savor_orders`
--

CREATE TABLE IF NOT EXISTS `savor_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `total` decimal(10,2) unsigned DEFAULT NULL,
  `shipping` decimal(5,2) unsigned NOT NULL,
  `credit_card_number` mediumint(4) unsigned NOT NULL,
  `send_date` date NOT NULL,
  `order_address` varchar(200) NOT NULL,
  `order_remark` varchar(200) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_date` (`order_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `savor_orders`
--

INSERT INTO `savor_orders` (`id`, `customer_id`, `total`, `shipping`, `credit_card_number`, `send_date`, `order_address`, `order_remark`, `order_date`) VALUES
(44, 55, 880.00, 0.00, 0, '0000-00-00', '', '', '2013-03-19 00:45:49'),
(43, 54, 198.00, 0.00, 0, '2013-04-14', 'rr', '321321321', '2013-03-19 00:11:13'),
(37, 48, 776.00, 0.00, 0, '2012-12-08', 'Hong kong bowling city, KITEC, 1 Trademart Drive', 'By 11:30\nVIP room', '2012-12-07 10:31:07'),
(42, 54, 198.00, 0.00, 0, '0000-00-00', '', '', '2013-03-19 00:07:37'),
(45, 51, 1760.00, 0.00, 0, '0000-00-00', '', '', '2013-03-19 00:49:23'),
(46, 51, 0.00, 0.00, 0, '0000-00-00', '', '', '2013-03-19 00:49:37'),
(47, 51, 880.00, 0.00, 0, '2013-03-19', 'shanghai', '1646', '2013-03-19 01:13:34'),
(48, 51, 880.00, 0.00, 0, '0000-00-00', '', '', '2013-03-19 02:42:15'),
(49, 0, 0.00, 0.00, 0, '0000-00-00', '', '', '2013-03-23 22:06:14'),
(50, 35, 1590.00, 0.00, 0, '0000-00-00', '', '', '2013-04-06 19:54:09');

-- --------------------------------------------------------

--
-- 表的结构 `savor_order_contents`
--

CREATE TABLE IF NOT EXISTS `savor_order_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_type` enum('menu','occasion') DEFAULT NULL,
  `product_id` mediumint(8) unsigned NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL,
  `price_per` decimal(10,2) unsigned NOT NULL,
  `ship_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ship_date` (`ship_date`),
  KEY `product_type` (`product_type`,`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- 转存表中的数据 `savor_order_contents`
--

INSERT INTO `savor_order_contents` (`id`, `order_id`, `product_type`, `product_id`, `quantity`, `price_per`, `ship_date`) VALUES
(54, 29, 'menu', 42, 1, 1000.00, NULL),
(53, 29, 'menu', 43, 1, 1000.00, NULL),
(52, 29, 'occasion', 6, 3, 500.00, NULL),
(51, 28, 'occasion', 5, 2, 400.00, NULL),
(50, 27, 'menu', 44, 1, 1000.00, NULL),
(49, 27, 'menu', 45, 1, 1000.00, NULL),
(48, 27, 'menu', 46, 1, 1000.00, NULL),
(47, 27, 'menu', 47, 1, 1000.00, NULL),
(46, 25, 'occasion', 5, 1, 400.00, NULL),
(45, 24, 'menu', 44, 1, 1000.00, NULL),
(44, 24, 'menu', 45, 1, 1000.00, NULL),
(43, 24, 'menu', 46, 1, 1000.00, NULL),
(42, 23, 'menu', 44, 1, 1000.00, NULL),
(41, 23, 'menu', 45, 1, 1000.00, NULL),
(40, 23, 'menu', 46, 1, 1000.00, NULL),
(39, 21, 'occasion', 5, 1, 400.00, NULL),
(38, 20, 'menu', 89, 10, 1000.00, NULL),
(37, 19, 'menu', 8, 1, 1000.00, NULL),
(36, 19, 'menu', 76, 1, 1000.00, NULL),
(35, 19, 'menu', 11, 1, 1000.00, NULL),
(34, 19, 'menu', 14, 1, 1000.00, NULL),
(33, 19, 'menu', 16, 1, 1000.00, NULL),
(32, 18, 'occasion', 6, 10, 500.00, NULL),
(24, 16, 'menu', 67, 1, 999.99, NULL),
(25, 16, 'menu', 66, 1, 999.99, NULL),
(26, 16, 'menu', 65, 1, 999.99, NULL),
(27, 17, 'menu', 48, 1, 1000.00, NULL),
(28, 17, 'menu', 47, 1, 1000.00, NULL),
(29, 17, 'menu', 46, 1, 1000.00, NULL),
(30, 17, 'menu', 45, 1, 1000.00, NULL),
(31, 17, 'menu', 44, 1, 1000.00, NULL),
(55, 30, 'occasion', 6, 2, 500.00, NULL),
(56, 31, 'menu', 49, 1, 1000.00, NULL),
(57, 31, 'menu', 46, 1, 1000.00, NULL),
(58, 31, 'menu', 44, 1, 1000.00, NULL),
(59, 32, 'menu', 8, 1, 880.00, NULL),
(60, 33, 'menu', 45, 1, 680.00, NULL),
(61, 33, 'menu', 44, 1, 880.00, NULL),
(62, 34, 'occasion', 6, 10, 500.00, NULL),
(63, 34, 'menu', 68, 4, 388.00, NULL),
(64, 35, 'occasion', 4, 2, 600.00, NULL),
(65, 36, 'menu', 64, 6, 480.00, NULL),
(66, 37, 'menu', 66, 1, 388.00, NULL),
(67, 37, 'menu', 69, 1, 388.00, NULL),
(68, 38, 'menu', 89, 1, 480.00, NULL),
(69, 38, 'menu', 90, 1, 480.00, NULL),
(70, 39, 'menu', 82, 1, 480.00, NULL),
(71, 40, 'menu', 82, 1, 480.00, NULL),
(72, 41, 'occasion', 5, 1, 198.00, NULL),
(73, 42, 'occasion', 5, 1, 198.00, NULL),
(74, 43, 'occasion', 5, 1, 198.00, NULL),
(75, 44, 'menu', 8, 1, 880.00, NULL),
(76, 45, 'menu', 8, 2, 880.00, NULL),
(77, 47, 'menu', 44, 1, 880.00, NULL),
(78, 48, 'menu', 44, 1, 880.00, NULL),
(79, 50, 'menu', 34, 1, 330.00, NULL),
(80, 50, 'menu', 35, 1, 410.00, NULL),
(81, 50, 'menu', 28, 1, 850.00, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `savor_products`
--

CREATE TABLE IF NOT EXISTS `savor_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(4) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `description_cn` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `savor_products`
--

INSERT INTO `savor_products` (`product_id`, `type_id`, `name`, `name_cn`, `name_en`, `price`, `image`, `description`, `description_cn`, `description_en`, `orderby`) VALUES
(9, 1, 'Marinated Meat Combination (Spicy Roast Beef, Duck', '中式小食拼盤 (五香牛肉，豬手片，鴨腎片)', 'Marinated Meat Combination (Spicy Roast Beef, Duck', 880.00, '', 'Marinated Meat Combination \r\n(Spicy Roast Beef, Duck Kidney, Spicy Pig Feet) ', '中式小食拼盤 (五香牛肉，豬手片，鴨腎片)\r\n', 'Marinated Meat Combination \r\n(Spicy Roast Beef, Duck Kidney, Spicy Pig Feet) ', 20),
(8, 1, 'Smoked Salmon & Cold Cut', '煙三文魚拼凍肉盤', 'Smoked Salmon & Cold Cut', 880.00, '', 'Smoked Salmon & Cold Cut (3 Lbs)', '煙三文魚拼凍肉盤', 'Smoked Salmon & Cold Cut (3 Lbs)', 10),
(10, 1, 'Cold Conch & Cold Prawn ', '凍海螺拼凍海蝦', 'Cold Conch & Cold Prawn ', 800.00, '', 'Cold Conch & Cold Prawn ', '凍海螺拼凍海蝦', 'Cold Conch & Cold Prawn ', 30),
(11, 1, 'Jamon Serrano with Honeydew', '頂級西班牙火腿配蜜瓜', 'Jamon Serrano with Honeydew', 650.00, '', 'Jamon Serrano with Honeydew (3 Lbs)', '頂級西班牙火腿配蜜瓜', 'Jamon Serrano with Honeydew (3 Lbs)', 40),
(12, 1, 'Norwegian Smoked Salmon', '原條挪威煙三文魚', 'Norwegian Smoked Salmon', 2000.00, '', 'Norwegian Smoked Salmon', '原條挪威煙三文魚', 'Norwegian Smoked Salmon', 50),
(13, 1, 'Spain Bellota lbericos Ham', '頂級西班牙黑豬火腿片', 'Spain Bellota lbericos Ham', 680.00, '', 'Spain Bellota lbericos Ham', '頂級西班牙黑豬火腿片', 'Spain Bellota lbericos Ham', 60),
(14, 1, 'Salmon Sashimi', '三文魚刺身', 'Salmon Sashimi', 880.00, '', 'Salmon Sashimi (3 Lbs)', '三文魚刺身', 'Salmon Sashimi (3 Lbs)', 70),
(15, 1, 'Vietnam Style Shrimp Roll with Rice Paper', '越式蝦米紙卷', 'Vietnam Style Shrimp Roll with Rice Paper', 600.00, '', 'Vietnam Style Shrimp Roll with Rice Paper', '越式蝦米紙卷', 'Vietnam Style Shrimp Roll with Rice Paper', 80),
(16, 1, 'Seafood & Mango Boat', '芒果海鮮船', 'Seafood & Mango Boat', 680.00, '', 'Seafood & Mango Boat', '芒果海鮮船', 'Seafood & Mango Boat', 90),
(17, 1, 'Sushi & Maki-zushi', '壽司和紫卷', 'Sushi & Maki-zushi', 680.00, '', 'Sushi & Maki-zushi', '壽司和紫卷', 'Sushi & Maki-zushi', 100),
(18, 1, 'Spinach Egg Pie', '西式莧菜蛋批', 'Spinach Egg Pie', 620.00, '', 'Spinach Egg Pie', '西式莧菜蛋批', 'Spinach Egg Pie', 110),
(19, 1, 'Sashimi Combination', '魚生拼盤', 'Sashimi Combination', 980.00, '', 'Sashimi Combination', '魚生拼盤', 'Sashimi Combination', 120),
(20, 1, 'Drunken Chicken', '醉雞', 'Drunken Chicken', 800.00, '', 'Drunken Chicken', '醉雞', 'Drunken Chicken', 127),
(21, 1, 'Asparagus wrapped in Pama Ham', '意大利火腿露筍卷', 'Asparagus wrapped in Pama Ham', 388.00, '', 'Asparagus wrapped in Pama Ham', '意大利火腿露筍卷', 'Asparagus wrapped in Pama Ham', 127),
(22, 1, 'Mushroom Puff', '香草蘑菇酥盒', 'Mushroom Puff', 380.00, '', 'Mushroom Puff', '香草蘑菇酥盒', 'Mushroom Puff', 127),
(23, 1, 'Seafood Puff with Cream Sauce', '白汁海鮮酥盒', 'Seafood Puff with Cream Sauce', 350.00, '', 'Seafood Puff with Cream Sauce', '白汁海鮮酥盒', 'Seafood Puff with Cream Sauce', 127),
(24, 1, 'Parma Ham with Honeydew', '巴馬火腿戟瓜', 'Parma Ham with Honeydew', 383.00, '', 'Parma Ham with Honeydew', '巴馬火腿戟瓜', 'Parma Ham with Honeydew', 127),
(25, 1, 'Satay', '沙嗲串燒', 'Satay', 450.00, '', 'Satay', '沙嗲串燒', 'Satay', 127),
(26, 1, 'Shredded Chicken & Jellyfish with Sesame', '海蜇芝麻雞', 'Shredded Chicken & Jellyfish with Sesame', 450.00, '', 'Shredded Chicken & Jellyfish with Sesame', '海蜇芝麻雞', 'Shredded Chicken & Jellyfish with Sesame', 127),
(27, 1, 'New Zealand Oyster (per piece)', '紐西蘭生蠔（每隻）', 'New Zealand Oyster (per piece)', 38.00, '', 'Oyster New Zealand', '紐西蘭生蠔（每隻）', 'Oyster New Zealand', 127),
(28, 2, 'Mango & Shrimp Salad', '芒果大蝦沙律', 'Mango & Shrimp Salad', 850.00, '', 'Mango & Shrimp Salad', '芒果大蝦沙律', 'Mango & Shrimp Salad', 10),
(29, 2, 'Ham, Sweet Corn & Pineapple Salad ', '栗米菠蘿火腿沙律', 'Ham, Sweet Corn & Pineapple Salad ', 380.00, '', 'Ham, Sweet Corn & Pineapple Salad ', '栗米菠蘿火腿沙律', 'Ham, Sweet Corn & Pineapple Salad ', 20),
(30, 2, 'Waldorf Salad', '華都夫沙律', 'Waldorf Salad', 380.00, '', 'Waldorf Salad', '華都夫沙律', 'Waldorf Salad', 30),
(31, 2, 'Caesar Salad', '凱撒沙律', 'Caesar Salad', 330.00, '', 'Caesar Salad', '凱撒沙律', 'Caesar Salad', 40),
(32, 2, 'Curry Chicken & Mixed Fruit Salad', '鮮果咖喱雞沙律', 'Curry Chicken & Mixed Fruit Salad', 330.00, '', 'Curry Chicken & Mixed Fruit Salad', '鮮果咖喱雞沙律', 'Curry Chicken & Mixed Fruit Salad', 50),
(33, 2, 'Scallop & Mango Salad', '芒果帶子沙律', 'Scallop & Mango Salad', 350.00, '', 'Scallop & Mango Salad', '芒果帶子沙律', 'Scallop & Mango Salad', 60),
(34, 2, 'Smoked Chicken Breast & Peach Salad', '煙雞蜜桃沙律', 'Smoked Chicken Breast & Peach Salad', 330.00, '', 'Smoked Chicken Breast & Peach Salad', '煙雞蜜桃沙律', 'Smoked Chicken Breast & Peach Salad', 70),
(35, 2, 'Lobster & Mixed Fruit Salad', '龍蝦鮮什果沙律', 'Lobster & Mixed Fruit Salad', 410.00, '', 'Lobster & Mixed Fruit Salad', '龍蝦鮮什果沙律', 'Lobster & Mixed Fruit Salad', 80),
(36, 2, 'Tuna Fish & Potato Salad', '吞拿魚薯仔沙律', 'Tuna Fish & Potato Salad', 330.00, '', 'Tuna Fish & Potato Salad', '吞拿魚薯仔沙律', 'Tuna Fish & Potato Salad', 90),
(37, 2, 'Parma Ham,Grilled Pepper,Asparagus & Artichoke Sal', '鮮露筍，燒雜椒，亞枝竹，火腿意式沙律', 'Parma Ham,Grilled Pepper,Asparagus & Artichoke Sal', 350.00, '', 'Parma Ham,Grilled Pepper,Asparagus & Artichoke Salad', '鮮露筍，燒雜椒，亞枝竹，火腿意式沙律', 'Parma Ham,Grilled Pepper,Asparagus & Artichoke Salad', 100),
(38, 2, 'Seafood Salad in Japan Style', '日式海鮮沙律', 'Seafood Salad in Japan Style', 350.00, '', 'Seafood Salad in Japan Style', '日式海鮮沙律', 'Seafood Salad in Japan Style', 110),
(39, 2, 'Spicy & Sour Boneless Chicken Feet Salad', '泰式鳳爪沙律', 'Spicy & Sour Boneless Chicken Feet Salad', 330.00, '', 'Spicy & Sour Boneless Chicken Feet Salad', '泰式鳳爪沙律', 'Spicy & Sour Boneless Chicken Feet Salad', 120),
(40, 2, 'Thai Style Prawn & Shaddock Salad', '泰式金柚蝦沙律', 'Thai Style Prawn & Shaddock Salad', 350.00, '', 'Thai Style Prawn & Shaddock Salad', '泰式金柚蝦沙律', 'Thai Style Prawn & Shaddock Salad', 127),
(41, 2, 'Prawn, Avocado & Mango Salad', '牛油果芒果蝦沙律', 'Prawn, Avocado & Mango Salad', 350.00, '', 'Prawn, Avocado & Mango Salad', '牛油果芒果蝦沙律', 'Prawn, Avocado & Mango Salad', 127),
(42, 2, 'Avocado, Grapefruit & Celery Lettuce Salad', '西柚，芹菜頭，牛油果沙律', 'Avocado, Grapefruit & Celery Lettuce Salad', 280.00, '', 'Avocado, Grapefruit & Celery Lettuce Salad', '西柚，芹菜頭，牛油果沙律', 'Avocado, Grapefruit & Celery Lettuce Salad', 127),
(43, 2, 'Green Salad with Thousand Island Dressing', '西式雜菜沙律配千島汁', 'Green Salad with Thousand Island Dressing', 280.00, '', 'Green Salad with Thousand Island Dressing', '西式雜菜沙律配千島汁', 'Green Salad with Thousand Island Dressing', 127),
(44, 3, 'Pan-fried Norwegian Salmon', '扒挪威新鮮三文魚', 'Pan-fried Norwegian Salmon', 880.00, '', 'Pan-fried Norwegian Salmon', '扒挪威新鮮三文魚', 'Pan-fried Norwegian Salmon', 5),
(45, 3, 'Deep Fried Prawn with Tartar Sauce (16-18pcs)', '炸蝦配他他汁', 'Deep Fried Prawn with Tartar Sauce (16-18pcs)', 680.00, '', 'Deep Fried Prawn with Tartar Sauce (16-18pcs)', '炸蝦配他他汁', 'Deep Fried Prawn with Tartar Sauce (16-18pcs)', 10),
(46, 3, 'Baked New Zealand Mussel with Spinach ', '莧菜焗紐西蘭青口', 'Baked New Zealand Mussel with Spinach ', 680.00, '', 'Baked New Zealand Mussel with Spinach ', '莧菜焗紐西蘭青口', 'Baked New Zealand Mussel with Spinach ', 15),
(47, 3, 'Grilled Garoupa with Sherry Cream Sauce', '杏仁些厘扒可班柳', 'Grilled Garoupa with Sherry Cream Sauce', 680.00, '', 'Grilled Garoupa with Sherry Cream Sauce', '杏仁些厘扒可班柳', 'Grilled Garoupa with Sherry Cream Sauce', 20),
(48, 3, 'Baked Garoupa with Cheese', '芝士焗石斑', 'Baked Garoupa with Cheese', 680.00, '', 'Baked Garoupa with Cheese', '芝士焗石斑', 'Baked Garoupa with Cheese', 25),
(49, 3, 'Smoked Salmon, Cheese & Spinach Pastry Roll', '煙三文魚芝士菠菜酥皮卷', 'Smoked Salmon, Cheese & Spinach Pastry Roll', 880.00, '', 'Smoked Salmon, Cheese & Spinach Pastry Roll', '煙三文魚芝士菠菜酥皮卷', 'Smoked Salmon, Cheese & Spinach Pastry Roll', 30),
(50, 3, 'Baked Seafood Combination with Cheese', '芝士焗海鮮大會', 'Baked Seafood Combination with Cheese', 880.00, '', 'Baked Seafood Combination with Cheese', '芝士焗海鮮大會', 'Baked Seafood Combination with Cheese', 35),
(51, 3, 'Pan-fried Japanese Codfish', '煎日本銀鱈魚', 'Pan-fried Japanese Codfish', 600.00, '', 'Pan-fried Japanese Codfish', '煎日本銀鱈魚', 'Pan-fried Japanese Codfish', 40),
(52, 3, 'Grilled Pork Loin with Mustard and Dill Sauce', '香草芥末燒豬柳', 'Grilled Pork Loin with Mustard and Dill Sauce', 680.00, '', 'Grilled Pork Loin with Mustard and Dill Sauce', '香草芥末燒豬柳', 'Grilled Pork Loin with Mustard and Dill Sauce', 45),
(53, 3, 'Fricasseed of Veal', '白酒燴牛仔肉', 'Fricasseed of Veal', 680.00, '', 'Fricasseed of Veal', '白酒燴牛仔肉', 'Fricasseed of Veal', 50),
(54, 3, 'Grilled Spare Ribs with Honey', '燒原條豬肋骨', 'Grilled Spare Ribs with Honey', 480.00, '', 'Grilled Spare Ribs with Honey', '燒原條豬肋骨', 'Grilled Spare Ribs with Honey', 55),
(55, 3, 'Braised Lamb Ragout with Root Vegetable', '雜菜燴羊肉', 'Braised Lamb Ragout with Root Vegetable', 580.00, '', 'Braised Lamb Ragout with Root Vegetable', '雜菜燴羊肉', 'Braised Lamb Ragout with Root Vegetable', 60),
(56, 3, 'Grilled Pork Loin with Apple Sauce', '燒豬柳配蘋果汁', 'Grilled Pork Loin with Apple Sauce', 480.00, '', 'Grilled Pork Loin with Apple Sauce', '燒豬柳配蘋果汁', 'Grilled Pork Loin with Apple Sauce', 65),
(57, 3, 'Baked Duck Breast with Orange Sauce', '香橙鴨胸', 'Baked Duck Breast with Orange Sauce', 480.00, '', 'Baked Duck Breast with Orange Sauce', '香橙鴨胸', 'Baked Duck Breast with Orange Sauce', 70),
(58, 3, 'Baked Eggplant “Parmigiana”', '意式焗茄子', 'Baked Eggplant “Parmigiana”', 330.00, '', 'Baked Eggplant “Parmigiana”', '意式焗茄子', 'Baked Eggplant “Parmigiana”', 75),
(59, 3, 'Baked Mashed potato with Bacon and cheese', '芝士焗煙肉薯茸', 'Baked Mashed potato with Bacon and cheese', 330.00, '', 'Baked Mashed potato with Bacon and cheese', '芝士焗煙肉薯茸', 'Baked Mashed potato with Bacon and cheese', 80),
(60, 3, 'Baked Broccoli with Cheese ', '芝士焗西蘭花', 'Baked Broccoli with Cheese ', 330.00, '', 'Baked Broccoli with Cheese ', '芝士焗西蘭花', 'Baked Broccoli with Cheese ', 85),
(61, 3, 'Roasted New Potatoes with Rosemary & Garlic', '香草燒新薯', 'Roasted New Potatoes with Rosemary & Garlic', 380.00, '', 'Roasted New Potatoes with Rosemary & Garlic', '香草燒新薯', 'Roasted New Potatoes with Rosemary & Garlic', 90),
(62, 3, 'Stir-fried Seasonal Vegetables', '清炒時菜', 'Stir-fried Seasonal Vegetables', 280.00, '', 'Stir-fried Seasonal Vegetables', '清炒時菜', 'Stir-fried Seasonal Vegetables', 95),
(63, 3, 'Braised Beef Rib with Red Wine', '紅酒煮手肋條', 'Braised Beef Rib with Red Wine', 680.00, '', 'Braised Beef Rib with Red Wine', '紅酒煮手肋條', 'Braised Beef Rib with Red Wine', 100),
(64, 3, 'Baked Chicken Breast Stuffed with Mushroom and Che', '芝士蘑菇釀雞胸', 'Baked Chicken Breast Stuffed with Mushroom and Che', 480.00, '', 'Baked Chicken Breast Stuffed with Mushroom and Cheese', '芝士蘑菇釀雞胸', 'Baked Chicken Breast Stuffed with Mushroom and Cheese', 110),
(65, 4, 'Baked Pork Chop Rice ', '焗豬扒飯', 'Baked Pork Chop Rice ', 388.00, '', 'Baked Pork Chop Rice ', '焗豬扒飯', 'Baked Pork Chop Rice ', 10),
(66, 4, 'Lasagna', '意式千層麵', 'Lasagna', 388.00, '', 'Lasagna', '意式千層麵', 'Lasagna', 20),
(67, 4, 'Stir-Fried Seafood Rice with Curry', '咖哩海鮮炒飯', 'Stir-Fried Seafood Rice with Curry', 388.00, '', 'Stir-Fried Seafood Rice with Curry', '咖哩海鮮炒飯', 'Stir-Fried Seafood Rice with Curry', 30),
(68, 4, 'Paella', '西班牙海鮮飯', 'Paella', 388.00, '', 'Paella', '西班牙海鮮飯', 'Paella', 40),
(69, 4, 'Spaghetti Bolognaise', '芝士焗肉醬意粉', 'Spaghetti Bolognaise', 388.00, '', 'Spaghetti Bolognaise', '芝士焗肉醬意粉', 'Spaghetti Bolognaise', 50),
(70, 4, 'Vegetable Lasagna', '焗素菜千層麵', 'Vegetable Lasagna', 388.00, '', 'Vegetable Lasagna', '焗素菜千層麵', 'Vegetable Lasagna', 60),
(71, 4, 'Spaghetti with Seafood', '意式海鮮意粉', 'Spaghetti with Seafood', 388.00, '', 'Spaghetti with Seafood', '意式海鮮意粉', 'Spaghetti with Seafood', 70),
(72, 4, 'Baked Fettuccine with Seafood', '焗白汁海鮮闊條麵', 'Baked Fettuccine with Seafood', 388.00, '', 'Baked Fettuccine with Seafood', '焗白汁海鮮闊條麵', 'Baked Fettuccine with Seafood', 80),
(73, 4, 'Cheese Ravioli in Herbed Cream Sauce ', '意大利雲吞', 'Cheese Ravioli in Herbed Cream Sauce ', 388.00, '', 'Cheese Ravioli in Herbed Cream Sauce ', '意大利雲吞', 'Cheese Ravioli in Herbed Cream Sauce ', 90),
(74, 4, 'Mixed Mushroom Spaghetti with Black Truffle Sauce', '雜菌黑松露意粉', 'Mixed Mushroom Spaghetti with Black Truffle Sauce', 638.00, '', 'Mixed Mushroom Spaghetti with Black Truffle Sauce', '雜菌黑松露意粉', 'Mixed Mushroom Spaghetti with Black Truffle Sauce', 100),
(75, 5, 'Maple Glazed Bone Ham with Rosemary Honey Sauce', '燒有骨火腿配蜜糖香草汁', 'Maple Glazed Bone Ham with Rosemary Honey Sauce', 800.00, '', 'Maple Glazed Bone Ham with Rosemary Honey Sauce', '燒有骨火腿配蜜糖香草汁', 'Maple Glazed Bone Ham with Rosemary Honey Sauce', 10),
(77, 5, 'Roasted U.S.A. Tenderloin of Beef', '燒美國牛柳', 'Roasted U.S.A. Tenderloin of Beef', 3100.00, '', 'Roasted U.S.A. Tenderloin of Beef', '燒美國牛柳', 'Roasted U.S.A. Tenderloin of Beef', 30),
(78, 5, 'Roasted U.S.A T-Bone Steak', '燒美國骨扒牛肉', 'Roasted U.S.A T-Bone Steak', 2830.00, '', 'Roasted U.S.A T-Bone Steak', '燒美國骨扒牛肉', 'Roasted U.S.A T-Bone Steak', 40),
(79, 5, 'Roasted New Zealand Leg of Lamb with Mint Sauce', '燒紐西蘭羊脾配薄荷汁', 'Roasted New Zealand Leg of Lamb with Mint Sauce', 888.00, '', 'Roasted New Zealand Leg of Lamb with Mint Sauce', '燒紐西蘭羊脾配薄荷汁', 'Roasted New Zealand Leg of Lamb with Mint Sauce', 50),
(80, 5, 'Roasted U.S.A Sirloin Beef with Mustard Sauce', '燒美國西冷牛扒配芥末汁', 'Roasted U.S.A Sirloin Beef with Mustard Sauce', 2888.00, '', 'Roasted U.S.A Sirloin Beef with Mustard Sauce', '燒美國西冷牛扒配芥末汁', 'Roasted U.S.A Sirloin Beef with Mustard Sauce', 60),
(81, 5, 'Roasted Smoked Pork Leg', '燒豬脾', 'Roasted Smoked Pork Leg', 380.00, '', 'Roasted Smoked Pork Leg', '燒豬脾', 'Roasted Smoked Pork Leg', 70),
(82, 6, 'Baked Apple Struddel', '焗玉桂蘋果卷', 'Baked Apple Struddel', 480.00, '', 'Baked Apple Struddel', '焗玉桂蘋果卷', 'Baked Apple Struddel', 10),
(83, 6, 'Mango Pudding', '芒果布甸', 'Mango Pudding', 480.00, '', 'Mango Pudding', '芒果布甸', 'Mango Pudding', 15),
(84, 6, 'Serradura', '木糠布甸', 'Serradura', 450.00, '', 'Serradura', '木糠布甸', 'Serradura', 20),
(85, 6, 'Tiramisu', '意大利芝士餅', 'Tiramisu', 630.00, '', 'Tiramisu', '意大利芝士餅', 'Tiramisu', 25),
(86, 6, 'Lemon Yogurt Cake', '檸檬乳酪餅', 'Lemon Yogurt Cake', 530.00, '', 'Lemon Yogurt Cake', '檸檬乳酪餅', 'Lemon Yogurt Cake', 30),
(87, 6, 'Chocolate Mousse', '朱古力慕絲', 'Chocolate Mousse', 480.00, '', 'Chocolate Mousse', '朱古力慕絲', 'Chocolate Mousse', 35),
(88, 6, 'New York Cheese Cake', '紐約芝士餅', 'New York Cheese Cake', 480.00, '', 'New York Cheese Cake', '紐約芝士餅', 'New York Cheese Cake', 40),
(89, 6, 'Mini Fresh Fruit Tart', '迷你鮮果撻', 'Mini Fresh Fruit Tart', 480.00, '', 'Mini Fresh Fruit Tart', '迷你鮮果撻', 'Mini Fresh Fruit Tart', 45),
(90, 6, 'Mini Cream Puff', '迷你忌廉泡芙', 'Mini Cream Puff', 480.00, '', 'Mini Cream Puff', '迷你忌廉泡芙', 'Mini Cream Puff', 50),
(91, 6, 'Mango Cheese Cake', '芒果芝士餅', 'Mango Cheese Cake', 480.00, '', 'Mango Cheese Cake', '芒果芝士餅', 'Mango Cheese Cake', 55),
(92, 6, 'Crème Brulee', '焦糖燉蛋', 'Crème Brulee', 480.00, '', 'Crème Brulee', '焦糖燉蛋', 'Crème Brulee', 60),
(93, 6, 'Fresh Fruit Platter', '新鮮果盤', 'Fresh Fruit Platter', 480.00, '', 'Fresh Fruit Platter', '新鮮果盤', 'Fresh Fruit Platter', 70),
(94, 6, 'Banana Pancake', '香蕉班戟', 'Banana Pancake', 480.00, '', 'Banana Pancake', '香蕉班戟', 'Banana Pancake', 75),
(95, 6, 'Black Forest Cake', '黑森林蛋糕', 'Black Forest Cake', 480.00, '', 'Black Forest Cake', '黑森林蛋糕', 'Black Forest Cake', 80),
(96, 6, 'Baked Bread Pudding', '焗麵包布甸', 'Baked Bread Pudding', 480.00, '', 'Baked Bread Pudding', '焗麵包布甸', 'Baked Bread Pudding', 85),
(97, 0, '321', '', '321', 321.00, '', '321', '', '321', 127),
(98, 1, 'France Oyster (per piece)', '法國生蠔（每隻）', 'France Oyster (per piece)', 480.00, '', 'France Oyster (per piece)', '法國生蠔（每隻）', 'France Oyster (per piece)', 127),
(99, 5, 'Roasted New Zealand Tenderloin of Beef', '燒紐西蘭牛柳', 'Roasted New Zealand Tenderloin of Beef', 2700.00, '', 'Roasted New Zealand Tenderloin of Beef', '燒紐西蘭牛柳', 'Roasted New Zealand Tenderloin of Beef', 20);

-- --------------------------------------------------------

--
-- 表的结构 `savor_products_categories`
--

CREATE TABLE IF NOT EXISTS `savor_products_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_cn` varchar(250) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(250) CHARACTER SET utf8 NOT NULL,
  `thumbnail` varchar(50) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` mediumtext CHARACTER SET utf8 NOT NULL,
  `description_cn` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `orderby` tinyint(4) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `savor_products_categories`
--

INSERT INTO `savor_products_categories` (`category_id`, `name`, `name_cn`, `name_en`, `thumbnail`, `photo`, `description`, `description_cn`, `description_en`, `orderby`) VALUES
(1, 'Appetizer', '頭盤', 'Appetizer', '', '1353943263_5YeLItnpkn.png', 'Appetizer', '頭盤', 'Appetizer', 10),
(2, 'Salad', '沙律', 'Salad', '', '1353943277_ronHtjvyOw.png', 'Salad', '沙律', 'Salad', 20),
(3, 'Hot Entrees', '主菜', 'Hot Entrees', '', '1353943293_YUlYuY9FGT.png', 'Hot Entrees', '主菜', 'Hot Entrees', 30),
(4, 'Rice & Spaghetti', '飯及意大利粉', 'Rice & Spaghetti', '', '1353943211_0LKVyDBMRa.png', 'Rice & Spaghetti', '飯及意大利粉', 'Rice & Spaghetti', 40),
(5, 'Carving', '燒烤及焗', 'Carving', '', '1353943463_YVKF2QAgHC.png', 'Carving', '燒烤及焗', 'Carving', 50),
(6, 'Desserts', '甜品', 'Desserts', '', '1353943356_oN4fdetzR2.png', 'Desserts', '甜品', 'Desserts', 60);

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
(1, 1, 'Savor On-site Services', 'Savor 到會服務', 'Savor On-site Services', '1354547378_PhALiuGCOO.png', 'occasions.php', 'We have a team of professional waiters for your meetings or parties.\nWith a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste!! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', '我們擁有一支專業的服務團隊，為您的會議或聚會作最好的安排。\r\n一個堅定的信念，客戶都是獨一無二的貴賓，我們已經準備好度身訂制的創意菜單，務求令客人有無限驚喜﹗我們的食物，多注重健康和特色味道﹗\r\n我們的目標是提供各國不同口味，務求製作一頓令人難忘的美味食物﹗', 'We have a team of professional waiters for your meetings or parties.\r\nWith a strong belief that customers are all unique, we are ready to work on tailor-made menus to create and to surprise! Our food is made with much attention to health, safety and much love to great taste!! We aim to serve food aficionados with discerning taste, making the meal delicious and unforgettable!', 5),
(2, 1, '', '遊艇之旅套餐', 'Yacht Trip Set Menu', '1356715171_QgjaQvRQDy.png', 'occasions.php', '', '想像遠離繁華的城市，在船上一個美麗陽光燦爛的日子﹗配合我們的遊艇之旅一站式服務。我們一定為您提供特色美味的食品，甚至可以安排船隻出海，務求盡善盡美﹗', 'Ever imagined to be away from the bustling city and get on a boat on a beautiful sunny day!! It''s a piece of cake with our boat trip one-stop service. We provide you with savory food and even arrange boat rental!  ', 10);

-- --------------------------------------------------------

--
-- 表的结构 `savor_seo`
--

CREATE TABLE IF NOT EXISTS `savor_seo` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ptitle` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ptitle_cn` varchar(500) CHARACTER SET utf8 NOT NULL,
  `ptitle_en` varchar(500) CHARACTER SET utf8 NOT NULL,
  `pkeyword` varchar(500) CHARACTER SET utf8 NOT NULL,
  `pkeyword_cn` varchar(750) CHARACTER SET utf8 NOT NULL,
  `pkeyword_en` varchar(750) CHARACTER SET utf8 NOT NULL,
  `pdescription` varchar(500) CHARACTER SET utf8 NOT NULL,
  `pdescription_cn` varchar(750) CHARACTER SET utf8 NOT NULL,
  `pdescription_en` varchar(750) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `savor_seo`
--

INSERT INTO `savor_seo` (`page_id`, `pname`, `ptitle`, `ptitle_cn`, `ptitle_en`, `pkeyword`, `pkeyword_cn`, `pkeyword_en`, `pdescription`, `pdescription_cn`, `pdescription_en`) VALUES
(1, 'Home', 'Savor Catering Service Hong Kong- Catering services Hong Kong|Cocktail party equipment rental buffet waiter service, caterer private or corporate party wedding banquet boat trip catering', 'Savor Catering Service- 到會服務，美食到會，到會美食，服務到會公司，雞尾酒到會', 'Savor Catering Service Hong Kong- Catering services Hong Kong, Catering Company, Cocktail party equipment rental buffet waiter service, caterer private or corporate party wedding banquet boat trip catering', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', '到會食物，到會服務，美食到會，到會美食，派對到會，雞尾酒會，自助餐美食，侍應服務，派對餐具租賃，婚禮酒席 祝捷慶功 聖誕到會 到會食品，到會餐單，到會美食服務 到會服務 到會2013，到會邊間好，到會食物，到會食品，到會公司，到會美食服務邊間好，服務到會', 'cater catering catering services, cocktail party equipment rental catering, buffet waiter service， caterer private or corporate party catering,  wedding banquet catering, boat trip catering，cocktail party catering', 'Savor Catering Service Dynamic Services include corporate events weddings contract dining Superb cuisine for all occasion Celebrating your event with us now 各式私人及公司派對到會 到會  雞尾酒會 婚禮酒席 祝捷慶功 自助餐美食 侍應服務 派對餐具租賃', '各式私人及公司派對到會，到會食物，到會服務，美食到會，到會美食，派對到會，雞尾酒會，自助餐美食，侍應服務，派對餐具租賃，婚禮酒席 祝捷慶功 聖誕到會 到會食品，到會餐單，到會美食服務 到會服務 到會2013，到會邊間好，到會食物，到會食品，到會公司，到會美食服務邊間好，服務到會', 'Savor Catering Service Dynamic Services include corporate events weddings contract dining Superb cuisine for all occasion Celebrating your event with us now'),
(2, 'Menu', 'Savor Catering Hong Kong Catering Service 到會美食', 'Savor Catering Service - 到會菜單，到會美食菜單，婚禮到會菜單，自助餐到會菜單，派對美食到會', 'Savor Catering Service Hong Kong - Catering Menu, Food Catering Service, Online Catering Menu, catering food online, catering website, catering party menu, party catering service', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', '到會菜單，到會美食菜單，美食到會菜單，酒店到會菜單，婚禮到會菜單，到會食物，到會食品到會食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食到會，派對美食到會', 'Savor Catering Service, Hong Kong Savor Catering Company, Savor Catering Menu, Food Catering Menu, Food Catering Service, Catering Food Menu, online catering menu, catering website, catering food online, catering website menu，catering party menu， party catering service', 'Savor Catering Service Party food delivery  Have fun without being hungry  Book online today 派對美食到會服務 多款特色中西佳食 餐單選擇種類多 現在就網上預訂 開心生日派對美食到會服務 中西食品 多款特色選擇 歡迎立刻網上預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service', 'Savor Catering Service Party food delivery  Have fun without being hungry  Book online today 派對美食到會服務 多款特色中西佳食 餐單選擇種類多 現在就網上預訂 開心生日派對美食到會服務 中西食品 多款特色選擇 歡迎立刻網上預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service', 'Savor Catering Service Party food delivery  Have fun without being hungry  Book online today 派對美食到會服務 多款特色中西佳食 餐單選擇種類多 現在就網上預訂 開心生日派對美食到會服務 中西食品 多款特色選擇 歡迎立刻網上預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service'),
(3, 'Occasions', 'Savor Catering Hong Kong Catering Service 到會美食', 'Savor Catering Service- 特式到會, 到會場合, 戶外到會, 早餐到會服務, 午餐到會服務, 餐廳到會美食,  party到會美食, 家庭到會, 遊艇到會, 生日到會，聖誕美食到會, 室外到會美食，商務到會服務', 'Savor Catering Service Hong Kong - Outside Catering, Christmas Party Catering, business catering, catering party, party catering service, home catering, outdoor catering,', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', 'Savor特式到會, 到會場合, 戶外到會, 早餐到會, 午餐到會, 餐廳到會, party到會, 家庭到會, 遊艇到會美食 生日到會，雞尾酒到會，聖誕美食到會, 室外到會美食, 戶外到會美食，遊艇到會服務，商務到會服務', 'banquet catering,catering food,catering lunch,business catering, Outside Catering, catering equipment rental, private catering, catering delivery, birthday catering, office catering, cocktail caterers, Buffet Catering Service, Christmas party catering, pizza catering, ', 'Savor Catering Service Catering service for company events wedding dining etc  Fast delivery 專業為商業機構、團體及各類派對活動提供優質餐飲到會服務 歡迎預訂 專為團體 商業機構和各類派對活動提供多元化餐飲到會服務 歡迎預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service', 'Savor Catering Service Catering service for company events wedding dining etc  Fast delivery 專業為商業機構、團體及各類派對活動提供優質餐飲到會服務 歡迎預訂 專為團體 商業機構和各類派對活動提供多元化餐飲到會服務 歡迎預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service', 'Savor Catering Service Catering service for company events wedding dining etc  Fast delivery 專業為商業機構、團體及各類派對活動提供優質餐飲到會服務 歡迎預訂 專為團體 商業機構和各類派對活動提供多元化餐飲到會服務 歡迎預訂 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service'),
(4, 'Promotions', 'Savor Catering Hong Kong Catering Service 到會美食', 'Savor Catering Service- 香港到會設備租借，派對餐具租賃 ', 'Savor Catering Hong Kong- Catering Equipement, Catering Delivery, Catering Company', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好', 'cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', 'Savor Catering Service Party food delivery  Have fun without being hungry  Book online now 派對美食到會服務 多款特色聖誕美食 餐單選擇種類多 現在就網上預訂 開心聖誕派對美食到會服務 中西食品 聖誕特色選擇 歡迎立刻網上預訂 ', '各式私人及公司派對到會，到會食物，到會服務，美食到會，到會美食，派對到會，雞尾酒會，自助餐美食，侍應服務，派對餐具租賃，婚禮酒席 祝捷慶功 聖誕到會 到會食品，到會餐單，到會美食服務 到會服務 到會2013，到會邊間好，到會食物，到會食品，到會公司，到會美食服務邊間好，服務到會', 'Savor Catering Service Party food delivery  Have fun without being hungry  Book online now 派對美食到會服務 多款特色聖誕美食 餐單選擇種類多 現在就網上預訂 開心聖誕派對美食到會服務 中西食品 聖誕特色選擇 歡迎立刻網上預訂 '),
(5, 'AboutUs', 'Savor Catering Hong Kong Catering Service 到會美食', 'Savor Catering Service- 到會美食服务公司', 'Savor Catering Hong Kong-  Catering Service 到會美食', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 ', 'cater catering catering services cocktail party equipment rental buffet waiter service caterer private or corporate party wedding banquet boat trip catering', 'Savor Catering Service   各式私人及公司派對到會 到會  雞尾酒會 婚禮酒席 祝捷慶功 自助餐美食 侍應服務 派對餐具租賃 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service', '到會 食物 到會服務 美食到會 到會美食 派對到會 雞尾酒會 自助餐美食 侍應服務 派對餐具租賃 婚禮酒席 祝捷慶功 聖誕到會 到會食品 到會餐單 到會美食服務 到會服務 到會2012 到會邊間好 到會食物 到會食品 到會公司 到會美食服務邊間好 ', 'Savor Catering Service   各式私人及公司派對到會 到會  雞尾酒會 婚禮酒席 祝捷慶功 自助餐美食 侍應服務 派對餐具租賃 Hong Kong Savor Catering services for private or corporate party  cocktail party  wedding banquet  buffet  waiter service');

-- --------------------------------------------------------

--
-- 表的结构 `savor_transactions`
--

CREATE TABLE IF NOT EXISTS `savor_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `type` varchar(18) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `response_code` tinyint(1) unsigned NOT NULL,
  `response_reason` tinytext,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `response` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `savor_users`
--

CREATE TABLE IF NOT EXISTS `savor_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `umobile` varchar(50) COLLATE utf8_bin NOT NULL,
  `unickname` varchar(50) COLLATE utf8_bin NOT NULL,
  `uemail` varchar(50) COLLATE utf8_bin NOT NULL,
  `upsw` varchar(50) COLLATE utf8_bin NOT NULL,
  `umname` varchar(50) COLLATE utf8_bin NOT NULL,
  `ulocation` varchar(200) COLLATE utf8_bin NOT NULL,
  `uaddress` varchar(50) COLLATE utf8_bin NOT NULL,
  `uphone` varchar(50) COLLATE utf8_bin NOT NULL,
  `uzipcode` varchar(50) COLLATE utf8_bin NOT NULL,
  `unow` varchar(50) COLLATE utf8_bin NOT NULL,
  `umaga` varchar(50) COLLATE utf8_bin NOT NULL,
  `uactivity` varchar(50) COLLATE utf8_bin NOT NULL,
  `ucontact` varchar(50) COLLATE utf8_bin NOT NULL,
  `dateline` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `savor_users`
--

INSERT INTO `savor_users` (`user_id`, `umobile`, `unickname`, `uemail`, `upsw`, `umname`, `ulocation`, `uaddress`, `uphone`, `uzipcode`, `unow`, `umaga`, `uactivity`, `ucontact`, `dateline`) VALUES
(3, '15002128137', 'rick', 'shy_1206@hotmail.com', 'shy123', '33', '33', 'tt', '02162578088', '200438', '已有宝宝', '是', '是', '邮寄', '2012-08-11');

-- --------------------------------------------------------

--
-- 表的结构 `savor_user_group`
--

CREATE TABLE IF NOT EXISTS `savor_user_group` (
  `g_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `right` varchar(200) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `admin_id` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `savor_user_group`
--

INSERT INTO `savor_user_group` (`g_id`, `name`, `right`, `desc`, `admin_id`) VALUES
(1, '超级管理员', '1,2,3,4,5,6,7,8,9,10', '超级管理员', 1),
(2, '内容管理员', '1,2,3,4,5,6,7,8,9,10', '内容管理', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
