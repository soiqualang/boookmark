-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `tree_data`;
CREATE TABLE `tree_data` (
  `type` varchar(20) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nm` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tree_data` (`type`, `id`, `nm`) VALUES
('folder',	1,	'root'),
('folder',	1083,	'dolongstore'),
('folder',	1084,	'phanmem'),
('folder',	1112,	'New node'),
('file',	1113,	't1.txt');

DROP TABLE IF EXISTS `tree_struct`;
CREATE TABLE `tree_struct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `lvl` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `pos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tree_struct` (`id`, `lft`, `rgt`, `lvl`, `pid`, `pos`) VALUES
(1,	1,	14,	0,	0,	0),
(1083,	2,	13,	1,	1,	0),
(1084,	3,	12,	2,	1083,	0),
(1099,	4,	5,	3,	1084,	2),
(1100,	6,	7,	3,	1084,	1),
(1112,	8,	11,	3,	1084,	0),
(1113,	9,	10,	4,	1112,	0);

-- 2019-09-02 11:25:46
