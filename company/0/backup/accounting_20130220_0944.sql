# MySQL dump of database 'accounting' on host 'localhost'
# Backup Date and Time: 2013-02-20 09:44
# Built by Multisolusi Informatika Akuntansi Standart 1.03
# http://www.multisolusi.info
# Company: Multisolusi Informatika
# User: Administrator



### Structure of table `areas` ###

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `areas` ###

INSERT INTO `areas` VALUES
('1', 'Global', '0');

### Structure of table `attachments` ###

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `unique_name` varchar(60) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `filetype` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_no` (`type_no`,`trans_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `attachments` ###


### Structure of table `audit_trail` ###

DROP TABLE IF EXISTS `audit_trail`;

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `user` smallint(6) unsigned NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(60) DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL,
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1 ;

### Data of table `audit_trail` ###

INSERT INTO `audit_trail` VALUES
('1', '18', '1', '1', '2012-11-30 09:43:35', NULL, '4', '2012-11-30', NULL),
('2', '18', '1', '1', '2012-11-30 09:43:35', 'Telah diperbaharui.', '4', '2012-11-30', '0'),
('3', '25', '1', '1', '2012-11-30 09:43:53', NULL, '4', '2012-11-30', '0'),
('4', '20', '1', '1', '2012-11-30 09:44:21', NULL, '4', '2012-11-30', '0'),
('5', '2', '1', '1', '2012-11-30 09:48:38', NULL, '4', '2012-11-30', '0'),
('6', '2', '2', '1', '2012-11-30 09:50:08', NULL, '4', '2012-11-30', '0'),
('7', '1', '1', '1', '2012-11-30 09:51:27', NULL, '4', '2012-11-30', '0'),
('8', '2', '3', '1', '2012-11-30 09:54:01', NULL, '4', '2012-11-30', '0'),
('9', '0', '1', '1', '2012-11-30 09:57:17', NULL, '4', '2012-11-30', '0'),
('10', '22', '1', '1', '2012-11-30 10:58:32', NULL, '4', '2012-11-30', '0'),
('11', '30', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('12', '13', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('13', '10', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('14', '12', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('15', '35', '0', '1', '2012-12-01 03:23:32', NULL, '4', '2012-12-01', '0'),
('16', '18', '2', '1', '2012-12-01 07:07:14', NULL, '4', '2012-12-01', '0'),
('17', '25', '2', '1', '2012-12-01 07:07:14', NULL, '4', '2012-12-01', '0'),
('18', '20', '2', '1', '2012-12-01 07:07:14', NULL, '4', '2012-12-01', '0'),
('19', '30', '2', '1', '2012-12-03 12:24:52', NULL, '4', '2012-12-03', '0'),
('20', '13', '2', '1', '2012-12-03 12:40:08', NULL, '4', '2012-12-03', '0'),
('21', '10', '2', '1', '2012-12-03 12:40:44', NULL, '4', '2012-12-03', '0'),
('22', '12', '2', '1', '2012-12-03 12:40:44', NULL, '4', '2012-12-03', '0'),
('23', '12', '3', '1', '2012-12-03 12:45:19', NULL, '4', '2012-12-03', '0'),
('24', '11', '1', '1', '2012-12-03 12:46:42', NULL, '4', '2012-12-03', '0'),
('25', '11', '2', '1', '2012-12-03 12:49:38', NULL, '4', '2012-12-03', '0'),
('26', '11', '3', '1', '2012-12-03 12:51:26', NULL, '4', '2012-12-03', '0'),
('27', '30', '3', '1', '2012-12-03 12:53:19', NULL, '4', '2012-12-03', '0'),
('28', '13', '3', '1', '2012-12-03 12:53:19', NULL, '4', '2012-12-03', '0'),
('29', '10', '3', '1', '2012-12-03 12:53:19', NULL, '4', '2012-12-03', '0'),
('30', '12', '4', '1', '2012-12-03 12:53:19', NULL, '4', '2012-12-03', '0'),
('31', '22', '2', '1', '2012-12-03 12:59:51', NULL, '4', '2012-12-03', '0'),
('32', '30', '4', '1', '2012-12-04 09:14:20', NULL, '4', '2012-12-04', '0'),
('33', '13', '4', '1', '2012-12-04 09:16:55', NULL, '4', '2012-12-04', '0'),
('34', '11', '4', '1', '2012-12-04 09:20:24', NULL, '4', '2012-12-04', '0'),
('35', '30', '5', '1', '2012-12-04 09:29:51', NULL, '4', '2012-12-04', '0'),
('36', '13', '5', '1', '2012-12-04 09:29:51', NULL, '4', '2012-12-04', '0'),
('37', '10', '4', '1', '2012-12-04 09:29:51', NULL, '4', '2012-12-04', '0'),
('38', '12', '5', '1', '2012-12-04 09:29:51', NULL, '4', '2012-12-04', '0'),
('39', '11', '5', '1', '2012-12-04 09:30:52', NULL, '4', '2012-12-04', '0'),
('40', '18', '3', '1', '2012-12-05 04:47:31', NULL, '4', '2012-12-05', '0'),
('41', '25', '3', '1', '2012-12-05 04:47:53', NULL, '4', '2012-12-05', '0'),
('42', '20', '3', '1', '2012-12-05 04:48:59', NULL, '4', '2012-12-05', '0'),
('43', '32', '1', '1', '2012-12-05 04:51:17', NULL, '4', '2012-12-05', '0'),
('44', '30', '6', '1', '2012-12-05 04:53:17', NULL, '4', '2012-12-05', '0'),
('45', '13', '6', '1', '2012-12-05 04:55:25', NULL, '4', '2012-12-05', '0'),
('46', '10', '5', '1', '2012-12-05 04:56:00', NULL, '4', '2012-12-05', '0'),
('47', '12', '6', '1', '2012-12-05 04:56:00', NULL, '4', '2012-12-05', '0'),
('48', '10', '6', '1', '2012-12-05 04:56:55', NULL, '4', '2012-12-05', '0'),
('49', '12', '7', '1', '2012-12-05 04:56:55', NULL, '4', '2012-12-05', '0'),
('50', '30', '7', '1', '2012-12-05 04:58:46', NULL, '4', '2012-12-05', '0'),
('51', '13', '7', '1', '2012-12-05 04:58:46', NULL, '4', '2012-12-05', '0'),
('52', '10', '7', '1', '2012-12-05 04:58:46', NULL, '4', '2012-12-05', '0'),
('53', '12', '8', '1', '2012-12-05 04:58:46', NULL, '4', '2012-12-05', '0'),
('54', '30', '8', '1', '2012-12-05 05:00:23', NULL, '4', '2012-12-05', '0'),
('55', '13', '8', '1', '2012-12-05 05:00:23', NULL, '4', '2012-12-05', '0'),
('56', '10', '8', '1', '2012-12-05 05:00:23', NULL, '4', '2012-12-05', '0'),
('57', '12', '9', '1', '2012-12-05 05:00:23', NULL, '4', '2012-12-05', '0'),
('58', '30', '9', '1', '2012-12-05 05:03:30', NULL, '4', '2012-12-05', '0'),
('59', '13', '9', '1', '2012-12-05 05:03:30', NULL, '4', '2012-12-05', '0'),
('60', '10', '9', '1', '2012-12-05 05:03:30', NULL, '4', '2012-12-05', '0'),
('61', '12', '10', '1', '2012-12-05 05:03:30', NULL, '4', '2012-12-05', '0'),
('62', '30', '10', '1', '2012-12-05 05:06:32', NULL, '4', '2012-12-05', '0'),
('63', '13', '10', '1', '2012-12-05 05:06:32', NULL, '4', '2012-12-05', '0'),
('64', '10', '10', '1', '2012-12-05 05:07:38', NULL, '4', '2012-12-05', '0'),
('65', '12', '11', '1', '2012-12-05 05:07:38', NULL, '4', '2012-12-05', '0'),
('66', '30', '11', '1', '2012-12-05 05:12:56', NULL, '4', '2012-12-05', '0'),
('67', '13', '11', '1', '2012-12-05 05:12:56', NULL, '4', '2012-12-05', '0'),
('68', '30', '12', '1', '2012-12-05 05:14:12', NULL, '4', '2012-12-05', '0'),
('69', '10', '11', '1', '2012-12-05 05:15:04', NULL, '4', '2012-12-05', '0'),
('70', '12', '12', '1', '2012-12-05 05:20:13', NULL, '4', '2012-12-05', '0'),
('71', '18', '4', '1', '2012-12-07 00:36:03', NULL, '4', '2012-12-07', '0'),
('72', '25', '4', '1', '2012-12-07 00:36:03', NULL, '4', '2012-12-07', '0'),
('73', '20', '4', '1', '2012-12-07 00:36:03', NULL, '4', '2012-12-07', '0'),
('74', '30', '13', '1', '2012-12-07 00:37:55', NULL, '4', '2012-12-07', '0'),
('75', '13', '12', '1', '2012-12-07 00:37:55', NULL, '4', '2012-12-07', '0'),
('76', '10', '12', '1', '2012-12-07 00:37:55', NULL, '4', '2012-12-07', '0'),
('77', '12', '13', '1', '2012-12-07 00:37:55', NULL, '4', '2012-12-07', '0'),
('78', '30', '14', '1', '2012-12-07 00:43:22', NULL, '4', '2012-12-07', '0'),
('79', '13', '13', '1', '2012-12-07 00:43:22', NULL, '4', '2012-12-07', '0'),
('80', '10', '13', '1', '2012-12-07 00:43:22', NULL, '4', '2012-12-07', '0'),
('81', '30', '15', '1', '2012-12-07 00:46:46', NULL, '4', '2012-12-07', '0'),
('82', '13', '14', '1', '2012-12-07 00:46:46', NULL, '4', '2012-12-07', '0'),
('83', '10', '14', '1', '2012-12-07 00:46:46', NULL, '4', '2012-12-07', '0'),
('84', '18', '5', '1', '2012-12-07 00:50:14', NULL, '4', '2012-12-07', '0'),
('85', '25', '5', '1', '2012-12-07 00:51:26', NULL, '4', '2012-12-07', '0'),
('86', '20', '5', '1', '2012-12-07 00:55:58', NULL, '4', '2012-12-07', '0'),
('87', '30', '16', '1', '2012-12-07 00:57:30', NULL, '4', '2012-12-07', '0'),
('88', '13', '15', '1', '2012-12-07 00:57:30', NULL, '4', '2012-12-07', '0'),
('89', '10', '15', '1', '2012-12-07 00:57:30', NULL, '4', '2012-12-07', '0'),
('90', '12', '14', '1', '2012-12-07 00:57:30', NULL, '4', '2012-12-07', '0'),
('91', '30', '17', '1', '2012-12-07 08:08:37', NULL, '4', '2012-12-07', '0'),
('92', '13', '16', '1', '2012-12-07 08:08:37', NULL, '4', '2012-12-07', '0'),
('93', '10', '16', '1', '2012-12-07 08:08:37', NULL, '4', '2012-12-07', '0'),
('94', '32', '2', '1', '2012-12-07 08:21:03', NULL, '4', '2012-12-07', '0'),
('95', '30', '18', '1', '2012-12-07 08:40:19', NULL, '4', '2012-12-07', '0'),
('96', '13', '17', '1', '2012-12-07 08:41:53', NULL, '4', '2012-12-07', '0'),
('97', '10', '17', '1', '2012-12-07 08:42:26', NULL, '4', '2012-12-07', '0'),
('98', '12', '15', '1', '2012-12-07 08:45:11', NULL, '4', '2012-12-07', '0'),
('99', '18', '6', '1', '2012-12-07 08:47:45', NULL, '4', '2012-12-07', '0'),
('100', '25', '6', '1', '2012-12-07 08:47:45', NULL, '4', '2012-12-07', '0'),
('101', '20', '6', '1', '2012-12-07 08:47:45', NULL, '4', '2012-12-07', '0'),
('102', '30', '19', '1', '2012-12-07 23:25:27', NULL, '4', '2012-12-08', '0'),
('103', '13', '18', '1', '2012-12-07 23:25:27', NULL, '4', '2012-12-08', '0'),
('104', '18', '7', '1', '2012-12-11 08:09:44', NULL, '5', '2012-12-11', '0'),
('105', '25', '7', '1', '2012-12-11 08:10:22', NULL, '5', '2012-12-11', '0'),
('106', '22', '3', '1', '2012-12-11 08:14:07', NULL, '5', '2012-12-11', '0'),
('107', '18', '8', '1', '2012-12-11 08:14:53', NULL, '5', '2012-12-11', '0'),
('108', '25', '8', '1', '2012-12-11 08:15:13', NULL, '5', '2012-12-11', '0'),
('109', '20', '7', '1', '2012-12-11 08:16:11', NULL, '5', '2012-12-11', '0'),
('110', '26', '1', '1', '2012-12-11 08:22:36', 'Produksi cepat.', '5', '2012-12-11', '0'),
('111', '30', '20', '1', '2012-12-11 08:27:18', NULL, '5', '2012-12-11', '0'),
('112', '13', '19', '1', '2012-12-11 08:27:18', NULL, '5', '2012-12-11', '0'),
('113', '10', '18', '1', '2012-12-11 08:27:18', NULL, '5', '2012-12-11', '0'),
('114', '12', '16', '1', '2012-12-11 08:27:18', NULL, '5', '2012-12-11', '0'),
('115', '12', '17', '1', '2012-12-11 08:34:21', NULL, '5', '2012-12-11', '0'),
('116', '12', '18', '1', '2012-12-11 08:34:42', NULL, '5', '2012-12-11', '0'),
('117', '30', '21', '1', '2012-12-14 08:12:45', NULL, '5', '2012-12-11', NULL),
('118', '30', '22', '1', '2012-12-11 08:36:43', NULL, '5', '2012-12-11', '0'),
('119', '13', '20', '1', '2012-12-11 08:36:59', NULL, '5', '2012-12-11', '0'),
('120', '10', '19', '1', '2012-12-11 08:37:18', NULL, '5', '2012-12-11', '0'),
('121', '18', '9', '1', '2012-12-11 08:39:11', NULL, '5', '2012-12-11', '0'),
('122', '25', '9', '1', '2012-12-11 08:39:11', NULL, '5', '2012-12-11', '0'),
('123', '20', '8', '1', '2012-12-11 08:39:11', NULL, '5', '2012-12-11', '0'),
('124', '22', '4', '1', '2012-12-12 04:53:35', NULL, '5', '2012-12-12', '0'),
('125', '22', '5', '1', '2012-12-12 04:53:58', NULL, '5', '2012-12-12', '0'),
('126', '22', '6', '1', '2012-12-12 04:54:25', NULL, '5', '2012-12-12', '0'),
('127', '12', '19', '1', '2012-12-12 04:56:45', NULL, '5', '2012-12-12', '0'),
('128', '32', '3', '1', '2012-12-14 08:08:16', NULL, '5', '2012-12-14', NULL),
('129', '32', '3', '1', '2012-12-14 08:08:16', 'Telah diperbaharui.', '5', '2012-12-14', '0'),
('130', '30', '23', '1', '2012-12-14 08:08:40', NULL, '5', '2012-12-14', '0'),
('131', '30', '21', '1', '2012-12-14 08:12:45', 'Dihapus.', '5', '2012-12-14', '0'),
('132', '13', '21', '1', '2012-12-14 08:13:00', NULL, '5', '2012-12-14', '0'),
('133', '30', '24', '1', '2012-12-14 08:16:29', NULL, '5', '2012-12-14', '0'),
('134', '13', '22', '1', '2012-12-14 08:16:29', NULL, '5', '2012-12-14', '0'),
('135', '10', '20', '1', '2012-12-14 08:16:29', NULL, '5', '2012-12-14', '0'),
('136', '12', '20', '1', '2012-12-14 08:28:28', NULL, '5', '2012-12-14', '0'),
('137', '12', '21', '1', '2012-12-14 08:29:20', NULL, '5', '2012-12-14', '0'),
('138', '11', '6', '1', '2012-12-14 09:08:57', NULL, '5', '2012-12-14', '0'),
('139', '11', '7', '1', '2012-12-14 09:14:14', NULL, '5', '2012-12-14', '0'),
('140', '18', '10', '1', '2012-12-17 08:20:45', NULL, '5', '2012-12-17', '0'),
('141', '25', '10', '1', '2012-12-17 08:21:50', NULL, '5', '2012-12-17', '0'),
('142', '26', '2', '1', '2012-12-17 08:25:06', 'Produksi cepat.', '5', '2012-12-17', '0'),
('143', '32', '4', '1', '2012-12-17 08:29:46', NULL, '5', '2012-12-17', '0'),
('144', '30', '25', '1', '2012-12-17 08:31:06', NULL, '5', '2012-12-17', '0'),
('145', '13', '23', '1', '2012-12-17 08:33:13', NULL, '5', '2012-12-17', '0'),
('146', '10', '21', '1', '2012-12-17 08:35:14', NULL, '5', '2012-12-17', '0'),
('147', '30', '26', '1', '2012-12-17 08:36:51', NULL, '5', '2012-12-17', '0'),
('148', '13', '24', '1', '2012-12-17 08:36:51', NULL, '5', '2012-12-17', '0'),
('149', '10', '22', '1', '2012-12-17 08:36:51', NULL, '5', '2012-12-17', '0'),
('150', '12', '22', '1', '2012-12-17 08:38:12', NULL, '5', '2012-12-17', '0'),
('151', '30', '27', '1', '2012-12-17 08:38:57', NULL, '5', '2012-12-17', '0'),
('152', '13', '25', '1', '2012-12-17 08:38:57', NULL, '5', '2012-12-17', '0'),
('153', '10', '23', '1', '2012-12-17 08:38:57', NULL, '5', '2012-12-17', '0'),
('154', '30', '28', '1', '2012-12-17 08:42:17', NULL, '5', '2012-12-17', '0'),
('155', '13', '26', '1', '2012-12-17 08:42:17', NULL, '5', '2012-12-17', '0'),
('156', '10', '24', '1', '2012-12-17 08:42:17', NULL, '5', '2012-12-17', '0'),
('157', '30', '29', '1', '2012-12-17 08:47:19', NULL, '5', '2012-12-17', '0'),
('158', '13', '27', '1', '2012-12-17 08:47:19', NULL, '5', '2012-12-17', '0'),
('159', '10', '25', '1', '2012-12-17 08:47:19', NULL, '5', '2012-12-17', '0'),
('160', '12', '23', '1', '2012-12-17 08:47:19', NULL, '5', '2012-12-17', '0'),
('161', '16', '1', '1', '2012-12-17 08:50:19', NULL, '5', '2012-12-17', '0'),
('162', '30', '30', '1', '2012-12-17 08:55:15', NULL, '5', '2012-12-17', '0'),
('163', '30', '31', '1', '2012-12-17 08:58:47', NULL, '5', '2012-12-17', '0'),
('164', '13', '28', '1', '2012-12-17 09:00:48', NULL, '5', '2012-12-17', '0'),
('165', '30', '32', '1', '2012-12-18 07:16:48', NULL, '5', '2012-12-18', '0'),
('166', '13', '29', '1', '2012-12-18 07:16:48', NULL, '5', '2012-12-18', '0'),
('167', '12', '24', '1', '2012-12-18 07:18:22', NULL, '5', '2012-12-18', '0'),
('168', '13', '30', '1', '2012-12-18 07:20:49', NULL, '5', '2012-12-18', '0'),
('169', '10', '26', '1', '2012-12-18 07:21:49', NULL, '5', '2012-12-18', '0'),
('170', '12', '25', '1', '2012-12-18 07:21:49', NULL, '5', '2012-12-18', '0'),
('171', '18', '11', '1', '2012-12-21 05:51:32', NULL, '5', '2012-12-21', '0'),
('172', '25', '11', '1', '2012-12-21 05:51:32', NULL, '5', '2012-12-21', '0'),
('173', '20', '9', '1', '2012-12-21 05:51:32', NULL, '5', '2012-12-21', '0'),
('174', '18', '12', '1', '2012-12-21 06:25:14', NULL, '5', '2012-12-21', '0'),
('175', '25', '12', '1', '2012-12-21 06:25:14', NULL, '5', '2012-12-21', '0'),
('176', '20', '10', '1', '2012-12-21 06:25:14', NULL, '5', '2012-12-21', '0'),
('177', '18', '13', '1', '2012-12-21 06:29:37', NULL, '5', '2012-12-21', '0'),
('178', '25', '13', '1', '2012-12-21 06:29:37', NULL, '5', '2012-12-21', '0'),
('179', '20', '11', '1', '2012-12-21 06:29:37', NULL, '5', '2012-12-21', '0'),
('180', '18', '14', '1', '2012-12-21 11:31:14', NULL, '5', '2012-12-21', '0'),
('181', '25', '14', '1', '2012-12-21 11:31:57', NULL, '5', '2012-12-21', '0'),
('182', '30', '33', '1', '2013-01-07 06:52:09', NULL, '5', '2012-12-31', '0'),
('183', '30', '34', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('184', '13', '31', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('185', '10', '27', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('186', '18', '15', '1', '2013-01-09 09:01:01', NULL, '6', '2013-01-09', '0'),
('187', '25', '15', '1', '2013-01-09 09:04:31', NULL, '6', '2013-01-09', '0'),
('188', '20', '12', '1', '2013-01-09 09:07:04', NULL, '6', '2013-01-09', '0'),
('189', '30', '35', '1', '2013-01-09 09:15:37', NULL, '6', '2013-01-09', NULL),
('190', '30', '35', '1', '2013-01-09 09:15:37', 'Telah diperbaharui.', '6', '2013-01-09', '0'),
('191', '13', '32', '1', '2013-01-09 09:16:10', NULL, '6', '2013-01-09', '0'),
('192', '13', '33', '1', '2013-01-09 09:16:37', NULL, '6', '2013-01-09', '0'),
('193', '18', '16', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('194', '25', '16', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('195', '20', '13', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('196', '26', '3', '1', '2013-01-09 09:26:24', 'Produksi cepat.', '6', '2013-01-09', '0'),
('197', '30', '36', '1', '2013-01-13 06:06:33', NULL, '6', '2013-01-13', '0'),
('198', '13', '34', '1', '2013-01-13 06:07:04', NULL, '6', '2013-01-13', '0'),
('199', '10', '28', '1', '2013-01-13 06:07:28', NULL, '6', '2013-01-13', '0'),
('200', '18', '17', '1', '2013-01-13 06:14:32', NULL, '6', '2013-01-13', '0'),
('201', '25', '17', '1', '2013-01-13 06:18:00', NULL, '6', '2013-01-13', '0'),
('202', '16', '2', '1', '2013-01-13 06:19:44', NULL, '6', '2013-01-13', '0'),
('203', '26', '4', '1', '2013-01-13 06:19:54', 'Produksi cepat.', '6', '2013-01-13', '0'),
('204', '30', '37', '1', '2013-01-13 06:22:48', NULL, '6', '2013-01-13', '0'),
('205', '13', '35', '1', '2013-01-13 06:22:58', NULL, '6', '2013-01-13', '0'),
('206', '10', '29', '1', '2013-01-13 06:23:06', NULL, '6', '2013-01-13', '0'),
('207', '12', '26', '1', '2013-01-13 06:24:42', NULL, '6', '2013-01-13', '0'),
('208', '12', '27', '1', '2013-01-13 06:25:20', NULL, '6', '2013-01-13', '0'),
('209', '18', '18', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('210', '25', '18', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('211', '20', '14', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('212', '13', '36', '1', '2013-01-23 11:55:21', NULL, '6', '2013-01-23', '0'),
('213', '30', '38', '1', '2013-01-23 11:56:47', NULL, '6', '2013-01-23', '0'),
('214', '18', '19', '1', '2013-01-29 03:58:30', NULL, '6', '2013-01-29', '0'),
('215', '25', '19', '1', '2013-01-29 04:00:27', NULL, '6', '2013-01-29', '0'),
('216', '20', '15', '1', '2013-01-29 04:03:35', NULL, '6', '2013-01-29', '0'),
('217', '18', '20', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0'),
('218', '25', '20', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0'),
('219', '20', '16', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0');

### Structure of table `bank_accounts` ###

DROP TABLE IF EXISTS `bank_accounts`;

CREATE TABLE `bank_accounts` (
  `account_code` varchar(15) NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT '0',
  `bank_account_name` varchar(60) NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) NOT NULL DEFAULT '',
  `bank_name` varchar(60) NOT NULL DEFAULT '',
  `bank_address` tinytext,
  `bank_curr_code` char(3) NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT '0',
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bank_account_name` (`bank_account_name`),
  KEY `bank_account_number` (`bank_account_number`),
  KEY `account_code` (`account_code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

### Data of table `bank_accounts` ###

INSERT INTO `bank_accounts` VALUES
('1060', '0', 'Current account', 'N/A', 'N/A', NULL, 'IDR', '1', '1', '0000-00-00 00:00:00', '0', '0'),
('1065', '3', 'Account Penerimaan Cash', 'N/A', 'N/A', NULL, 'IDR', '0', '2', '0000-00-00 00:00:00', '0', '0');

### Structure of table `bank_trans` ###

DROP TABLE IF EXISTS `bank_trans`;

CREATE TABLE `bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) NOT NULL DEFAULT '',
  `ref` varchar(40) DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) NOT NULL DEFAULT '0',
  `person_id` tinyblob,
  `reconciled` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_act` (`bank_act`,`ref`),
  KEY `type` (`type`,`trans_no`),
  KEY `bank_act_2` (`bank_act`,`reconciled`),
  KEY `bank_act_3` (`bank_act`,`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 ;

### Data of table `bank_trans` ###

INSERT INTO `bank_trans` VALUES
('1', '2', '1', '1', '1', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('2', '2', '2', '1', '2', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('3', '1', '1', '1', '1', '2012-11-30', '-1000000', '0', '0', '0', NULL, NULL),
('4', '2', '3', '2', '3', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('5', '0', '1', '2', '1', '2012-11-30', '-1000000', '0', '0', '0', NULL, NULL),
('6', '22', '1', '1', '1', '2012-11-30', '-10000000', '0', '0', '3', '1', NULL),
('7', '12', '1', '2', '1', '2012-11-30', '0', '0', '0', '2', '1', NULL),
('8', '12', '2', '2', '2', '2012-12-03', '12120000', '0', '0', '2', '1', NULL),
('9', '12', '3', '1', '3', '2012-12-03', '1000000', '0', '0', '2', '1', NULL),
('10', '12', '4', '2', '4', '2012-12-03', '120000', '0', '0', '2', '1', NULL),
('11', '22', '2', '1', '2', '2012-12-03', '-32000000', '0', '0', '3', '1', NULL),
('12', '12', '5', '2', '5', '2012-12-04', '1200000', '0', '0', '2', '2', NULL),
('13', '12', '6', '2', '6', '2012-12-05', '1200000', '0', '0', '2', '2', NULL),
('14', '12', '7', '2', '7', '2012-12-05', '36000', '0', '0', '2', '2', NULL),
('15', '12', '8', '2', '8', '2012-12-05', '4200000', '0', '0', '2', '2', NULL),
('16', '12', '9', '2', '9', '2012-12-05', '4200000', '0', '0', '2', '2', NULL),
('17', '12', '10', '2', '10', '2012-12-05', '4080000', '0', '0', '2', '2', NULL),
('18', '12', '11', '2', '11', '2012-12-05', '3600000', '0', '0', '2', '2', NULL),
('19', '12', '12', '1', '12', '2012-12-05', '3600000', '0', '0', '2', '2', NULL),
('20', '12', '13', '2', '13', '2012-12-07', '3120000', '0', '0', '2', '2', NULL),
('21', '12', '14', '2', '14', '2012-12-07', '600000', '0', '0', '2', '2', NULL),
('22', '12', '15', '1', '15', '2012-12-07', '15000000', '0', '0', '2', '2', NULL),
('23', '22', '3', '1', '3', '2012-12-11', '-15000000', '0', '0', '3', '1', NULL),
('24', '26', '1', '1', NULL, '2012-12-11', '-20000', '0', '0', '1', '1', NULL),
('25', '26', '1', '1', NULL, '2012-12-11', '-100000', '0', '0', '1', '0', NULL),
('26', '12', '16', '2', '16', '2012-12-11', '3132000', '0', '0', '2', '2', NULL),
('27', '12', '17', '1', '17', '2012-12-11', '4920000', '0', '0', '2', '2', NULL),
('28', '12', '18', '1', '18', '2012-12-11', '1000000', '0', '0', '2', '2', NULL),
('29', '22', '4', '1', '4', '2012-12-12', '-3990000', '0', '0', '3', '2', NULL),
('30', '22', '5', '1', '42', '2012-12-12', '-3990000', '0', '0', '3', '2', NULL),
('31', '22', '6', '1', '5', '2012-12-12', '-33600000', '0', '0', '3', '1', NULL),
('32', '12', '19', '1', '19', '2012-12-12', '4800000', '0', '0', '2', '2', NULL),
('33', '12', '20', '1', '20', '2012-12-14', '1000000', '0', '0', '2', '2', NULL),
('34', '12', '21', '1', '21', '2012-12-14', '999000', '0', '0', '2', '2', NULL),
('35', '26', '2', '1', NULL, '2012-12-17', '-15000', '0', '0', '1', '1', NULL),
('36', '26', '2', '1', NULL, '2012-12-17', '-100000', '0', '0', '1', '0', NULL),
('37', '12', '22', '1', '22', '2012-12-17', '226000', '0', '0', '2', '3', NULL),
('38', '12', '23', '2', '23', '2012-12-17', '360000', '0', '0', '2', '1', NULL),
('39', '12', '24', '1', '24', '2012-12-18', '620563', '0', '0', '2', '3', NULL),
('40', '12', '25', '2', '25', '2012-12-18', '360000', '0', '0', '2', '2', NULL),
('41', '26', '3', '1', NULL, '2013-01-09', '-100000', '0', '0', '1', '1', NULL),
('42', '26', '4', '1', NULL, '2013-01-13', '-25000', '0', '0', '1', '1', NULL),
('43', '26', '4', '1', NULL, '2013-01-13', '-200000', '0', '0', '1', '0', NULL),
('44', '12', '26', '1', '26', '2013-01-13', '315000', '0', '0', '2', '4', NULL),
('45', '12', '27', '1', '27', '2013-01-13', '3000000', '0', '0', '2', '4', NULL);

### Structure of table `bom` ###

DROP TABLE IF EXISTS `bom`;

CREATE TABLE `bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` char(20) NOT NULL DEFAULT '',
  `component` char(20) NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  KEY `component` (`component`),
  KEY `id` (`id`),
  KEY `loc_code` (`loc_code`),
  KEY `parent` (`parent`,`loc_code`),
  KEY `workcentre_added` (`workcentre_added`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ;

### Data of table `bom` ###

INSERT INTO `bom` VALUES
('1', 'tuna', 'kabel', '1', 'DEF', '5'),
('2', 'radiorakitan', 'kabel', '1', 'DEF', '5'),
('3', 'radiorakitan', 'transistor', '1', 'DEF', '10'),
('4', 'roti', 'tepung', '2', 'DEF', '1'),
('5', 'roti', 'coklat', '2', 'DEF', '1'),
('6', 'roti', 'gula', '2', 'DEF', '1'),
('7', 'proyek_rsud_klaten', 'elbow', '3', 'DEF', '10'),
('8', 'proyek_rsud_klaten', 'station', '3', 'DEF', '10'),
('9', 'proyek_rsud_klaten', 'pipa', '3', 'DEF', '10'),
('10', 'laptop', 'lcd', '4', 'DEF', '1'),
('11', 'laptop', 'keyboard', '4', 'DEF', '1');

### Structure of table `budget_trans` ###

DROP TABLE IF EXISTS `budget_trans`;

CREATE TABLE `budget_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(16) NOT NULL DEFAULT '1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) NOT NULL DEFAULT '',
  `memo_` tinytext NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

### Data of table `budget_trans` ###

INSERT INTO `budget_trans` VALUES
('1', '0', '1', '2011-01-01', '1060', '', '0', '0', '0', NULL, NULL),
('2', '0', '1', '2011-02-01', '1060', '', '0', '0', '0', NULL, NULL),
('3', '0', '1', '2011-03-01', '1060', '', '0', '0', '0', NULL, NULL),
('4', '0', '1', '2011-04-01', '1060', '', '0', '0', '0', NULL, NULL),
('5', '0', '1', '2011-05-01', '1060', '', '0', '0', '0', NULL, NULL),
('6', '0', '1', '2011-06-01', '1060', '', '0', '0', '0', NULL, NULL),
('7', '0', '1', '2011-07-01', '1060', '', '0', '0', '0', NULL, NULL),
('8', '0', '1', '2011-08-01', '1060', '', '0', '0', '0', NULL, NULL),
('9', '0', '1', '2011-09-01', '1060', '', '0', '0', '0', NULL, NULL),
('10', '0', '1', '2011-10-01', '1060', '', '0', '0', '0', NULL, NULL),
('11', '0', '1', '2011-11-01', '1060', '', '0', '0', '0', NULL, NULL),
('12', '0', '1', '2011-12-01', '1060', '', '1000000', '0', '0', NULL, NULL);

### Structure of table `chart_class` ###

DROP TABLE IF EXISTS `chart_class`;

CREATE TABLE `chart_class` (
  `cid` varchar(3) NOT NULL,
  `class_name` varchar(60) NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_class` ###

INSERT INTO `chart_class` VALUES
('1', 'Assets', '1', '0'),
('2', 'Liabilities', '2', '0'),
('3', 'Income', '4', '0'),
('4', 'Costs', '6', '0');

### Structure of table `chart_master` ###

DROP TABLE IF EXISTS `chart_master`;

CREATE TABLE `chart_master` (
  `account_code` varchar(15) NOT NULL DEFAULT '',
  `account_code2` varchar(15) NOT NULL DEFAULT '',
  `account_name` varchar(60) NOT NULL DEFAULT '',
  `account_type` varchar(10) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_master` ###

INSERT INTO `chart_master` VALUES
('1060', '', 'Checking Account', '1', '0'),
('1065', '', 'Petty Cash', '1', '0'),
('1200', '', 'Accounts Receivables', '1', '0'),
('1205', '', 'Allowance for doubtful accounts', '1', '0'),
('1510', '', 'Inventory', '2', '0'),
('1520', '', 'Stocks of Raw Materials', '2', '0'),
('1530', '', 'Stocks of Work In Progress', '2', '0'),
('1540', '', 'Stocks of Finsihed Goods', '2', '0'),
('1550', '', 'Goods Received Clearing account', '2', '0'),
('1820', '', 'Office Furniture &amp; Equipment', '3', '0'),
('1825', '', 'Accum. Amort. -Furn. &amp; Equip.', '3', '0'),
('1840', '', 'Vehicle', '3', '0'),
('1845', '', 'Accum. Amort. -Vehicle', '3', '0'),
('2100', '', 'Accounts Payable', '4', '0'),
('2110', '', 'Accrued Income Tax - Federal', '4', '0'),
('2120', '', 'Accrued Income Tax - State', '4', '0'),
('2130', '', 'Accrued Franchise Tax', '4', '0'),
('2140', '', 'Accrued Real &amp; Personal Prop Tax', '4', '0'),
('2150', '', 'Sales Tax', '4', '0'),
('2160', '', 'Accrued Use Tax Payable', '4', '0'),
('2210', '', 'Accrued Wages', '4', '0'),
('2220', '', 'Accrued Comp Time', '4', '0'),
('2230', '', 'Accrued Holiday Pay', '4', '0'),
('2240', '', 'Accrued Vacation Pay', '4', '0'),
('2310', '', 'Accr. Benefits - 401K', '4', '0'),
('2320', '', 'Accr. Benefits - Stock Purchase', '4', '0'),
('2330', '', 'Accr. Benefits - Med, Den', '4', '0'),
('2340', '', 'Accr. Benefits - Payroll Taxes', '4', '0'),
('2350', '', 'Accr. Benefits - Credit Union', '4', '0'),
('2360', '', 'Accr. Benefits - Savings Bond', '4', '0'),
('2370', '', 'Accr. Benefits - Garnish', '4', '0'),
('2380', '', 'Accr. Benefits - Charity Cont.', '4', '0'),
('2620', '', 'Bank Loans', '5', '0'),
('2680', '', 'Loans from Shareholders', '5', '0'),
('3350', '', 'Common Shares', '6', '0'),
('3590', '', 'Retained Earnings - prior years', '7', '0'),
('4010', '', 'Sales', '8', '0'),
('4430', '', 'Shipping &amp; Handling', '9', '0'),
('4440', '', 'Interest', '9', '0'),
('4450', '', 'Foreign Exchange Gain', '9', '0'),
('4500', '', 'Prompt Payment Discounts', '9', '0'),
('4510', '', 'Discounts Given', '9', '0'),
('5010', '', 'Cost of Goods Sold - Retail', '10', '0'),
('5020', '', 'Material Usage Varaiance', '10', '0'),
('5030', '', 'Consumable Materials', '10', '0'),
('5040', '', 'Purchase price Variance', '10', '0'),
('5050', '', 'Purchases of materials', '10', '0'),
('5060', '', 'Discounts Received', '10', '0'),
('5100', '', 'Freight', '10', '0'),
('5410', '', 'Wages &amp; Salaries', '11', '0'),
('5420', '', 'Wages - Overtime', '11', '0'),
('5430', '', 'Benefits - Comp Time', '11', '0'),
('5440', '', 'Benefits - Payroll Taxes', '11', '0'),
('5450', '', 'Benefits - Workers Comp', '11', '0'),
('5460', '', 'Benefits - Pension', '11', '0'),
('5470', '', 'Benefits - General Benefits', '11', '0'),
('5510', '', 'Inc Tax Exp - Federal', '11', '0'),
('5520', '', 'Inc Tax Exp - State', '11', '0'),
('5530', '', 'Taxes - Real Estate', '11', '0'),
('5540', '', 'Taxes - Personal Property', '11', '0'),
('5550', '', 'Taxes - Franchise', '11', '0'),
('5560', '', 'Taxes - Foreign Withholding', '11', '0'),
('5610', '', 'Accounting &amp; Legal', '12', '0'),
('5615', '', 'Advertising &amp; Promotions', '12', '0'),
('5620', '', 'Bad Debts', '12', '0'),
('5660', '', 'Amortization Expense', '12', '0'),
('5685', '', 'Insurance', '12', '0'),
('5690', '', 'Interest &amp; Bank Charges', '12', '0'),
('5700', '', 'Office Supplies', '12', '0'),
('5760', '', 'Rent', '12', '0'),
('5765', '', 'Repair &amp; Maintenance', '12', '0'),
('5780', '', 'Telephone', '12', '0'),
('5785', '', 'Travel &amp; Entertainment', '12', '0'),
('5790', '', 'Utilities', '12', '0'),
('5795', '', 'Registrations', '12', '0'),
('5800', '', 'Licenses', '12', '0'),
('5810', '', 'Foreign Exchange Loss', '12', '0'),
('9990', '', 'Year Profit/Loss', '12', '0');

### Structure of table `chart_types` ###

DROP TABLE IF EXISTS `chart_types`;

CREATE TABLE `chart_types` (
  `id` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `class_id` varchar(3) NOT NULL DEFAULT '',
  `parent` varchar(10) NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_types` ###

INSERT INTO `chart_types` VALUES
('1', 'Current Assets', '1', '', '0'),
('2', 'Inventory Assets', '1', '', '0'),
('3', 'Capital Assets', '1', '', '0'),
('4', 'Current Liabilities', '2', '', '0'),
('5', 'Long Term Liabilities', '2', '', '0'),
('6', 'Share Capital', '2', '', '0'),
('7', 'Retained Earnings', '2', '', '0'),
('8', 'Sales Revenue', '3', '', '0'),
('9', 'Other Revenue', '3', '', '0'),
('10', 'Cost of Goods Sold', '4', '', '0'),
('11', 'Payroll Expenses', '4', '', '0'),
('12', 'General &amp; Administrative expenses', '4', '', '0');

### Structure of table `comments` ###

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `comments` ###

INSERT INTO `comments` VALUES
('12', '1', '2012-11-30', 'Invoice tunai 1'),
('20', '2', '2012-12-01', 'auto'),
('12', '2', '2012-12-03', 'Invoice tunai 2'),
('12', '3', '2012-12-03', 'bayar'),
('11', '1', '2012-12-03', 'kabel rusak'),
('12', '4', '2012-12-03', 'Cash invoice 3'),
('12', '5', '2012-12-04', 'Cash invoice 4'),
('20', '3', '2012-12-05', 'invoce dari pt dan kos'),
('12', '6', '2012-12-05', 'Cash invoice 5'),
('12', '7', '2012-12-05', 'Cash invoice 6'),
('12', '8', '2012-12-05', 'Cash invoice 7'),
('12', '9', '2012-12-05', 'Cash invoice 8'),
('12', '10', '2012-12-05', 'Cash invoice 9'),
('12', '11', '2012-12-05', 'Cash invoice 10'),
('20', '4', '2012-12-07', 'auto'),
('12', '13', '2012-12-07', 'Cash invoice 12'),
('12', '14', '2012-12-07', 'Cash invoice 15'),
('12', '15', '2012-12-07', 'nitip uang dulu'),
('20', '6', '2012-12-07', 'auto'),
('22', '3', '2012-12-11', 'titip bayar hutang...'),
('26', '1', '2012-12-11', 'coba merakit radio pertama kali'),
('12', '16', '2012-12-11', 'Invoice tunai 18'),
('12', '18', '2012-12-11', 'titip duit'),
('20', '8', '2012-12-11', 'auto'),
('13', '21', '2012-12-14', 'Sales Quotation # 3'),
('26', '2', '2012-12-17', 'tolong dibuat seenak mungkin...'),
('12', '23', '2012-12-17', 'Invoice tunai 25'),
('12', '25', '2012-12-18', 'Invoice tunai 26'),
('20', '9', '2012-12-21', 'auto'),
('20', '10', '2012-12-21', 'auto'),
('20', '11', '2012-12-21', 'auto'),
('20', '13', '2013-01-09', 'auto'),
('13', '34', '2013-01-13', 'kirim aerocom3000'),
('10', '28', '2013-01-13', 'kirim aerocom3000'),
('20', '14', '2013-01-14', 'auto'),
('20', '16', '2013-01-29', 'auto');

### Structure of table `credit_status` ###

DROP TABLE IF EXISTS `credit_status`;

CREATE TABLE `credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `credit_status` ###

INSERT INTO `credit_status` VALUES
('1', 'Good History', '0', '0'),
('3', 'No more work until payment received', '1', '0'),
('4', 'In liquidation', '1', '0');

### Structure of table `crm_categories` ###

DROP TABLE IF EXISTS `crm_categories`;

CREATE TABLE `crm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key',
  `type` varchar(20) NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) NOT NULL COMMENT 'for category selector',
  `description` tinytext NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`action`),
  UNIQUE KEY `type_2` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

### Data of table `crm_categories` ###

INSERT INTO `crm_categories` VALUES
('1', 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', '1', '0'),
('2', 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', '1', '0'),
('3', 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', '1', '0'),
('4', 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', '1', '0'),
('5', 'customer', 'general', 'General', 'General contact data for customer', '1', '0'),
('6', 'customer', 'order', 'Orders', 'Order confirmation', '1', '0'),
('7', 'customer', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('8', 'customer', 'invoice', 'Invoices', 'Invoice posting', '1', '0'),
('9', 'supplier', 'general', 'General', 'General contact data for supplier', '1', '0'),
('10', 'supplier', 'order', 'Orders', 'Order confirmation', '1', '0'),
('11', 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('12', 'supplier', 'invoice', 'Invoices', 'Invoice posting', '1', '0');

### Structure of table `crm_contacts` ###

DROP TABLE IF EXISTS `crm_contacts`;

CREATE TABLE `crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_contacts',
  `type` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `crm_contacts` ###

INSERT INTO `crm_contacts` VALUES
('1', '1', 'supplier', 'general', '1'),
('2', '2', 'cust_branch', 'general', '1'),
('3', '3', 'cust_branch', 'general', '2'),
('4', '4', 'supplier', 'general', '2'),
('5', '5', 'cust_branch', 'general', '3'),
('6', '6', 'cust_branch', 'general', '4'),
('7', '7', 'cust_branch', 'general', '5'),
('8', '8', 'supplier', 'general', '3'),
('9', '9', 'cust_branch', 'general', '6'),
('10', '10', 'supplier', 'general', '4');

### Structure of table `crm_persons` ###

DROP TABLE IF EXISTS `crm_persons`;

CREATE TABLE `crm_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `name2` varchar(60) DEFAULT NULL,
  `address` tinytext,
  `phone` varchar(30) DEFAULT NULL,
  `phone2` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lang` char(5) DEFAULT NULL,
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ref` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `crm_persons` ###

INSERT INTO `crm_persons` VALUES
('1', 'supplier1', 'mas kontak', NULL, 'alamat surat', NULL, NULL, 'fax', 'fax@email.com', 'id_ID', '', '0'),
('2', 'pelanggan1', 'pelanggan1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('3', 'c1', 'c1', NULL, 'alamat 1', '1234', '123456', '12346', 'jtr@asd.da', NULL, '', '0'),
('4', 'PT DAN KOS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('5', 'atmo', 'atmo dirono', NULL, 'jl. atmodirono 123', '1234', '1234', '123', '1234', NULL, '', '0'),
('6', 'Cabang Utama', 'Cabang Utama', NULL, 'sayung', '1234', '123', '1234', 'sayung@yahoo.com', NULL, '', '0'),
('7', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('8', 'aerocom', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('9', 'rsud-klaten', 'rsud-klaten', NULL, 'klaten', '1234', '23412', NULL, NULL, NULL, '', '0'),
('10', 'aam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0');

### Structure of table `currencies` ###

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `currency` varchar(60) NOT NULL DEFAULT '',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `currencies` ###

INSERT INTO `currencies` VALUES
('US Dollars', 'USD', '$', 'United States', 'Cents', '1', '0'),
('CA Dollars', 'CAD', '$', 'Canada', 'Cents', '1', '0'),
('Euro', 'EUR', '?', 'Europe', 'Cents', '1', '0'),
('Pounds', 'GBP', '?', 'England', 'Pence', '1', '0'),
('Rupiah', 'IDR', 'Rp', 'Indonesia', 'ribu', '1', '0');

### Structure of table `cust_allocations` ###

DROP TABLE IF EXISTS `cust_allocations`;

CREATE TABLE `cust_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ;

### Data of table `cust_allocations` ###

INSERT INTO `cust_allocations` VALUES
('1', '0', '2012-11-30', '1', '12', '1', '10'),
('3', '120000', '2012-12-03', '4', '12', '3', '10'),
('4', '12120000', '2012-12-03', '2', '12', '2', '10'),
('6', '600000', '2012-12-04', '5', '12', '4', '10'),
('7', '600000', '2012-12-04', '5', '11', '4', '10'),
('8', '1200000', '2012-12-05', '6', '12', '5', '10'),
('9', '36000', '2012-12-05', '7', '12', '6', '10'),
('10', '4200000', '2012-12-05', '8', '12', '7', '10'),
('11', '4200000', '2012-12-05', '9', '12', '8', '10'),
('12', '4080000', '2012-12-05', '10', '12', '9', '10'),
('13', '3600000', '2012-12-05', '11', '12', '10', '10'),
('14', '3600000', '2012-12-05', '12', '12', '11', '10'),
('15', '3120000', '2012-12-07', '13', '12', '12', '10'),
('16', '600000', '2012-12-07', '14', '12', '15', '10'),
('18', '1320000', '2012-12-11', '15', '12', '13', '10'),
('19', '1680000', '2012-12-11', '15', '12', '16', '10'),
('20', '12000000', '2012-12-11', '15', '12', '14', '10'),
('21', '3132000', '2012-12-11', '16', '12', '18', '10'),
('22', '4320000', '2012-12-11', '17', '12', '16', '10'),
('23', '600000', '2012-12-11', '17', '12', '17', '10'),
('24', '4800000', '2012-12-12', '19', '12', '19', '10'),
('25', '100000', '2012-12-17', '22', '12', '21', '10'),
('26', '126000', '2012-12-17', '22', '12', '22', '10'),
('27', '360000', '2012-12-17', '23', '12', '25', '10'),
('28', '377225', '2012-12-18', '24', '12', '21', '10'),
('29', '238613', '2012-12-18', '24', '12', '23', '10'),
('30', '4725', '2012-12-18', '24', '12', '24', '10'),
('31', '360000', '2012-12-18', '25', '12', '26', '10'),
('32', '315000', '2013-01-13', '26', '12', '28', '10'),
('33', '3000000', '2013-01-13', '27', '12', '29', '10');

### Structure of table `cust_branch` ###

DROP TABLE IF EXISTS `cust_branch`;

CREATE TABLE `cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(60) NOT NULL DEFAULT '',
  `branch_ref` varchar(30) NOT NULL DEFAULT '',
  `br_address` tinytext NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT '0',
  `contact_name` varchar(60) NOT NULL DEFAULT '',
  `default_location` varchar(5) NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) NOT NULL DEFAULT '',
  `receivables_account` varchar(15) NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT '1',
  `disable_trans` tinyint(4) NOT NULL DEFAULT '0',
  `br_post_address` tinytext NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT '0',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_code` (`branch_code`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `cust_branch` ###

INSERT INTO `cust_branch` VALUES
('1', '1', 'pelanggan1', 'pelanggan1', '', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', '', '0', '', '0'),
('2', '2', 'c1', 'c1', 'alamat 1', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'alamat 1', '0', '', '0'),
('3', '3', 'atmo', 'atmo dirono', 'jl. atmodirono 123', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'jl. atmodirono 123', '0', '', '0'),
('4', '0', 'sayung', 'sayung', 'sayung', '1', '2', '', 'SYG', '1', '', '4510', '1200', '4500', '1', '0', 'sayung', '2', 'fsadcasdg', '0'),
('5', '0', 'kudus', 'kudus', '', '1', '3', '', 'KUDUS', '1', '', '4510', '1200', '4500', '1', '0', '', '2', '', '0'),
('6', '4', 'rsud-klaten', 'rsud-klaten', 'klaten', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'klaten', '0', '', '0');

### Structure of table `debtor_trans` ###

DROP TABLE IF EXISTS `debtor_trans`;

CREATE TABLE `debtor_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `branch_code` int(11) NOT NULL DEFAULT '-1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT '0',
  `order_` int(11) NOT NULL DEFAULT '0',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `ov_freight` double NOT NULL DEFAULT '0',
  `ov_freight_tax` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`trans_no`),
  KEY `debtor_no` (`debtor_no`,`branch_code`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `debtor_trans` ###

INSERT INTO `debtor_trans` VALUES
('1', '10', '0', '1', '1', '2012-11-30', '2012-11-30', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '10', '0', '1', '1', '2012-12-03', '2012-12-03', '2', '1', '2', '12120000', '0', '0', '0', '0', '12120000', '1', '1', '0', '0', '4'),
('3', '10', '0', '1', '1', '2012-12-03', '2012-12-03', '3', '1', '3', '120000', '0', '0', '0', '0', '120000', '1', '1', '0', '0', '4'),
('4', '10', '1', '2', '2', '2012-12-04', '2012-12-04', '4', '1', '5', '1200000', '0', '0', '0', '0', '1200000', '1', '1', '0', '0', '4'),
('5', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '5', '1', '4', '1200000', '0', '0', '0', '0', '1200000', '1', '1', '0', '0', '4'),
('6', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '6', '1', '6', '36000', '0', '0', '0', '0', '36000', '1', '1', '0', '0', '4'),
('7', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '7', '1', '7', '4200000', '0', '0', '0', '0', '4200000', '1', '1', '0', '0', '4'),
('8', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '8', '1', '8', '4200000', '0', '0', '0', '0', '4200000', '1', '1', '0', '0', '4'),
('9', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '9', '1', '9', '4080000', '0', '0', '0', '0', '4080000', '1', '1', '0', '0', '4'),
('10', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '10', '1', '10', '3600000', '0', '0', '0', '0', '3600000', '1', '1', '0', '0', '4'),
('11', '10', '0', '2', '2', '2012-12-05', '2012-12-15', '11', '1', '11', '3600000', '0', '0', '0', '0', '3600000', '1', '1', '0', '0', '3'),
('12', '10', '0', '2', '2', '2012-12-07', '2012-12-07', '12', '1', '13', '3120000', '0', '0', '0', '0', '3120000', '1', '1', '0', '0', '4'),
('13', '10', '0', '2', '2', '2012-12-07', '2013-01-17', '13', '1', '14', '1320000', '0', '0', '0', '0', '1320000', '1', '1', '0', '0', '1'),
('14', '10', '0', '2', '2', '2012-12-07', '2013-01-17', '14', '1', '15', '12000000', '0', '0', '0', '0', '12000000', '1', '1', '0', '0', '1'),
('15', '10', '0', '2', '2', '2012-12-07', '2012-12-07', '15', '1', '16', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '4'),
('16', '10', '0', '2', '2', '2012-12-07', '2012-12-17', '16', '1', '17', '6000000', '0', '0', '0', '0', '6000000', '1', '1', '0', '0', '3'),
('17', '10', '0', '2', '2', '2012-12-07', '2012-12-17', '17', '1', '18', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '3'),
('18', '10', '0', '2', '2', '2012-12-11', '2012-12-11', '18', '1', '20', '3132000', '0', '0', '0', '0', '3132000', '1', '1', '0', '0', '4'),
('19', '10', '0', '2', '2', '2012-12-11', '2012-12-21', '19', '1', '22', '4800000', '0', '0', '0', '0', '4800000', '1', '1', '0', '0', '3'),
('20', '10', '0', '2', '2', '2012-12-14', '2013-01-30', '20', '1', '24', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('21', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '21', '3', '25', '454500', '22725', '0', '0', '0', '477225', '1', '1', '0', '0', '3'),
('22', '10', '0', '3', '3', '2012-12-17', '2013-01-15', '22', '3', '26', '120000', '6000', '0', '0', '0', '126000', '1', '1', '0', '0', '1'),
('23', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '23', '3', '27', '227250', '11363', '0', '0', '0', '238613', '1', '1', '0', '0', '3'),
('24', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '24', '3', '28', '4500', '225', '0', '0', '0', '4725', '1', '1', '0', '0', '3'),
('25', '10', '0', '1', '1', '2012-12-17', '2012-12-17', '25', '1', '29', '360000', '0', '0', '0', '0', '360000', '1', '1', '0', '0', '4'),
('26', '10', '0', '2', '2', '2012-12-18', '2012-12-18', '26', '1', '19', '360000', '0', '0', '0', '0', '360000', '1', '1', '0', '0', '4'),
('27', '10', '0', '3', '3', '2013-01-08', '2013-01-18', '27', '3', '34', '92510', '4626', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('28', '10', '0', '4', '6', '2013-01-13', '2013-01-23', '28', '3', '36', '300000', '15000', '0', '0', '0', '315000', '1', '1', '0', '0', '3'),
('29', '10', '0', '4', '6', '2013-01-13', '2013-01-23', '29', '5', '37', '5875000', '293750', '0', '0', '0', '3000000', '1', '1', '0', '0', '3'),
('1', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '1', '1', '0', '240000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '2', '1', '0', '12000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('3', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '3', '1', '0', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('4', '11', '0', '2', '2', '2012-12-04', '0000-00-00', '4', '1', '0', '2400000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('5', '11', '0', '2', '2', '2012-12-04', '0000-00-00', '5', '1', '5', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '4'),
('6', '11', '0', '1', '1', '2012-12-14', '0000-00-00', '6', '1', '0', '18000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('7', '11', '0', '2', '2', '2012-12-14', '0000-00-00', '7', '1', '0', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('1', '12', '0', '1', '1', '2012-11-30', '0000-00-00', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('2', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '2', '0', '0', '12120000', '0', '0', '0', '0', '12120000', '1', '0', '0', '0', NULL),
('3', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '3', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('4', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '4', '0', '0', '120000', '0', '0', '0', '0', '120000', '1', '0', '0', '0', NULL),
('5', '12', '0', '2', '2', '2012-12-04', '0000-00-00', '5', '0', '0', '1200000', '0', '0', '0', '0', '600000', '1', '0', '0', '0', NULL),
('6', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '6', '0', '0', '1200000', '0', '0', '0', '0', '1200000', '1', '0', '0', '0', NULL),
('7', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '7', '0', '0', '36000', '0', '0', '0', '0', '36000', '1', '0', '0', '0', NULL),
('8', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '8', '0', '0', '4200000', '0', '0', '0', '0', '4200000', '1', '0', '0', '0', NULL),
('9', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '9', '0', '0', '4200000', '0', '0', '0', '0', '4200000', '1', '0', '0', '0', NULL),
('10', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '10', '0', '0', '4080000', '0', '0', '0', '0', '4080000', '1', '0', '0', '0', NULL),
('11', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '11', '0', '0', '3600000', '0', '0', '0', '0', '3600000', '1', '0', '0', '0', NULL),
('12', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '12', '0', '0', '3600000', '0', '0', '0', '0', '3600000', '1', '0', '0', '0', NULL),
('13', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '13', '0', '0', '3120000', '0', '0', '0', '0', '3120000', '1', '0', '0', '0', NULL),
('14', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '14', '0', '0', '600000', '0', '0', '0', '0', '600000', '1', '0', '0', '0', NULL),
('15', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '15', '0', '0', '15000000', '0', '0', '0', '0', '15000000', '1', '0', '0', '0', NULL),
('16', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '16', '0', '0', '3132000', '0', '0', '0', '0', '3132000', '1', '0', '0', '0', NULL),
('17', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '17', '0', '0', '4920000', '0', '0', '0', '0', '4920000', '1', '0', '0', '0', NULL),
('18', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '18', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('19', '12', '0', '2', '2', '2012-12-12', '0000-00-00', '19', '0', '0', '4800000', '0', '0', '0', '0', '4800000', '1', '0', '0', '0', NULL),
('20', '12', '0', '2', '2', '2012-12-14', '0000-00-00', '20', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('21', '12', '0', '2', '2', '2012-12-14', '0000-00-00', '21', '0', '0', '999000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('22', '12', '0', '3', '3', '2012-12-17', '0000-00-00', '22', '0', '0', '226000', '0', '0', '0', '0', '226000', '1', '0', '0', '0', NULL),
('23', '12', '0', '1', '1', '2012-12-17', '0000-00-00', '23', '0', '0', '360000', '0', '0', '0', '0', '360000', '1', '0', '0', '0', NULL),
('24', '12', '0', '3', '3', '2012-12-18', '0000-00-00', '24', '0', '0', '620563', '0', '0', '0', '0', '620563', '1', '0', '0', '0', NULL),
('25', '12', '0', '2', '2', '2012-12-18', '0000-00-00', '25', '0', '0', '360000', '0', '0', '0', '0', '360000', '1', '0', '0', '0', NULL),
('26', '12', '0', '4', '6', '2013-01-13', '0000-00-00', '26', '0', '0', '315000', '0', '0', '0', '0', '315000', '1', '0', '0', '0', NULL),
('27', '12', '0', '4', '6', '2013-01-13', '0000-00-00', '27', '0', '0', '3000000', '0', '0', '0', '0', '3000000', '1', '0', '0', '0', NULL),
('1', '13', '1', '1', '1', '2012-11-30', '2012-11-30', 'auto', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '13', '1', '1', '1', '2012-12-03', '2012-12-04', '1', '1', '2', '12120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('3', '13', '1', '1', '1', '2012-12-03', '2012-12-03', 'auto', '1', '3', '120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('4', '13', '1', '2', '2', '2012-12-04', '2012-12-05', '2', '1', '4', '1200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('5', '13', '1', '2', '2', '2012-12-04', '2012-12-04', 'auto', '1', '5', '1200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('6', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '3', '1', '6', '36000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('7', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '7', '4200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('8', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '8', '4200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('9', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '9', '4080000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('10', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '4', '1', '10', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('11', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '5', '1', '11', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('12', '13', '1', '2', '2', '2012-12-07', '2012-12-07', 'auto', '1', '13', '3120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('13', '13', '1', '2', '2', '2012-12-07', '2013-01-17', 'auto', '1', '14', '1320000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('14', '13', '1', '2', '2', '2012-12-07', '2013-01-17', 'auto', '1', '15', '12000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('15', '13', '1', '2', '2', '2012-12-07', '2012-12-07', 'auto', '1', '16', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('16', '13', '1', '2', '2', '2012-12-07', '2012-12-17', 'auto', '1', '17', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('17', '13', '1', '2', '2', '2012-12-07', '2012-12-08', '6', '1', '18', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('18', '13', '1', '2', '2', '2012-12-08', '2012-12-08', '7', '1', '19', '360000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('19', '13', '1', '2', '2', '2012-12-11', '2012-12-11', 'auto', '1', '20', '3132000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('20', '13', '1', '2', '2', '2012-12-11', '2012-12-12', '8', '1', '22', '4800000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('21', '13', '0', '2', '2', '2012-12-14', '2012-12-15', '9', '1', '23', '720000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('22', '13', '1', '2', '2', '2012-12-14', '2013-01-30', 'auto', '1', '24', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('23', '13', '1', '3', '3', '2012-12-17', '2012-12-18', '10', '3', '25', '454500', '22725', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('24', '13', '1', '3', '3', '2012-12-17', '2013-01-15', 'auto', '3', '26', '120000', '6000', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('25', '13', '1', '3', '3', '2012-12-17', '2012-12-27', 'auto', '3', '27', '227250', '11363', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('26', '13', '1', '3', '3', '2012-12-17', '2012-12-27', 'auto', '3', '28', '4500', '225', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('27', '13', '1', '1', '1', '2012-12-17', '2012-12-17', 'auto', '1', '29', '360000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('28', '13', '0', '1', '1', '2012-12-17', '2012-12-18', '11', '1', '31', '120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('29', '13', '0', '3', '3', '2012-12-18', '2012-12-28', '12', '3', '32', '150000', '7500', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('30', '13', '0', '1', '1', '2012-12-18', '2012-12-18', '13', '1', '30', '10800', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('31', '13', '1', '3', '3', '2013-01-08', '2013-01-18', 'auto', '3', '34', '92510', '4626', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('32', '13', '0', '3', '3', '2013-01-09', '2013-01-01', '14', '1', '33', '240000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('33', '13', '0', '2', '2', '2013-01-09', '2012-12-06', '15', '1', '12', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('34', '13', '1', '4', '6', '2013-01-13', '2013-01-14', '16', '3', '36', '300000', '15000', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('35', '13', '1', '4', '6', '2013-01-13', '2013-01-14', '17', '5', '37', '5875000', '293750', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('36', '13', '0', '4', '6', '2013-01-23', '2013-01-10', '18', '3', '35', '150000', '7500', '0', '0', '0', '0', '1', '1', '0', '0', '3');

### Structure of table `debtor_trans_details` ###

DROP TABLE IF EXISTS `debtor_trans_details`;

CREATE TABLE `debtor_trans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `qty_done` double NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 ;

### Data of table `debtor_trans_details` ###

INSERT INTO `debtor_trans_details` VALUES
('1', '1', '13', 'kabel', 'kabel', '0', '0', '1', '0', '100000', '1', '1'),
('2', '1', '10', 'kabel', 'kabel', '0', '0', '1', '0', '100000', '0', '1'),
('3', '2', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '1', '2'),
('4', '2', '13', 'speaker', 'speaker', '120000', '5714', '100', '0', '100000', '100', '3'),
('5', '2', '10', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '3'),
('6', '2', '10', 'speaker', 'speaker', '120000', '5714.29', '100', '0', '100000', '0', '4'),
('7', '1', '11', 'kabel', 'kabel', '120000', '5714', '2', '0', '0', '0', '0'),
('8', '2', '11', 'speaker', 'speaker', '120000', '5714', '100', '0', '0', '0', '0'),
('9', '3', '11', 'ghostdetector', 'ghost detector', '36000', '1714', '100', '0', '0', '0', '0'),
('10', '3', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '1', '4'),
('11', '3', '10', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '10'),
('12', '4', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '5'),
('13', '4', '11', 'kabel', 'kabel', '120000', '5714', '20', '0', '0', '0', '0'),
('14', '5', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '6'),
('15', '4', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '5', '14'),
('16', '5', '11', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '0', '15'),
('17', '6', '13', 'decolgen', 'decolgen', '3600', '171', '10', '0', '3000', '10', '8'),
('18', '5', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '0', '12'),
('19', '6', '10', 'decolgen', 'decolgen', '3600', '171.4', '10', '0', '3000', '0', '17'),
('20', '7', '13', 'kabel', 'kabel', '120000', '5714', '35', '0', '100000', '35', '9'),
('21', '7', '10', 'kabel', 'kabel', '120000', '5714.2857142857', '35', '0', '100000', '0', '20'),
('22', '8', '13', 'kabel', 'kabel', '120000', '5714', '35', '0', '100000', '35', '10'),
('23', '8', '10', 'kabel', 'kabel', '120000', '5714.2857142857', '35', '0', '100000', '0', '22'),
('24', '9', '13', 'kabel', 'kabel', '120000', '5714', '34', '0', '100000', '34', '11'),
('25', '9', '10', 'kabel', 'kabel', '120000', '5714.2941176471', '34', '0', '100000', '0', '24'),
('26', '10', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '100000', '30', '12'),
('27', '10', '10', 'kabel', 'kabel', '120000', '5714.3', '30', '0', '100000', '0', '26'),
('28', '11', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '100000', '30', '13'),
('29', '11', '10', 'kabel', 'kabel', '120000', '5714.3', '30', '0', '100000', '0', '28'),
('30', '12', '13', 'decolgen', 'decolgen', '3600', '171', '200', '0', '3000', '200', '15'),
('31', '12', '13', 'kabel', 'kabel', '120000', '5714', '20', '0', '100000', '20', '16'),
('32', '12', '10', 'decolgen', 'decolgen', '3600', '171.43', '200', '0', '3000', '0', '30'),
('33', '12', '10', 'kabel', 'kabel', '120000', '5714.3', '20', '0', '100000', '0', '31'),
('34', '13', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '17'),
('35', '13', '13', 'speaker', 'speaker', '120000', '5714', '1', '0', '100000', '1', '18'),
('36', '13', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '0', '34'),
('37', '13', '10', 'speaker', 'speaker', '120000', '5714', '1', '0', '100000', '0', '35'),
('38', '14', '13', 'kabel', 'kabel', '120000', '5714', '100', '0', '100000', '100', '19'),
('39', '14', '10', 'kabel', 'kabel', '120000', '5714.29', '100', '0', '100000', '0', '38'),
('40', '15', '13', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '5', '20'),
('41', '15', '10', 'kabel', 'kabel', '120000', '5714.2', '5', '0', '100000', '0', '40'),
('42', '16', '13', 'kabel', 'kabel', '120000', '5714', '50', '0', '100000', '50', '21'),
('43', '16', '10', 'kabel', 'kabel', '120000', '5714.28', '50', '0', '100000', '0', '42'),
('44', '17', '13', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '5', '23'),
('45', '17', '10', 'kabel', 'kabel', '120000', '5714.2', '5', '0', '100000', '0', '44'),
('46', '18', '13', 'kabel', 'kabel', '120000', '5714', '3', '0', '100000', '3', '24'),
('47', '19', '13', 'radiorakitan', 'radio rakitan', '626400', '29829', '5', '0', '522000', '5', '25'),
('48', '18', '10', 'radiorakitan', 'radio rakitan', '626400', '29828.6', '5', '0', '522000', '0', '47'),
('49', '20', '13', 'kabel', 'kabel', '120000', '5714', '40', '0', '100000', '40', '27'),
('50', '19', '10', 'kabel', 'kabel', '120000', '5714.275', '40', '0', '100000', '0', '49'),
('51', '21', '13', 'decolgen', 'decolgen', '3600', '171', '200', '0', '3000', '0', '29'),
('52', '22', '13', 'kabel', 'kabel', '120000', '5714', '50', '0', '100000', '50', '30'),
('53', '20', '10', 'kabel', 'kabel', '120000', '5714.28', '50', '0', '100000', '0', '52'),
('54', '6', '11', 'decolgen', 'decolgen', '3600', '171', '5', '0', '0', '0', '0'),
('55', '7', '11', 'kabel', 'kabel', '120000', '5714', '5', '0', '0', '0', '0'),
('56', '23', '13', 'roti', 'roti coklat', '45450', '2273', '10', '0', '30300', '10', '32'),
('57', '21', '10', 'roti', 'roti coklat', '45450', '2272.5', '10', '0', '30300', '0', '56'),
('58', '24', '13', 'tepung', 'tepung', '4500', '225', '20', '0', '3000', '20', '33'),
('59', '24', '13', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '1', '34'),
('60', '22', '10', 'tepung', 'tepung', '4500', '225', '20', '0', '3000', '0', '58'),
('61', '22', '10', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '0', '59'),
('62', '25', '13', 'roti', 'roti coklat', '45450', '2273', '5', '0', '30300', '5', '35'),
('63', '23', '10', 'roti', 'roti coklat', '45450', '2272.6', '5', '0', '30300', '0', '62'),
('64', '26', '13', 'tepung', 'tepung', '4500', '225', '1', '0', '3000', '1', '36'),
('65', '24', '10', 'tepung', 'tepung', '4500', '225', '1', '0', '3000', '0', '64'),
('66', '27', '13', 'kabel', 'kabel', '120000', '5714', '3', '0', '100000', '3', '37'),
('67', '25', '10', 'kabel', 'kabel', '120000', '5714.3333333333', '3', '0', '100000', '0', '66'),
('68', '28', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '39'),
('69', '29', '13', 'kabel', 'kabel', '150000', '7500', '1', '0', '100000', '0', '40'),
('70', '30', '13', 'tepung', 'tepung', '3600', '171', '3', '0', '3000', '0', '38'),
('71', '26', '10', 'kabel', 'kabel', '120000', '5714.3333333333', '3', '0', '100000', '0', '46'),
('72', '31', '13', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '1', '42'),
('73', '31', '13', 'gula', 'gula', '6251', '313', '10', '0', '4166.6666666667', '10', '43'),
('74', '27', '10', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '0', '72'),
('75', '27', '10', 'gula', 'gula', '6251', '312.6', '10', '0', '4166.6666666667', '0', '73'),
('76', '32', '13', 'coklat', 'coklat', '24000', '1143', '10', '0', '20000', '0', '41'),
('77', '33', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '101024.59016393', '0', '14'),
('78', '34', '13', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '2', '0', '100000', '2', '46'),
('79', '28', '10', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '2', '0', '100000', '0', '78'),
('80', '35', '13', 'laptop', 'laptop', '5875000', '293750', '1', '0', '1175000.0000000002', '1', '47'),
('81', '29', '10', 'laptop', 'laptop', '5875000', '293750', '1', '0', '1175000.0000000002', '0', '80'),
('82', '36', '13', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '1', '0', '100000', '0', '45');

### Structure of table `debtors_master` ###

DROP TABLE IF EXISTS `debtors_master`;

CREATE TABLE `debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) NOT NULL,
  `address` tinytext,
  `tax_id` varchar(55) NOT NULL DEFAULT '',
  `curr_code` char(3) NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT '1',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `credit_status` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `pymt_discount` double NOT NULL DEFAULT '0',
  `credit_limit` float NOT NULL DEFAULT '1000',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `debtors_master` ###

INSERT INTO `debtors_master` VALUES
('1', 'pelanggan1', 'pelanggan1', NULL, '', 'IDR', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0'),
('2', 'c1', 'c1', 'alamat 1', '1234', 'IDR', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0'),
('3', 'atmo', 'atmo dirono', 'jl. atmodirono 123', '112.124.23.2.1423', 'IDR', '3', '0', '0', '1', '3', '0', '0', '1000', '', '0'),
('4', 'rsud-klaten', 'rsud-klaten', 'klaten', '123.214123', 'IDR', '3', '0', '0', '1', '3', '0', '0', '1000', '', '0');

### Structure of table `dimensions` ###

DROP TABLE IF EXISTS `dimensions`;

CREATE TABLE `dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `date_` (`date_`),
  KEY `due_date` (`due_date`),
  KEY `type_` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `dimensions` ###


### Structure of table `exchange_rates` ###

DROP TABLE IF EXISTS `exchange_rates`;

CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `exchange_rates` ###

INSERT INTO `exchange_rates` VALUES
('1', 'USD', '9612.3672464214', '9612.3672464214', '2012-11-30');

### Structure of table `fiscal_year` ###

DROP TABLE IF EXISTS `fiscal_year`;

CREATE TABLE `fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `fiscal_year` ###

INSERT INTO `fiscal_year` VALUES
('4', '2011-01-01', '2011-12-31', '1'),
('5', '2012-01-01', '2012-12-31', '0'),
('6', '2013-01-01', '2013-12-31', '0');

### Structure of table `gl_trans` ###

DROP TABLE IF EXISTS `gl_trans`;

CREATE TABLE `gl_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(16) NOT NULL DEFAULT '1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) NOT NULL DEFAULT '',
  `memo_` tinytext NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `dimension_id` (`dimension_id`),
  KEY `dimension2_id` (`dimension2_id`),
  KEY `tran_date` (`tran_date`),
  KEY `account_and_tran_date` (`account`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=latin1 ;

### Data of table `gl_trans` ###

INSERT INTO `gl_trans` VALUES
('1', '25', '1', '2012-11-30', '1510', 'kabel', '10000000', '0', '0', '3', '1'),
('2', '25', '1', '2012-11-30', '1510', 'speaker', '10000000', '0', '0', '3', '1'),
('3', '25', '1', '2012-11-30', '1550', '', '-20000000', '0', '0', '3', NULL),
('4', '20', '1', '2012-11-30', '2100', '', '-21000000', '0', '0', '3', '1'),
('5', '20', '1', '2012-11-30', '1550', '', '10000000', '0', '0', '3', '1'),
('6', '20', '1', '2012-11-30', '1550', '', '10000000', '0', '0', '3', '1'),
('7', '20', '1', '2012-11-30', '2150', '', '1000000', '0', '0', '3', '1'),
('8', '2', '1', '2012-11-30', '4010', '', '-100000000', '0', '0', '0', NULL),
('9', '2', '1', '2012-11-30', '1060', '', '100000000', '0', '0', '0', NULL),
('10', '2', '2', '2012-11-30', '4010', 'sales setoran 100jt', '-100000000', '0', '0', '0', NULL),
('11', '2', '2', '2012-11-30', '1060', '', '100000000', '0', '0', '0', NULL),
('12', '1', '1', '2012-11-30', '4010', 'bank account payment from sales 1jt', '1000000', '0', '0', '0', NULL),
('13', '1', '1', '2012-11-30', '1060', '', '-1000000', '0', '0', '0', NULL),
('14', '2', '3', '2012-11-30', '4010', 'sales setoran 100jt ke petty cash', '-100000000', '0', '0', '0', NULL),
('15', '2', '3', '2012-11-30', '1065', '', '100000000', '0', '0', '0', NULL),
('16', '0', '1', '2012-11-30', '1510', 'inventory kebobolan 1jt', '1000000', '0', '0', NULL, NULL),
('17', '0', '1', '2012-11-30', '1065', 'petty cash nemu uang 1jt', '-1000000', '0', '0', NULL, NULL),
('18', '22', '1', '2012-11-30', '2100', '', '10000000', '0', '0', '3', '1'),
('19', '22', '1', '2012-11-30', '1060', '', '-10000000', '0', '0', '3', '1'),
('20', '13', '1', '2012-11-30', '5010', '', '100000', '0', '0', '2', '1'),
('21', '13', '1', '2012-11-30', '1510', '', '-100000', '0', '0', '2', '1'),
('22', '12', '1', '2012-11-30', '1065', '', '0', '0', '0', '2', '1'),
('23', '25', '2', '2012-12-01', '1510', 'kabel', '20000000', '0', '0', '3', '1'),
('24', '25', '2', '2012-12-01', '1550', '', '-20000000', '0', '0', '3', NULL),
('25', '20', '2', '2012-12-01', '2100', '', '-21000000', '0', '0', '3', '1'),
('26', '20', '2', '2012-12-01', '1550', '', '20000000', '0', '0', '3', '1'),
('27', '20', '2', '2012-12-01', '2150', '', '1000000', '0', '0', '3', '1'),
('28', '13', '2', '2012-12-03', '5010', '', '100000', '0', '0', '2', '1'),
('29', '13', '2', '2012-12-03', '1510', '', '-100000', '0', '0', '2', '1'),
('30', '13', '2', '2012-12-03', '5010', '', '10000000', '0', '0', '2', '1'),
('31', '13', '2', '2012-12-03', '1510', '', '-10000000', '0', '0', '2', '1'),
('32', '10', '2', '2012-12-03', '4010', '', '-114286', '0', '0', '2', '1'),
('33', '10', '2', '2012-12-03', '4010', '', '-11428571', '0', '0', '2', '1'),
('34', '10', '2', '2012-12-03', '1200', '', '12120000', '0', '0', '2', '1'),
('35', '10', '2', '2012-12-03', '2150', '', '-577143', '0', '0', '2', '1'),
('36', '12', '2', '2012-12-03', '1065', '', '12120000', '0', '0', '2', '1'),
('37', '12', '2', '2012-12-03', '1200', '', '-12120000', '0', '0', '2', '1'),
('38', '12', '3', '2012-12-03', '1060', '', '1000000', '0', '0', '2', '1'),
('39', '12', '3', '2012-12-03', '1200', '', '-1000000', '0', '0', '2', '1'),
('40', '11', '1', '2012-12-03', '5010', '', '-200000', '0', '0', '2', '1'),
('41', '11', '1', '2012-12-03', '1510', '', '200000', '0', '0', '2', '1'),
('42', '11', '1', '2012-12-03', '4010', '', '228572', '0', '0', '2', '1'),
('43', '11', '1', '2012-12-03', '1200', '', '-240000', '0', '0', '2', '1'),
('44', '11', '1', '2012-12-03', '2150', '', '11429', '0', '0', '2', '1'),
('45', '11', '1', '2012-12-03', '4450', '', '-1', '0', '0', '2', '1'),
('46', '11', '2', '2012-12-03', '5010', '', '-10000000', '0', '0', '2', '1'),
('47', '11', '2', '2012-12-03', '1510', '', '10000000', '0', '0', '2', '1'),
('48', '11', '2', '2012-12-03', '4010', '', '11428600', '0', '0', '2', '1'),
('49', '11', '2', '2012-12-03', '1200', '', '-12000000', '0', '0', '2', '1'),
('50', '11', '2', '2012-12-03', '2150', '', '571429', '0', '0', '2', '1'),
('51', '11', '2', '2012-12-03', '4450', '', '-29', '0', '0', '2', '1'),
('52', '11', '3', '2012-12-03', '5010', '', '-3000000', '0', '0', '2', '1'),
('53', '11', '3', '2012-12-03', '1510', '', '3000000', '0', '0', '2', '1'),
('54', '11', '3', '2012-12-03', '4010', '', '3428600', '0', '0', '2', '1'),
('55', '11', '3', '2012-12-03', '1200', '', '-3600000', '0', '0', '2', '1'),
('56', '11', '3', '2012-12-03', '2150', '', '171429', '0', '0', '2', '1'),
('57', '11', '3', '2012-12-03', '4450', '', '-29', '0', '0', '2', '1'),
('58', '13', '3', '2012-12-03', '5010', '', '100000', '0', '0', '2', '1'),
('59', '13', '3', '2012-12-03', '1510', '', '-100000', '0', '0', '2', '1'),
('60', '10', '3', '2012-12-03', '4010', '', '-114286', '0', '0', '2', '1'),
('61', '10', '3', '2012-12-03', '1200', '', '120000', '0', '0', '2', '1'),
('62', '10', '3', '2012-12-03', '2150', '', '-5714', '0', '0', '2', '1'),
('63', '12', '4', '2012-12-03', '1065', '', '120000', '0', '0', '2', '1'),
('64', '12', '4', '2012-12-03', '1200', '', '-120000', '0', '0', '2', '1'),
('65', '22', '2', '2012-12-03', '2100', '', '32000000', '0', '0', '3', '1'),
('66', '22', '2', '2012-12-03', '1060', '', '-32000000', '0', '0', '3', '1'),
('67', '13', '4', '2012-12-04', '5010', '', '1000000', '0', '0', '2', '2'),
('68', '13', '4', '2012-12-04', '1510', '', '-1000000', '0', '0', '2', '2'),
('69', '11', '4', '2012-12-04', '5010', '', '-2000000', '0', '0', '2', '2'),
('70', '11', '4', '2012-12-04', '1510', '', '2000000', '0', '0', '2', '2'),
('71', '11', '4', '2012-12-04', '4010', '', '2285720', '0', '0', '2', '2'),
('72', '11', '4', '2012-12-04', '1200', '', '-2400000', '0', '0', '2', '2'),
('73', '11', '4', '2012-12-04', '2150', '', '114286', '0', '0', '2', '2'),
('74', '11', '4', '2012-12-04', '4450', '', '-6', '0', '0', '2', '2'),
('75', '13', '5', '2012-12-04', '5010', '', '1000000', '0', '0', '2', '2'),
('76', '13', '5', '2012-12-04', '1510', '', '-1000000', '0', '0', '2', '2'),
('77', '10', '4', '2012-12-04', '4010', '', '-1142857', '0', '0', '2', '2'),
('78', '10', '4', '2012-12-04', '1200', '', '1200000', '0', '0', '2', '2'),
('79', '10', '4', '2012-12-04', '2150', '', '-57143', '0', '0', '2', '2'),
('80', '12', '5', '2012-12-04', '1065', '', '1200000', '0', '0', '2', '2'),
('81', '12', '5', '2012-12-04', '1200', '', '-1200000', '0', '0', '2', '2'),
('82', '11', '5', '2012-12-04', '5010', '', '-500000', '0', '0', '2', '2'),
('83', '11', '5', '2012-12-04', '1510', '', '500000', '0', '0', '2', '2'),
('84', '11', '5', '2012-12-04', '4010', '', '571430', '0', '0', '2', '2'),
('85', '11', '5', '2012-12-04', '1200', '', '-600000', '0', '0', '2', '2'),
('86', '11', '5', '2012-12-04', '2150', '', '28571', '0', '0', '2', '2'),
('87', '11', '5', '2012-12-04', '4450', '', '-1', '0', '0', '2', '2'),
('88', '25', '3', '2012-12-05', '1510', 'panadol', '200000', '0', '0', '3', '2'),
('89', '25', '3', '2012-12-05', '1510', 'decolgen', '300000', '0', '0', '3', '2'),
('90', '25', '3', '2012-12-05', '1550', '', '-500000', '0', '0', '3', NULL),
('91', '20', '3', '2012-12-05', '2100', '', '-525000', '0', '0', '3', '2'),
('92', '20', '3', '2012-12-05', '1550', '', '200000', '0', '0', '3', '2'),
('93', '20', '3', '2012-12-05', '1550', '', '300000', '0', '0', '3', '2'),
('94', '20', '3', '2012-12-05', '2150', '', '25000', '0', '0', '3', '2'),
('95', '13', '6', '2012-12-05', '5010', '', '30000', '0', '0', '2', '2'),
('96', '13', '6', '2012-12-05', '1510', '', '-30000', '0', '0', '2', '2'),
('97', '10', '5', '2012-12-05', '4010', '', '-1142857', '0', '0', '2', '2'),
('98', '10', '5', '2012-12-05', '1200', '', '1200000', '0', '0', '2', '2'),
('99', '10', '5', '2012-12-05', '2150', '', '-57143', '0', '0', '2', '2'),
('100', '12', '6', '2012-12-05', '1065', '', '1200000', '0', '0', '2', '2'),
('101', '12', '6', '2012-12-05', '1200', '', '-1200000', '0', '0', '2', '2'),
('102', '10', '6', '2012-12-05', '4010', '', '-34286', '0', '0', '2', '2'),
('103', '10', '6', '2012-12-05', '1200', '', '36000', '0', '0', '2', '2'),
('104', '10', '6', '2012-12-05', '2150', '', '-1714', '0', '0', '2', '2'),
('105', '12', '7', '2012-12-05', '1065', '', '36000', '0', '0', '2', '2'),
('106', '12', '7', '2012-12-05', '1200', '', '-36000', '0', '0', '2', '2'),
('107', '13', '7', '2012-12-05', '5010', '', '3500000', '0', '0', '2', '2'),
('108', '13', '7', '2012-12-05', '1510', '', '-3500000', '0', '0', '2', '2'),
('109', '10', '7', '2012-12-05', '4010', '', '-4000000', '0', '0', '2', '2'),
('110', '10', '7', '2012-12-05', '1200', '', '4200000', '0', '0', '2', '2'),
('111', '10', '7', '2012-12-05', '2150', '', '-200000', '0', '0', '2', '2'),
('112', '12', '8', '2012-12-05', '1065', '', '4200000', '0', '0', '2', '2'),
('113', '12', '8', '2012-12-05', '1200', '', '-4200000', '0', '0', '2', '2'),
('114', '13', '8', '2012-12-05', '5010', '', '3500000', '0', '0', '2', '2'),
('115', '13', '8', '2012-12-05', '1510', '', '-3500000', '0', '0', '2', '2'),
('116', '10', '8', '2012-12-05', '4010', '', '-4000000', '0', '0', '2', '2'),
('117', '10', '8', '2012-12-05', '1200', '', '4200000', '0', '0', '2', '2'),
('118', '10', '8', '2012-12-05', '2150', '', '-200000', '0', '0', '2', '2'),
('119', '12', '9', '2012-12-05', '1065', '', '4200000', '0', '0', '2', '2'),
('120', '12', '9', '2012-12-05', '1200', '', '-4200000', '0', '0', '2', '2'),
('121', '13', '9', '2012-12-05', '5010', '', '3400000', '0', '0', '2', '2'),
('122', '13', '9', '2012-12-05', '1510', '', '-3400000', '0', '0', '2', '2'),
('123', '10', '9', '2012-12-05', '4010', '', '-3885714', '0', '0', '2', '2'),
('124', '10', '9', '2012-12-05', '1200', '', '4080000', '0', '0', '2', '2'),
('125', '10', '9', '2012-12-05', '2150', '', '-194286', '0', '0', '2', '2'),
('126', '12', '10', '2012-12-05', '1065', '', '4080000', '0', '0', '2', '2'),
('127', '12', '10', '2012-12-05', '1200', '', '-4080000', '0', '0', '2', '2'),
('128', '13', '10', '2012-12-05', '5010', '', '3000000', '0', '0', '2', '2'),
('129', '13', '10', '2012-12-05', '1510', '', '-3000000', '0', '0', '2', '2'),
('130', '10', '10', '2012-12-05', '4010', '', '-3428571', '0', '0', '2', '2'),
('131', '10', '10', '2012-12-05', '1200', '', '3600000', '0', '0', '2', '2'),
('132', '10', '10', '2012-12-05', '2150', '', '-171429', '0', '0', '2', '2'),
('133', '12', '11', '2012-12-05', '1065', '', '3600000', '0', '0', '2', '2'),
('134', '12', '11', '2012-12-05', '1200', '', '-3600000', '0', '0', '2', '2'),
('135', '13', '11', '2012-12-05', '5010', '', '3000000', '0', '0', '2', '2'),
('136', '13', '11', '2012-12-05', '1510', '', '-3000000', '0', '0', '2', '2'),
('137', '10', '11', '2012-12-05', '4010', '', '-3428571', '0', '0', '2', '2'),
('138', '10', '11', '2012-12-05', '1200', '', '3600000', '0', '0', '2', '2'),
('139', '10', '11', '2012-12-05', '2150', '', '-171429', '0', '0', '2', '2'),
('140', '12', '12', '2012-12-05', '1060', '', '3600000', '0', '0', '2', '2'),
('141', '12', '12', '2012-12-05', '1200', '', '-3600000', '0', '0', '2', '2'),
('142', '25', '4', '2012-12-07', '1510', 'decolgen', '3000000', '0', '0', '3', '2'),
('143', '25', '4', '2012-12-07', '1550', '', '-3000000', '0', '0', '3', NULL),
('144', '20', '4', '2012-12-07', '2100', '', '-3150000', '0', '0', '3', '2'),
('145', '20', '4', '2012-12-07', '1550', '', '3000000', '0', '0', '3', '2'),
('146', '20', '4', '2012-12-07', '2150', '', '150000', '0', '0', '3', '2'),
('147', '13', '12', '2012-12-07', '5010', '', '600000', '0', '0', '2', '2'),
('148', '13', '12', '2012-12-07', '1510', '', '-600000', '0', '0', '2', '2'),
('149', '13', '12', '2012-12-07', '5010', '', '2000000', '0', '0', '2', '2'),
('150', '13', '12', '2012-12-07', '1510', '', '-2000000', '0', '0', '2', '2'),
('151', '10', '12', '2012-12-07', '4010', '', '-685714', '0', '0', '2', '2'),
('152', '10', '12', '2012-12-07', '4010', '', '-2285714', '0', '0', '2', '2'),
('153', '10', '12', '2012-12-07', '1200', '', '3120000', '0', '0', '2', '2'),
('154', '10', '12', '2012-12-07', '2150', '', '-148572', '0', '0', '2', '2'),
('155', '12', '13', '2012-12-07', '1065', '', '3120000', '0', '0', '2', '2'),
('156', '12', '13', '2012-12-07', '1200', '', '-3120000', '0', '0', '2', '2'),
('157', '13', '13', '2012-12-07', '5010', '', '1000000', '0', '0', '2', '2'),
('158', '13', '13', '2012-12-07', '1510', '', '-1000000', '0', '0', '2', '2'),
('159', '13', '13', '2012-12-07', '5010', '', '100000', '0', '0', '2', '2'),
('160', '13', '13', '2012-12-07', '1510', '', '-100000', '0', '0', '2', '2'),
('161', '10', '13', '2012-12-07', '4010', '', '-1142857', '0', '0', '2', '2'),
('162', '10', '13', '2012-12-07', '4010', '', '-114286', '0', '0', '2', '2'),
('163', '10', '13', '2012-12-07', '1200', '', '1320000', '0', '0', '2', '2'),
('164', '10', '13', '2012-12-07', '2150', '', '-62857', '0', '0', '2', '2'),
('165', '13', '14', '2012-12-07', '5010', '', '10000000', '0', '0', '2', '2'),
('166', '13', '14', '2012-12-07', '1510', '', '-10000000', '0', '0', '2', '2'),
('167', '10', '14', '2012-12-07', '4010', '', '-11428571', '0', '0', '2', '2'),
('168', '10', '14', '2012-12-07', '1200', '', '12000000', '0', '0', '2', '2'),
('169', '10', '14', '2012-12-07', '2150', '', '-571429', '0', '0', '2', '2'),
('170', '25', '5', '2012-12-07', '1510', 'kabel', '20000000', '0', '0', '3', '1'),
('171', '25', '5', '2012-12-07', '1550', '', '-20000000', '0', '0', '3', NULL),
('172', '20', '5', '2012-12-07', '2100', '', '-21000000', '0', '0', '3', '1'),
('173', '20', '5', '2012-12-07', '1550', '', '20000000', '0', '0', '3', '1'),
('174', '20', '5', '2012-12-07', '2150', '', '1000000', '0', '0', '3', '1'),
('175', '13', '15', '2012-12-07', '5010', '', '500000', '0', '0', '2', '2'),
('176', '13', '15', '2012-12-07', '1510', '', '-500000', '0', '0', '2', '2'),
('177', '10', '15', '2012-12-07', '4010', '', '-571429', '0', '0', '2', '2'),
('178', '10', '15', '2012-12-07', '1200', '', '600000', '0', '0', '2', '2'),
('179', '10', '15', '2012-12-07', '2150', '', '-28571', '0', '0', '2', '2'),
('180', '12', '14', '2012-12-07', '1065', '', '600000', '0', '0', '2', '2'),
('181', '12', '14', '2012-12-07', '1200', '', '-600000', '0', '0', '2', '2'),
('182', '13', '16', '2012-12-07', '5010', '', '5000000', '0', '0', '2', '2'),
('183', '13', '16', '2012-12-07', '1510', '', '-5000000', '0', '0', '2', '2'),
('184', '10', '16', '2012-12-07', '4010', '', '-5714286', '0', '0', '2', '2'),
('185', '10', '16', '2012-12-07', '1200', '', '6000000', '0', '0', '2', '2'),
('186', '10', '16', '2012-12-07', '2150', '', '-285714', '0', '0', '2', '2'),
('187', '13', '17', '2012-12-07', '5010', '', '500000', '0', '0', '2', '2'),
('188', '13', '17', '2012-12-07', '1510', '', '-500000', '0', '0', '2', '2'),
('189', '10', '17', '2012-12-07', '4010', '', '-571429', '0', '0', '2', '2'),
('190', '10', '17', '2012-12-07', '1200', '', '600000', '0', '0', '2', '2'),
('191', '10', '17', '2012-12-07', '2150', '', '-28571', '0', '0', '2', '2'),
('192', '12', '15', '2012-12-07', '1060', '', '15000000', '0', '0', '2', '2'),
('193', '12', '15', '2012-12-07', '1200', '', '-15000000', '0', '0', '2', '2'),
('194', '25', '6', '2012-12-07', '1510', 'decolgen', '300000', '0', '0', '3', '2'),
('195', '25', '6', '2012-12-07', '1550', '', '-300000', '0', '0', '3', NULL),
('196', '20', '6', '2012-12-07', '2100', '', '-315000', '0', '0', '3', '2'),
('197', '20', '6', '2012-12-07', '1550', '', '300000', '0', '0', '3', '2'),
('198', '20', '6', '2012-12-07', '2150', '', '15000', '0', '0', '3', '2'),
('199', '13', '18', '2012-12-08', '5010', '', '300000', '0', '0', '2', '2'),
('200', '13', '18', '2012-12-08', '1510', '', '-300000', '0', '0', '2', '2'),
('201', '25', '7', '2012-12-11', '1510', 'transistor', '1000000', '0', '0', '3', '1'),
('202', '25', '7', '2012-12-11', '1550', '', '-1000000', '0', '0', '3', NULL),
('203', '22', '3', '2012-12-11', '2100', '', '15000000', '0', '0', '3', '1'),
('204', '22', '3', '2012-12-11', '1060', '', '-15000000', '0', '0', '3', '1'),
('205', '25', '8', '2012-12-11', '1510', 'kabel', '1000000', '0', '0', '3', '1'),
('206', '25', '8', '2012-12-11', '1550', '', '-1000000', '0', '0', '3', NULL),
('207', '20', '7', '2012-12-11', '2100', '', '-2100000', '0', '0', '3', '1'),
('208', '20', '7', '2012-12-11', '1550', '', '1000000', '0', '0', '3', '1'),
('209', '20', '7', '2012-12-11', '1550', '', '1000000', '0', '0', '3', '1'),
('210', '20', '7', '2012-12-11', '2150', '', '100000', '0', '0', '3', '1'),
('211', '26', '1', '2012-12-11', '1510', '5 * kabel', '-5000000', '0', '0', NULL, NULL),
('212', '26', '1', '2012-12-11', '1510', '10 * transistor', '-100000', '0', '0', NULL, NULL),
('213', '26', '1', '2012-12-11', '1060', 'Biaya overhead', '-20000', '0', '0', '1', '1'),
('214', '26', '1', '2012-12-11', '1530', 'Biaya overhead', '20000', '0', '0', '1', '1'),
('215', '26', '1', '2012-12-11', '1060', 'Biaya buruh', '-100000', '0', '0', '1', '0'),
('216', '26', '1', '2012-12-11', '1530', 'Biaya buruh', '100000', '0', '0', '1', '0'),
('217', '26', '1', '2012-12-11', '1510', 'Produced 10 * radio rakitan', '5100000', '0', '0', NULL, NULL),
('218', '13', '19', '2012-12-11', '5010', '', '2610000', '0', '0', '2', '2'),
('219', '13', '19', '2012-12-11', '1510', '', '-2610000', '0', '0', '2', '2'),
('220', '10', '18', '2012-12-11', '4010', '', '-2982857', '0', '0', '2', '2'),
('221', '10', '18', '2012-12-11', '1200', '', '3132000', '0', '0', '2', '2'),
('222', '10', '18', '2012-12-11', '2150', '', '-149143', '0', '0', '2', '2'),
('223', '12', '16', '2012-12-11', '1065', '', '3132000', '0', '0', '2', '2'),
('224', '12', '16', '2012-12-11', '1200', '', '-3132000', '0', '0', '2', '2'),
('225', '12', '17', '2012-12-11', '1060', '', '4920000', '0', '0', '2', '2'),
('226', '12', '17', '2012-12-11', '1200', '', '-4920000', '0', '0', '2', '2'),
('227', '12', '18', '2012-12-11', '1060', '', '1000000', '0', '0', '2', '2'),
('228', '12', '18', '2012-12-11', '1200', '', '-1000000', '0', '0', '2', '2'),
('229', '13', '20', '2012-12-11', '5010', '', '4000000', '0', '0', '2', '2'),
('230', '13', '20', '2012-12-11', '1510', '', '-4000000', '0', '0', '2', '2'),
('231', '10', '19', '2012-12-11', '4010', '', '-4571429', '0', '0', '2', '2'),
('232', '10', '19', '2012-12-11', '1200', '', '4800000', '0', '0', '2', '2'),
('233', '10', '19', '2012-12-11', '2150', '', '-228571', '0', '0', '2', '2'),
('234', '25', '9', '2012-12-11', '1510', 'kabel', '10000000', '0', '0', '3', '1'),
('235', '25', '9', '2012-12-11', '1550', '', '-10000000', '0', '0', '3', NULL),
('236', '20', '8', '2012-12-11', '2100', '', '-10500000', '0', '0', '3', '1'),
('237', '20', '8', '2012-12-11', '1550', '', '10000000', '0', '0', '3', '1'),
('238', '20', '8', '2012-12-11', '2150', '', '500000', '0', '0', '3', '1'),
('239', '22', '4', '2012-12-12', '2100', '', '3990000', '0', '0', '3', '2'),
('240', '22', '4', '2012-12-12', '1060', '', '-3990000', '0', '0', '3', '2'),
('241', '22', '5', '2012-12-12', '2100', '', '3990000', '0', '0', '3', '2'),
('242', '22', '5', '2012-12-12', '1060', '', '-3990000', '0', '0', '3', '2'),
('243', '22', '6', '2012-12-12', '2100', '', '33600000', '0', '0', '3', '1'),
('244', '22', '6', '2012-12-12', '1060', '', '-33600000', '0', '0', '3', '1'),
('245', '12', '19', '2012-12-12', '1060', '', '4800000', '0', '0', '2', '2'),
('246', '12', '19', '2012-12-12', '1200', '', '-4800000', '0', '0', '2', '2'),
('247', '13', '21', '2012-12-14', '5010', '', '600000', '0', '0', '2', '2'),
('248', '13', '21', '2012-12-14', '1510', '', '-600000', '0', '0', '2', '2'),
('249', '13', '22', '2012-12-14', '5010', '', '5000000', '0', '0', '2', '2'),
('250', '13', '22', '2012-12-14', '1510', '', '-5000000', '0', '0', '2', '2'),
('251', '10', '20', '2012-12-14', '4010', '', '-5714286', '0', '0', '2', '2'),
('252', '10', '20', '2012-12-14', '1200', '', '6000000', '0', '0', '2', '2'),
('253', '10', '20', '2012-12-14', '2150', '', '-285714', '0', '0', '2', '2'),
('254', '12', '20', '2012-12-14', '1060', '', '1000000', '0', '0', '2', '2'),
('255', '12', '20', '2012-12-14', '1200', '', '-1000000', '0', '0', '2', '2'),
('256', '12', '21', '2012-12-14', '1060', '', '999000', '0', '0', '2', '2'),
('257', '12', '21', '2012-12-14', '1200', '', '-999000', '0', '0', '2', '2'),
('258', '11', '6', '2012-12-14', '5010', '', '-15000', '0', '0', '2', '1'),
('259', '11', '6', '2012-12-14', '1510', '', '15000', '0', '0', '2', '1'),
('260', '11', '6', '2012-12-14', '4010', '', '17145', '0', '0', '2', '1'),
('261', '11', '6', '2012-12-14', '1200', '', '-18000', '0', '0', '2', '1'),
('262', '11', '6', '2012-12-14', '2150', '', '857', '0', '0', '2', '1'),
('263', '11', '6', '2012-12-14', '4450', '', '-2', '0', '0', '2', '1'),
('264', '11', '7', '2012-12-14', '5010', '', '-500000', '0', '0', '2', '2'),
('265', '11', '7', '2012-12-14', '1510', '', '500000', '0', '0', '2', '2'),
('266', '11', '7', '2012-12-14', '4010', '', '571430', '0', '0', '2', '2'),
('267', '11', '7', '2012-12-14', '1200', '', '-600000', '0', '0', '2', '2'),
('268', '11', '7', '2012-12-14', '2150', '', '28571', '0', '0', '2', '2'),
('269', '11', '7', '2012-12-14', '4450', '', '-1', '0', '0', '2', '2'),
('270', '25', '10', '2012-12-17', '1510', 'tepung', '300000', '0', '0', '3', '1'),
('271', '25', '10', '2012-12-17', '1510', 'gula', '500000', '0', '0', '3', '1'),
('272', '25', '10', '2012-12-17', '1510', 'coklat', '2000000', '0', '0', '3', '1'),
('273', '25', '10', '2012-12-17', '1550', '', '-2800000', '0', '0', '3', NULL),
('274', '26', '2', '2012-12-17', '1510', '1 * tepung', '-150000', '0', '0', NULL, NULL),
('275', '26', '2', '2012-12-17', '1510', '1 * coklat', '-1000000', '0', '0', NULL, NULL),
('276', '26', '2', '2012-12-17', '1510', '1 * gula', '-250000', '0', '0', NULL, NULL),
('277', '26', '2', '2012-12-17', '1060', 'Biaya overhead', '-15000', '0', '0', '1', '1'),
('278', '26', '2', '2012-12-17', '1530', 'Biaya overhead', '15000', '0', '0', '1', '1'),
('279', '26', '2', '2012-12-17', '1060', 'Biaya buruh', '-100000', '0', '0', '1', '0'),
('280', '26', '2', '2012-12-17', '1530', 'Biaya buruh', '100000', '0', '0', '1', '0'),
('281', '26', '2', '2012-12-17', '1510', 'Produced 50 * roti coklat', '1400000', '0', '0', NULL, NULL),
('282', '13', '23', '2012-12-17', '5010', '', '303000', '0', '0', '2', '3'),
('283', '13', '23', '2012-12-17', '1510', '', '-303000', '0', '0', '2', '3'),
('284', '10', '21', '2012-12-17', '4010', '', '-454500', '0', '0', '2', '3'),
('285', '10', '21', '2012-12-17', '1200', '', '477225', '0', '0', '2', '3'),
('286', '10', '21', '2012-12-17', '2150', '', '-22725', '0', '0', '2', '3'),
('287', '13', '24', '2012-12-17', '5010', '', '60000', '0', '0', '2', '3'),
('288', '13', '24', '2012-12-17', '1510', '', '-60000', '0', '0', '2', '3'),
('289', '13', '24', '2012-12-17', '5010', '', '20000', '0', '0', '2', '3'),
('290', '13', '24', '2012-12-17', '1510', '', '-20000', '0', '0', '2', '3'),
('291', '10', '22', '2012-12-17', '4010', '', '-90000', '0', '0', '2', '3'),
('292', '10', '22', '2012-12-17', '4010', '', '-30000', '0', '0', '2', '3'),
('293', '10', '22', '2012-12-17', '1200', '', '126000', '0', '0', '2', '3'),
('294', '10', '22', '2012-12-17', '2150', '', '-6000', '0', '0', '2', '3'),
('295', '12', '22', '2012-12-17', '1060', '', '226000', '0', '0', '2', '3'),
('296', '12', '22', '2012-12-17', '1200', '', '-226000', '0', '0', '2', '3'),
('297', '13', '25', '2012-12-17', '5010', '', '151500', '0', '0', '2', '3'),
('298', '13', '25', '2012-12-17', '1510', '', '-151500', '0', '0', '2', '3'),
('299', '10', '23', '2012-12-17', '4010', '', '-227250', '0', '0', '2', '3'),
('300', '10', '23', '2012-12-17', '1200', '', '238613', '0', '0', '2', '3'),
('301', '10', '23', '2012-12-17', '2150', '', '-11363', '0', '0', '2', '3'),
('302', '13', '26', '2012-12-17', '5010', '', '3000', '0', '0', '2', '3'),
('303', '13', '26', '2012-12-17', '1510', '', '-3000', '0', '0', '2', '3'),
('304', '10', '24', '2012-12-17', '4010', '', '-4500', '0', '0', '2', '3'),
('305', '10', '24', '2012-12-17', '1200', '', '4725', '0', '0', '2', '3'),
('306', '10', '24', '2012-12-17', '2150', '', '-225', '0', '0', '2', '3'),
('307', '13', '27', '2012-12-17', '5010', '', '300000', '0', '0', '2', '1'),
('308', '13', '27', '2012-12-17', '1510', '', '-300000', '0', '0', '2', '1'),
('309', '10', '25', '2012-12-17', '4010', '', '-342857', '0', '0', '2', '1'),
('310', '10', '25', '2012-12-17', '1200', '', '360000', '0', '0', '2', '1'),
('311', '10', '25', '2012-12-17', '2150', '', '-17143', '0', '0', '2', '1'),
('312', '12', '23', '2012-12-17', '1065', '', '360000', '0', '0', '2', '1'),
('313', '12', '23', '2012-12-17', '1200', '', '-360000', '0', '0', '2', '1'),
('314', '13', '28', '2012-12-17', '5010', '', '100000', '0', '0', '2', '1'),
('315', '13', '28', '2012-12-17', '1510', '', '-100000', '0', '0', '2', '1'),
('316', '13', '29', '2012-12-18', '5010', '', '100000', '0', '0', '2', '3'),
('317', '13', '29', '2012-12-18', '1510', '', '-100000', '0', '0', '2', '3'),
('318', '12', '24', '2012-12-18', '1060', '', '620563', '0', '0', '2', '3'),
('319', '12', '24', '2012-12-18', '1200', '', '-620563', '0', '0', '2', '3'),
('320', '13', '30', '2012-12-18', '5010', '', '9000', '0', '0', '2', '1'),
('321', '13', '30', '2012-12-18', '1510', '', '-9000', '0', '0', '2', '1'),
('322', '10', '26', '2012-12-18', '4010', '', '-342857', '0', '0', '2', '2'),
('323', '10', '26', '2012-12-18', '1200', '', '360000', '0', '0', '2', '2'),
('324', '10', '26', '2012-12-18', '2150', '', '-17143', '0', '0', '2', '2'),
('325', '12', '25', '2012-12-18', '1065', '', '360000', '0', '0', '2', '2'),
('326', '12', '25', '2012-12-18', '1200', '', '-360000', '0', '0', '2', '2'),
('327', '25', '11', '2012-12-21', '1510', 'gula', '0', '0', '0', '3', '2'),
('328', '20', '9', '2012-12-21', '2100', '', '0', '0', '0', '3', '2'),
('329', '20', '9', '2012-12-21', '1550', '', '0', '0', '0', '3', '2'),
('330', '25', '12', '2012-12-21', '1510', 'speaker', '2000000', '0', '0', '3', '2'),
('331', '25', '12', '2012-12-21', '1550', '', '-2000000', '0', '0', '3', NULL),
('332', '20', '10', '2012-12-21', '2100', '', '-2100000', '0', '0', '3', '2'),
('333', '20', '10', '2012-12-21', '1550', '', '2000000', '0', '0', '3', '2'),
('334', '20', '10', '2012-12-21', '2150', '', '100000', '0', '0', '3', '2'),
('335', '25', '13', '2012-12-21', '1510', 'transistor', '1800000', '0', '0', '3', '2'),
('336', '25', '13', '2012-12-21', '1550', '', '-1800000', '0', '0', '3', NULL),
('337', '20', '11', '2012-12-21', '2100', '', '-1890000', '0', '0', '3', '2'),
('338', '20', '11', '2012-12-21', '1550', '', '1800000', '0', '0', '3', '2'),
('339', '20', '11', '2012-12-21', '2150', '', '90000', '0', '0', '3', '2'),
('340', '25', '14', '2012-12-21', '1510', 'kabel', '625000', '0', '0', '3', '1'),
('341', '25', '14', '2012-12-21', '1550', '', '-625000', '0', '0', '3', NULL),
('342', '13', '31', '2013-01-08', '5010', '', '20000', '0', '0', '2', '3'),
('343', '13', '31', '2013-01-08', '1510', '', '-20000', '0', '0', '2', '3'),
('344', '13', '31', '2013-01-08', '5010', '', '41667', '0', '0', '2', '3'),
('345', '13', '31', '2013-01-08', '1510', '', '-41667', '0', '0', '2', '3'),
('346', '10', '27', '2013-01-08', '4010', '', '-30000', '0', '0', '2', '3'),
('347', '10', '27', '2013-01-08', '4010', '', '-62510', '0', '0', '2', '3'),
('348', '10', '27', '2013-01-08', '1200', '', '97136', '0', '0', '2', '3'),
('349', '10', '27', '2013-01-08', '2150', '', '-4626', '0', '0', '2', '3'),
('350', '25', '15', '2013-01-09', '1510', 'aerocomac3000', '500000', '0', '0', '3', '3'),
('351', '25', '15', '2013-01-09', '1550', '', '-500000', '0', '0', '3', NULL),
('352', '20', '12', '2013-01-09', '2100', '', '-525000', '0', '0', '3', '3'),
('353', '20', '12', '2013-01-09', '1550', '', '500000', '0', '0', '3', '3'),
('354', '20', '12', '2013-01-09', '2150', '', '25000', '0', '0', '3', '3'),
('355', '13', '32', '2013-01-09', '5010', '', '200000', '0', '0', '2', '3'),
('356', '13', '32', '2013-01-09', '1510', '', '-200000', '0', '0', '2', '3'),
('357', '13', '33', '2013-01-09', '5010', '', '3030738', '0', '0', '2', '2'),
('358', '13', '33', '2013-01-09', '1510', '', '-3030738', '0', '0', '2', '2'),
('359', '25', '16', '2013-01-09', '1510', 'elbow', '500000', '0', '0', '3', '3'),
('360', '25', '16', '2013-01-09', '1510', 'pipa', '2000000', '0', '0', '3', '3'),
('361', '25', '16', '2013-01-09', '1510', 'station', '10500000', '0', '0', '3', '3'),
('362', '25', '16', '2013-01-09', '1550', '', '-13000000', '0', '0', '3', NULL),
('363', '20', '13', '2013-01-09', '2100', '', '-13650000', '0', '0', '3', '3'),
('364', '20', '13', '2013-01-09', '1550', '', '500000', '0', '0', '3', '3'),
('365', '20', '13', '2013-01-09', '1550', '', '2000000', '0', '0', '3', '3'),
('366', '20', '13', '2013-01-09', '1550', '', '10500000', '0', '0', '3', '3'),
('367', '20', '13', '2013-01-09', '2150', '', '650000', '0', '0', '3', '3'),
('368', '26', '3', '2013-01-09', '1510', '10 * elbow', '-500000', '0', '0', NULL, NULL),
('369', '26', '3', '2013-01-09', '1510', '10 * station', '-7000000', '0', '0', NULL, NULL),
('370', '26', '3', '2013-01-09', '1510', '10 * pipa', '-2000000', '0', '0', NULL, NULL),
('371', '26', '3', '2013-01-09', '1060', 'Biaya overhead', '-100000', '0', '0', '1', '1'),
('372', '26', '3', '2013-01-09', '1530', 'Biaya overhead', '100000', '0', '0', '1', '1'),
('373', '26', '3', '2013-01-09', '1510', 'Produced 1 * proyek_rsud_klaten', '9500000', '0', '0', NULL, NULL),
('374', '13', '34', '2013-01-13', '5010', '', '200000', '0', '0', '2', '4'),
('375', '13', '34', '2013-01-13', '1510', '', '-200000', '0', '0', '2', '4'),
('376', '10', '28', '2013-01-13', '4010', '', '-300000', '0', '0', '2', '4'),
('377', '10', '28', '2013-01-13', '1200', '', '315000', '0', '0', '2', '4'),
('378', '10', '28', '2013-01-13', '2150', '', '-15000', '0', '0', '2', '4'),
('379', '25', '17', '2013-01-13', '1510', 'lcd', '20000000', '0', '0', '3', '1'),
('380', '25', '17', '2013-01-13', '1510', 'keyboard', '2000000', '0', '0', '3', '1'),
('381', '25', '17', '2013-01-13', '1550', '', '-22000000', '0', '0', '3', NULL),
('382', '26', '4', '2013-01-13', '1510', '1 * lcd', '-3000000', '0', '0', NULL, NULL),
('383', '26', '4', '2013-01-13', '1510', '1 * keyboard', '-300000', '0', '0', NULL, NULL),
('384', '26', '4', '2013-01-13', '1060', 'Biaya overhead', '-25000', '0', '0', '1', '1'),
('385', '26', '4', '2013-01-13', '1530', 'Biaya overhead', '25000', '0', '0', '1', '1'),
('386', '26', '4', '2013-01-13', '1060', 'Biaya buruh', '-200000', '0', '0', '1', '0'),
('387', '26', '4', '2013-01-13', '1530', 'Biaya buruh', '200000', '0', '0', '1', '0'),
('388', '26', '4', '2013-01-13', '1510', 'Produced 3 * laptop', '3300000', '0', '0', NULL, NULL),
('389', '13', '35', '2013-01-13', '5010', '', '1175000', '0', '0', '2', '4'),
('390', '13', '35', '2013-01-13', '1510', '', '-1175000', '0', '0', '2', '4'),
('391', '10', '29', '2013-01-13', '4010', '', '-5875000', '0', '0', '2', '4'),
('392', '10', '29', '2013-01-13', '1200', '', '6168750', '0', '0', '2', '4'),
('393', '10', '29', '2013-01-13', '2150', '', '-293750', '0', '0', '2', '4'),
('394', '12', '26', '2013-01-13', '1060', '', '315000', '0', '0', '2', '4'),
('395', '12', '26', '2013-01-13', '1200', '', '-315000', '0', '0', '2', '4'),
('396', '12', '27', '2013-01-13', '1060', '', '3000000', '0', '0', '2', '4'),
('397', '12', '27', '2013-01-13', '1200', '', '-3000000', '0', '0', '2', '4'),
('398', '25', '18', '2013-01-14', '1510', 'tuna', '750000', '0', '0', '3', '2'),
('399', '25', '18', '2013-01-14', '1550', '', '-750000', '0', '0', '3', NULL),
('400', '20', '14', '2013-01-14', '2100', '', '-787500', '0', '0', '3', '2'),
('401', '20', '14', '2013-01-14', '1550', '', '750000', '0', '0', '3', '2'),
('402', '20', '14', '2013-01-14', '2150', '', '37500', '0', '0', '3', '2'),
('403', '13', '36', '2013-01-23', '5010', '', '100000', '0', '0', '2', '4'),
('404', '13', '36', '2013-01-23', '1510', '', '-100000', '0', '0', '2', '4'),
('405', '25', '19', '2013-01-29', '1510', 'amx500', '1000000', '0', '0', '3', '4'),
('406', '25', '19', '2013-01-29', '1550', '', '-1000000', '0', '0', '3', NULL),
('407', '20', '15', '2013-01-29', '2100', '', '-1050000', '0', '0', '3', '4'),
('408', '20', '15', '2013-01-29', '5010', '', '0', '0', '0', '3', '4'),
('409', '20', '15', '2013-01-29', '1550', '', '1000000', '0', '0', '3', '4'),
('410', '20', '15', '2013-01-29', '2150', '', '50000', '0', '0', '3', '4'),
('411', '25', '20', '2013-01-29', '1510', 'amx500', '1000000', '0', '0', '3', '4'),
('412', '25', '20', '2013-01-29', '1550', '', '-1000000', '0', '0', '3', NULL),
('413', '20', '16', '2013-01-29', '2100', '', '-1050000', '0', '0', '3', '4'),
('414', '20', '16', '2013-01-29', '1550', '', '1000000', '0', '0', '3', '4'),
('415', '20', '16', '2013-01-29', '2150', '', '50000', '0', '0', '3', '4');

### Structure of table `grn_batch` ###

DROP TABLE IF EXISTS `grn_batch`;

CREATE TABLE `grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

### Data of table `grn_batch` ###

INSERT INTO `grn_batch` VALUES
('1', '1', '1', '1', '2012-11-30', 'DEF'),
('2', '1', '2', 'auto', '2012-12-01', 'DEF'),
('3', '2', '3', '2', '2012-12-05', 'DEF'),
('4', '2', '4', 'auto', '2012-12-07', 'DEF'),
('5', '1', '5', '3', '2012-12-07', 'DEF'),
('6', '2', '6', 'auto', '2012-12-07', 'DEF'),
('7', '1', '7', '4', '2012-12-11', 'DEF'),
('8', '1', '8', '5', '2012-12-11', 'DEF'),
('9', '1', '9', 'auto', '2012-12-11', 'DEF'),
('10', '1', '10', '6', '2012-12-17', 'DEF'),
('11', '2', '11', 'auto', '2012-12-21', 'DEF'),
('12', '2', '12', 'auto', '2012-12-21', 'DEF'),
('13', '2', '13', 'auto', '2012-12-21', 'DEF'),
('14', '1', '14', '7', '2012-12-21', 'DEF'),
('15', '3', '15', '8', '2013-01-09', 'KUDUS'),
('16', '3', '16', 'auto', '2013-01-09', 'DEF'),
('17', '1', '17', '9', '2013-01-13', 'KUDUS'),
('18', '2', '18', 'auto', '2013-01-14', 'DEF'),
('19', '4', '19', '10', '2013-01-29', 'DEF'),
('20', '4', '20', 'auto', '2013-01-29', 'DEF');

### Structure of table `grn_items` ###

DROP TABLE IF EXISTS `grn_items`;

CREATE TABLE `grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ;

### Data of table `grn_items` ###

INSERT INTO `grn_items` VALUES
('1', '1', '1', 'kabel', 'kabel', '100', '100'),
('2', '1', '2', 'speaker', 'speaker', '100', '100'),
('3', '2', '3', 'kabel', 'kabel', '200', '200'),
('4', '3', '4', 'panadol', 'panadol obat sakit kepala', '100', '100'),
('5', '3', '5', 'decolgen', 'decolgen', '100', '100'),
('6', '4', '6', 'decolgen', 'decolgen', '1000', '1000'),
('7', '5', '7', 'kabel', 'kabel', '200', '200'),
('8', '6', '8', 'decolgen', 'decolgen', '100', '100'),
('9', '7', '9', 'transistor', 'transistor', '1000', '1000'),
('10', '8', '10', 'kabel', 'kabel', '10', '10'),
('11', '9', '11', 'kabel', 'kabel', '100', '100'),
('12', '10', '12', 'tepung', 'tepung', '100', '0'),
('13', '10', '13', 'gula', 'gula', '100', '0'),
('14', '10', '14', 'coklat', 'coklat', '100', '0'),
('15', '11', '15', 'gula', 'gula', '10', '10'),
('16', '12', '16', 'speaker', 'speaker', '10', '10'),
('17', '13', '17', 'transistor', 'transistor', '900', '900'),
('18', '14', '18', 'kabel', 'kabel', '5', '0'),
('19', '15', '19', 'aerocomac3000', 'aerocom tipe 3000', '5', '5'),
('20', '16', '20', 'elbow', 'elbow', '10', '10'),
('21', '16', '21', 'pipa', 'pipa', '10', '10'),
('22', '16', '22', 'station', 'station', '15', '15'),
('23', '17', '23', 'lcd', 'lcd', '20', '0'),
('24', '17', '24', 'keyboard', 'keyboard', '20', '0'),
('25', '18', '25', 'tuna', 'ikan tuna', '25', '25'),
('26', '19', '26', 'amx500', 'amoxicilling 500mg', '100', '100'),
('27', '20', '27', 'amx500', 'amoxicilling 500mg', '100', '100');

### Structure of table `groups` ###

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `groups` ###

INSERT INTO `groups` VALUES
('1', 'Small', '0'),
('2', 'Medium', '0'),
('3', 'Large', '0');

### Structure of table `item_codes` ###

DROP TABLE IF EXISTS `item_codes`;

CREATE TABLE `item_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) NOT NULL,
  `stock_id` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  `category_id` smallint(6) unsigned NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

### Data of table `item_codes` ###

INSERT INTO `item_codes` VALUES
('1', 'kabel', 'kabel', 'kabel', '1', '1', '0', '0'),
('2', 'speaker', 'speaker', 'speaker', '1', '1', '0', '0'),
('3', 'ghostdetector', 'ghostdetector', 'ghost detector', '1', '1', '0', '0'),
('4', 'decolgen', 'decolgen', 'decolgen', '5', '1', '0', '0'),
('5', 'panadol', 'panadol', 'panadol obat sakit kepala', '6', '1', '0', '0'),
('6', 'tuna', 'tuna', 'ikan tuna', '1', '1', '0', '0'),
('7', 'transistor', 'transistor', 'transistor', '1', '1', '0', '0'),
('8', 'radiorakitan', 'radiorakitan', 'radio rakitan', '1', '1', '0', '0'),
('9', 'tepung', 'tepung', 'tepung', '1', '1', '0', '0'),
('10', 'gula', 'gula', 'gula', '1', '1', '0', '0'),
('11', 'coklat', 'coklat', 'coklat', '1', '1', '0', '0'),
('12', 'roti', 'roti', 'roti coklat', '1', '1', '0', '0'),
('13', 'aerocomac3000', 'aerocomac3000', 'aerocom tipe 3000', '1', '1', '0', '0'),
('14', 'pipa', 'pipa', 'pipa', '1', '1', '0', '0'),
('15', 'station', 'station', 'station', '1', '1', '0', '0'),
('16', 'elbow', 'elbow', 'elbow', '1', '1', '0', '0'),
('17', 'proyek_rsud_klaten', 'proyek_rsud_klaten', 'proyek_rsud_klaten', '1', '1', '0', '0'),
('18', 'laptop', 'laptop', 'laptop', '1', '1', '0', '0'),
('19', 'lcd', 'lcd', 'lcd', '1', '1', '0', '0'),
('20', 'keyboard', 'keyboard', 'keyboard', '1', '1', '0', '0'),
('21', 'amx500', 'amx500', 'amoxicilling 500mg', '7', '1', '0', '0');

### Structure of table `item_tax_type_exemptions` ###

DROP TABLE IF EXISTS `item_tax_type_exemptions`;

CREATE TABLE `item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `item_tax_type_exemptions` ###


### Structure of table `item_tax_types` ###

DROP TABLE IF EXISTS `item_tax_types`;

CREATE TABLE `item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `item_tax_types` ###

INSERT INTO `item_tax_types` VALUES
('1', 'Regular', '0', '0');

### Structure of table `item_units` ###

DROP TABLE IF EXISTS `item_units`;

CREATE TABLE `item_units` (
  `abbr` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `item_units` ###

INSERT INTO `item_units` VALUES
('ea.', 'Each', '0', '0'),
('pcs', 'pieces', '-1', '0'),
('roll', 'roll', '-1', '0'),
('kg', 'berat kilogram', '-1', '0'),
('gr', 'gram', '-1', '0'),
('unit', 'satu lot paket', '-1', '0');

### Structure of table `loc_stock` ###

DROP TABLE IF EXISTS `loc_stock`;

CREATE TABLE `loc_stock` (
  `loc_code` char(5) NOT NULL DEFAULT '',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `reorder_level` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `loc_stock` ###

INSERT INTO `loc_stock` VALUES
('DEF', 'aerocomac3000', '0'),
('DEF', 'amx500', '0'),
('DEF', 'coklat', '0'),
('DEF', 'decolgen', '0'),
('DEF', 'elbow', '0'),
('DEF', 'ghostdetector', '0'),
('DEF', 'gula', '0'),
('DEF', 'kabel', '0'),
('DEF', 'keyboard', '0'),
('DEF', 'laptop', '0'),
('DEF', 'lcd', '0'),
('DEF', 'panadol', '0'),
('DEF', 'pipa', '0'),
('DEF', 'proyek_rsud_klaten', '0'),
('DEF', 'radiorakitan', '0'),
('DEF', 'roti', '0'),
('DEF', 'speaker', '0'),
('DEF', 'station', '0'),
('DEF', 'tepung', '0'),
('DEF', 'transistor', '0'),
('DEF', 'tuna', '0'),
('KUDUS', 'aerocomac3000', '0'),
('KUDUS', 'amx500', '0'),
('KUDUS', 'coklat', '0'),
('KUDUS', 'decolgen', '0'),
('KUDUS', 'elbow', '0'),
('KUDUS', 'ghostdetector', '0'),
('KUDUS', 'gula', '0'),
('KUDUS', 'kabel', '0'),
('KUDUS', 'keyboard', '0'),
('KUDUS', 'laptop', '0'),
('KUDUS', 'lcd', '0'),
('KUDUS', 'panadol', '0'),
('KUDUS', 'pipa', '0'),
('KUDUS', 'proyek_rsud_klaten', '0'),
('KUDUS', 'radiorakitan', '0'),
('KUDUS', 'roti', '0'),
('KUDUS', 'speaker', '0'),
('KUDUS', 'station', '0'),
('KUDUS', 'tepung', '0'),
('KUDUS', 'transistor', '0'),
('KUDUS', 'tuna', '0'),
('SYG', 'aerocomac3000', '0'),
('SYG', 'amx500', '0'),
('SYG', 'coklat', '0'),
('SYG', 'decolgen', '0'),
('SYG', 'elbow', '0'),
('SYG', 'ghostdetector', '0'),
('SYG', 'gula', '0'),
('SYG', 'kabel', '0'),
('SYG', 'keyboard', '0'),
('SYG', 'laptop', '0'),
('SYG', 'lcd', '0'),
('SYG', 'panadol', '0'),
('SYG', 'pipa', '0'),
('SYG', 'proyek_rsud_klaten', '0'),
('SYG', 'radiorakitan', '0'),
('SYG', 'roti', '0'),
('SYG', 'speaker', '0'),
('SYG', 'station', '0'),
('SYG', 'tepung', '0'),
('SYG', 'transistor', '0'),
('SYG', 'tuna', '0');

### Structure of table `locations` ###

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `loc_code` varchar(5) NOT NULL DEFAULT '',
  `location_name` varchar(60) NOT NULL DEFAULT '',
  `delivery_address` tinytext NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `phone2` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `locations` ###

INSERT INTO `locations` VALUES
('DEF', 'Default', 'N/A', '', '', '', '', '', '0'),
('SYG', 'sayung', 'sayung', '1234', '213423', '1234', 'sayung@yahoo.com', 'hisyam ali', '0'),
('KUDUS', 'cabang kudus', 'alamat kudus', '12345', '12341235', '1234123', 'wong_kudus@kuduskab.go.id', 'wong kudus', '0');

### Structure of table `movement_types` ###

DROP TABLE IF EXISTS `movement_types`;

CREATE TABLE `movement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `movement_types` ###

INSERT INTO `movement_types` VALUES
('1', 'Adjustment', '0');

### Structure of table `payment_terms` ###

DROP TABLE IF EXISTS `payment_terms`;

CREATE TABLE `payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT '0',
  `day_in_following_month` smallint(6) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `payment_terms` ###

INSERT INTO `payment_terms` VALUES
('1', 'sebelum tanggal 15', '0', '15', '0'),
('2', 'Sebelum Akhir bulan', '0', '30', '0'),
('3', 'Bayar Dalam 10 Hari', '10', '0', '0'),
('4', 'Cash', '0', '0', '0');

### Structure of table `prices` ###

DROP TABLE IF EXISTS `prices`;

CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `prices` ###


### Structure of table `print_profiles` ###

DROP TABLE IF EXISTS `print_profiles`;

CREATE TABLE `print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) NOT NULL,
  `report` varchar(5) DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ;

### Data of table `print_profiles` ###

INSERT INTO `print_profiles` VALUES
('1', 'Out of office', NULL, '0'),
('2', 'Sales Department', NULL, '0'),
('3', 'Central', NULL, '2'),
('4', 'Sales Department', '104', '2'),
('5', 'Sales Department', '105', '2'),
('6', 'Sales Department', '107', '2'),
('7', 'Sales Department', '109', '2'),
('8', 'Sales Department', '110', '2'),
('9', 'Sales Department', '201', '2');

### Structure of table `printers` ###

DROP TABLE IF EXISTS `printers`;

CREATE TABLE `printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(60) NOT NULL,
  `queue` varchar(20) NOT NULL,
  `host` varchar(40) NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `printers` ###

INSERT INTO `printers` VALUES
('1', 'QL500', 'Label printer', 'QL500', 'server', '127', '20'),
('2', 'Samsung', 'Main network printer', 'scx4521F', 'server', '515', '5'),
('3', 'Local', 'Local print server at user IP', 'lp', '', '515', '10');

### Structure of table `purch_data` ###

DROP TABLE IF EXISTS `purch_data`;

CREATE TABLE `purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `purch_data` ###

INSERT INTO `purch_data` VALUES
('1', 'kabel', '125000', '', '1', 'kabel'),
('1', 'speaker', '100000', '', '1', 'speaker'),
('2', 'panadol', '2000', '', '1', 'panadol obat sakit kepala'),
('2', 'decolgen', '3000', '', '1', 'decolgen'),
('1', 'transistor', '1000', '', '1', 'transistor'),
('1', 'tepung', '3000', '', '1', 'tepung'),
('1', 'gula', '5000', '', '1', 'gula'),
('1', 'coklat', '20000', '', '1', 'coklat'),
('2', 'gula', '0', '', '1', 'gula'),
('2', 'speaker', '200000', '', '1', 'speaker'),
('2', 'transistor', '2000', '', '1', 'transistor'),
('3', 'aerocomac3000', '100000', '', '1', 'aerocom tipe 3000'),
('3', 'elbow', '50000', '', '1', 'elbow'),
('3', 'pipa', '200000', '', '1', 'pipa'),
('3', 'station', '700000', '', '1', 'station'),
('1', 'lcd', '1000000', '', '1', 'lcd'),
('1', 'keyboard', '100000', '', '1', 'keyboard'),
('2', 'tuna', '30000', '', '1', 'ikan tuna'),
('4', 'amx500', '10000', '', '1', 'amoxicilling 500mg');

### Structure of table `purch_order_details` ###

DROP TABLE IF EXISTS `purch_order_details`;

CREATE TABLE `purch_order_details` (
  `po_detail_item` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`po_detail_item`),
  KEY `order` (`order_no`,`po_detail_item`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ;

### Data of table `purch_order_details` ###

INSERT INTO `purch_order_details` VALUES
('1', '1', 'kabel', 'kabel', '2012-12-01', '100', '100000', '100000', '100000', '100', '100'),
('2', '1', 'speaker', 'speaker', '2012-12-01', '100', '100000', '100000', '100000', '100', '100'),
('3', '2', 'kabel', 'kabel', '2012-12-01', '200', '100000', '100000', '100000', '200', '200'),
('4', '3', 'panadol', 'panadol obat sakit kepala', '2012-12-06', '100', '2000', '2000', '2000', '100', '100'),
('5', '3', 'decolgen', 'decolgen', '2012-12-06', '100', '3000', '3000', '3000', '100', '100'),
('6', '4', 'decolgen', 'decolgen', '2012-12-07', '1000', '3000', '3000', '3000', '1000', '1000'),
('7', '5', 'kabel', 'kabel', '2012-12-08', '200', '100000', '100000', '100000', '200', '200'),
('8', '6', 'decolgen', 'decolgen', '2012-12-07', '100', '3000', '3000', '3000', '100', '100'),
('9', '7', 'transistor', 'transistor', '2012-12-12', '1000', '1000', '1000', '1000', '1000', '1000'),
('10', '8', 'kabel', 'kabel', '2012-12-12', '10', '100000', '100000', '100000', '10', '10'),
('11', '9', 'kabel', 'kabel', '2012-12-11', '100', '100000', '100000', '100000', '100', '100'),
('12', '10', 'tepung', 'tepung', '2012-12-18', '0', '3000', '3000', '3000', '100', '100'),
('13', '10', 'gula', 'gula', '2012-12-18', '0', '5000', '5000', '5000', '100', '100'),
('14', '10', 'coklat', 'coklat', '2012-12-18', '0', '20000', '20000', '20000', '100', '100'),
('15', '11', 'gula', 'gula', '2012-12-21', '10', '0', '0', '4166.6666666667', '10', '10'),
('16', '12', 'speaker', 'speaker', '2012-12-21', '10', '200000', '200000', '109174.31192661', '10', '10'),
('17', '13', 'transistor', 'transistor', '2012-12-21', '900', '2000', '2000', '1500', '900', '900'),
('18', '14', 'kabel', 'kabel', '2012-12-22', '0', '125000', '125000', '101024.59016393', '5', '5'),
('19', '15', 'aerocomac3000', 'aerocom tipe 3000', '2013-01-10', '5', '100000', '100000', '100000', '5', '5'),
('20', '16', 'elbow', 'elbow', '2013-01-09', '10', '50000', '50000', '50000', '10', '10'),
('21', '16', 'pipa', 'pipa', '2013-01-09', '10', '200000', '200000', '200000', '10', '10'),
('22', '16', 'station', 'station', '2013-01-09', '15', '700000', '700000', '700000', '15', '15'),
('23', '17', 'lcd', 'lcd', '2013-01-14', '0', '1000000', '1000000', '1000000', '20', '20'),
('24', '17', 'keyboard', 'keyboard', '2013-01-14', '0', '100000', '100000', '100000', '20', '20'),
('25', '18', 'tuna', 'ikan tuna', '2013-01-14', '25', '30000', '30000', '30000', '25', '25'),
('26', '19', 'amx500', 'amoxicilling 500mg', '2013-01-30', '100', '10000', '10000', '10000', '100', '100'),
('27', '20', 'amx500', 'amoxicilling 500mg', '2013-01-29', '100', '10000', '10000', '10000', '100', '100');

### Structure of table `purch_orders` ###

DROP TABLE IF EXISTS `purch_orders`;

CREATE TABLE `purch_orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `comments` tinytext,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext NOT NULL,
  `requisition_no` tinytext,
  `into_stock_location` varchar(5) NOT NULL DEFAULT '',
  `delivery_address` tinytext NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_no`),
  KEY `ord_date` (`ord_date`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

### Data of table `purch_orders` ###

INSERT INTO `purch_orders` VALUES
('1', '1', NULL, '2012-11-30', '1', '234', 'DEF', 'ke gudang lengkong', '21000000', '0'),
('2', '1', NULL, '2012-12-01', 'auto', '12345', 'DEF', 'default', '21000000', '0'),
('3', '2', NULL, '2012-12-05', '2', 'Q1243124', 'DEF', 'KLIPANG', '525000', '0'),
('4', '2', NULL, '2012-12-07', 'auto', '12345', 'DEF', 'N/A', '3150000', '0'),
('5', '1', NULL, '2012-12-07', '3', '2345', 'DEF', 'N/A', '21000000', '0'),
('6', '2', NULL, '2012-12-07', 'auto', '1234', 'DEF', 'N/A', '315000', '0'),
('7', '1', NULL, '2012-12-11', '4', NULL, 'DEF', 'N/A', '1050000', '0'),
('8', '1', NULL, '2012-12-11', '5', NULL, 'DEF', 'N/A', '1050000', '0'),
('9', '1', NULL, '2012-12-11', 'auto', '123444/1234', 'DEF', 'ke gudang', '10500000', '0'),
('10', '1', NULL, '2012-12-17', '6', '123', 'DEF', 'N/A', '2940000', '0'),
('11', '2', NULL, '2012-12-21', 'auto', '12342132', 'DEF', 'N/A', '0', '0'),
('12', '2', NULL, '2012-12-21', 'auto', '125250375', 'DEF', 'N/A', '2100000', '0'),
('13', '2', NULL, '2012-12-21', 'auto', '345222', 'DEF', 'N/A', '1890000', '0'),
('14', '1', NULL, '2012-12-21', '7', NULL, 'DEF', 'N/A', '656250', '0'),
('15', '3', NULL, '2013-01-09', '8', NULL, 'KUDUS', 'alamat kudus', '525000', '0'),
('16', '3', NULL, '2013-01-09', 'auto', '2345', 'DEF', 'N/A', '13650000', '0'),
('17', '1', NULL, '2013-01-13', '9', NULL, 'KUDUS', 'alamat kudus', '23100000', '0'),
('18', '2', NULL, '2013-01-14', 'auto', '3211', 'DEF', 'N/A', '787500', '0'),
('19', '4', NULL, '2013-01-29', '10', NULL, 'DEF', 'N/A', '1050000', '0'),
('20', '4', NULL, '2013-01-29', 'auto', '008', 'DEF', 'N/A', '1050000', '0');

### Structure of table `quick_entries` ###

DROP TABLE IF EXISTS `quick_entries`;

CREATE TABLE `quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) NOT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `quick_entries` ###

INSERT INTO `quick_entries` VALUES
('1', '1', 'Maintenance', '0', 'Amount', '0'),
('2', '4', 'Phone', '0', 'Amount', '0'),
('3', '2', 'Cash Sales', '0', 'Amount', '0');

### Structure of table `quick_entry_lines` ###

DROP TABLE IF EXISTS `quick_entry_lines`;

CREATE TABLE `quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT '0',
  `action` varchar(2) NOT NULL,
  `dest_id` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `quick_entry_lines` ###

INSERT INTO `quick_entry_lines` VALUES
('1', '1', '0', 't-', '1', '0', '0'),
('2', '2', '0', 't-', '1', '0', '0'),
('3', '3', '0', 't-', '1', '0', '0'),
('4', '3', '0', '=', '4010', '0', '0'),
('5', '1', '0', '=', '5765', '0', '0'),
('6', '2', '0', '=', '5780', '0', '0');

### Structure of table `recurrent_invoices` ###

DROP TABLE IF EXISTS `recurrent_invoices`;

CREATE TABLE `recurrent_invoices` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `order_no` int(11) unsigned NOT NULL,
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `group_no` smallint(6) unsigned DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `monthly` int(11) NOT NULL DEFAULT '0',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `recurrent_invoices` ###


### Structure of table `refs` ###

DROP TABLE IF EXISTS `refs`;

CREATE TABLE `refs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `refs` ###

INSERT INTO `refs` VALUES
('1', '0', '1'),
('1', '1', '1'),
('1', '2', '1'),
('2', '2', '2'),
('3', '2', '3'),
('10', '10', '10'),
('11', '10', '11'),
('12', '10', '12'),
('13', '10', '13'),
('14', '10', '14'),
('15', '10', '15'),
('16', '10', '16'),
('17', '10', '17'),
('18', '10', '18'),
('19', '10', '19'),
('2', '10', '2'),
('20', '10', '20'),
('21', '10', '21'),
('22', '10', '22'),
('23', '10', '23'),
('24', '10', '24'),
('25', '10', '25'),
('26', '10', '26'),
('27', '10', '27'),
('28', '10', '28'),
('29', '10', '29'),
('3', '10', '3'),
('4', '10', '4'),
('5', '10', '5'),
('6', '10', '6'),
('7', '10', '7'),
('8', '10', '8'),
('9', '10', '9'),
('1', '11', '1'),
('2', '11', '2'),
('3', '11', '3'),
('4', '11', '4'),
('5', '11', '5'),
('6', '11', '6'),
('7', '11', '7'),
('1', '12', '1'),
('10', '12', '10'),
('11', '12', '11'),
('12', '12', '12'),
('13', '12', '13'),
('14', '12', '14'),
('15', '12', '15'),
('16', '12', '16'),
('17', '12', '17'),
('18', '12', '18'),
('19', '12', '19'),
('2', '12', '2'),
('20', '12', '20'),
('21', '12', '21'),
('22', '12', '22'),
('23', '12', '23'),
('24', '12', '24'),
('25', '12', '25'),
('26', '12', '26'),
('27', '12', '27'),
('3', '12', '3'),
('4', '12', '4'),
('5', '12', '5'),
('6', '12', '6'),
('7', '12', '7'),
('8', '12', '8'),
('9', '12', '9'),
('2', '13', '1'),
('23', '13', '10'),
('28', '13', '11'),
('29', '13', '12'),
('30', '13', '13'),
('32', '13', '14'),
('33', '13', '15'),
('34', '13', '16'),
('35', '13', '17'),
('36', '13', '18'),
('4', '13', '2'),
('6', '13', '3'),
('10', '13', '4'),
('11', '13', '5'),
('17', '13', '6'),
('18', '13', '7'),
('20', '13', '8'),
('21', '13', '9'),
('1', '13', 'auto'),
('3', '13', 'auto'),
('5', '13', 'auto'),
('7', '13', 'auto'),
('8', '13', 'auto'),
('9', '13', 'auto'),
('12', '13', 'auto'),
('13', '13', 'auto'),
('14', '13', 'auto'),
('15', '13', 'auto'),
('16', '13', 'auto'),
('19', '13', 'auto'),
('22', '13', 'auto'),
('24', '13', 'auto'),
('25', '13', 'auto'),
('26', '13', 'auto'),
('27', '13', 'auto'),
('31', '13', 'auto'),
('1', '18', '1'),
('19', '18', '10'),
('3', '18', '2'),
('5', '18', '3'),
('7', '18', '4'),
('8', '18', '5'),
('10', '18', '6'),
('14', '18', '7'),
('15', '18', '8'),
('17', '18', '9'),
('2', '18', 'auto'),
('4', '18', 'auto'),
('6', '18', 'auto'),
('9', '18', 'auto'),
('11', '18', 'auto'),
('12', '18', 'auto'),
('13', '18', 'auto'),
('16', '18', 'auto'),
('18', '18', 'auto'),
('20', '18', 'auto'),
('1', '20', '1'),
('10', '20', '10'),
('11', '20', '11'),
('12', '20', '12'),
('14', '20', '13'),
('13', '20', '132'),
('15', '20', '14'),
('16', '20', '15'),
('2', '20', '2'),
('3', '20', '3'),
('4', '20', '4'),
('5', '20', '5'),
('6', '20', '6'),
('7', '20', '7'),
('8', '20', '8'),
('9', '20', '9'),
('1', '22', '1'),
('2', '22', '2'),
('3', '22', '3'),
('4', '22', '4'),
('5', '22', '42'),
('6', '22', '5'),
('1', '25', '1'),
('19', '25', '10'),
('3', '25', '2'),
('5', '25', '3'),
('7', '25', '4'),
('8', '25', '5'),
('10', '25', '6'),
('14', '25', '7'),
('15', '25', '8'),
('17', '25', '9'),
('2', '25', 'auto'),
('4', '25', 'auto'),
('6', '25', 'auto'),
('9', '25', 'auto'),
('11', '25', 'auto'),
('12', '25', 'auto'),
('13', '25', 'auto'),
('16', '25', 'auto'),
('18', '25', 'auto'),
('20', '25', 'auto'),
('1', '26', '1'),
('2', '26', '2'),
('3', '26', '3'),
('4', '26', '4'),
('2', '30', '1'),
('30', '30', '10'),
('31', '30', '11'),
('33', '30', '12'),
('35', '30', '13'),
('36', '30', '14'),
('37', '30', '15'),
('38', '30', '16'),
('4', '30', '2'),
('6', '30', '3'),
('12', '30', '4'),
('18', '30', '5'),
('22', '30', '7'),
('23', '30', '8'),
('25', '30', '9'),
('1', '30', 'auto'),
('3', '30', 'auto'),
('5', '30', 'auto'),
('7', '30', 'auto'),
('8', '30', 'auto'),
('9', '30', 'auto'),
('10', '30', 'auto'),
('11', '30', 'auto'),
('13', '30', 'auto'),
('14', '30', 'auto'),
('15', '30', 'auto'),
('16', '30', 'auto'),
('17', '30', 'auto'),
('19', '30', 'auto'),
('20', '30', 'auto'),
('24', '30', 'auto'),
('26', '30', 'auto'),
('27', '30', 'auto'),
('28', '30', 'auto'),
('29', '30', 'auto'),
('32', '30', 'auto'),
('34', '30', 'auto'),
('1', '32', '1'),
('2', '32', '2'),
('3', '32', '3'),
('4', '32', '4');

### Structure of table `sales_order_details` ###

DROP TABLE IF EXISTS `sales_order_details`;

CREATE TABLE `sales_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `stk_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `qty_sent` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sorder` (`trans_type`,`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 ;

### Data of table `sales_order_details` ###

INSERT INTO `sales_order_details` VALUES
('1', '1', '30', 'kabel', 'kabel', '1', '0', '1', '0'),
('2', '2', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('3', '2', '30', 'speaker', 'speaker', '100', '120000', '100', '0'),
('4', '3', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('5', '4', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('6', '5', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('7', '1', '32', 'decolgen', 'decolgen', '0', '3600', '10', '0'),
('8', '6', '30', 'decolgen', 'decolgen', '10', '3600', '10', '0'),
('9', '7', '30', 'kabel', 'kabel', '35', '120000', '35', '0'),
('10', '8', '30', 'kabel', 'kabel', '35', '120000', '35', '0'),
('11', '9', '30', 'kabel', 'kabel', '34', '120000', '34', '0'),
('12', '10', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('13', '11', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('14', '12', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('15', '13', '30', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('16', '13', '30', 'kabel', 'kabel', '20', '120000', '20', '0'),
('17', '14', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('18', '14', '30', 'speaker', 'speaker', '1', '120000', '1', '0'),
('19', '15', '30', 'kabel', 'kabel', '100', '120000', '100', '0'),
('20', '16', '30', 'kabel', 'kabel', '5', '120000', '5', '0'),
('21', '17', '30', 'kabel', 'kabel', '50', '120000', '50', '0'),
('22', '2', '32', 'kabel', 'kabel', '0', '120000', '5', '0'),
('23', '18', '30', 'kabel', 'kabel', '5', '120000', '5', '0'),
('24', '19', '30', 'kabel', 'kabel', '3', '120000', '3', '0'),
('25', '20', '30', 'radiorakitan', 'radio rakitan', '5', '626400', '5', '0'),
('27', '22', '30', 'kabel', 'kabel', '40', '120000', '40', '0'),
('28', '3', '32', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('29', '23', '30', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('30', '24', '30', 'kabel', 'kabel', '50', '120000', '50', '0'),
('31', '4', '32', 'roti', 'roti coklat', '0', '45450', '10', '0'),
('32', '25', '30', 'roti', 'roti coklat', '10', '45450', '10', '0'),
('33', '26', '30', 'tepung', 'tepung', '20', '4500', '20', '0'),
('34', '26', '30', 'coklat', 'coklat', '1', '30000', '1', '0'),
('35', '27', '30', 'roti', 'roti coklat', '5', '45450', '5', '0'),
('36', '28', '30', 'tepung', 'tepung', '1', '4500', '1', '0'),
('37', '29', '30', 'kabel', 'kabel', '3', '120000', '3', '0'),
('38', '30', '30', 'tepung', 'tepung', '3', '3600', '3', '0'),
('39', '31', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('40', '32', '30', 'kabel', 'kabel', '1', '150000', '1', '0'),
('41', '33', '30', 'coklat', 'coklat', '10', '24000', '10', '0'),
('42', '34', '30', 'coklat', 'coklat', '1', '30000', '1', '0'),
('43', '34', '30', 'gula', 'gula', '10', '6251', '10', '0'),
('45', '35', '30', 'aerocomac3000', 'aerocom tipe 3000', '1', '150000', '1', '0'),
('46', '36', '30', 'aerocomac3000', 'aerocom tipe 3000', '2', '150000', '2', '0'),
('47', '37', '30', 'laptop', 'laptop', '1', '5875000', '1', '0'),
('48', '38', '30', 'aerocomac3000', 'aerocom tipe 3000', '0', '150000', '5', '0');

### Structure of table `sales_orders` ###

DROP TABLE IF EXISTS `sales_orders`;

CREATE TABLE `sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `branch_code` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  `customer_ref` tinytext NOT NULL,
  `comments` tinytext,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `ship_via` int(11) NOT NULL DEFAULT '0',
  `delivery_address` tinytext NOT NULL,
  `contact_phone` varchar(30) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `deliver_to` tinytext NOT NULL,
  `freight_cost` double NOT NULL DEFAULT '0',
  `from_stk_loc` varchar(5) NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_type`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `sales_orders` ###

INSERT INTO `sales_orders` VALUES
('1', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-11-30', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-11-30', '4', '0'),
('2', '30', '1', '0', '1', '1', '1', '', NULL, '2012-12-03', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-04', '4', '12120000'),
('3', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-12-03', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-03', '4', '120000'),
('4', '30', '1', '0', '2', '2', '2', '', NULL, '2012-12-04', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '1200000'),
('5', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-04', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-04', '4', '1200000'),
('6', '30', '1', '0', '2', '2', '3', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '36000'),
('7', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4200000'),
('8', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4200000'),
('9', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4080000'),
('10', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '3600000'),
('11', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '3600000'),
('12', '30', '1', '0', '2', '2', '4', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '3', '3600000'),
('13', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '3120000'),
('14', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-17', '1', '1320000'),
('15', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-17', '1', '12000000'),
('16', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '600000'),
('17', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-17', '3', '6000000'),
('18', '30', '1', '0', '2', '2', '5', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-08', '3', '600000'),
('19', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-08', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-08', '4', '360000'),
('20', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-11', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-11', '4', '3132000'),
('22', '30', '1', '0', '2', '2', '7', '', NULL, '2012-12-11', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-12', '3', '4800000'),
('23', '30', '1', '1', '2', '2', '8', '', 'Sales Quotation # 3', '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-15', '2', '720000'),
('24', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-30', '2', '6000000'),
('25', '30', '1', '0', '3', '3', '9', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-18', '3', '477225'),
('26', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-15', '1', '126000'),
('27', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-27', '3', '238613'),
('28', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-27', '3', '4725'),
('29', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-17', '4', '360000'),
('30', '30', '1', '0', '1', '1', '10', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-18', '4', '10800'),
('31', '30', '1', '0', '1', '1', '11', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'SYG', '2012-12-18', '4', '120000'),
('32', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-18', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-28', '3', '157500'),
('33', '30', '1', '0', '3', '3', '12', '', NULL, '2012-12-31', '1', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-01', '3', '240000'),
('34', '30', '1', '0', '3', '3', 'auto', '', NULL, '2013-01-08', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-18', '3', '97136'),
('35', '30', '2', '0', '4', '6', '13', '', NULL, '2013-01-09', '3', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-10', '3', '157500'),
('36', '30', '1', '0', '4', '6', '14', '', NULL, '2013-01-13', '3', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-14', '3', '315000'),
('37', '30', '1', '0', '4', '6', '15', '', NULL, '2013-01-13', '5', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-14', '3', '6168750'),
('38', '30', '0', '0', '3', '3', '16', '', NULL, '2013-01-23', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-24', '3', '787500'),
('1', '32', '0', '0', '2', '2', '1', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '36000'),
('2', '32', '0', '0', '2', '2', '2', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '600000'),
('3', '32', '1', '0', '2', '2', '3', '', NULL, '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-15', '2', '720000'),
('4', '32', '0', '0', '3', '3', '4', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-17', '3', '477225');

### Structure of table `sales_pos` ###

DROP TABLE IF EXISTS `sales_pos`;

CREATE TABLE `sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `sales_pos` ###

INSERT INTO `sales_pos` VALUES
('1', 'Default', '1', '1', 'DEF', '2', '0'),
('2', 'POS-1', '1', '1', 'DEF', '2', '0'),
('3', 'POS-2', '1', '1', 'DEF', '2', '0');

### Structure of table `sales_types` ###

DROP TABLE IF EXISTS `sales_types`;

CREATE TABLE `sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

### Data of table `sales_types` ###

INSERT INTO `sales_types` VALUES
('1', 'Retail', '1', '1.2', '0'),
('2', 'Wholesale', '0', '1.1', '0'),
('3', 'jualmahal', '0', '1.5', '0'),
('4', 'untung_besar', '0', '2.5', '0'),
('5', 'untung_besar_banget', '0', '5', '0');

### Structure of table `salesman` ###

DROP TABLE IF EXISTS `salesman`;

CREATE TABLE `salesman` (
  `salesman_code` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` char(60) NOT NULL DEFAULT '',
  `salesman_phone` char(30) NOT NULL DEFAULT '',
  `salesman_fax` char(30) NOT NULL DEFAULT '',
  `salesman_email` varchar(100) NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT '0',
  `break_pt` double NOT NULL DEFAULT '0',
  `provision2` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesman_code`),
  UNIQUE KEY `salesman_name` (`salesman_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `salesman` ###

INSERT INTO `salesman` VALUES
('1', 'Sales Person', '', '', '', '5', '1000', '4', '0'),
('2', 'jontor', '12345', '12345', 'jontor@yahoo.com', '3', '1', '4', '0'),
('3', 'wong kudus', '12345', '123414', 'wong@kudus.com', '10', '2000000', '15', '0');

### Structure of table `security_roles` ###

DROP TABLE IF EXISTS `security_roles`;

CREATE TABLE `security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `sections` text,
  `areas` text,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `security_roles` ###

INSERT INTO `security_roles` VALUES
('1', 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132', '0'),
('2', 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;10496;10752;11008;13056;13312;15616;15872;16128;2319360;2450432;2515968;2581504;2778112;2909184;2974720;3040256', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15629;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;15884;16129;16130;16131;16132;2319460;2319461;2319462;2450532;2516068;2581604;2581605;2778212;2909284;2909285;2974820;3040356', '0'),
('3', 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873', '0'),
('4', 'Stock Manager', 'Stock Manager', '2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132', '0'),
('5', 'Production Manager', 'Production Manager', '512;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('6', 'Purchase Officer', 'Purchase Officer', '512;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('7', 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132', '0'),
('8', 'AP Officer', 'AP Officer', '512;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('9', 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132', '0'),
('10', 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132', '0');

### Structure of table `shippers` ###

DROP TABLE IF EXISTS `shippers`;

CREATE TABLE `shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `phone2` varchar(30) NOT NULL DEFAULT '',
  `contact` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `shippers` ###

INSERT INTO `shippers` VALUES
('1', 'Default', '', '', '', '', '0');

### Structure of table `sql_trail` ###

DROP TABLE IF EXISTS `sql_trail`;

CREATE TABLE `sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `sql_trail` ###


### Structure of table `stock_category` ###

DROP TABLE IF EXISTS `stock_category`;

CREATE TABLE `stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_assembly_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

### Data of table `stock_category` ###

INSERT INTO `stock_category` VALUES
('1', 'Components', '1', 'each', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('2', 'Charges', '1', 'each', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('3', 'Systems', '1', 'each', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('4', 'Services', '1', 'hrs', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('5', 'obatflu', '1', 'ea.', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('6', 'obatsakitkepala', '1', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('7', 'generik', '1', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0');

### Structure of table `stock_master` ###

DROP TABLE IF EXISTS `stock_master`;

CREATE TABLE `stock_master` (
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `long_description` tinytext NOT NULL,
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mb_flag` char(1) NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) NOT NULL DEFAULT '',
  `cogs_account` varchar(15) NOT NULL DEFAULT '',
  `inventory_account` varchar(15) NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) NOT NULL DEFAULT '',
  `assembly_account` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `actual_cost` double NOT NULL DEFAULT '0',
  `last_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `stock_master` ###

INSERT INTO `stock_master` VALUES
('aerocomac3000', '1', '1', 'aerocom tipe 3000', 'aerocom', 'unit', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '100000', '0', '0', '0', '0', '0'),
('amx500', '7', '1', 'amoxicilling 500mg', 'antibiotik serbaguna', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '10000', '0', '0', '0', '0', '0'),
('coklat', '1', '1', 'coklat', 'bubuk coklat', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '20000', '0', '0', '0', '0', '0'),
('decolgen', '5', '1', 'decolgen', 'decolgen obat flu', 'ea.', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '3000', '0', '0', '0', '0', '0'),
('elbow', '1', '1', 'elbow', '', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '50000', '0', '0', '0', '0', '0'),
('ghostdetector', '1', '1', 'ghost detector', 'ghost detector', 'pcs', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '10000', '15000', '5000', '0', '0', '0'),
('gula', '1', '1', 'gula', 'gula pasir manis', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '4166.6666666667', '0', '0', '0', '0', '0'),
('kabel', '1', '1', 'kabel', 'kabel tembaga', 'roll', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '101024.59016393', '0', '0', '0', '0', '0'),
('keyboard', '1', '1', 'keyboard', 'keyboard', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '100000', '0', '0', '0', '0', '0'),
('laptop', '1', '1', 'laptop', 'laptop spesial candrasul', 'pcs', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1100000', '66666.666666667', '8333.3333333333', '0', '0', '0'),
('lcd', '1', '1', 'lcd', 'lcd laptop', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1000000', '0', '0', '0', '0', '0'),
('panadol', '6', '1', 'panadol obat sakit kepala', 'MD: 123\r\n', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '2000', '0', '0', '0', '0', '0'),
('pipa', '1', '1', 'pipa', 'pipa', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '200000', '0', '0', '0', '0', '0'),
('proyek_rsud_klaten', '1', '1', 'proyek_rsud_klaten', 'proyek rsud klaten', 'unit', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '9500000', '0', '100000', '0', '0', '0'),
('radiorakitan', '1', '1', 'radio rakitan', 'radio rakitan pabrik sendiri', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '510000', '10000', '2000', '0', '0', '0'),
('roti', '1', '1', 'roti coklat', 'roti coklat spesial', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '28000', '2000', '300', '0', '0', '1'),
('speaker', '1', '1', 'speaker', 'speaker aktif', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '109174.31192661', '0', '0', '0', '0', '0'),
('station', '1', '1', 'station', '', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '700000', '0', '0', '0', '0', '0'),
('tepung', '1', '1', 'tepung', 'tepung maizena', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '3000', '0', '0', '0', '0', '0'),
('transistor', '1', '1', 'transistor', 'transistor', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1500', '0', '0', '0', '0', '0'),
('tuna', '1', '1', 'ikan tuna', 'ikan tuna', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '30000', '0', '0', '0', '0', '0');

### Structure of table `stock_moves` ###

DROP TABLE IF EXISTS `stock_moves`;

CREATE TABLE `stock_moves` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `person_id` int(11) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `reference` char(40) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`trans_id`),
  KEY `type` (`type`,`trans_no`),
  KEY `Move` (`stock_id`,`loc_code`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 ;

### Data of table `stock_moves` ###

INSERT INTO `stock_moves` VALUES
('1', '1', 'kabel', '25', 'DEF', '2012-11-30', '1', '100000', '', '100', '0', '100000', '1'),
('2', '1', 'speaker', '25', 'DEF', '2012-11-30', '1', '100000', '', '100', '0', '100000', '1'),
('3', '1', 'kabel', '13', 'DEF', '2012-11-30', '0', '0', 'auto', '-1', '0', '100000', '1'),
('4', '2', 'kabel', '25', 'DEF', '2012-12-01', '1', '100000', '', '200', '0', '100000', '1'),
('5', '2', 'kabel', '13', 'DEF', '2012-12-03', '0', '120000', '1', '-1', '0', '100000', '1'),
('6', '2', 'speaker', '13', 'DEF', '2012-12-03', '0', '120000', '1', '-100', '0', '100000', '1'),
('7', '1', 'kabel', '11', 'DEF', '2012-12-03', '0', '120000', 'Return', '2', '0', '100000', '0'),
('8', '2', 'speaker', '11', 'DEF', '2012-12-03', '0', '120000', 'Return', '100', '0', '100000', '0'),
('9', '3', 'ghostdetector', '11', 'DEF', '2012-12-03', '0', '36000', 'Return', '100', '0', '30000', '0'),
('10', '3', 'kabel', '13', 'DEF', '2012-12-03', '0', '120000', 'auto', '-1', '0', '100000', '1'),
('11', '4', 'kabel', '13', 'DEF', '2012-12-04', '0', '120000', '2', '-10', '0', '100000', '1'),
('12', '4', 'kabel', '11', 'DEF', '2012-12-04', '0', '120000', 'Return', '20', '0', '100000', '0'),
('13', '5', 'kabel', '13', 'DEF', '2012-12-04', '0', '120000', 'auto', '-10', '0', '100000', '1'),
('14', '5', 'kabel', '11', 'DEF', '2012-12-04', '0', '120000', 'Return Ex Inv: 4', '5', '0', '100000', '0'),
('15', '3', 'panadol', '25', 'DEF', '2012-12-05', '2', '2000', '', '100', '0', '2000', '1'),
('16', '3', 'decolgen', '25', 'DEF', '2012-12-05', '2', '3000', '', '100', '0', '3000', '1'),
('17', '6', 'decolgen', '13', 'DEF', '2012-12-05', '0', '3600', '3', '-10', '0', '3000', '1'),
('18', '7', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-35', '0', '100000', '1'),
('19', '8', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-35', '0', '100000', '1'),
('20', '9', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-34', '0', '100000', '1'),
('21', '10', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', '4', '-30', '0', '100000', '1'),
('22', '11', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', '5', '-30', '0', '100000', '1'),
('23', '4', 'decolgen', '25', 'DEF', '2012-12-07', '2', '3000', '', '1000', '0', '3000', '1'),
('24', '12', 'decolgen', '13', 'DEF', '2012-12-07', '0', '3600', 'auto', '-200', '0', '3000', '1'),
('25', '12', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-20', '0', '100000', '1'),
('26', '13', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-10', '0', '100000', '1'),
('27', '13', 'speaker', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-1', '0', '100000', '1'),
('28', '14', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-100', '0', '100000', '1'),
('29', '5', 'kabel', '25', 'DEF', '2012-12-07', '1', '100000', '', '200', '0', '100000', '1'),
('30', '15', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-5', '0', '100000', '1'),
('31', '16', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-50', '0', '100000', '1'),
('32', '17', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', '6', '-5', '0', '100000', '1'),
('33', '6', 'decolgen', '25', 'DEF', '2012-12-07', '2', '3000', '', '100', '0', '3000', '1'),
('34', '18', 'kabel', '13', 'DEF', '2012-12-08', '0', '120000', '7', '-3', '0', '100000', '1'),
('35', '7', 'transistor', '25', 'DEF', '2012-12-11', '1', '1000', '', '1000', '0', '1000', '1'),
('36', '8', 'kabel', '25', 'DEF', '2012-12-11', '1', '100000', '', '10', '0', '100000', '1'),
('37', '1', 'kabel', '26', 'DEF', '2012-12-11', '0', '100000', '1', '-50', '0', '100000', '1'),
('38', '1', 'transistor', '26', 'DEF', '2012-12-11', '0', '1000', '1', '-100', '0', '1000', '1'),
('39', '1', 'radiorakitan', '26', 'DEF', '2012-12-11', '0', '0', '1', '10', '0', '522000', '1'),
('40', '19', 'radiorakitan', '13', 'DEF', '2012-12-11', '0', '626400', 'auto', '-5', '0', '522000', '1'),
('41', '20', 'kabel', '13', 'DEF', '2012-12-11', '0', '120000', '8', '-40', '0', '100000', '1'),
('42', '9', 'kabel', '25', 'DEF', '2012-12-11', '1', '100000', '', '100', '0', '100000', '1'),
('43', '21', 'decolgen', '13', 'DEF', '2012-12-14', '0', '3600', '9', '-200', '0', '3000', '1'),
('44', '22', 'kabel', '13', 'DEF', '2012-12-14', '0', '120000', 'auto', '-50', '0', '100000', '1'),
('45', '6', 'decolgen', '11', 'DEF', '2012-12-14', '0', '3600', 'Return', '5', '0', '3000', '0'),
('46', '7', 'kabel', '11', 'DEF', '2012-12-14', '0', '120000', 'Return', '5', '0', '100000', '0'),
('47', '10', 'tepung', '25', 'DEF', '2012-12-17', '1', '3000', '', '100', '0', '3000', '1'),
('48', '10', 'gula', '25', 'DEF', '2012-12-17', '1', '5000', '', '100', '0', '5000', '1'),
('49', '10', 'coklat', '25', 'DEF', '2012-12-17', '1', '20000', '', '100', '0', '20000', '1'),
('50', '2', 'tepung', '26', 'DEF', '2012-12-17', '0', '3000', '2', '-50', '0', '3000', '1'),
('51', '2', 'coklat', '26', 'DEF', '2012-12-17', '0', '20000', '2', '-50', '0', '20000', '1'),
('52', '2', 'gula', '26', 'DEF', '2012-12-17', '0', '5000', '2', '-50', '0', '5000', '1'),
('53', '2', 'roti', '26', 'DEF', '2012-12-17', '0', '0', '2', '50', '0', '30300', '1'),
('54', '23', 'roti', '13', 'DEF', '2012-12-17', '0', '45450', '10', '-10', '0', '30300', '1'),
('55', '24', 'tepung', '13', 'DEF', '2012-12-17', '0', '4500', 'auto', '-20', '0', '3000', '1'),
('56', '24', 'coklat', '13', 'DEF', '2012-12-17', '0', '30000', 'auto', '-1', '0', '20000', '1'),
('57', '25', 'roti', '13', 'DEF', '2012-12-17', '0', '45450', 'auto', '-5', '0', '30300', '1'),
('58', '26', 'tepung', '13', 'DEF', '2012-12-17', '0', '4500', 'auto', '-1', '0', '3000', '1'),
('59', '27', 'kabel', '13', 'DEF', '2012-12-17', '0', '120000', 'auto', '-3', '0', '100000', '1'),
('60', '1', 'roti', '16', 'DEF', '2012-12-17', '1', '0', '1', '-5', '0', '0', '1'),
('61', '1', 'roti', '16', 'SYG', '2012-12-17', '1', '0', '1', '5', '0', '0', '1'),
('62', '1', 'kabel', '16', 'DEF', '2012-12-17', '1', '0', '1', '-5', '0', '0', '1'),
('63', '1', 'kabel', '16', 'SYG', '2012-12-17', '1', '0', '1', '5', '0', '0', '1'),
('64', '1', 'tepung', '16', 'DEF', '2012-12-17', '1', '0', '1', '-10', '0', '0', '1'),
('65', '1', 'tepung', '16', 'SYG', '2012-12-17', '1', '0', '1', '10', '0', '0', '1'),
('66', '28', 'kabel', '13', 'SYG', '2012-12-17', '0', '120000', '11', '-1', '0', '100000', '1'),
('67', '29', 'kabel', '13', 'DEF', '2012-12-18', '0', '150000', '12', '-1', '0', '100000', '1'),
('68', '30', 'tepung', '13', 'DEF', '2012-12-18', '0', '3600', '13', '-3', '0', '3000', '1'),
('69', '11', 'gula', '25', 'DEF', '2012-12-21', '2', '0', '', '10', '0', '4166.6666666667', '1'),
('70', '12', 'speaker', '25', 'DEF', '2012-12-21', '2', '200000', '', '10', '0', '109174.31192661', '1'),
('71', '13', 'transistor', '25', 'DEF', '2012-12-21', '2', '2000', '', '900', '0', '1500', '1'),
('72', '14', 'kabel', '25', 'DEF', '2012-12-21', '1', '125000', '', '5', '0', '101024.59016393', '1'),
('73', '31', 'coklat', '13', 'DEF', '2013-01-08', '0', '30000', 'auto', '-1', '0', '20000', '1'),
('74', '31', 'gula', '13', 'DEF', '2013-01-08', '0', '6251', 'auto', '-10', '0', '4166.6666666667', '1'),
('75', '15', 'aerocomac3000', '25', 'KUDUS', '2013-01-09', '3', '100000', '', '5', '0', '100000', '1'),
('76', '32', 'coklat', '13', 'DEF', '2013-01-09', '0', '24000', '14', '-10', '0', '20000', '1'),
('77', '33', 'kabel', '13', 'DEF', '2013-01-09', '0', '120000', '15', '-30', '0', '101024.59016393', '1'),
('78', '16', 'elbow', '25', 'DEF', '2013-01-09', '3', '50000', '', '10', '0', '50000', '1'),
('79', '16', 'pipa', '25', 'DEF', '2013-01-09', '3', '200000', '', '10', '0', '200000', '1'),
('80', '16', 'station', '25', 'DEF', '2013-01-09', '3', '700000', '', '15', '0', '700000', '1'),
('81', '3', 'elbow', '26', 'DEF', '2013-01-09', '0', '50000', '3', '-10', '0', '50000', '1'),
('82', '3', 'station', '26', 'DEF', '2013-01-09', '0', '700000', '3', '-10', '0', '700000', '1'),
('83', '3', 'pipa', '26', 'DEF', '2013-01-09', '0', '200000', '3', '-10', '0', '200000', '1'),
('84', '3', 'proyek_rsud_klaten', '26', 'KUDUS', '2013-01-09', '0', '0', '3', '1', '0', '9600000', '1'),
('85', '34', 'aerocomac3000', '13', 'KUDUS', '2013-01-13', '0', '150000', '16', '-2', '0', '100000', '1'),
('86', '17', 'lcd', '25', 'KUDUS', '2013-01-13', '1', '1000000', '', '20', '0', '1000000', '1'),
('87', '17', 'keyboard', '25', 'KUDUS', '2013-01-13', '1', '100000', '', '20', '0', '100000', '1'),
('88', '2', 'lcd', '16', 'KUDUS', '2013-01-13', '1', '0', '2', '-5', '0', '0', '1'),
('89', '2', 'lcd', '16', 'DEF', '2013-01-13', '1', '0', '2', '5', '0', '0', '1'),
('90', '2', 'keyboard', '16', 'KUDUS', '2013-01-13', '1', '0', '2', '-5', '0', '0', '1'),
('91', '2', 'keyboard', '16', 'DEF', '2013-01-13', '1', '0', '2', '5', '0', '0', '1'),
('92', '4', 'lcd', '26', 'DEF', '2013-01-13', '0', '1000000', '4', '-3', '0', '1000000', '1'),
('93', '4', 'keyboard', '26', 'DEF', '2013-01-13', '0', '100000', '4', '-3', '0', '100000', '1'),
('94', '4', 'laptop', '26', 'DEF', '2013-01-13', '0', '0', '4', '3', '0', '1175000', '1'),
('95', '35', 'laptop', '13', 'DEF', '2013-01-13', '0', '5875000', '17', '-1', '0', '1175000.0000000002', '1'),
('96', '18', 'tuna', '25', 'DEF', '2013-01-14', '2', '30000', '', '25', '0', '30000', '1'),
('97', '36', 'aerocomac3000', '13', 'KUDUS', '2013-01-23', '0', '150000', '18', '-1', '0', '100000', '1'),
('98', '19', 'amx500', '25', 'DEF', '2013-01-29', '4', '10000', '', '100', '0', '10000', '1'),
('99', '20', 'amx500', '25', 'DEF', '2013-01-29', '4', '10000', '', '100', '0', '10000', '1');

### Structure of table `supp_allocations` ###

DROP TABLE IF EXISTS `supp_allocations`;

CREATE TABLE `supp_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ;

### Data of table `supp_allocations` ###

INSERT INTO `supp_allocations` VALUES
('2', '11000000', '2012-12-03', '2', '22', '1', '20'),
('3', '21000000', '2012-12-03', '2', '22', '2', '20'),
('4', '10000000', '2012-11-30', '1', '22', '1', '20'),
('5', '525000', '2012-12-12', '4', '22', '3', '20'),
('6', '3150000', '2012-12-12', '4', '22', '4', '20'),
('7', '315000', '2012-12-12', '4', '22', '6', '20'),
('8', '525000', '2012-12-12', '5', '22', '3', '20'),
('9', '3150000', '2012-12-12', '5', '22', '4', '20'),
('10', '315000', '2012-12-12', '5', '22', '6', '20'),
('11', '21000000', '2012-12-12', '6', '22', '5', '20'),
('12', '2100000', '2012-12-12', '6', '22', '7', '20'),
('13', '10500000', '2012-12-12', '6', '22', '8', '20');

### Structure of table `supp_invoice_items` ###

DROP TABLE IF EXISTS `supp_invoice_items`;

CREATE TABLE `supp_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `quantity` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `memo_` tinytext,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ;

### Data of table `supp_invoice_items` ###

INSERT INTO `supp_invoice_items` VALUES
('1', '1', '20', '0', '1', '1', 'kabel', 'kabel', '100', '100000', '5000', NULL),
('2', '1', '20', '0', '2', '2', 'speaker', 'speaker', '100', '100000', '5000', NULL),
('3', '2', '20', '0', '3', '3', 'kabel', 'kabel', '200', '100000', '5000', NULL),
('4', '3', '20', '0', '4', '4', 'panadol', 'panadol obat sakit kepala', '100', '2000', '100', NULL),
('5', '3', '20', '0', '5', '5', 'decolgen', 'decolgen', '100', '3000', '150', NULL),
('6', '4', '20', '0', '6', '6', 'decolgen', 'decolgen', '1000', '3000', '150', NULL),
('7', '5', '20', '0', '7', '7', 'kabel', 'kabel', '200', '100000', '5000', NULL),
('8', '6', '20', '0', '8', '8', 'decolgen', 'decolgen', '100', '3000', '150', NULL),
('9', '7', '20', '0', '9', '9', 'transistor', 'transistor', '1000', '1000', '50', NULL),
('10', '7', '20', '0', '10', '10', 'kabel', 'kabel', '10', '100000', '5000', NULL),
('11', '8', '20', '0', '11', '11', 'kabel', 'kabel', '100', '100000', '5000', NULL),
('12', '9', '20', '0', '15', '15', 'gula', 'gula', '10', '0', '0', NULL),
('13', '10', '20', '0', '16', '16', 'speaker', 'speaker', '10', '200000', '10000', NULL),
('14', '11', '20', '0', '17', '17', 'transistor', 'transistor', '900', '2000', '100', NULL),
('15', '12', '20', '0', '19', '19', 'aerocomac3000', 'aerocom tipe 3000', '5', '100000', '5000', NULL),
('16', '13', '20', '0', '20', '20', 'elbow', 'elbow', '10', '50000', '2500', NULL),
('17', '13', '20', '0', '21', '21', 'pipa', 'pipa', '10', '200000', '10000', NULL),
('18', '13', '20', '0', '22', '22', 'station', 'station', '15', '700000', '35000', NULL),
('19', '14', '20', '0', '25', '25', 'tuna', 'ikan tuna', '25', '30000', '1500', NULL),
('20', '15', '20', '5010', '0', '0', '', NULL, '0', '0', '0', NULL),
('21', '15', '20', '0', '26', '26', 'amx500', 'amoxicilling 500mg', '100', '10000', '500', NULL),
('22', '16', '20', '0', '27', '27', 'amx500', 'amoxicilling 500mg', '100', '10000', '500', NULL);

### Structure of table `supp_trans` ###

DROP TABLE IF EXISTS `supp_trans`;

CREATE TABLE `supp_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `supplier_id` int(11) unsigned DEFAULT NULL,
  `reference` tinytext NOT NULL,
  `supp_reference` varchar(60) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`trans_no`),
  KEY `supplier_id` (`supplier_id`),
  KEY `SupplierID_2` (`supplier_id`,`supp_reference`),
  KEY `type` (`type`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `supp_trans` ###

INSERT INTO `supp_trans` VALUES
('1', '20', '1', '1', '123', '2012-11-30', '2012-11-30', '20000000', '0', '1000000', '1', '21000000', '0'),
('2', '20', '1', '2', '12345', '2012-12-01', '2012-12-01', '20000000', '0', '1000000', '1', '21000000', '0'),
('3', '20', '2', '3', '123', '2012-12-05', '2012-12-05', '500000', '0', '25000', '1', '1050000', '0'),
('4', '20', '2', '4', '12345', '2012-12-07', '2012-12-07', '3000000', '0', '150000', '1', '6300000', '0'),
('5', '20', '1', '5', '1241234', '2012-12-07', '2012-12-07', '20000000', '0', '1000000', '1', '21000000', '0'),
('6', '20', '2', '6', '1234', '2012-12-07', '2012-12-07', '300000', '0', '15000', '1', '630000', '0'),
('7', '20', '1', '7', '12345345', '2012-12-11', '2012-12-11', '2000000', '0', '100000', '1', '2100000', '0'),
('8', '20', '1', '8', '123444/1234', '2012-12-11', '2012-12-11', '10000000', '0', '500000', '1', '10500000', '0'),
('9', '20', '2', '9', '12342132', '2012-12-21', '2012-12-21', '0', '0', '0', '1', '0', '0'),
('10', '20', '2', '10', '125250375', '2012-12-21', '2012-12-21', '2000000', '0', '100000', '1', '0', '0'),
('11', '20', '2', '11', '345222', '2012-12-21', '2012-12-21', '1800000', '0', '90000', '1', '0', '0'),
('12', '20', '3', '12', '234', '2013-01-09', '2013-01-19', '500000', '0', '25000', '1', '0', '0'),
('13', '20', '3', '132', '2345', '2013-01-09', '2013-01-19', '13000000', '0', '650000', '1', '0', '0'),
('14', '20', '2', '13', '3211', '2013-01-14', '2013-01-14', '750000', '0', '37500', '1', '0', '0'),
('15', '20', '4', '14', '007', '2013-01-29', '2013-02-08', '1000000', '0', '50000', '1', '0', '0'),
('16', '20', '4', '15', '008', '2013-01-29', '2013-02-08', '1000000', '0', '50000', '1', '0', '0'),
('1', '22', '1', '1', '', '2012-11-30', '2012-11-30', '-10000000', '0', '0', '1', '10000000', '0'),
('2', '22', '1', '2', '', '2012-12-03', '2012-12-03', '-32000000', '0', '0', '1', '32000000', '0'),
('3', '22', '1', '3', '', '2012-12-11', '2012-12-11', '-15000000', '0', '0', '1', '0', '0'),
('4', '22', '2', '4', '', '2012-12-12', '2012-12-12', '-3990000', '0', '0', '1', '3990000', '0'),
('5', '22', '2', '42', '', '2012-12-12', '2012-12-12', '-3990000', '0', '0', '1', '3990000', '0'),
('6', '22', '1', '5', '', '2012-12-12', '2012-12-12', '-33600000', '0', '0', '1', '33600000', '0');

### Structure of table `suppliers` ###

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) NOT NULL DEFAULT '',
  `supp_ref` varchar(30) NOT NULL DEFAULT '',
  `address` tinytext NOT NULL,
  `supp_address` tinytext NOT NULL,
  `gst_no` varchar(25) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `bank_account` varchar(60) NOT NULL DEFAULT '',
  `curr_code` char(3) DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `purchase_account` varchar(15) NOT NULL DEFAULT '',
  `payable_account` varchar(15) NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) NOT NULL DEFAULT '',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `suppliers` ###

INSERT INTO `suppliers` VALUES
('1', 'supplier1', 'supplier1', 'alamat surat', 'alamat fisik', '1234567', '', '12345', 'www.supplier1.com', 'bank_supp_1', 'IDR', '4', '0', '0', '0', '1', '0', '', '2100', '5060', 'catatan umum', '0'),
('2', 'PT. Dan Kos', 'PT DAN KOS', '', '', '1234', '', '12345', 'www.dankos.com', 'BCA', 'IDR', '4', '0', '0', '0', '1', '1000000', '', '2100', '5060', '', '0'),
('3', 'pt. aerocom genco indonesia', 'aerocom', '', '', '23141.231412.312412', '', '', 'www.aerocom.com', '', 'IDR', '3', '0', '0', '0', '1', '0', '', '2100', '5060', '', '0'),
('4', 'aam', 'aam', '', '', '1234123', '', '', '', '', 'IDR', '3', '0', '0', '0', '1', '0', '', '2100', '5060', '', '0');

### Structure of table `sys_prefs` ###

DROP TABLE IF EXISTS `sys_prefs`;

CREATE TABLE `sys_prefs` (
  `name` varchar(35) NOT NULL DEFAULT '',
  `category` varchar(30) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` tinytext,
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `sys_prefs` ###

INSERT INTO `sys_prefs` VALUES
('coy_name', 'setup.company', 'varchar', '60', 'Multisolusi Informatika'),
('gst_no', 'setup.company', 'varchar', '25', '12345'),
('coy_no', 'setup.company', 'varchar', '25', '0123456'),
('tax_prd', 'setup.company', 'int', '11', '1'),
('tax_last', 'setup.company', 'int', '11', '1'),
('postal_address', 'setup.company', 'tinytext', '0', 'Perumahan Klipang Pesona Asri II\r\nBlok A NO.227\r\nKel. Sendang Mulyo Kec. Tembalang\r\nKota Semarang 50272'),
('phone', 'setup.company', 'varchar', '30', '08123456'),
('fax', 'setup.company', 'varchar', '30', '08123456'),
('email', 'setup.company', 'varchar', '100', 'yc2int@yahoo.com'),
('coy_logo', 'setup.company', 'varchar', '100', NULL),
('domicile', 'setup.company', 'varchar', '55', 'Klipang Pesona Asri II Blok A NO.227'),
('curr_default', 'setup.company', 'char', '3', 'IDR'),
('use_dimension', 'setup.company', 'tinyint', '1', '0'),
('f_year', 'setup.company', 'int', '11', '6'),
('no_item_list', 'setup.company', 'tinyint', '1', '1'),
('no_customer_list', 'setup.company', 'tinyint', '1', '1'),
('no_supplier_list', 'setup.company', 'tinyint', '1', '1'),
('base_sales', 'setup.company', 'int', '11', '1'),
('time_zone', 'setup.company', 'tinyint', '1', '0'),
('add_pct', 'setup.company', 'int', '5', '0'),
('round_to', 'setup.company', 'int', '5', '1'),
('login_tout', 'setup.company', 'smallint', '6', '600'),
('past_due_days', 'glsetup.general', 'int', '11', '30'),
('profit_loss_year_act', 'glsetup.general', 'varchar', '15', '9990'),
('retained_earnings_act', 'glsetup.general', 'varchar', '15', '3590'),
('bank_charge_act', 'glsetup.general', 'varchar', '15', '5690'),
('exchange_diff_act', 'glsetup.general', 'varchar', '15', '4450'),
('default_credit_limit', 'glsetup.customer', 'int', '11', '1000'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', '1', '0'),
('legal_text', 'glsetup.customer', 'tinytext', '0', NULL),
('freight_act', 'glsetup.customer', 'varchar', '15', '4430'),
('debtors_act', 'glsetup.sales', 'varchar', '15', '1200'),
('default_sales_act', 'glsetup.sales', 'varchar', '15', '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', '15', '4510'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', '15', '4500'),
('default_delivery_required', 'glsetup.sales', 'smallint', '6', '1'),
('default_dim_required', 'glsetup.dims', 'int', '11', '20'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', '15', '5060'),
('creditors_act', 'glsetup.purchase', 'varchar', '15', '2100'),
('po_over_receive', 'glsetup.purchase', 'int', '11', '10'),
('po_over_charge', 'glsetup.purchase', 'int', '11', '10'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', '1', '0'),
('default_inventory_act', 'glsetup.items', 'varchar', '15', '1510'),
('default_cogs_act', 'glsetup.items', 'varchar', '15', '5010'),
('default_adj_act', 'glsetup.items', 'varchar', '15', '5040'),
('default_inv_sales_act', 'glsetup.items', 'varchar', '15', '4010'),
('default_assembly_act', 'glsetup.items', 'varchar', '15', '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', '11', '20'),
('version_id', 'system', 'varchar', '11', '2.3rc'),
('auto_curr_reval', 'setup.company', 'smallint', '6', '1'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', '15', '1550'),
('paypal_bank_id', 'paypal.setup', 'int', '11', '0'),
('paypal_create_invoices', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_sales_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_sales_tax_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_shipping_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_insurance_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_withdraw_id', 'paypal.setup', 'int', '11', '0'),
('use_paypal_trn_id', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_sales_type_id', 'paypal.setup', 'int', '11', '0'),
('paypal_add_tax', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_recpt_today', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_tax_group_id', 'paypal.setup', 'int', '11', '0'),
('paypal_tax_type_id', 'paypal.setup', 'int', '11', '0'),
('paypal_item_tax_id', 'paypal.setup', 'int', '11', '0'),
('paypal_tax_included', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_name_col', 'paypal.setup', 'varchar', '55', NULL),
('paypal_salesman', 'paypal.setup', 'int', '11', '0'),
('paypal_area', 'paypal.setup', 'int', '11', '0'),
('paypal_location', 'paypal.setup', 'varchar', '5', NULL),
('paypal_shipper', 'paypal.setup', 'int', '11', NULL),
('paypal_credit_status', 'paypal.setup', 'int', '11', NULL);

### Structure of table `sys_types` ###

DROP TABLE IF EXISTS `sys_types`;

CREATE TABLE `sys_types` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '1',
  `next_reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `sys_types` ###

INSERT INTO `sys_types` VALUES
('0', '17', '2'),
('1', '7', '2'),
('2', '4', '4'),
('4', '3', '1'),
('10', '16', '30'),
('11', '2', '8'),
('12', '6', '28'),
('13', '1', '19'),
('16', '2', '3'),
('17', '2', '1'),
('18', '1', '11'),
('20', '6', '16'),
('21', '1', '1'),
('22', '3', '6'),
('25', '1', '11'),
('26', '1', '5'),
('28', '1', '1'),
('29', '1', '1'),
('30', '0', '17'),
('32', '0', '5'),
('35', '1', '1'),
('40', '1', '1');

### Structure of table `tag_associations` ###

DROP TABLE IF EXISTS `tag_associations`;

CREATE TABLE `tag_associations` (
  `record_id` varchar(15) NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `record_id` (`record_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `tag_associations` ###


### Structure of table `tags` ###

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `tags` ###


### Structure of table `tax_group_items` ###

DROP TABLE IF EXISTS `tax_group_items`;

CREATE TABLE `tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `tax_group_items` ###

INSERT INTO `tax_group_items` VALUES
('1', '1', '5');

### Structure of table `tax_groups` ###

DROP TABLE IF EXISTS `tax_groups`;

CREATE TABLE `tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

### Data of table `tax_groups` ###

INSERT INTO `tax_groups` VALUES
('1', 'Tax', '0', '0'),
('2', 'Tax Exempt', '0', '0');

### Structure of table `tax_types` ###

DROP TABLE IF EXISTS `tax_types`;

CREATE TABLE `tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `tax_types` ###

INSERT INTO `tax_types` VALUES
('1', '5', '2150', '2150', 'Tax', '0');

### Structure of table `trans_tax_details` ###

DROP TABLE IF EXISTS `trans_tax_details`;

CREATE TABLE `trans_tax_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ex_rate` double NOT NULL DEFAULT '1',
  `included_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `memo` tinytext,
  PRIMARY KEY (`id`),
  KEY `Type_and_Number` (`trans_type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1 ;

### Data of table `trans_tax_details` ###

INSERT INTO `trans_tax_details` VALUES
('1', '20', '1', '2012-11-30', '1', '5', '1', '0', '20000000', '1000000', '123'),
('2', '20', '2', '2012-12-01', '1', '5', '1', '0', '20000000', '1000000', '12345'),
('3', '13', '2', '2012-12-03', '1', '5', '1', '1', '11542857', '577143', '1'),
('4', '10', '2', '2012-12-03', '1', '5', '1', '1', '11542857', '577143', '2'),
('5', '11', '1', '2012-12-03', '1', '5', '1', '1', '228571', '11429', '1'),
('6', '11', '2', '2012-12-03', '1', '5', '1', '1', '11428571', '571429', '2'),
('7', '11', '3', '2012-12-03', '1', '5', '1', '1', '3428571', '171429', '3'),
('8', '13', '3', '2012-12-03', '1', '5', '1', '1', '114286', '5714', 'auto'),
('9', '10', '3', '2012-12-03', '1', '5', '1', '1', '114286', '5714', '3'),
('10', '13', '4', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', '2'),
('11', '11', '4', '2012-12-04', '1', '5', '1', '1', '2285714', '114286', '4'),
('12', '13', '5', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', 'auto'),
('13', '10', '4', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', '4'),
('14', '11', '5', '2012-12-04', '1', '5', '1', '1', '571429', '28571', '5'),
('15', '20', '3', '2012-12-05', '1', '5', '1', '0', '500000', '25000', '123'),
('16', '13', '6', '2012-12-05', '1', '5', '1', '1', '34286', '1714', '3'),
('17', '10', '5', '2012-12-05', '1', '5', '1', '1', '1142857', '57143', '5'),
('18', '10', '6', '2012-12-05', '1', '5', '1', '1', '34286', '1714', '6'),
('19', '13', '7', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', 'auto'),
('20', '10', '7', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', '7'),
('21', '13', '8', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', 'auto'),
('22', '10', '8', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', '8'),
('23', '13', '9', '2012-12-05', '1', '5', '1', '1', '3885714', '194286', 'auto'),
('24', '10', '9', '2012-12-05', '1', '5', '1', '1', '3885714', '194286', '9'),
('25', '13', '10', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '4'),
('26', '10', '10', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '10'),
('27', '13', '11', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '5'),
('28', '10', '11', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '11'),
('29', '20', '4', '2012-12-07', '1', '5', '1', '0', '3000000', '150000', '12345'),
('30', '13', '12', '2012-12-07', '1', '5', '1', '1', '2971428', '148572', 'auto'),
('31', '10', '12', '2012-12-07', '1', '5', '1', '1', '2971428', '148572', '12'),
('32', '13', '13', '2012-12-07', '1', '5', '1', '1', '1257143', '62857', 'auto'),
('33', '10', '13', '2012-12-07', '1', '5', '1', '1', '1257143', '62857', '13'),
('34', '13', '14', '2012-12-07', '1', '5', '1', '1', '11428571', '571429', 'auto'),
('35', '10', '14', '2012-12-07', '1', '5', '1', '1', '11428571', '571429', '14'),
('36', '20', '5', '2012-12-07', '1', '5', '1', '0', '20000000', '1000000', '1241234'),
('37', '13', '15', '2012-12-07', '1', '5', '1', '1', '571429', '28571', 'auto'),
('38', '10', '15', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '15'),
('39', '13', '16', '2012-12-07', '1', '5', '1', '1', '5714286', '285714', 'auto'),
('40', '10', '16', '2012-12-07', '1', '5', '1', '1', '5714286', '285714', '16'),
('41', '13', '17', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '6'),
('42', '10', '17', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '17'),
('43', '20', '6', '2012-12-07', '1', '5', '1', '0', '300000', '15000', '1234'),
('44', '13', '18', '2012-12-08', '1', '5', '1', '1', '342857', '17143', '7'),
('45', '20', '7', '2012-12-11', '1', '5', '1', '0', '2000000', '100000', '12345345'),
('46', '13', '19', '2012-12-11', '1', '5', '1', '1', '2982857', '149143', 'auto'),
('47', '10', '18', '2012-12-11', '1', '5', '1', '1', '2982857', '149143', '18'),
('48', '13', '20', '2012-12-11', '1', '5', '1', '1', '4571429', '228571', '8'),
('49', '10', '19', '2012-12-11', '1', '5', '1', '1', '4571429', '228571', '19'),
('50', '20', '8', '2012-12-11', '1', '5', '1', '0', '10000000', '500000', '123444/1234'),
('51', '13', '21', '2012-12-14', '1', '5', '1', '1', '685714', '34286', '9'),
('52', '13', '22', '2012-12-14', '1', '5', '1', '1', '5714286', '285714', 'auto'),
('53', '10', '20', '2012-12-14', '1', '5', '1', '1', '5714286', '285714', '20'),
('54', '11', '6', '2012-12-14', '1', '5', '1', '1', '17143', '857', '6'),
('55', '11', '7', '2012-12-14', '1', '5', '1', '1', '571429', '28571', '7'),
('56', '13', '23', '2012-12-17', '1', '5', '1', '0', '454500', '22725', '10'),
('57', '10', '21', '2012-12-17', '1', '5', '1', '0', '454500', '22725', '21'),
('58', '13', '24', '2012-12-17', '1', '5', '1', '0', '120000', '6000', 'auto'),
('59', '10', '22', '2012-12-17', '1', '5', '1', '0', '120000', '6000', '22'),
('60', '13', '25', '2012-12-17', '1', '5', '1', '0', '227250', '11362.5', 'auto'),
('61', '10', '23', '2012-12-17', '1', '5', '1', '0', '227250', '11362.5', '23'),
('62', '13', '26', '2012-12-17', '1', '5', '1', '0', '4500', '225', 'auto'),
('63', '10', '24', '2012-12-17', '1', '5', '1', '0', '4500', '225', '24'),
('64', '13', '27', '2012-12-17', '1', '5', '1', '1', '342857', '17143', 'auto'),
('65', '10', '25', '2012-12-17', '1', '5', '1', '1', '342857', '17143', '25'),
('66', '13', '28', '2012-12-17', '1', '5', '1', '1', '114286', '5714', '11'),
('67', '13', '29', '2012-12-18', '1', '5', '1', '0', '150000', '7500', '12'),
('68', '13', '30', '2012-12-18', '1', '5', '1', '1', '10286', '514', '13'),
('69', '10', '26', '2012-12-18', '1', '5', '1', '1', '342857', '17143', '26'),
('70', '20', '10', '2012-12-21', '1', '5', '1', '0', '2000000', '100000', '125250375'),
('71', '20', '11', '2012-12-21', '1', '5', '1', '0', '1800000', '90000', '345222'),
('72', '13', '31', '2013-01-08', '1', '5', '1', '0', '92510', '4625.5', 'auto'),
('73', '10', '27', '2013-01-08', '1', '5', '1', '0', '92510', '4625.5', '27'),
('74', '20', '12', '2013-01-09', '1', '5', '1', '0', '500000', '25000', '234'),
('75', '13', '32', '2013-01-09', '1', '5', '1', '1', '228571', '11429', '14'),
('76', '13', '33', '2013-01-09', '1', '5', '1', '1', '3428571', '171429', '15'),
('77', '20', '13', '2013-01-09', '1', '5', '1', '0', '13000000', '650000', '2345'),
('78', '13', '34', '2013-01-13', '1', '5', '1', '0', '300000', '15000', '16'),
('79', '10', '28', '2013-01-13', '1', '5', '1', '0', '300000', '15000', '28'),
('80', '13', '35', '2013-01-13', '1', '5', '1', '0', '5875000', '293750', '17'),
('81', '10', '29', '2013-01-13', '1', '5', '1', '0', '5875000', '293750', '29'),
('82', '20', '14', '2013-01-14', '1', '5', '1', '0', '750000', '37500', '3211'),
('83', '13', '36', '2013-01-23', '1', '5', '1', '0', '150000', '7500', '18'),
('84', '20', '15', '2013-01-29', '1', '5', '1', '0', '1000000', '50000', '007'),
('85', '20', '16', '2013-01-29', '1', '5', '1', '0', '1000000', '50000', '008');

### Structure of table `useronline` ###

DROP TABLE IF EXISTS `useronline`;

CREATE TABLE `useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `file` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `useronline` ###


### Structure of table `users` ###

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `real_name` varchar(100) NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_sep` tinyint(1) NOT NULL DEFAULT '0',
  `tho_sep` tinyint(1) NOT NULL DEFAULT '0',
  `dec_sep` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL DEFAULT 'default',
  `page_size` varchar(20) NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT '2',
  `qty_dec` smallint(6) NOT NULL DEFAULT '2',
  `rates_dec` smallint(6) NOT NULL DEFAULT '4',
  `percent_dec` smallint(6) NOT NULL DEFAULT '1',
  `show_gl` tinyint(1) NOT NULL DEFAULT '1',
  `show_codes` tinyint(1) NOT NULL DEFAULT '0',
  `show_hints` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) DEFAULT '10',
  `graphic_links` tinyint(1) DEFAULT '1',
  `pos` smallint(6) DEFAULT '1',
  `print_profile` varchar(30) NOT NULL DEFAULT '1',
  `rep_popup` tinyint(1) DEFAULT '1',
  `sticky_doc_date` tinyint(1) DEFAULT '0',
  `startup_tab` varchar(20) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `users` ###

INSERT INTO `users` VALUES
('1', 'admin', '33dc943f9ee115ab7a1af5961d70d905', 'Administrator', '2', '', 'adm@adm.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-02-20 09:39:25', '25', '1', '1', '', '1', '0', 'orders', '0'),
('2', 'firmanusm', 'de3268e8840f839344b2915407d4f8b5', 'firmanusm', '10', 'firmanusm', 'firmanusm@gmail.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-01-01 16:52:15', '25', '1', '1', '', '1', '0', 'orders', '0'),
('3', 'kayafit', '083bdf5556d405a2557cbb93db538e67', 'kayafit', '10', '01234567', 'suryasigma@yahoo.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-01-15 10:26:10', '25', '1', '1', '', '1', '0', 'orders', '0');

### Structure of table `voided` ###

DROP TABLE IF EXISTS `voided`;

CREATE TABLE `voided` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `voided` ###


### Structure of table `wo_issue_items` ###

DROP TABLE IF EXISTS `wo_issue_items`;

CREATE TABLE `wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_issue_items` ###


### Structure of table `wo_issues` ###

DROP TABLE IF EXISTS `wo_issues`;

CREATE TABLE `wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_issues` ###


### Structure of table `wo_manufacture` ###

DROP TABLE IF EXISTS `wo_manufacture`;

CREATE TABLE `wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_manufacture` ###


### Structure of table `wo_requirements` ###

DROP TABLE IF EXISTS `wo_requirements`;

CREATE TABLE `wo_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT '0',
  `units_req` double NOT NULL DEFAULT '1',
  `std_cost` double NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `wo_requirements` ###

INSERT INTO `wo_requirements` VALUES
('1', '1', 'kabel', '1', '5', '0', 'DEF', '50'),
('2', '1', 'transistor', '1', '10', '0', 'DEF', '100'),
('3', '2', 'tepung', '2', '1', '0', 'DEF', '50'),
('4', '2', 'coklat', '2', '1', '0', 'DEF', '50'),
('5', '2', 'gula', '2', '1', '0', 'DEF', '50'),
('6', '3', 'elbow', '3', '10', '0', 'DEF', '10'),
('7', '3', 'station', '3', '10', '0', 'DEF', '10'),
('8', '3', 'pipa', '3', '10', '0', 'DEF', '10'),
('9', '4', 'lcd', '4', '1', '0', 'DEF', '3'),
('10', '4', 'keyboard', '4', '1', '0', 'DEF', '3');

### Structure of table `workcentres` ###

DROP TABLE IF EXISTS `workcentres`;

CREATE TABLE `workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `description` char(50) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `workcentres` ###

INSERT INTO `workcentres` VALUES
('1', 'perakitan radio', 'pusat perakitan radio', '0'),
('2', 'pembuatan_makanan', 'divisi pembuatan makanan', '0'),
('3', 'rsud-klaten', 'rsud-klaten', '0'),
('4', 'perakitan laptop', '', '0');

### Structure of table `workorders` ###

DROP TABLE IF EXISTS `workorders`;

CREATE TABLE `workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_ref` varchar(60) NOT NULL DEFAULT '',
  `loc_code` varchar(5) NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT '1',
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `additional_costs` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wo_ref` (`wo_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `workorders` ###

INSERT INTO `workorders` VALUES
('1', '1', 'DEF', '10', 'radiorakitan', '2012-12-11', '0', '2012-12-11', '2012-12-11', '10', '1', '1', '20000'),
('2', '2', 'DEF', '50', 'roti', '2012-12-17', '0', '2012-12-17', '2012-12-17', '50', '1', '1', '15000'),
('3', '3', 'KUDUS', '1', 'proyek_rsud_klaten', '2013-01-09', '0', '2013-01-09', '2013-01-09', '1', '1', '1', '100000'),
('4', '4', 'DEF', '3', 'laptop', '2013-01-13', '0', '2013-01-13', '2013-01-13', '3', '1', '1', '25000');# MySQL dump of database 'accounting' on host 'localhost'
# Backup Date and Time: 2013-02-20 09:44
# Built by Multisolusi Informatika Akuntansi Standart 1.03
# http://www.multisolusi.info
# Company: Multisolusi Informatika
# User: Administrator



### Structure of table `areas` ###

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `areas` ###

INSERT INTO `areas` VALUES
('1', 'Global', '0');

### Structure of table `attachments` ###

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `type_no` int(11) NOT NULL DEFAULT '0',
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `unique_name` varchar(60) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `filetype` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_no` (`type_no`,`trans_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `attachments` ###


### Structure of table `audit_trail` ###

DROP TABLE IF EXISTS `audit_trail`;

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `user` smallint(6) unsigned NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(60) DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL,
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1 ;

### Data of table `audit_trail` ###

INSERT INTO `audit_trail` VALUES
('1', '18', '1', '1', '2012-11-30 09:43:35', NULL, '4', '2012-11-30', NULL),
('2', '18', '1', '1', '2012-11-30 09:43:35', 'Telah diperbaharui.', '4', '2012-11-30', '0'),
('3', '25', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '1'),
('4', '20', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '2'),
('5', '2', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '3'),
('6', '2', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '4'),
('7', '1', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '5'),
('8', '2', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '6'),
('9', '0', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '7'),
('10', '22', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '8'),
('11', '30', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('12', '13', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '9'),
('13', '10', '1', '1', '2012-11-30 11:26:04', NULL, '4', '2012-11-30', '0'),
('14', '12', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-11-30', '10'),
('15', '35', '0', '1', '2012-12-01 03:23:32', NULL, '4', '2012-12-01', '0'),
('16', '18', '2', '1', '2012-12-01 07:07:14', NULL, '4', '2012-12-01', '0'),
('17', '25', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-01', '11'),
('18', '20', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-01', '12'),
('19', '30', '2', '1', '2012-12-03 12:24:52', NULL, '4', '2012-12-03', '0'),
('20', '13', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '13'),
('21', '10', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '14'),
('22', '12', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '15'),
('23', '12', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '16'),
('24', '11', '1', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '17'),
('25', '11', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '18'),
('26', '11', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '19'),
('27', '30', '3', '1', '2012-12-03 12:53:19', NULL, '4', '2012-12-03', '0'),
('28', '13', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '20'),
('29', '10', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '21'),
('30', '12', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '22'),
('31', '22', '2', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-03', '23'),
('32', '30', '4', '1', '2012-12-04 09:14:20', NULL, '4', '2012-12-04', '0'),
('33', '13', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '24'),
('34', '11', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '25'),
('35', '30', '5', '1', '2012-12-04 09:29:51', NULL, '4', '2012-12-04', '0'),
('36', '13', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '26'),
('37', '10', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '27'),
('38', '12', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '28'),
('39', '11', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-04', '29'),
('40', '18', '3', '1', '2012-12-05 04:47:31', NULL, '4', '2012-12-05', '0'),
('41', '25', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '30'),
('42', '20', '3', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '31'),
('43', '32', '1', '1', '2012-12-05 04:51:17', NULL, '4', '2012-12-05', '0'),
('44', '30', '6', '1', '2012-12-05 04:53:17', NULL, '4', '2012-12-05', '0'),
('45', '13', '6', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '32'),
('46', '10', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '33'),
('47', '12', '6', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '34'),
('48', '10', '6', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '35'),
('49', '12', '7', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '36'),
('50', '30', '7', '1', '2012-12-05 04:58:46', NULL, '4', '2012-12-05', '0'),
('51', '13', '7', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '37'),
('52', '10', '7', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '38'),
('53', '12', '8', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '39'),
('54', '30', '8', '1', '2012-12-05 05:00:23', NULL, '4', '2012-12-05', '0'),
('55', '13', '8', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '40'),
('56', '10', '8', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '41'),
('57', '12', '9', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '42'),
('58', '30', '9', '1', '2012-12-05 05:03:30', NULL, '4', '2012-12-05', '0'),
('59', '13', '9', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '43'),
('60', '10', '9', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '44'),
('61', '12', '10', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '45'),
('62', '30', '10', '1', '2012-12-05 05:06:32', NULL, '4', '2012-12-05', '0'),
('63', '13', '10', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '46'),
('64', '10', '10', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '47'),
('65', '12', '11', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '48'),
('66', '30', '11', '1', '2012-12-05 05:12:56', NULL, '4', '2012-12-05', '0'),
('67', '13', '11', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '49'),
('68', '30', '12', '1', '2012-12-05 05:14:12', NULL, '4', '2012-12-05', '0'),
('69', '10', '11', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '50'),
('70', '12', '12', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-05', '51'),
('71', '18', '4', '1', '2012-12-07 00:36:03', NULL, '4', '2012-12-07', '0'),
('72', '25', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '52'),
('73', '20', '4', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '53'),
('74', '30', '13', '1', '2012-12-07 00:37:55', NULL, '4', '2012-12-07', '0'),
('75', '13', '12', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '54'),
('76', '10', '12', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '55'),
('77', '12', '13', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '56'),
('78', '30', '14', '1', '2012-12-07 00:43:22', NULL, '4', '2012-12-07', '0'),
('79', '13', '13', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '57'),
('80', '10', '13', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '58'),
('81', '30', '15', '1', '2012-12-07 00:46:46', NULL, '4', '2012-12-07', '0'),
('82', '13', '14', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '59'),
('83', '10', '14', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '60'),
('84', '18', '5', '1', '2012-12-07 00:50:14', NULL, '4', '2012-12-07', '0'),
('85', '25', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '61'),
('86', '20', '5', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '62'),
('87', '30', '16', '1', '2012-12-07 00:57:30', NULL, '4', '2012-12-07', '0'),
('88', '13', '15', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '63'),
('89', '10', '15', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '64'),
('90', '12', '14', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '65'),
('91', '30', '17', '1', '2012-12-07 08:08:37', NULL, '4', '2012-12-07', '0'),
('92', '13', '16', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '66'),
('93', '10', '16', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '67'),
('94', '32', '2', '1', '2012-12-07 08:21:03', NULL, '4', '2012-12-07', '0'),
('95', '30', '18', '1', '2012-12-07 08:40:19', NULL, '4', '2012-12-07', '0'),
('96', '13', '17', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '68'),
('97', '10', '17', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '69'),
('98', '12', '15', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '70'),
('99', '18', '6', '1', '2012-12-07 08:47:45', NULL, '4', '2012-12-07', '0'),
('100', '25', '6', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '71'),
('101', '20', '6', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-07', '72'),
('102', '30', '19', '1', '2012-12-07 23:25:27', NULL, '4', '2012-12-08', '0'),
('103', '13', '18', '1', '2013-02-20 08:44:18', NULL, '4', '2012-12-08', '73'),
('104', '18', '7', '1', '2012-12-11 08:09:44', NULL, '5', '2012-12-11', '0'),
('105', '25', '7', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '1'),
('106', '22', '3', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '2'),
('107', '18', '8', '1', '2012-12-11 08:14:53', NULL, '5', '2012-12-11', '0'),
('108', '25', '8', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '3'),
('109', '20', '7', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '4'),
('110', '26', '1', '1', '2013-02-20 08:44:18', 'Produksi cepat.', '5', '2012-12-11', '5'),
('111', '30', '20', '1', '2012-12-11 08:27:18', NULL, '5', '2012-12-11', '0'),
('112', '13', '19', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '6'),
('113', '10', '18', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '7'),
('114', '12', '16', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '8'),
('115', '12', '17', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '9'),
('116', '12', '18', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '10'),
('117', '30', '21', '1', '2012-12-14 08:12:45', NULL, '5', '2012-12-11', NULL),
('118', '30', '22', '1', '2012-12-11 08:36:43', NULL, '5', '2012-12-11', '0'),
('119', '13', '20', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '11'),
('120', '10', '19', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '12'),
('121', '18', '9', '1', '2012-12-11 08:39:11', NULL, '5', '2012-12-11', '0'),
('122', '25', '9', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '13'),
('123', '20', '8', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-11', '14'),
('124', '22', '4', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-12', '15'),
('125', '22', '5', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-12', '16'),
('126', '22', '6', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-12', '17'),
('127', '12', '19', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-12', '18'),
('128', '32', '3', '1', '2012-12-14 08:08:16', NULL, '5', '2012-12-14', NULL),
('129', '32', '3', '1', '2012-12-14 08:08:16', 'Telah diperbaharui.', '5', '2012-12-14', '0'),
('130', '30', '23', '1', '2012-12-14 08:08:40', NULL, '5', '2012-12-14', '0'),
('131', '30', '21', '1', '2012-12-14 08:12:45', 'Dihapus.', '5', '2012-12-14', '0'),
('132', '13', '21', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '19'),
('133', '30', '24', '1', '2012-12-14 08:16:29', NULL, '5', '2012-12-14', '0'),
('134', '13', '22', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '20'),
('135', '10', '20', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '21'),
('136', '12', '20', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '22'),
('137', '12', '21', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '23'),
('138', '11', '6', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '24'),
('139', '11', '7', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-14', '25'),
('140', '18', '10', '1', '2012-12-17 08:20:45', NULL, '5', '2012-12-17', '0'),
('141', '25', '10', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '26'),
('142', '26', '2', '1', '2013-02-20 08:44:18', 'Produksi cepat.', '5', '2012-12-17', '27'),
('143', '32', '4', '1', '2012-12-17 08:29:46', NULL, '5', '2012-12-17', '0'),
('144', '30', '25', '1', '2012-12-17 08:31:06', NULL, '5', '2012-12-17', '0'),
('145', '13', '23', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '28'),
('146', '10', '21', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '29'),
('147', '30', '26', '1', '2012-12-17 08:36:51', NULL, '5', '2012-12-17', '0'),
('148', '13', '24', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '30'),
('149', '10', '22', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '31'),
('150', '12', '22', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '32'),
('151', '30', '27', '1', '2012-12-17 08:38:57', NULL, '5', '2012-12-17', '0'),
('152', '13', '25', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '33'),
('153', '10', '23', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '34'),
('154', '30', '28', '1', '2012-12-17 08:42:17', NULL, '5', '2012-12-17', '0'),
('155', '13', '26', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '35'),
('156', '10', '24', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '36'),
('157', '30', '29', '1', '2012-12-17 08:47:19', NULL, '5', '2012-12-17', '0'),
('158', '13', '27', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '37'),
('159', '10', '25', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '38'),
('160', '12', '23', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '39'),
('161', '16', '1', '1', '2012-12-17 08:50:19', NULL, '5', '2012-12-17', '0'),
('162', '30', '30', '1', '2012-12-17 08:55:15', NULL, '5', '2012-12-17', '0'),
('163', '30', '31', '1', '2012-12-17 08:58:47', NULL, '5', '2012-12-17', '0'),
('164', '13', '28', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-17', '40'),
('165', '30', '32', '1', '2012-12-18 07:16:48', NULL, '5', '2012-12-18', '0'),
('166', '13', '29', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-18', '41'),
('167', '12', '24', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-18', '42'),
('168', '13', '30', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-18', '43'),
('169', '10', '26', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-18', '44'),
('170', '12', '25', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-18', '45'),
('171', '18', '11', '1', '2012-12-21 05:51:32', NULL, '5', '2012-12-21', '0'),
('172', '25', '11', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '46'),
('173', '20', '9', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '47'),
('174', '18', '12', '1', '2012-12-21 06:25:14', NULL, '5', '2012-12-21', '0'),
('175', '25', '12', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '48'),
('176', '20', '10', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '49'),
('177', '18', '13', '1', '2012-12-21 06:29:37', NULL, '5', '2012-12-21', '0'),
('178', '25', '13', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '50'),
('179', '20', '11', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '51'),
('180', '18', '14', '1', '2012-12-21 11:31:14', NULL, '5', '2012-12-21', '0'),
('181', '25', '14', '1', '2013-02-20 08:44:18', NULL, '5', '2012-12-21', '52'),
('182', '30', '33', '1', '2013-01-07 06:52:09', NULL, '5', '2012-12-31', '0'),
('183', '30', '34', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('184', '13', '31', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('185', '10', '27', '1', '2013-01-08 00:53:49', NULL, '5', '2013-01-08', '0'),
('186', '18', '15', '1', '2013-01-09 09:01:01', NULL, '6', '2013-01-09', '0'),
('187', '25', '15', '1', '2013-01-09 09:04:31', NULL, '6', '2013-01-09', '0'),
('188', '20', '12', '1', '2013-01-09 09:07:04', NULL, '6', '2013-01-09', '0'),
('189', '30', '35', '1', '2013-01-09 09:15:37', NULL, '6', '2013-01-09', NULL),
('190', '30', '35', '1', '2013-01-09 09:15:37', 'Telah diperbaharui.', '6', '2013-01-09', '0'),
('191', '13', '32', '1', '2013-01-09 09:16:10', NULL, '6', '2013-01-09', '0'),
('192', '13', '33', '1', '2013-01-09 09:16:37', NULL, '6', '2013-01-09', '0'),
('193', '18', '16', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('194', '25', '16', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('195', '20', '13', '1', '2013-01-09 09:21:56', NULL, '6', '2013-01-09', '0'),
('196', '26', '3', '1', '2013-01-09 09:26:24', 'Produksi cepat.', '6', '2013-01-09', '0'),
('197', '30', '36', '1', '2013-01-13 06:06:33', NULL, '6', '2013-01-13', '0'),
('198', '13', '34', '1', '2013-01-13 06:07:04', NULL, '6', '2013-01-13', '0'),
('199', '10', '28', '1', '2013-01-13 06:07:28', NULL, '6', '2013-01-13', '0'),
('200', '18', '17', '1', '2013-01-13 06:14:32', NULL, '6', '2013-01-13', '0'),
('201', '25', '17', '1', '2013-01-13 06:18:00', NULL, '6', '2013-01-13', '0'),
('202', '16', '2', '1', '2013-01-13 06:19:44', NULL, '6', '2013-01-13', '0'),
('203', '26', '4', '1', '2013-01-13 06:19:54', 'Produksi cepat.', '6', '2013-01-13', '0'),
('204', '30', '37', '1', '2013-01-13 06:22:48', NULL, '6', '2013-01-13', '0'),
('205', '13', '35', '1', '2013-01-13 06:22:58', NULL, '6', '2013-01-13', '0'),
('206', '10', '29', '1', '2013-01-13 06:23:06', NULL, '6', '2013-01-13', '0'),
('207', '12', '26', '1', '2013-01-13 06:24:42', NULL, '6', '2013-01-13', '0'),
('208', '12', '27', '1', '2013-01-13 06:25:20', NULL, '6', '2013-01-13', '0'),
('209', '18', '18', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('210', '25', '18', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('211', '20', '14', '1', '2013-01-14 08:24:47', NULL, '6', '2013-01-14', '0'),
('212', '13', '36', '1', '2013-01-23 11:55:21', NULL, '6', '2013-01-23', '0'),
('213', '30', '38', '1', '2013-01-23 11:56:47', NULL, '6', '2013-01-23', '0'),
('214', '18', '19', '1', '2013-01-29 03:58:30', NULL, '6', '2013-01-29', '0'),
('215', '25', '19', '1', '2013-01-29 04:00:27', NULL, '6', '2013-01-29', '0'),
('216', '20', '15', '1', '2013-01-29 04:03:35', NULL, '6', '2013-01-29', '0'),
('217', '18', '20', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0'),
('218', '25', '20', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0'),
('219', '20', '16', '1', '2013-01-29 04:10:35', NULL, '6', '2013-01-29', '0');

### Structure of table `bank_accounts` ###

DROP TABLE IF EXISTS `bank_accounts`;

CREATE TABLE `bank_accounts` (
  `account_code` varchar(15) NOT NULL DEFAULT '',
  `account_type` smallint(6) NOT NULL DEFAULT '0',
  `bank_account_name` varchar(60) NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) NOT NULL DEFAULT '',
  `bank_name` varchar(60) NOT NULL DEFAULT '',
  `bank_address` tinytext,
  `bank_curr_code` char(3) NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT '0',
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bank_account_name` (`bank_account_name`),
  KEY `bank_account_number` (`bank_account_number`),
  KEY `account_code` (`account_code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

### Data of table `bank_accounts` ###

INSERT INTO `bank_accounts` VALUES
('1060', '0', 'Current account', 'N/A', 'N/A', NULL, 'IDR', '1', '1', '0000-00-00 00:00:00', '0', '0'),
('1065', '3', 'Account Penerimaan Cash', 'N/A', 'N/A', NULL, 'IDR', '0', '2', '0000-00-00 00:00:00', '0', '0');

### Structure of table `bank_trans` ###

DROP TABLE IF EXISTS `bank_trans`;

CREATE TABLE `bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) NOT NULL DEFAULT '',
  `ref` varchar(40) DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) NOT NULL DEFAULT '0',
  `person_id` tinyblob,
  `reconciled` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_act` (`bank_act`,`ref`),
  KEY `type` (`type`,`trans_no`),
  KEY `bank_act_2` (`bank_act`,`reconciled`),
  KEY `bank_act_3` (`bank_act`,`trans_date`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 ;

### Data of table `bank_trans` ###

INSERT INTO `bank_trans` VALUES
('1', '2', '1', '1', '1', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('2', '2', '2', '1', '2', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('3', '1', '1', '1', '1', '2012-11-30', '-1000000', '0', '0', '0', NULL, NULL),
('4', '2', '3', '2', '3', '2012-11-30', '100000000', '0', '0', '0', NULL, NULL),
('5', '0', '1', '2', '1', '2012-11-30', '-1000000', '0', '0', '0', NULL, NULL),
('6', '22', '1', '1', '1', '2012-11-30', '-10000000', '0', '0', '3', '1', NULL),
('7', '12', '1', '2', '1', '2012-11-30', '0', '0', '0', '2', '1', NULL),
('8', '12', '2', '2', '2', '2012-12-03', '12120000', '0', '0', '2', '1', NULL),
('9', '12', '3', '1', '3', '2012-12-03', '1000000', '0', '0', '2', '1', NULL),
('10', '12', '4', '2', '4', '2012-12-03', '120000', '0', '0', '2', '1', NULL),
('11', '22', '2', '1', '2', '2012-12-03', '-32000000', '0', '0', '3', '1', NULL),
('12', '12', '5', '2', '5', '2012-12-04', '1200000', '0', '0', '2', '2', NULL),
('13', '12', '6', '2', '6', '2012-12-05', '1200000', '0', '0', '2', '2', NULL),
('14', '12', '7', '2', '7', '2012-12-05', '36000', '0', '0', '2', '2', NULL),
('15', '12', '8', '2', '8', '2012-12-05', '4200000', '0', '0', '2', '2', NULL),
('16', '12', '9', '2', '9', '2012-12-05', '4200000', '0', '0', '2', '2', NULL),
('17', '12', '10', '2', '10', '2012-12-05', '4080000', '0', '0', '2', '2', NULL),
('18', '12', '11', '2', '11', '2012-12-05', '3600000', '0', '0', '2', '2', NULL),
('19', '12', '12', '1', '12', '2012-12-05', '3600000', '0', '0', '2', '2', NULL),
('20', '12', '13', '2', '13', '2012-12-07', '3120000', '0', '0', '2', '2', NULL),
('21', '12', '14', '2', '14', '2012-12-07', '600000', '0', '0', '2', '2', NULL),
('22', '12', '15', '1', '15', '2012-12-07', '15000000', '0', '0', '2', '2', NULL),
('23', '22', '3', '1', '3', '2012-12-11', '-15000000', '0', '0', '3', '1', NULL),
('24', '26', '1', '1', NULL, '2012-12-11', '-20000', '0', '0', '1', '1', NULL),
('25', '26', '1', '1', NULL, '2012-12-11', '-100000', '0', '0', '1', '0', NULL),
('26', '12', '16', '2', '16', '2012-12-11', '3132000', '0', '0', '2', '2', NULL),
('27', '12', '17', '1', '17', '2012-12-11', '4920000', '0', '0', '2', '2', NULL),
('28', '12', '18', '1', '18', '2012-12-11', '1000000', '0', '0', '2', '2', NULL),
('29', '22', '4', '1', '4', '2012-12-12', '-3990000', '0', '0', '3', '2', NULL),
('30', '22', '5', '1', '42', '2012-12-12', '-3990000', '0', '0', '3', '2', NULL),
('31', '22', '6', '1', '5', '2012-12-12', '-33600000', '0', '0', '3', '1', NULL),
('32', '12', '19', '1', '19', '2012-12-12', '4800000', '0', '0', '2', '2', NULL),
('33', '12', '20', '1', '20', '2012-12-14', '1000000', '0', '0', '2', '2', NULL),
('34', '12', '21', '1', '21', '2012-12-14', '999000', '0', '0', '2', '2', NULL),
('35', '26', '2', '1', NULL, '2012-12-17', '-15000', '0', '0', '1', '1', NULL),
('36', '26', '2', '1', NULL, '2012-12-17', '-100000', '0', '0', '1', '0', NULL),
('37', '12', '22', '1', '22', '2012-12-17', '226000', '0', '0', '2', '3', NULL),
('38', '12', '23', '2', '23', '2012-12-17', '360000', '0', '0', '2', '1', NULL),
('39', '12', '24', '1', '24', '2012-12-18', '620563', '0', '0', '2', '3', NULL),
('40', '12', '25', '2', '25', '2012-12-18', '360000', '0', '0', '2', '2', NULL),
('41', '26', '3', '1', NULL, '2013-01-09', '-100000', '0', '0', '1', '1', NULL),
('42', '26', '4', '1', NULL, '2013-01-13', '-25000', '0', '0', '1', '1', NULL),
('43', '26', '4', '1', NULL, '2013-01-13', '-200000', '0', '0', '1', '0', NULL),
('44', '12', '26', '1', '26', '2013-01-13', '315000', '0', '0', '2', '4', NULL),
('45', '12', '27', '1', '27', '2013-01-13', '3000000', '0', '0', '2', '4', NULL);

### Structure of table `bom` ###

DROP TABLE IF EXISTS `bom`;

CREATE TABLE `bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` char(20) NOT NULL DEFAULT '',
  `component` char(20) NOT NULL DEFAULT '',
  `workcentre_added` int(11) NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  KEY `component` (`component`),
  KEY `id` (`id`),
  KEY `loc_code` (`loc_code`),
  KEY `parent` (`parent`,`loc_code`),
  KEY `workcentre_added` (`workcentre_added`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ;

### Data of table `bom` ###

INSERT INTO `bom` VALUES
('1', 'tuna', 'kabel', '1', 'DEF', '5'),
('2', 'radiorakitan', 'kabel', '1', 'DEF', '5'),
('3', 'radiorakitan', 'transistor', '1', 'DEF', '10'),
('4', 'roti', 'tepung', '2', 'DEF', '1'),
('5', 'roti', 'coklat', '2', 'DEF', '1'),
('6', 'roti', 'gula', '2', 'DEF', '1'),
('7', 'proyek_rsud_klaten', 'elbow', '3', 'DEF', '10'),
('8', 'proyek_rsud_klaten', 'station', '3', 'DEF', '10'),
('9', 'proyek_rsud_klaten', 'pipa', '3', 'DEF', '10'),
('10', 'laptop', 'lcd', '4', 'DEF', '1'),
('11', 'laptop', 'keyboard', '4', 'DEF', '1');

### Structure of table `budget_trans` ###

DROP TABLE IF EXISTS `budget_trans`;

CREATE TABLE `budget_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(16) NOT NULL DEFAULT '1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) NOT NULL DEFAULT '',
  `memo_` tinytext NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

### Data of table `budget_trans` ###


### Structure of table `chart_class` ###

DROP TABLE IF EXISTS `chart_class`;

CREATE TABLE `chart_class` (
  `cid` varchar(3) NOT NULL,
  `class_name` varchar(60) NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_class` ###

INSERT INTO `chart_class` VALUES
('1', 'Assets', '1', '0'),
('2', 'Liabilities', '2', '0'),
('3', 'Income', '4', '0'),
('4', 'Costs', '6', '0');

### Structure of table `chart_master` ###

DROP TABLE IF EXISTS `chart_master`;

CREATE TABLE `chart_master` (
  `account_code` varchar(15) NOT NULL DEFAULT '',
  `account_code2` varchar(15) NOT NULL DEFAULT '',
  `account_name` varchar(60) NOT NULL DEFAULT '',
  `account_type` varchar(10) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_master` ###

INSERT INTO `chart_master` VALUES
('1060', '', 'Checking Account', '1', '0'),
('1065', '', 'Petty Cash', '1', '0'),
('1200', '', 'Accounts Receivables', '1', '0'),
('1205', '', 'Allowance for doubtful accounts', '1', '0'),
('1510', '', 'Inventory', '2', '0'),
('1520', '', 'Stocks of Raw Materials', '2', '0'),
('1530', '', 'Stocks of Work In Progress', '2', '0'),
('1540', '', 'Stocks of Finsihed Goods', '2', '0'),
('1550', '', 'Goods Received Clearing account', '2', '0'),
('1820', '', 'Office Furniture &amp; Equipment', '3', '0'),
('1825', '', 'Accum. Amort. -Furn. &amp; Equip.', '3', '0'),
('1840', '', 'Vehicle', '3', '0'),
('1845', '', 'Accum. Amort. -Vehicle', '3', '0'),
('2100', '', 'Accounts Payable', '4', '0'),
('2110', '', 'Accrued Income Tax - Federal', '4', '0'),
('2120', '', 'Accrued Income Tax - State', '4', '0'),
('2130', '', 'Accrued Franchise Tax', '4', '0'),
('2140', '', 'Accrued Real &amp; Personal Prop Tax', '4', '0'),
('2150', '', 'Sales Tax', '4', '0'),
('2160', '', 'Accrued Use Tax Payable', '4', '0'),
('2210', '', 'Accrued Wages', '4', '0'),
('2220', '', 'Accrued Comp Time', '4', '0'),
('2230', '', 'Accrued Holiday Pay', '4', '0'),
('2240', '', 'Accrued Vacation Pay', '4', '0'),
('2310', '', 'Accr. Benefits - 401K', '4', '0'),
('2320', '', 'Accr. Benefits - Stock Purchase', '4', '0'),
('2330', '', 'Accr. Benefits - Med, Den', '4', '0'),
('2340', '', 'Accr. Benefits - Payroll Taxes', '4', '0'),
('2350', '', 'Accr. Benefits - Credit Union', '4', '0'),
('2360', '', 'Accr. Benefits - Savings Bond', '4', '0'),
('2370', '', 'Accr. Benefits - Garnish', '4', '0'),
('2380', '', 'Accr. Benefits - Charity Cont.', '4', '0'),
('2620', '', 'Bank Loans', '5', '0'),
('2680', '', 'Loans from Shareholders', '5', '0'),
('3350', '', 'Common Shares', '6', '0'),
('3590', '', 'Retained Earnings - prior years', '7', '0'),
('4010', '', 'Sales', '8', '0'),
('4430', '', 'Shipping &amp; Handling', '9', '0'),
('4440', '', 'Interest', '9', '0'),
('4450', '', 'Foreign Exchange Gain', '9', '0'),
('4500', '', 'Prompt Payment Discounts', '9', '0'),
('4510', '', 'Discounts Given', '9', '0'),
('5010', '', 'Cost of Goods Sold - Retail', '10', '0'),
('5020', '', 'Material Usage Varaiance', '10', '0'),
('5030', '', 'Consumable Materials', '10', '0'),
('5040', '', 'Purchase price Variance', '10', '0'),
('5050', '', 'Purchases of materials', '10', '0'),
('5060', '', 'Discounts Received', '10', '0'),
('5100', '', 'Freight', '10', '0'),
('5410', '', 'Wages &amp; Salaries', '11', '0'),
('5420', '', 'Wages - Overtime', '11', '0'),
('5430', '', 'Benefits - Comp Time', '11', '0'),
('5440', '', 'Benefits - Payroll Taxes', '11', '0'),
('5450', '', 'Benefits - Workers Comp', '11', '0'),
('5460', '', 'Benefits - Pension', '11', '0'),
('5470', '', 'Benefits - General Benefits', '11', '0'),
('5510', '', 'Inc Tax Exp - Federal', '11', '0'),
('5520', '', 'Inc Tax Exp - State', '11', '0'),
('5530', '', 'Taxes - Real Estate', '11', '0'),
('5540', '', 'Taxes - Personal Property', '11', '0'),
('5550', '', 'Taxes - Franchise', '11', '0'),
('5560', '', 'Taxes - Foreign Withholding', '11', '0'),
('5610', '', 'Accounting &amp; Legal', '12', '0'),
('5615', '', 'Advertising &amp; Promotions', '12', '0'),
('5620', '', 'Bad Debts', '12', '0'),
('5660', '', 'Amortization Expense', '12', '0'),
('5685', '', 'Insurance', '12', '0'),
('5690', '', 'Interest &amp; Bank Charges', '12', '0'),
('5700', '', 'Office Supplies', '12', '0'),
('5760', '', 'Rent', '12', '0'),
('5765', '', 'Repair &amp; Maintenance', '12', '0'),
('5780', '', 'Telephone', '12', '0'),
('5785', '', 'Travel &amp; Entertainment', '12', '0'),
('5790', '', 'Utilities', '12', '0'),
('5795', '', 'Registrations', '12', '0'),
('5800', '', 'Licenses', '12', '0'),
('5810', '', 'Foreign Exchange Loss', '12', '0'),
('9990', '', 'Year Profit/Loss', '12', '0');

### Structure of table `chart_types` ###

DROP TABLE IF EXISTS `chart_types`;

CREATE TABLE `chart_types` (
  `id` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `class_id` varchar(3) NOT NULL DEFAULT '',
  `parent` varchar(10) NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `chart_types` ###

INSERT INTO `chart_types` VALUES
('1', 'Current Assets', '1', '', '0'),
('2', 'Inventory Assets', '1', '', '0'),
('3', 'Capital Assets', '1', '', '0'),
('4', 'Current Liabilities', '2', '', '0'),
('5', 'Long Term Liabilities', '2', '', '0'),
('6', 'Share Capital', '2', '', '0'),
('7', 'Retained Earnings', '2', '', '0'),
('8', 'Sales Revenue', '3', '', '0'),
('9', 'Other Revenue', '3', '', '0'),
('10', 'Cost of Goods Sold', '4', '', '0'),
('11', 'Payroll Expenses', '4', '', '0'),
('12', 'General &amp; Administrative expenses', '4', '', '0');

### Structure of table `comments` ###

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `comments` ###

INSERT INTO `comments` VALUES
('12', '1', '2012-11-30', 'Invoice tunai 1'),
('20', '2', '2012-12-01', 'auto'),
('12', '2', '2012-12-03', 'Invoice tunai 2'),
('12', '3', '2012-12-03', 'bayar'),
('11', '1', '2012-12-03', 'kabel rusak'),
('12', '4', '2012-12-03', 'Cash invoice 3'),
('12', '5', '2012-12-04', 'Cash invoice 4'),
('20', '3', '2012-12-05', 'invoce dari pt dan kos'),
('12', '6', '2012-12-05', 'Cash invoice 5'),
('12', '7', '2012-12-05', 'Cash invoice 6'),
('12', '8', '2012-12-05', 'Cash invoice 7'),
('12', '9', '2012-12-05', 'Cash invoice 8'),
('12', '10', '2012-12-05', 'Cash invoice 9'),
('12', '11', '2012-12-05', 'Cash invoice 10'),
('20', '4', '2012-12-07', 'auto'),
('12', '13', '2012-12-07', 'Cash invoice 12'),
('12', '14', '2012-12-07', 'Cash invoice 15'),
('12', '15', '2012-12-07', 'nitip uang dulu'),
('20', '6', '2012-12-07', 'auto'),
('22', '3', '2012-12-11', 'titip bayar hutang...'),
('26', '1', '2012-12-11', 'coba merakit radio pertama kali'),
('12', '16', '2012-12-11', 'Invoice tunai 18'),
('12', '18', '2012-12-11', 'titip duit'),
('20', '8', '2012-12-11', 'auto'),
('13', '21', '2012-12-14', 'Sales Quotation # 3'),
('26', '2', '2012-12-17', 'tolong dibuat seenak mungkin...'),
('12', '23', '2012-12-17', 'Invoice tunai 25'),
('12', '25', '2012-12-18', 'Invoice tunai 26'),
('20', '9', '2012-12-21', 'auto'),
('20', '10', '2012-12-21', 'auto'),
('20', '11', '2012-12-21', 'auto'),
('20', '13', '2013-01-09', 'auto'),
('13', '34', '2013-01-13', 'kirim aerocom3000'),
('10', '28', '2013-01-13', 'kirim aerocom3000'),
('20', '14', '2013-01-14', 'auto'),
('20', '16', '2013-01-29', 'auto');

### Structure of table `credit_status` ###

DROP TABLE IF EXISTS `credit_status`;

CREATE TABLE `credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `credit_status` ###

INSERT INTO `credit_status` VALUES
('1', 'Good History', '0', '0'),
('3', 'No more work until payment received', '1', '0'),
('4', 'In liquidation', '1', '0');

### Structure of table `crm_categories` ###

DROP TABLE IF EXISTS `crm_categories`;

CREATE TABLE `crm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pure technical key',
  `type` varchar(20) NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) NOT NULL COMMENT 'for category selector',
  `description` tinytext NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`action`),
  UNIQUE KEY `type_2` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ;

### Data of table `crm_categories` ###

INSERT INTO `crm_categories` VALUES
('1', 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', '1', '0'),
('2', 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', '1', '0'),
('3', 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', '1', '0'),
('4', 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', '1', '0'),
('5', 'customer', 'general', 'General', 'General contact data for customer', '1', '0'),
('6', 'customer', 'order', 'Orders', 'Order confirmation', '1', '0'),
('7', 'customer', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('8', 'customer', 'invoice', 'Invoices', 'Invoice posting', '1', '0'),
('9', 'supplier', 'general', 'General', 'General contact data for supplier', '1', '0'),
('10', 'supplier', 'order', 'Orders', 'Order confirmation', '1', '0'),
('11', 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', '1', '0'),
('12', 'supplier', 'invoice', 'Invoices', 'Invoice posting', '1', '0');

### Structure of table `crm_contacts` ###

DROP TABLE IF EXISTS `crm_contacts`;

CREATE TABLE `crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_contacts',
  `type` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `crm_contacts` ###

INSERT INTO `crm_contacts` VALUES
('1', '1', 'supplier', 'general', '1'),
('2', '2', 'cust_branch', 'general', '1'),
('3', '3', 'cust_branch', 'general', '2'),
('4', '4', 'supplier', 'general', '2'),
('5', '5', 'cust_branch', 'general', '3'),
('6', '6', 'cust_branch', 'general', '4'),
('7', '7', 'cust_branch', 'general', '5'),
('8', '8', 'supplier', 'general', '3'),
('9', '9', 'cust_branch', 'general', '6'),
('10', '10', 'supplier', 'general', '4');

### Structure of table `crm_persons` ###

DROP TABLE IF EXISTS `crm_persons`;

CREATE TABLE `crm_persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `name2` varchar(60) DEFAULT NULL,
  `address` tinytext,
  `phone` varchar(30) DEFAULT NULL,
  `phone2` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lang` char(5) DEFAULT NULL,
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ref` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `crm_persons` ###

INSERT INTO `crm_persons` VALUES
('1', 'supplier1', 'mas kontak', NULL, 'alamat surat', NULL, NULL, 'fax', 'fax@email.com', 'id_ID', '', '0'),
('2', 'pelanggan1', 'pelanggan1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('3', 'c1', 'c1', NULL, 'alamat 1', '1234', '123456', '12346', 'jtr@asd.da', NULL, '', '0'),
('4', 'PT DAN KOS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('5', 'atmo', 'atmo dirono', NULL, 'jl. atmodirono 123', '1234', '1234', '123', '1234', NULL, '', '0'),
('6', 'Cabang Utama', 'Cabang Utama', NULL, 'sayung', '1234', '123', '1234', 'sayung@yahoo.com', NULL, '', '0'),
('7', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('8', 'aerocom', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0'),
('9', 'rsud-klaten', 'rsud-klaten', NULL, 'klaten', '1234', '23412', NULL, NULL, NULL, '', '0'),
('10', 'aam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0');

### Structure of table `currencies` ###

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `currency` varchar(60) NOT NULL DEFAULT '',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `currencies` ###

INSERT INTO `currencies` VALUES
('US Dollars', 'USD', '$', 'United States', 'Cents', '1', '0'),
('CA Dollars', 'CAD', '$', 'Canada', 'Cents', '1', '0'),
('Euro', 'EUR', '?', 'Europe', 'Cents', '1', '0'),
('Pounds', 'GBP', '?', 'England', 'Pence', '1', '0'),
('Rupiah', 'IDR', 'Rp', 'Indonesia', 'ribu', '1', '0');

### Structure of table `cust_allocations` ###

DROP TABLE IF EXISTS `cust_allocations`;

CREATE TABLE `cust_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ;

### Data of table `cust_allocations` ###

INSERT INTO `cust_allocations` VALUES
('1', '0', '2012-11-30', '1', '12', '1', '10'),
('3', '120000', '2012-12-03', '4', '12', '3', '10'),
('4', '12120000', '2012-12-03', '2', '12', '2', '10'),
('6', '600000', '2012-12-04', '5', '12', '4', '10'),
('7', '600000', '2012-12-04', '5', '11', '4', '10'),
('8', '1200000', '2012-12-05', '6', '12', '5', '10'),
('9', '36000', '2012-12-05', '7', '12', '6', '10'),
('10', '4200000', '2012-12-05', '8', '12', '7', '10'),
('11', '4200000', '2012-12-05', '9', '12', '8', '10'),
('12', '4080000', '2012-12-05', '10', '12', '9', '10'),
('13', '3600000', '2012-12-05', '11', '12', '10', '10'),
('14', '3600000', '2012-12-05', '12', '12', '11', '10'),
('15', '3120000', '2012-12-07', '13', '12', '12', '10'),
('16', '600000', '2012-12-07', '14', '12', '15', '10'),
('18', '1320000', '2012-12-11', '15', '12', '13', '10'),
('19', '1680000', '2012-12-11', '15', '12', '16', '10'),
('20', '12000000', '2012-12-11', '15', '12', '14', '10'),
('21', '3132000', '2012-12-11', '16', '12', '18', '10'),
('22', '4320000', '2012-12-11', '17', '12', '16', '10'),
('23', '600000', '2012-12-11', '17', '12', '17', '10'),
('24', '4800000', '2012-12-12', '19', '12', '19', '10'),
('25', '100000', '2012-12-17', '22', '12', '21', '10'),
('26', '126000', '2012-12-17', '22', '12', '22', '10'),
('27', '360000', '2012-12-17', '23', '12', '25', '10'),
('28', '377225', '2012-12-18', '24', '12', '21', '10'),
('29', '238613', '2012-12-18', '24', '12', '23', '10'),
('30', '4725', '2012-12-18', '24', '12', '24', '10'),
('31', '360000', '2012-12-18', '25', '12', '26', '10'),
('32', '315000', '2013-01-13', '26', '12', '28', '10'),
('33', '3000000', '2013-01-13', '27', '12', '29', '10');

### Structure of table `cust_branch` ###

DROP TABLE IF EXISTS `cust_branch`;

CREATE TABLE `cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(60) NOT NULL DEFAULT '',
  `branch_ref` varchar(30) NOT NULL DEFAULT '',
  `br_address` tinytext NOT NULL,
  `area` int(11) DEFAULT NULL,
  `salesman` int(11) NOT NULL DEFAULT '0',
  `contact_name` varchar(60) NOT NULL DEFAULT '',
  `default_location` varchar(5) NOT NULL DEFAULT '',
  `tax_group_id` int(11) DEFAULT NULL,
  `sales_account` varchar(15) NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) NOT NULL DEFAULT '',
  `receivables_account` varchar(15) NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) NOT NULL DEFAULT '',
  `default_ship_via` int(11) NOT NULL DEFAULT '1',
  `disable_trans` tinyint(4) NOT NULL DEFAULT '0',
  `br_post_address` tinytext NOT NULL,
  `group_no` int(11) NOT NULL DEFAULT '0',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_code` (`branch_code`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `cust_branch` ###

INSERT INTO `cust_branch` VALUES
('1', '1', 'pelanggan1', 'pelanggan1', '', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', '', '0', '', '0'),
('2', '2', 'c1', 'c1', 'alamat 1', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'alamat 1', '0', '', '0'),
('3', '3', 'atmo', 'atmo dirono', 'jl. atmodirono 123', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'jl. atmodirono 123', '0', '', '0'),
('4', '0', 'sayung', 'sayung', 'sayung', '1', '2', '', 'SYG', '1', '', '4510', '1200', '4500', '1', '0', 'sayung', '2', 'fsadcasdg', '0'),
('5', '0', 'kudus', 'kudus', '', '1', '3', '', 'KUDUS', '1', '', '4510', '1200', '4500', '1', '0', '', '2', '', '0'),
('6', '4', 'rsud-klaten', 'rsud-klaten', 'klaten', '1', '2', '', 'DEF', '1', '', '4510', '1200', '4500', '1', '0', 'klaten', '0', '', '0');

### Structure of table `debtor_trans` ###

DROP TABLE IF EXISTS `debtor_trans`;

CREATE TABLE `debtor_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `branch_code` int(11) NOT NULL DEFAULT '-1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) NOT NULL DEFAULT '',
  `tpe` int(11) NOT NULL DEFAULT '0',
  `order_` int(11) NOT NULL DEFAULT '0',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `ov_freight` double NOT NULL DEFAULT '0',
  `ov_freight_tax` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ship_via` int(11) DEFAULT NULL,
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`,`trans_no`),
  KEY `debtor_no` (`debtor_no`,`branch_code`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `debtor_trans` ###

INSERT INTO `debtor_trans` VALUES
('1', '10', '0', '1', '1', '2012-11-30', '2012-11-30', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '10', '0', '1', '1', '2012-12-03', '2012-12-03', '2', '1', '2', '12120000', '0', '0', '0', '0', '12120000', '1', '1', '0', '0', '4'),
('3', '10', '0', '1', '1', '2012-12-03', '2012-12-03', '3', '1', '3', '120000', '0', '0', '0', '0', '120000', '1', '1', '0', '0', '4'),
('4', '10', '1', '2', '2', '2012-12-04', '2012-12-04', '4', '1', '5', '1200000', '0', '0', '0', '0', '1200000', '1', '1', '0', '0', '4'),
('5', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '5', '1', '4', '1200000', '0', '0', '0', '0', '1200000', '1', '1', '0', '0', '4'),
('6', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '6', '1', '6', '36000', '0', '0', '0', '0', '36000', '1', '1', '0', '0', '4'),
('7', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '7', '1', '7', '4200000', '0', '0', '0', '0', '4200000', '1', '1', '0', '0', '4'),
('8', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '8', '1', '8', '4200000', '0', '0', '0', '0', '4200000', '1', '1', '0', '0', '4'),
('9', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '9', '1', '9', '4080000', '0', '0', '0', '0', '4080000', '1', '1', '0', '0', '4'),
('10', '10', '0', '2', '2', '2012-12-05', '2012-12-05', '10', '1', '10', '3600000', '0', '0', '0', '0', '3600000', '1', '1', '0', '0', '4'),
('11', '10', '0', '2', '2', '2012-12-05', '2012-12-15', '11', '1', '11', '3600000', '0', '0', '0', '0', '3600000', '1', '1', '0', '0', '3'),
('12', '10', '0', '2', '2', '2012-12-07', '2012-12-07', '12', '1', '13', '3120000', '0', '0', '0', '0', '3120000', '1', '1', '0', '0', '4'),
('13', '10', '0', '2', '2', '2012-12-07', '2013-01-17', '13', '1', '14', '1320000', '0', '0', '0', '0', '1320000', '1', '1', '0', '0', '1'),
('14', '10', '0', '2', '2', '2012-12-07', '2013-01-17', '14', '1', '15', '12000000', '0', '0', '0', '0', '12000000', '1', '1', '0', '0', '1'),
('15', '10', '0', '2', '2', '2012-12-07', '2012-12-07', '15', '1', '16', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '4'),
('16', '10', '0', '2', '2', '2012-12-07', '2012-12-17', '16', '1', '17', '6000000', '0', '0', '0', '0', '6000000', '1', '1', '0', '0', '3'),
('17', '10', '0', '2', '2', '2012-12-07', '2012-12-17', '17', '1', '18', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '3'),
('18', '10', '0', '2', '2', '2012-12-11', '2012-12-11', '18', '1', '20', '3132000', '0', '0', '0', '0', '3132000', '1', '1', '0', '0', '4'),
('19', '10', '0', '2', '2', '2012-12-11', '2012-12-21', '19', '1', '22', '4800000', '0', '0', '0', '0', '4800000', '1', '1', '0', '0', '3'),
('20', '10', '0', '2', '2', '2012-12-14', '2013-01-30', '20', '1', '24', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('21', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '21', '3', '25', '454500', '22725', '0', '0', '0', '477225', '1', '1', '0', '0', '3'),
('22', '10', '0', '3', '3', '2012-12-17', '2013-01-15', '22', '3', '26', '120000', '6000', '0', '0', '0', '126000', '1', '1', '0', '0', '1'),
('23', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '23', '3', '27', '227250', '11363', '0', '0', '0', '238613', '1', '1', '0', '0', '3'),
('24', '10', '0', '3', '3', '2012-12-17', '2012-12-27', '24', '3', '28', '4500', '225', '0', '0', '0', '4725', '1', '1', '0', '0', '3'),
('25', '10', '0', '1', '1', '2012-12-17', '2012-12-17', '25', '1', '29', '360000', '0', '0', '0', '0', '360000', '1', '1', '0', '0', '4'),
('26', '10', '0', '2', '2', '2012-12-18', '2012-12-18', '26', '1', '19', '360000', '0', '0', '0', '0', '360000', '1', '1', '0', '0', '4'),
('27', '10', '0', '3', '3', '2013-01-08', '2013-01-18', '27', '3', '34', '92510', '4626', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('28', '10', '0', '4', '6', '2013-01-13', '2013-01-23', '28', '3', '36', '300000', '15000', '0', '0', '0', '315000', '1', '1', '0', '0', '3'),
('29', '10', '0', '4', '6', '2013-01-13', '2013-01-23', '29', '5', '37', '5875000', '293750', '0', '0', '0', '3000000', '1', '1', '0', '0', '3'),
('1', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '1', '1', '0', '240000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '2', '1', '0', '12000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('3', '11', '0', '1', '1', '2012-12-03', '0000-00-00', '3', '1', '0', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('4', '11', '0', '2', '2', '2012-12-04', '0000-00-00', '4', '1', '0', '2400000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('5', '11', '0', '2', '2', '2012-12-04', '0000-00-00', '5', '1', '5', '600000', '0', '0', '0', '0', '600000', '1', '1', '0', '0', '4'),
('6', '11', '0', '1', '1', '2012-12-14', '0000-00-00', '6', '1', '0', '18000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('7', '11', '0', '2', '2', '2012-12-14', '0000-00-00', '7', '1', '0', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('1', '12', '0', '1', '1', '2012-11-30', '0000-00-00', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('2', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '2', '0', '0', '12120000', '0', '0', '0', '0', '12120000', '1', '0', '0', '0', NULL),
('3', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '3', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('4', '12', '0', '1', '1', '2012-12-03', '0000-00-00', '4', '0', '0', '120000', '0', '0', '0', '0', '120000', '1', '0', '0', '0', NULL),
('5', '12', '0', '2', '2', '2012-12-04', '0000-00-00', '5', '0', '0', '1200000', '0', '0', '0', '0', '600000', '1', '0', '0', '0', NULL),
('6', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '6', '0', '0', '1200000', '0', '0', '0', '0', '1200000', '1', '0', '0', '0', NULL),
('7', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '7', '0', '0', '36000', '0', '0', '0', '0', '36000', '1', '0', '0', '0', NULL),
('8', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '8', '0', '0', '4200000', '0', '0', '0', '0', '4200000', '1', '0', '0', '0', NULL),
('9', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '9', '0', '0', '4200000', '0', '0', '0', '0', '4200000', '1', '0', '0', '0', NULL),
('10', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '10', '0', '0', '4080000', '0', '0', '0', '0', '4080000', '1', '0', '0', '0', NULL),
('11', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '11', '0', '0', '3600000', '0', '0', '0', '0', '3600000', '1', '0', '0', '0', NULL),
('12', '12', '0', '2', '2', '2012-12-05', '0000-00-00', '12', '0', '0', '3600000', '0', '0', '0', '0', '3600000', '1', '0', '0', '0', NULL),
('13', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '13', '0', '0', '3120000', '0', '0', '0', '0', '3120000', '1', '0', '0', '0', NULL),
('14', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '14', '0', '0', '600000', '0', '0', '0', '0', '600000', '1', '0', '0', '0', NULL),
('15', '12', '0', '2', '2', '2012-12-07', '0000-00-00', '15', '0', '0', '15000000', '0', '0', '0', '0', '15000000', '1', '0', '0', '0', NULL),
('16', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '16', '0', '0', '3132000', '0', '0', '0', '0', '3132000', '1', '0', '0', '0', NULL),
('17', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '17', '0', '0', '4920000', '0', '0', '0', '0', '4920000', '1', '0', '0', '0', NULL),
('18', '12', '0', '2', '2', '2012-12-11', '0000-00-00', '18', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('19', '12', '0', '2', '2', '2012-12-12', '0000-00-00', '19', '0', '0', '4800000', '0', '0', '0', '0', '4800000', '1', '0', '0', '0', NULL),
('20', '12', '0', '2', '2', '2012-12-14', '0000-00-00', '20', '0', '0', '1000000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('21', '12', '0', '2', '2', '2012-12-14', '0000-00-00', '21', '0', '0', '999000', '0', '0', '0', '0', '0', '1', '0', '0', '0', NULL),
('22', '12', '0', '3', '3', '2012-12-17', '0000-00-00', '22', '0', '0', '226000', '0', '0', '0', '0', '226000', '1', '0', '0', '0', NULL),
('23', '12', '0', '1', '1', '2012-12-17', '0000-00-00', '23', '0', '0', '360000', '0', '0', '0', '0', '360000', '1', '0', '0', '0', NULL),
('24', '12', '0', '3', '3', '2012-12-18', '0000-00-00', '24', '0', '0', '620563', '0', '0', '0', '0', '620563', '1', '0', '0', '0', NULL),
('25', '12', '0', '2', '2', '2012-12-18', '0000-00-00', '25', '0', '0', '360000', '0', '0', '0', '0', '360000', '1', '0', '0', '0', NULL),
('26', '12', '0', '4', '6', '2013-01-13', '0000-00-00', '26', '0', '0', '315000', '0', '0', '0', '0', '315000', '1', '0', '0', '0', NULL),
('27', '12', '0', '4', '6', '2013-01-13', '0000-00-00', '27', '0', '0', '3000000', '0', '0', '0', '0', '3000000', '1', '0', '0', '0', NULL),
('1', '13', '1', '1', '1', '2012-11-30', '2012-11-30', 'auto', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('2', '13', '1', '1', '1', '2012-12-03', '2012-12-04', '1', '1', '2', '12120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('3', '13', '1', '1', '1', '2012-12-03', '2012-12-03', 'auto', '1', '3', '120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('4', '13', '1', '2', '2', '2012-12-04', '2012-12-05', '2', '1', '4', '1200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('5', '13', '1', '2', '2', '2012-12-04', '2012-12-04', 'auto', '1', '5', '1200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('6', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '3', '1', '6', '36000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('7', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '7', '4200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('8', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '8', '4200000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('9', '13', '1', '2', '2', '2012-12-05', '2012-12-05', 'auto', '1', '9', '4080000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('10', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '4', '1', '10', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('11', '13', '1', '2', '2', '2012-12-05', '2012-12-06', '5', '1', '11', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('12', '13', '1', '2', '2', '2012-12-07', '2012-12-07', 'auto', '1', '13', '3120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('13', '13', '1', '2', '2', '2012-12-07', '2013-01-17', 'auto', '1', '14', '1320000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('14', '13', '1', '2', '2', '2012-12-07', '2013-01-17', 'auto', '1', '15', '12000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('15', '13', '1', '2', '2', '2012-12-07', '2012-12-07', 'auto', '1', '16', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('16', '13', '1', '2', '2', '2012-12-07', '2012-12-17', 'auto', '1', '17', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('17', '13', '1', '2', '2', '2012-12-07', '2012-12-08', '6', '1', '18', '600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('18', '13', '1', '2', '2', '2012-12-08', '2012-12-08', '7', '1', '19', '360000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('19', '13', '1', '2', '2', '2012-12-11', '2012-12-11', 'auto', '1', '20', '3132000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('20', '13', '1', '2', '2', '2012-12-11', '2012-12-12', '8', '1', '22', '4800000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('21', '13', '0', '2', '2', '2012-12-14', '2012-12-15', '9', '1', '23', '720000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('22', '13', '1', '2', '2', '2012-12-14', '2013-01-30', 'auto', '1', '24', '6000000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '2'),
('23', '13', '1', '3', '3', '2012-12-17', '2012-12-18', '10', '3', '25', '454500', '22725', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('24', '13', '1', '3', '3', '2012-12-17', '2013-01-15', 'auto', '3', '26', '120000', '6000', '0', '0', '0', '0', '1', '1', '0', '0', '1'),
('25', '13', '1', '3', '3', '2012-12-17', '2012-12-27', 'auto', '3', '27', '227250', '11363', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('26', '13', '1', '3', '3', '2012-12-17', '2012-12-27', 'auto', '3', '28', '4500', '225', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('27', '13', '1', '1', '1', '2012-12-17', '2012-12-17', 'auto', '1', '29', '360000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('28', '13', '0', '1', '1', '2012-12-17', '2012-12-18', '11', '1', '31', '120000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('29', '13', '0', '3', '3', '2012-12-18', '2012-12-28', '12', '3', '32', '150000', '7500', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('30', '13', '0', '1', '1', '2012-12-18', '2012-12-18', '13', '1', '30', '10800', '0', '0', '0', '0', '0', '1', '1', '0', '0', '4'),
('31', '13', '1', '3', '3', '2013-01-08', '2013-01-18', 'auto', '3', '34', '92510', '4626', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('32', '13', '0', '3', '3', '2013-01-09', '2013-01-01', '14', '1', '33', '240000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('33', '13', '0', '2', '2', '2013-01-09', '2012-12-06', '15', '1', '12', '3600000', '0', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('34', '13', '1', '4', '6', '2013-01-13', '2013-01-14', '16', '3', '36', '300000', '15000', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('35', '13', '1', '4', '6', '2013-01-13', '2013-01-14', '17', '5', '37', '5875000', '293750', '0', '0', '0', '0', '1', '1', '0', '0', '3'),
('36', '13', '0', '4', '6', '2013-01-23', '2013-01-10', '18', '3', '35', '150000', '7500', '0', '0', '0', '0', '1', '1', '0', '0', '3');

### Structure of table `debtor_trans_details` ###

DROP TABLE IF EXISTS `debtor_trans_details`;

CREATE TABLE `debtor_trans_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_trans_no` int(11) DEFAULT NULL,
  `debtor_trans_type` int(11) DEFAULT NULL,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `qty_done` double NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1 ;

### Data of table `debtor_trans_details` ###

INSERT INTO `debtor_trans_details` VALUES
('1', '1', '13', 'kabel', 'kabel', '0', '0', '1', '0', '100000', '1', '1'),
('2', '1', '10', 'kabel', 'kabel', '0', '0', '1', '0', '100000', '0', '1'),
('3', '2', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '1', '2'),
('4', '2', '13', 'speaker', 'speaker', '120000', '5714', '100', '0', '100000', '100', '3'),
('5', '2', '10', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '3'),
('6', '2', '10', 'speaker', 'speaker', '120000', '5714.29', '100', '0', '100000', '0', '4'),
('7', '1', '11', 'kabel', 'kabel', '120000', '5714', '2', '0', '0', '0', '0'),
('8', '2', '11', 'speaker', 'speaker', '120000', '5714', '100', '0', '0', '0', '0'),
('9', '3', '11', 'ghostdetector', 'ghost detector', '36000', '1714', '100', '0', '0', '0', '0'),
('10', '3', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '1', '4'),
('11', '3', '10', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '10'),
('12', '4', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '5'),
('13', '4', '11', 'kabel', 'kabel', '120000', '5714', '20', '0', '0', '0', '0'),
('14', '5', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '6'),
('15', '4', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '5', '14'),
('16', '5', '11', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '0', '15'),
('17', '6', '13', 'decolgen', 'decolgen', '3600', '171', '10', '0', '3000', '10', '8'),
('18', '5', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '0', '12'),
('19', '6', '10', 'decolgen', 'decolgen', '3600', '171.4', '10', '0', '3000', '0', '17'),
('20', '7', '13', 'kabel', 'kabel', '120000', '5714', '35', '0', '100000', '35', '9'),
('21', '7', '10', 'kabel', 'kabel', '120000', '5714.2857142857', '35', '0', '100000', '0', '20'),
('22', '8', '13', 'kabel', 'kabel', '120000', '5714', '35', '0', '100000', '35', '10'),
('23', '8', '10', 'kabel', 'kabel', '120000', '5714.2857142857', '35', '0', '100000', '0', '22'),
('24', '9', '13', 'kabel', 'kabel', '120000', '5714', '34', '0', '100000', '34', '11'),
('25', '9', '10', 'kabel', 'kabel', '120000', '5714.2941176471', '34', '0', '100000', '0', '24'),
('26', '10', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '100000', '30', '12'),
('27', '10', '10', 'kabel', 'kabel', '120000', '5714.3', '30', '0', '100000', '0', '26'),
('28', '11', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '100000', '30', '13'),
('29', '11', '10', 'kabel', 'kabel', '120000', '5714.3', '30', '0', '100000', '0', '28'),
('30', '12', '13', 'decolgen', 'decolgen', '3600', '171', '200', '0', '3000', '200', '15'),
('31', '12', '13', 'kabel', 'kabel', '120000', '5714', '20', '0', '100000', '20', '16'),
('32', '12', '10', 'decolgen', 'decolgen', '3600', '171.43', '200', '0', '3000', '0', '30'),
('33', '12', '10', 'kabel', 'kabel', '120000', '5714.3', '20', '0', '100000', '0', '31'),
('34', '13', '13', 'kabel', 'kabel', '120000', '5714', '10', '0', '100000', '10', '17'),
('35', '13', '13', 'speaker', 'speaker', '120000', '5714', '1', '0', '100000', '1', '18'),
('36', '13', '10', 'kabel', 'kabel', '120000', '5714.3', '10', '0', '100000', '0', '34'),
('37', '13', '10', 'speaker', 'speaker', '120000', '5714', '1', '0', '100000', '0', '35'),
('38', '14', '13', 'kabel', 'kabel', '120000', '5714', '100', '0', '100000', '100', '19'),
('39', '14', '10', 'kabel', 'kabel', '120000', '5714.29', '100', '0', '100000', '0', '38'),
('40', '15', '13', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '5', '20'),
('41', '15', '10', 'kabel', 'kabel', '120000', '5714.2', '5', '0', '100000', '0', '40'),
('42', '16', '13', 'kabel', 'kabel', '120000', '5714', '50', '0', '100000', '50', '21'),
('43', '16', '10', 'kabel', 'kabel', '120000', '5714.28', '50', '0', '100000', '0', '42'),
('44', '17', '13', 'kabel', 'kabel', '120000', '5714', '5', '0', '100000', '5', '23'),
('45', '17', '10', 'kabel', 'kabel', '120000', '5714.2', '5', '0', '100000', '0', '44'),
('46', '18', '13', 'kabel', 'kabel', '120000', '5714', '3', '0', '100000', '3', '24'),
('47', '19', '13', 'radiorakitan', 'radio rakitan', '626400', '29829', '5', '0', '522000', '5', '25'),
('48', '18', '10', 'radiorakitan', 'radio rakitan', '626400', '29828.6', '5', '0', '522000', '0', '47'),
('49', '20', '13', 'kabel', 'kabel', '120000', '5714', '40', '0', '100000', '40', '27'),
('50', '19', '10', 'kabel', 'kabel', '120000', '5714.275', '40', '0', '100000', '0', '49'),
('51', '21', '13', 'decolgen', 'decolgen', '3600', '171', '200', '0', '3000', '0', '29'),
('52', '22', '13', 'kabel', 'kabel', '120000', '5714', '50', '0', '100000', '50', '30'),
('53', '20', '10', 'kabel', 'kabel', '120000', '5714.28', '50', '0', '100000', '0', '52'),
('54', '6', '11', 'decolgen', 'decolgen', '3600', '171', '5', '0', '0', '0', '0'),
('55', '7', '11', 'kabel', 'kabel', '120000', '5714', '5', '0', '0', '0', '0'),
('56', '23', '13', 'roti', 'roti coklat', '45450', '2273', '10', '0', '30300', '10', '32'),
('57', '21', '10', 'roti', 'roti coklat', '45450', '2272.5', '10', '0', '30300', '0', '56'),
('58', '24', '13', 'tepung', 'tepung', '4500', '225', '20', '0', '3000', '20', '33'),
('59', '24', '13', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '1', '34'),
('60', '22', '10', 'tepung', 'tepung', '4500', '225', '20', '0', '3000', '0', '58'),
('61', '22', '10', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '0', '59'),
('62', '25', '13', 'roti', 'roti coklat', '45450', '2273', '5', '0', '30300', '5', '35'),
('63', '23', '10', 'roti', 'roti coklat', '45450', '2272.6', '5', '0', '30300', '0', '62'),
('64', '26', '13', 'tepung', 'tepung', '4500', '225', '1', '0', '3000', '1', '36'),
('65', '24', '10', 'tepung', 'tepung', '4500', '225', '1', '0', '3000', '0', '64'),
('66', '27', '13', 'kabel', 'kabel', '120000', '5714', '3', '0', '100000', '3', '37'),
('67', '25', '10', 'kabel', 'kabel', '120000', '5714.3333333333', '3', '0', '100000', '0', '66'),
('68', '28', '13', 'kabel', 'kabel', '120000', '5714', '1', '0', '100000', '0', '39'),
('69', '29', '13', 'kabel', 'kabel', '150000', '7500', '1', '0', '100000', '0', '40'),
('70', '30', '13', 'tepung', 'tepung', '3600', '171', '3', '0', '3000', '0', '38'),
('71', '26', '10', 'kabel', 'kabel', '120000', '5714.3333333333', '3', '0', '100000', '0', '46'),
('72', '31', '13', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '1', '42'),
('73', '31', '13', 'gula', 'gula', '6251', '313', '10', '0', '4166.6666666667', '10', '43'),
('74', '27', '10', 'coklat', 'coklat', '30000', '1500', '1', '0', '20000', '0', '72'),
('75', '27', '10', 'gula', 'gula', '6251', '312.6', '10', '0', '4166.6666666667', '0', '73'),
('76', '32', '13', 'coklat', 'coklat', '24000', '1143', '10', '0', '20000', '0', '41'),
('77', '33', '13', 'kabel', 'kabel', '120000', '5714', '30', '0', '101024.59016393', '0', '14'),
('78', '34', '13', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '2', '0', '100000', '2', '46'),
('79', '28', '10', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '2', '0', '100000', '0', '78'),
('80', '35', '13', 'laptop', 'laptop', '5875000', '293750', '1', '0', '1175000.0000000002', '1', '47'),
('81', '29', '10', 'laptop', 'laptop', '5875000', '293750', '1', '0', '1175000.0000000002', '0', '80'),
('82', '36', '13', 'aerocomac3000', 'aerocom tipe 3000', '150000', '7500', '1', '0', '100000', '0', '45');

### Structure of table `debtors_master` ###

DROP TABLE IF EXISTS `debtors_master`;

CREATE TABLE `debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) NOT NULL,
  `address` tinytext,
  `tax_id` varchar(55) NOT NULL DEFAULT '',
  `curr_code` char(3) NOT NULL DEFAULT '',
  `sales_type` int(11) NOT NULL DEFAULT '1',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `credit_status` int(11) NOT NULL DEFAULT '0',
  `payment_terms` int(11) DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `pymt_discount` double NOT NULL DEFAULT '0',
  `credit_limit` float NOT NULL DEFAULT '1000',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `debtors_master` ###

INSERT INTO `debtors_master` VALUES
('1', 'pelanggan1', 'pelanggan1', NULL, '', 'IDR', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0'),
('2', 'c1', 'c1', 'alamat 1', '1234', 'IDR', '1', '0', '0', '1', '4', '0', '0', '1000', '', '0'),
('3', 'atmo', 'atmo dirono', 'jl. atmodirono 123', '112.124.23.2.1423', 'IDR', '3', '0', '0', '1', '3', '0', '0', '1000', '', '0'),
('4', 'rsud-klaten', 'rsud-klaten', 'klaten', '123.214123', 'IDR', '3', '0', '0', '1', '3', '0', '0', '1000', '', '0');

### Structure of table `dimensions` ###

DROP TABLE IF EXISTS `dimensions`;

CREATE TABLE `dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `date_` (`date_`),
  KEY `due_date` (`due_date`),
  KEY `type_` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `dimensions` ###


### Structure of table `exchange_rates` ###

DROP TABLE IF EXISTS `exchange_rates`;

CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `exchange_rates` ###

INSERT INTO `exchange_rates` VALUES
('1', 'USD', '9612.3672464214', '9612.3672464214', '2012-11-30');

### Structure of table `fiscal_year` ###

DROP TABLE IF EXISTS `fiscal_year`;

CREATE TABLE `fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `fiscal_year` ###

INSERT INTO `fiscal_year` VALUES
('5', '2012-01-01', '2012-12-31', '1'),
('6', '2013-01-01', '2013-12-31', '0');

### Structure of table `gl_trans` ###

DROP TABLE IF EXISTS `gl_trans`;

CREATE TABLE `gl_trans` (
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `type_no` bigint(16) NOT NULL DEFAULT '1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) NOT NULL DEFAULT '',
  `memo_` tinytext NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int(11) NOT NULL DEFAULT '0',
  `dimension2_id` int(11) NOT NULL DEFAULT '0',
  `person_type_id` int(11) DEFAULT NULL,
  `person_id` tinyblob,
  PRIMARY KEY (`counter`),
  KEY `Type_and_Number` (`type`,`type_no`),
  KEY `dimension_id` (`dimension_id`),
  KEY `dimension2_id` (`dimension2_id`),
  KEY `tran_date` (`tran_date`),
  KEY `account_and_tran_date` (`account`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=latin1 ;

### Data of table `gl_trans` ###

INSERT INTO `gl_trans` VALUES
('1', '25', '1', '2012-11-30', '1510', 'kabel', '10000000', '0', '0', '3', '1'),
('2', '25', '1', '2012-11-30', '1510', 'speaker', '10000000', '0', '0', '3', '1'),
('3', '25', '1', '2012-11-30', '1550', '', '-20000000', '0', '0', '3', NULL),
('4', '20', '1', '2012-11-30', '2100', '', '-21000000', '0', '0', '3', '1'),
('5', '20', '1', '2012-11-30', '1550', '', '10000000', '0', '0', '3', '1'),
('6', '20', '1', '2012-11-30', '1550', '', '10000000', '0', '0', '3', '1'),
('7', '20', '1', '2012-11-30', '2150', '', '1000000', '0', '0', '3', '1'),
('8', '2', '1', '2012-11-30', '4010', '', '-100000000', '0', '0', '0', NULL),
('9', '2', '1', '2012-11-30', '1060', '', '100000000', '0', '0', '0', NULL),
('10', '2', '2', '2012-11-30', '4010', 'sales setoran 100jt', '-100000000', '0', '0', '0', NULL),
('11', '2', '2', '2012-11-30', '1060', '', '100000000', '0', '0', '0', NULL),
('12', '1', '1', '2012-11-30', '4010', 'bank account payment from sales 1jt', '1000000', '0', '0', '0', NULL),
('13', '1', '1', '2012-11-30', '1060', '', '-1000000', '0', '0', '0', NULL),
('14', '2', '3', '2012-11-30', '4010', 'sales setoran 100jt ke petty cash', '-100000000', '0', '0', '0', NULL),
('15', '2', '3', '2012-11-30', '1065', '', '100000000', '0', '0', '0', NULL),
('16', '0', '1', '2012-11-30', '1510', 'inventory kebobolan 1jt', '1000000', '0', '0', NULL, NULL),
('17', '0', '1', '2012-11-30', '1065', 'petty cash nemu uang 1jt', '-1000000', '0', '0', NULL, NULL),
('18', '22', '1', '2012-11-30', '2100', '', '10000000', '0', '0', '3', '1'),
('19', '22', '1', '2012-11-30', '1060', '', '-10000000', '0', '0', '3', '1'),
('20', '13', '1', '2012-11-30', '5010', '', '100000', '0', '0', '2', '1'),
('21', '13', '1', '2012-11-30', '1510', '', '-100000', '0', '0', '2', '1'),
('22', '12', '1', '2012-11-30', '1065', '', '0', '0', '0', '2', '1'),
('23', '25', '2', '2012-12-01', '1510', 'kabel', '20000000', '0', '0', '3', '1'),
('24', '25', '2', '2012-12-01', '1550', '', '-20000000', '0', '0', '3', NULL),
('25', '20', '2', '2012-12-01', '2100', '', '-21000000', '0', '0', '3', '1'),
('26', '20', '2', '2012-12-01', '1550', '', '20000000', '0', '0', '3', '1'),
('27', '20', '2', '2012-12-01', '2150', '', '1000000', '0', '0', '3', '1'),
('28', '13', '2', '2012-12-03', '5010', '', '100000', '0', '0', '2', '1'),
('29', '13', '2', '2012-12-03', '1510', '', '-100000', '0', '0', '2', '1'),
('30', '13', '2', '2012-12-03', '5010', '', '10000000', '0', '0', '2', '1'),
('31', '13', '2', '2012-12-03', '1510', '', '-10000000', '0', '0', '2', '1'),
('32', '10', '2', '2012-12-03', '4010', '', '-114286', '0', '0', '2', '1'),
('33', '10', '2', '2012-12-03', '4010', '', '-11428571', '0', '0', '2', '1'),
('34', '10', '2', '2012-12-03', '1200', '', '12120000', '0', '0', '2', '1'),
('35', '10', '2', '2012-12-03', '2150', '', '-577143', '0', '0', '2', '1'),
('36', '12', '2', '2012-12-03', '1065', '', '12120000', '0', '0', '2', '1'),
('37', '12', '2', '2012-12-03', '1200', '', '-12120000', '0', '0', '2', '1'),
('38', '12', '3', '2012-12-03', '1060', '', '1000000', '0', '0', '2', '1'),
('39', '12', '3', '2012-12-03', '1200', '', '-1000000', '0', '0', '2', '1'),
('40', '11', '1', '2012-12-03', '5010', '', '-200000', '0', '0', '2', '1'),
('41', '11', '1', '2012-12-03', '1510', '', '200000', '0', '0', '2', '1'),
('42', '11', '1', '2012-12-03', '4010', '', '228572', '0', '0', '2', '1'),
('43', '11', '1', '2012-12-03', '1200', '', '-240000', '0', '0', '2', '1'),
('44', '11', '1', '2012-12-03', '2150', '', '11429', '0', '0', '2', '1'),
('45', '11', '1', '2012-12-03', '4450', '', '-1', '0', '0', '2', '1'),
('46', '11', '2', '2012-12-03', '5010', '', '-10000000', '0', '0', '2', '1'),
('47', '11', '2', '2012-12-03', '1510', '', '10000000', '0', '0', '2', '1'),
('48', '11', '2', '2012-12-03', '4010', '', '11428600', '0', '0', '2', '1'),
('49', '11', '2', '2012-12-03', '1200', '', '-12000000', '0', '0', '2', '1'),
('50', '11', '2', '2012-12-03', '2150', '', '571429', '0', '0', '2', '1'),
('51', '11', '2', '2012-12-03', '4450', '', '-29', '0', '0', '2', '1'),
('52', '11', '3', '2012-12-03', '5010', '', '-3000000', '0', '0', '2', '1'),
('53', '11', '3', '2012-12-03', '1510', '', '3000000', '0', '0', '2', '1'),
('54', '11', '3', '2012-12-03', '4010', '', '3428600', '0', '0', '2', '1'),
('55', '11', '3', '2012-12-03', '1200', '', '-3600000', '0', '0', '2', '1'),
('56', '11', '3', '2012-12-03', '2150', '', '171429', '0', '0', '2', '1'),
('57', '11', '3', '2012-12-03', '4450', '', '-29', '0', '0', '2', '1'),
('58', '13', '3', '2012-12-03', '5010', '', '100000', '0', '0', '2', '1'),
('59', '13', '3', '2012-12-03', '1510', '', '-100000', '0', '0', '2', '1'),
('60', '10', '3', '2012-12-03', '4010', '', '-114286', '0', '0', '2', '1'),
('61', '10', '3', '2012-12-03', '1200', '', '120000', '0', '0', '2', '1'),
('62', '10', '3', '2012-12-03', '2150', '', '-5714', '0', '0', '2', '1'),
('63', '12', '4', '2012-12-03', '1065', '', '120000', '0', '0', '2', '1'),
('64', '12', '4', '2012-12-03', '1200', '', '-120000', '0', '0', '2', '1'),
('65', '22', '2', '2012-12-03', '2100', '', '32000000', '0', '0', '3', '1'),
('66', '22', '2', '2012-12-03', '1060', '', '-32000000', '0', '0', '3', '1'),
('67', '13', '4', '2012-12-04', '5010', '', '1000000', '0', '0', '2', '2'),
('68', '13', '4', '2012-12-04', '1510', '', '-1000000', '0', '0', '2', '2'),
('69', '11', '4', '2012-12-04', '5010', '', '-2000000', '0', '0', '2', '2'),
('70', '11', '4', '2012-12-04', '1510', '', '2000000', '0', '0', '2', '2'),
('71', '11', '4', '2012-12-04', '4010', '', '2285720', '0', '0', '2', '2'),
('72', '11', '4', '2012-12-04', '1200', '', '-2400000', '0', '0', '2', '2'),
('73', '11', '4', '2012-12-04', '2150', '', '114286', '0', '0', '2', '2'),
('74', '11', '4', '2012-12-04', '4450', '', '-6', '0', '0', '2', '2'),
('75', '13', '5', '2012-12-04', '5010', '', '1000000', '0', '0', '2', '2'),
('76', '13', '5', '2012-12-04', '1510', '', '-1000000', '0', '0', '2', '2'),
('77', '10', '4', '2012-12-04', '4010', '', '-1142857', '0', '0', '2', '2'),
('78', '10', '4', '2012-12-04', '1200', '', '1200000', '0', '0', '2', '2'),
('79', '10', '4', '2012-12-04', '2150', '', '-57143', '0', '0', '2', '2'),
('80', '12', '5', '2012-12-04', '1065', '', '1200000', '0', '0', '2', '2'),
('81', '12', '5', '2012-12-04', '1200', '', '-1200000', '0', '0', '2', '2'),
('82', '11', '5', '2012-12-04', '5010', '', '-500000', '0', '0', '2', '2'),
('83', '11', '5', '2012-12-04', '1510', '', '500000', '0', '0', '2', '2'),
('84', '11', '5', '2012-12-04', '4010', '', '571430', '0', '0', '2', '2'),
('85', '11', '5', '2012-12-04', '1200', '', '-600000', '0', '0', '2', '2'),
('86', '11', '5', '2012-12-04', '2150', '', '28571', '0', '0', '2', '2'),
('87', '11', '5', '2012-12-04', '4450', '', '-1', '0', '0', '2', '2'),
('88', '25', '3', '2012-12-05', '1510', 'panadol', '200000', '0', '0', '3', '2'),
('89', '25', '3', '2012-12-05', '1510', 'decolgen', '300000', '0', '0', '3', '2'),
('90', '25', '3', '2012-12-05', '1550', '', '-500000', '0', '0', '3', NULL),
('91', '20', '3', '2012-12-05', '2100', '', '-525000', '0', '0', '3', '2'),
('92', '20', '3', '2012-12-05', '1550', '', '200000', '0', '0', '3', '2'),
('93', '20', '3', '2012-12-05', '1550', '', '300000', '0', '0', '3', '2'),
('94', '20', '3', '2012-12-05', '2150', '', '25000', '0', '0', '3', '2'),
('95', '13', '6', '2012-12-05', '5010', '', '30000', '0', '0', '2', '2'),
('96', '13', '6', '2012-12-05', '1510', '', '-30000', '0', '0', '2', '2'),
('97', '10', '5', '2012-12-05', '4010', '', '-1142857', '0', '0', '2', '2'),
('98', '10', '5', '2012-12-05', '1200', '', '1200000', '0', '0', '2', '2'),
('99', '10', '5', '2012-12-05', '2150', '', '-57143', '0', '0', '2', '2'),
('100', '12', '6', '2012-12-05', '1065', '', '1200000', '0', '0', '2', '2'),
('101', '12', '6', '2012-12-05', '1200', '', '-1200000', '0', '0', '2', '2'),
('102', '10', '6', '2012-12-05', '4010', '', '-34286', '0', '0', '2', '2'),
('103', '10', '6', '2012-12-05', '1200', '', '36000', '0', '0', '2', '2'),
('104', '10', '6', '2012-12-05', '2150', '', '-1714', '0', '0', '2', '2'),
('105', '12', '7', '2012-12-05', '1065', '', '36000', '0', '0', '2', '2'),
('106', '12', '7', '2012-12-05', '1200', '', '-36000', '0', '0', '2', '2'),
('107', '13', '7', '2012-12-05', '5010', '', '3500000', '0', '0', '2', '2'),
('108', '13', '7', '2012-12-05', '1510', '', '-3500000', '0', '0', '2', '2'),
('109', '10', '7', '2012-12-05', '4010', '', '-4000000', '0', '0', '2', '2'),
('110', '10', '7', '2012-12-05', '1200', '', '4200000', '0', '0', '2', '2'),
('111', '10', '7', '2012-12-05', '2150', '', '-200000', '0', '0', '2', '2'),
('112', '12', '8', '2012-12-05', '1065', '', '4200000', '0', '0', '2', '2'),
('113', '12', '8', '2012-12-05', '1200', '', '-4200000', '0', '0', '2', '2'),
('114', '13', '8', '2012-12-05', '5010', '', '3500000', '0', '0', '2', '2'),
('115', '13', '8', '2012-12-05', '1510', '', '-3500000', '0', '0', '2', '2'),
('116', '10', '8', '2012-12-05', '4010', '', '-4000000', '0', '0', '2', '2'),
('117', '10', '8', '2012-12-05', '1200', '', '4200000', '0', '0', '2', '2'),
('118', '10', '8', '2012-12-05', '2150', '', '-200000', '0', '0', '2', '2'),
('119', '12', '9', '2012-12-05', '1065', '', '4200000', '0', '0', '2', '2'),
('120', '12', '9', '2012-12-05', '1200', '', '-4200000', '0', '0', '2', '2'),
('121', '13', '9', '2012-12-05', '5010', '', '3400000', '0', '0', '2', '2'),
('122', '13', '9', '2012-12-05', '1510', '', '-3400000', '0', '0', '2', '2'),
('123', '10', '9', '2012-12-05', '4010', '', '-3885714', '0', '0', '2', '2'),
('124', '10', '9', '2012-12-05', '1200', '', '4080000', '0', '0', '2', '2'),
('125', '10', '9', '2012-12-05', '2150', '', '-194286', '0', '0', '2', '2'),
('126', '12', '10', '2012-12-05', '1065', '', '4080000', '0', '0', '2', '2'),
('127', '12', '10', '2012-12-05', '1200', '', '-4080000', '0', '0', '2', '2'),
('128', '13', '10', '2012-12-05', '5010', '', '3000000', '0', '0', '2', '2'),
('129', '13', '10', '2012-12-05', '1510', '', '-3000000', '0', '0', '2', '2'),
('130', '10', '10', '2012-12-05', '4010', '', '-3428571', '0', '0', '2', '2'),
('131', '10', '10', '2012-12-05', '1200', '', '3600000', '0', '0', '2', '2'),
('132', '10', '10', '2012-12-05', '2150', '', '-171429', '0', '0', '2', '2'),
('133', '12', '11', '2012-12-05', '1065', '', '3600000', '0', '0', '2', '2'),
('134', '12', '11', '2012-12-05', '1200', '', '-3600000', '0', '0', '2', '2'),
('135', '13', '11', '2012-12-05', '5010', '', '3000000', '0', '0', '2', '2'),
('136', '13', '11', '2012-12-05', '1510', '', '-3000000', '0', '0', '2', '2'),
('137', '10', '11', '2012-12-05', '4010', '', '-3428571', '0', '0', '2', '2'),
('138', '10', '11', '2012-12-05', '1200', '', '3600000', '0', '0', '2', '2'),
('139', '10', '11', '2012-12-05', '2150', '', '-171429', '0', '0', '2', '2'),
('140', '12', '12', '2012-12-05', '1060', '', '3600000', '0', '0', '2', '2'),
('141', '12', '12', '2012-12-05', '1200', '', '-3600000', '0', '0', '2', '2'),
('142', '25', '4', '2012-12-07', '1510', 'decolgen', '3000000', '0', '0', '3', '2'),
('143', '25', '4', '2012-12-07', '1550', '', '-3000000', '0', '0', '3', NULL),
('144', '20', '4', '2012-12-07', '2100', '', '-3150000', '0', '0', '3', '2'),
('145', '20', '4', '2012-12-07', '1550', '', '3000000', '0', '0', '3', '2'),
('146', '20', '4', '2012-12-07', '2150', '', '150000', '0', '0', '3', '2'),
('147', '13', '12', '2012-12-07', '5010', '', '600000', '0', '0', '2', '2'),
('148', '13', '12', '2012-12-07', '1510', '', '-600000', '0', '0', '2', '2'),
('149', '13', '12', '2012-12-07', '5010', '', '2000000', '0', '0', '2', '2'),
('150', '13', '12', '2012-12-07', '1510', '', '-2000000', '0', '0', '2', '2'),
('151', '10', '12', '2012-12-07', '4010', '', '-685714', '0', '0', '2', '2'),
('152', '10', '12', '2012-12-07', '4010', '', '-2285714', '0', '0', '2', '2'),
('153', '10', '12', '2012-12-07', '1200', '', '3120000', '0', '0', '2', '2'),
('154', '10', '12', '2012-12-07', '2150', '', '-148572', '0', '0', '2', '2'),
('155', '12', '13', '2012-12-07', '1065', '', '3120000', '0', '0', '2', '2'),
('156', '12', '13', '2012-12-07', '1200', '', '-3120000', '0', '0', '2', '2'),
('157', '13', '13', '2012-12-07', '5010', '', '1000000', '0', '0', '2', '2'),
('158', '13', '13', '2012-12-07', '1510', '', '-1000000', '0', '0', '2', '2'),
('159', '13', '13', '2012-12-07', '5010', '', '100000', '0', '0', '2', '2'),
('160', '13', '13', '2012-12-07', '1510', '', '-100000', '0', '0', '2', '2'),
('161', '10', '13', '2012-12-07', '4010', '', '-1142857', '0', '0', '2', '2'),
('162', '10', '13', '2012-12-07', '4010', '', '-114286', '0', '0', '2', '2'),
('163', '10', '13', '2012-12-07', '1200', '', '1320000', '0', '0', '2', '2'),
('164', '10', '13', '2012-12-07', '2150', '', '-62857', '0', '0', '2', '2'),
('165', '13', '14', '2012-12-07', '5010', '', '10000000', '0', '0', '2', '2'),
('166', '13', '14', '2012-12-07', '1510', '', '-10000000', '0', '0', '2', '2'),
('167', '10', '14', '2012-12-07', '4010', '', '-11428571', '0', '0', '2', '2'),
('168', '10', '14', '2012-12-07', '1200', '', '12000000', '0', '0', '2', '2'),
('169', '10', '14', '2012-12-07', '2150', '', '-571429', '0', '0', '2', '2'),
('170', '25', '5', '2012-12-07', '1510', 'kabel', '20000000', '0', '0', '3', '1'),
('171', '25', '5', '2012-12-07', '1550', '', '-20000000', '0', '0', '3', NULL),
('172', '20', '5', '2012-12-07', '2100', '', '-21000000', '0', '0', '3', '1'),
('173', '20', '5', '2012-12-07', '1550', '', '20000000', '0', '0', '3', '1'),
('174', '20', '5', '2012-12-07', '2150', '', '1000000', '0', '0', '3', '1'),
('175', '13', '15', '2012-12-07', '5010', '', '500000', '0', '0', '2', '2'),
('176', '13', '15', '2012-12-07', '1510', '', '-500000', '0', '0', '2', '2'),
('177', '10', '15', '2012-12-07', '4010', '', '-571429', '0', '0', '2', '2'),
('178', '10', '15', '2012-12-07', '1200', '', '600000', '0', '0', '2', '2'),
('179', '10', '15', '2012-12-07', '2150', '', '-28571', '0', '0', '2', '2'),
('180', '12', '14', '2012-12-07', '1065', '', '600000', '0', '0', '2', '2'),
('181', '12', '14', '2012-12-07', '1200', '', '-600000', '0', '0', '2', '2'),
('182', '13', '16', '2012-12-07', '5010', '', '5000000', '0', '0', '2', '2'),
('183', '13', '16', '2012-12-07', '1510', '', '-5000000', '0', '0', '2', '2'),
('184', '10', '16', '2012-12-07', '4010', '', '-5714286', '0', '0', '2', '2'),
('185', '10', '16', '2012-12-07', '1200', '', '6000000', '0', '0', '2', '2'),
('186', '10', '16', '2012-12-07', '2150', '', '-285714', '0', '0', '2', '2'),
('187', '13', '17', '2012-12-07', '5010', '', '500000', '0', '0', '2', '2'),
('188', '13', '17', '2012-12-07', '1510', '', '-500000', '0', '0', '2', '2'),
('189', '10', '17', '2012-12-07', '4010', '', '-571429', '0', '0', '2', '2'),
('190', '10', '17', '2012-12-07', '1200', '', '600000', '0', '0', '2', '2'),
('191', '10', '17', '2012-12-07', '2150', '', '-28571', '0', '0', '2', '2'),
('192', '12', '15', '2012-12-07', '1060', '', '15000000', '0', '0', '2', '2'),
('193', '12', '15', '2012-12-07', '1200', '', '-15000000', '0', '0', '2', '2'),
('194', '25', '6', '2012-12-07', '1510', 'decolgen', '300000', '0', '0', '3', '2'),
('195', '25', '6', '2012-12-07', '1550', '', '-300000', '0', '0', '3', NULL),
('196', '20', '6', '2012-12-07', '2100', '', '-315000', '0', '0', '3', '2'),
('197', '20', '6', '2012-12-07', '1550', '', '300000', '0', '0', '3', '2'),
('198', '20', '6', '2012-12-07', '2150', '', '15000', '0', '0', '3', '2'),
('199', '13', '18', '2012-12-08', '5010', '', '300000', '0', '0', '2', '2'),
('200', '13', '18', '2012-12-08', '1510', '', '-300000', '0', '0', '2', '2'),
('201', '25', '7', '2012-12-11', '1510', 'transistor', '1000000', '0', '0', '3', '1'),
('202', '25', '7', '2012-12-11', '1550', '', '-1000000', '0', '0', '3', NULL),
('203', '22', '3', '2012-12-11', '2100', '', '15000000', '0', '0', '3', '1'),
('204', '22', '3', '2012-12-11', '1060', '', '-15000000', '0', '0', '3', '1'),
('205', '25', '8', '2012-12-11', '1510', 'kabel', '1000000', '0', '0', '3', '1'),
('206', '25', '8', '2012-12-11', '1550', '', '-1000000', '0', '0', '3', NULL),
('207', '20', '7', '2012-12-11', '2100', '', '-2100000', '0', '0', '3', '1'),
('208', '20', '7', '2012-12-11', '1550', '', '1000000', '0', '0', '3', '1'),
('209', '20', '7', '2012-12-11', '1550', '', '1000000', '0', '0', '3', '1'),
('210', '20', '7', '2012-12-11', '2150', '', '100000', '0', '0', '3', '1'),
('211', '26', '1', '2012-12-11', '1510', '5 * kabel', '-5000000', '0', '0', NULL, NULL),
('212', '26', '1', '2012-12-11', '1510', '10 * transistor', '-100000', '0', '0', NULL, NULL),
('213', '26', '1', '2012-12-11', '1060', 'Biaya overhead', '-20000', '0', '0', '1', '1'),
('214', '26', '1', '2012-12-11', '1530', 'Biaya overhead', '20000', '0', '0', '1', '1'),
('215', '26', '1', '2012-12-11', '1060', 'Biaya buruh', '-100000', '0', '0', '1', '0'),
('216', '26', '1', '2012-12-11', '1530', 'Biaya buruh', '100000', '0', '0', '1', '0'),
('217', '26', '1', '2012-12-11', '1510', 'Produced 10 * radio rakitan', '5100000', '0', '0', NULL, NULL),
('218', '13', '19', '2012-12-11', '5010', '', '2610000', '0', '0', '2', '2'),
('219', '13', '19', '2012-12-11', '1510', '', '-2610000', '0', '0', '2', '2'),
('220', '10', '18', '2012-12-11', '4010', '', '-2982857', '0', '0', '2', '2'),
('221', '10', '18', '2012-12-11', '1200', '', '3132000', '0', '0', '2', '2'),
('222', '10', '18', '2012-12-11', '2150', '', '-149143', '0', '0', '2', '2'),
('223', '12', '16', '2012-12-11', '1065', '', '3132000', '0', '0', '2', '2'),
('224', '12', '16', '2012-12-11', '1200', '', '-3132000', '0', '0', '2', '2'),
('225', '12', '17', '2012-12-11', '1060', '', '4920000', '0', '0', '2', '2'),
('226', '12', '17', '2012-12-11', '1200', '', '-4920000', '0', '0', '2', '2'),
('227', '12', '18', '2012-12-11', '1060', '', '1000000', '0', '0', '2', '2'),
('228', '12', '18', '2012-12-11', '1200', '', '-1000000', '0', '0', '2', '2'),
('229', '13', '20', '2012-12-11', '5010', '', '4000000', '0', '0', '2', '2'),
('230', '13', '20', '2012-12-11', '1510', '', '-4000000', '0', '0', '2', '2'),
('231', '10', '19', '2012-12-11', '4010', '', '-4571429', '0', '0', '2', '2'),
('232', '10', '19', '2012-12-11', '1200', '', '4800000', '0', '0', '2', '2'),
('233', '10', '19', '2012-12-11', '2150', '', '-228571', '0', '0', '2', '2'),
('234', '25', '9', '2012-12-11', '1510', 'kabel', '10000000', '0', '0', '3', '1'),
('235', '25', '9', '2012-12-11', '1550', '', '-10000000', '0', '0', '3', NULL),
('236', '20', '8', '2012-12-11', '2100', '', '-10500000', '0', '0', '3', '1'),
('237', '20', '8', '2012-12-11', '1550', '', '10000000', '0', '0', '3', '1'),
('238', '20', '8', '2012-12-11', '2150', '', '500000', '0', '0', '3', '1'),
('239', '22', '4', '2012-12-12', '2100', '', '3990000', '0', '0', '3', '2'),
('240', '22', '4', '2012-12-12', '1060', '', '-3990000', '0', '0', '3', '2'),
('241', '22', '5', '2012-12-12', '2100', '', '3990000', '0', '0', '3', '2'),
('242', '22', '5', '2012-12-12', '1060', '', '-3990000', '0', '0', '3', '2'),
('243', '22', '6', '2012-12-12', '2100', '', '33600000', '0', '0', '3', '1'),
('244', '22', '6', '2012-12-12', '1060', '', '-33600000', '0', '0', '3', '1'),
('245', '12', '19', '2012-12-12', '1060', '', '4800000', '0', '0', '2', '2'),
('246', '12', '19', '2012-12-12', '1200', '', '-4800000', '0', '0', '2', '2'),
('247', '13', '21', '2012-12-14', '5010', '', '600000', '0', '0', '2', '2'),
('248', '13', '21', '2012-12-14', '1510', '', '-600000', '0', '0', '2', '2'),
('249', '13', '22', '2012-12-14', '5010', '', '5000000', '0', '0', '2', '2'),
('250', '13', '22', '2012-12-14', '1510', '', '-5000000', '0', '0', '2', '2'),
('251', '10', '20', '2012-12-14', '4010', '', '-5714286', '0', '0', '2', '2'),
('252', '10', '20', '2012-12-14', '1200', '', '6000000', '0', '0', '2', '2'),
('253', '10', '20', '2012-12-14', '2150', '', '-285714', '0', '0', '2', '2'),
('254', '12', '20', '2012-12-14', '1060', '', '1000000', '0', '0', '2', '2'),
('255', '12', '20', '2012-12-14', '1200', '', '-1000000', '0', '0', '2', '2'),
('256', '12', '21', '2012-12-14', '1060', '', '999000', '0', '0', '2', '2'),
('257', '12', '21', '2012-12-14', '1200', '', '-999000', '0', '0', '2', '2'),
('258', '11', '6', '2012-12-14', '5010', '', '-15000', '0', '0', '2', '1'),
('259', '11', '6', '2012-12-14', '1510', '', '15000', '0', '0', '2', '1'),
('260', '11', '6', '2012-12-14', '4010', '', '17145', '0', '0', '2', '1'),
('261', '11', '6', '2012-12-14', '1200', '', '-18000', '0', '0', '2', '1'),
('262', '11', '6', '2012-12-14', '2150', '', '857', '0', '0', '2', '1'),
('263', '11', '6', '2012-12-14', '4450', '', '-2', '0', '0', '2', '1'),
('264', '11', '7', '2012-12-14', '5010', '', '-500000', '0', '0', '2', '2'),
('265', '11', '7', '2012-12-14', '1510', '', '500000', '0', '0', '2', '2'),
('266', '11', '7', '2012-12-14', '4010', '', '571430', '0', '0', '2', '2'),
('267', '11', '7', '2012-12-14', '1200', '', '-600000', '0', '0', '2', '2'),
('268', '11', '7', '2012-12-14', '2150', '', '28571', '0', '0', '2', '2'),
('269', '11', '7', '2012-12-14', '4450', '', '-1', '0', '0', '2', '2'),
('270', '25', '10', '2012-12-17', '1510', 'tepung', '300000', '0', '0', '3', '1'),
('271', '25', '10', '2012-12-17', '1510', 'gula', '500000', '0', '0', '3', '1'),
('272', '25', '10', '2012-12-17', '1510', 'coklat', '2000000', '0', '0', '3', '1'),
('273', '25', '10', '2012-12-17', '1550', '', '-2800000', '0', '0', '3', NULL),
('274', '26', '2', '2012-12-17', '1510', '1 * tepung', '-150000', '0', '0', NULL, NULL),
('275', '26', '2', '2012-12-17', '1510', '1 * coklat', '-1000000', '0', '0', NULL, NULL),
('276', '26', '2', '2012-12-17', '1510', '1 * gula', '-250000', '0', '0', NULL, NULL),
('277', '26', '2', '2012-12-17', '1060', 'Biaya overhead', '-15000', '0', '0', '1', '1'),
('278', '26', '2', '2012-12-17', '1530', 'Biaya overhead', '15000', '0', '0', '1', '1'),
('279', '26', '2', '2012-12-17', '1060', 'Biaya buruh', '-100000', '0', '0', '1', '0'),
('280', '26', '2', '2012-12-17', '1530', 'Biaya buruh', '100000', '0', '0', '1', '0'),
('281', '26', '2', '2012-12-17', '1510', 'Produced 50 * roti coklat', '1400000', '0', '0', NULL, NULL),
('282', '13', '23', '2012-12-17', '5010', '', '303000', '0', '0', '2', '3'),
('283', '13', '23', '2012-12-17', '1510', '', '-303000', '0', '0', '2', '3'),
('284', '10', '21', '2012-12-17', '4010', '', '-454500', '0', '0', '2', '3'),
('285', '10', '21', '2012-12-17', '1200', '', '477225', '0', '0', '2', '3'),
('286', '10', '21', '2012-12-17', '2150', '', '-22725', '0', '0', '2', '3'),
('287', '13', '24', '2012-12-17', '5010', '', '60000', '0', '0', '2', '3'),
('288', '13', '24', '2012-12-17', '1510', '', '-60000', '0', '0', '2', '3'),
('289', '13', '24', '2012-12-17', '5010', '', '20000', '0', '0', '2', '3'),
('290', '13', '24', '2012-12-17', '1510', '', '-20000', '0', '0', '2', '3'),
('291', '10', '22', '2012-12-17', '4010', '', '-90000', '0', '0', '2', '3'),
('292', '10', '22', '2012-12-17', '4010', '', '-30000', '0', '0', '2', '3'),
('293', '10', '22', '2012-12-17', '1200', '', '126000', '0', '0', '2', '3'),
('294', '10', '22', '2012-12-17', '2150', '', '-6000', '0', '0', '2', '3'),
('295', '12', '22', '2012-12-17', '1060', '', '226000', '0', '0', '2', '3'),
('296', '12', '22', '2012-12-17', '1200', '', '-226000', '0', '0', '2', '3'),
('297', '13', '25', '2012-12-17', '5010', '', '151500', '0', '0', '2', '3'),
('298', '13', '25', '2012-12-17', '1510', '', '-151500', '0', '0', '2', '3'),
('299', '10', '23', '2012-12-17', '4010', '', '-227250', '0', '0', '2', '3'),
('300', '10', '23', '2012-12-17', '1200', '', '238613', '0', '0', '2', '3'),
('301', '10', '23', '2012-12-17', '2150', '', '-11363', '0', '0', '2', '3'),
('302', '13', '26', '2012-12-17', '5010', '', '3000', '0', '0', '2', '3'),
('303', '13', '26', '2012-12-17', '1510', '', '-3000', '0', '0', '2', '3'),
('304', '10', '24', '2012-12-17', '4010', '', '-4500', '0', '0', '2', '3'),
('305', '10', '24', '2012-12-17', '1200', '', '4725', '0', '0', '2', '3'),
('306', '10', '24', '2012-12-17', '2150', '', '-225', '0', '0', '2', '3'),
('307', '13', '27', '2012-12-17', '5010', '', '300000', '0', '0', '2', '1'),
('308', '13', '27', '2012-12-17', '1510', '', '-300000', '0', '0', '2', '1'),
('309', '10', '25', '2012-12-17', '4010', '', '-342857', '0', '0', '2', '1'),
('310', '10', '25', '2012-12-17', '1200', '', '360000', '0', '0', '2', '1'),
('311', '10', '25', '2012-12-17', '2150', '', '-17143', '0', '0', '2', '1'),
('312', '12', '23', '2012-12-17', '1065', '', '360000', '0', '0', '2', '1'),
('313', '12', '23', '2012-12-17', '1200', '', '-360000', '0', '0', '2', '1'),
('314', '13', '28', '2012-12-17', '5010', '', '100000', '0', '0', '2', '1'),
('315', '13', '28', '2012-12-17', '1510', '', '-100000', '0', '0', '2', '1'),
('316', '13', '29', '2012-12-18', '5010', '', '100000', '0', '0', '2', '3'),
('317', '13', '29', '2012-12-18', '1510', '', '-100000', '0', '0', '2', '3'),
('318', '12', '24', '2012-12-18', '1060', '', '620563', '0', '0', '2', '3'),
('319', '12', '24', '2012-12-18', '1200', '', '-620563', '0', '0', '2', '3'),
('320', '13', '30', '2012-12-18', '5010', '', '9000', '0', '0', '2', '1'),
('321', '13', '30', '2012-12-18', '1510', '', '-9000', '0', '0', '2', '1'),
('322', '10', '26', '2012-12-18', '4010', '', '-342857', '0', '0', '2', '2'),
('323', '10', '26', '2012-12-18', '1200', '', '360000', '0', '0', '2', '2'),
('324', '10', '26', '2012-12-18', '2150', '', '-17143', '0', '0', '2', '2'),
('325', '12', '25', '2012-12-18', '1065', '', '360000', '0', '0', '2', '2'),
('326', '12', '25', '2012-12-18', '1200', '', '-360000', '0', '0', '2', '2'),
('327', '25', '11', '2012-12-21', '1510', 'gula', '0', '0', '0', '3', '2'),
('328', '20', '9', '2012-12-21', '2100', '', '0', '0', '0', '3', '2'),
('329', '20', '9', '2012-12-21', '1550', '', '0', '0', '0', '3', '2'),
('330', '25', '12', '2012-12-21', '1510', 'speaker', '2000000', '0', '0', '3', '2'),
('331', '25', '12', '2012-12-21', '1550', '', '-2000000', '0', '0', '3', NULL),
('332', '20', '10', '2012-12-21', '2100', '', '-2100000', '0', '0', '3', '2'),
('333', '20', '10', '2012-12-21', '1550', '', '2000000', '0', '0', '3', '2'),
('334', '20', '10', '2012-12-21', '2150', '', '100000', '0', '0', '3', '2'),
('335', '25', '13', '2012-12-21', '1510', 'transistor', '1800000', '0', '0', '3', '2'),
('336', '25', '13', '2012-12-21', '1550', '', '-1800000', '0', '0', '3', NULL),
('337', '20', '11', '2012-12-21', '2100', '', '-1890000', '0', '0', '3', '2'),
('338', '20', '11', '2012-12-21', '1550', '', '1800000', '0', '0', '3', '2'),
('339', '20', '11', '2012-12-21', '2150', '', '90000', '0', '0', '3', '2'),
('340', '25', '14', '2012-12-21', '1510', 'kabel', '625000', '0', '0', '3', '1'),
('341', '25', '14', '2012-12-21', '1550', '', '-625000', '0', '0', '3', NULL),
('342', '13', '31', '2013-01-08', '5010', '', '20000', '0', '0', '2', '3'),
('343', '13', '31', '2013-01-08', '1510', '', '-20000', '0', '0', '2', '3'),
('344', '13', '31', '2013-01-08', '5010', '', '41667', '0', '0', '2', '3'),
('345', '13', '31', '2013-01-08', '1510', '', '-41667', '0', '0', '2', '3'),
('346', '10', '27', '2013-01-08', '4010', '', '-30000', '0', '0', '2', '3'),
('347', '10', '27', '2013-01-08', '4010', '', '-62510', '0', '0', '2', '3'),
('348', '10', '27', '2013-01-08', '1200', '', '97136', '0', '0', '2', '3'),
('349', '10', '27', '2013-01-08', '2150', '', '-4626', '0', '0', '2', '3'),
('350', '25', '15', '2013-01-09', '1510', 'aerocomac3000', '500000', '0', '0', '3', '3'),
('351', '25', '15', '2013-01-09', '1550', '', '-500000', '0', '0', '3', NULL),
('352', '20', '12', '2013-01-09', '2100', '', '-525000', '0', '0', '3', '3'),
('353', '20', '12', '2013-01-09', '1550', '', '500000', '0', '0', '3', '3'),
('354', '20', '12', '2013-01-09', '2150', '', '25000', '0', '0', '3', '3'),
('355', '13', '32', '2013-01-09', '5010', '', '200000', '0', '0', '2', '3'),
('356', '13', '32', '2013-01-09', '1510', '', '-200000', '0', '0', '2', '3'),
('357', '13', '33', '2013-01-09', '5010', '', '3030738', '0', '0', '2', '2'),
('358', '13', '33', '2013-01-09', '1510', '', '-3030738', '0', '0', '2', '2'),
('359', '25', '16', '2013-01-09', '1510', 'elbow', '500000', '0', '0', '3', '3'),
('360', '25', '16', '2013-01-09', '1510', 'pipa', '2000000', '0', '0', '3', '3'),
('361', '25', '16', '2013-01-09', '1510', 'station', '10500000', '0', '0', '3', '3'),
('362', '25', '16', '2013-01-09', '1550', '', '-13000000', '0', '0', '3', NULL),
('363', '20', '13', '2013-01-09', '2100', '', '-13650000', '0', '0', '3', '3'),
('364', '20', '13', '2013-01-09', '1550', '', '500000', '0', '0', '3', '3'),
('365', '20', '13', '2013-01-09', '1550', '', '2000000', '0', '0', '3', '3'),
('366', '20', '13', '2013-01-09', '1550', '', '10500000', '0', '0', '3', '3'),
('367', '20', '13', '2013-01-09', '2150', '', '650000', '0', '0', '3', '3'),
('368', '26', '3', '2013-01-09', '1510', '10 * elbow', '-500000', '0', '0', NULL, NULL),
('369', '26', '3', '2013-01-09', '1510', '10 * station', '-7000000', '0', '0', NULL, NULL),
('370', '26', '3', '2013-01-09', '1510', '10 * pipa', '-2000000', '0', '0', NULL, NULL),
('371', '26', '3', '2013-01-09', '1060', 'Biaya overhead', '-100000', '0', '0', '1', '1'),
('372', '26', '3', '2013-01-09', '1530', 'Biaya overhead', '100000', '0', '0', '1', '1'),
('373', '26', '3', '2013-01-09', '1510', 'Produced 1 * proyek_rsud_klaten', '9500000', '0', '0', NULL, NULL),
('374', '13', '34', '2013-01-13', '5010', '', '200000', '0', '0', '2', '4'),
('375', '13', '34', '2013-01-13', '1510', '', '-200000', '0', '0', '2', '4'),
('376', '10', '28', '2013-01-13', '4010', '', '-300000', '0', '0', '2', '4'),
('377', '10', '28', '2013-01-13', '1200', '', '315000', '0', '0', '2', '4'),
('378', '10', '28', '2013-01-13', '2150', '', '-15000', '0', '0', '2', '4'),
('379', '25', '17', '2013-01-13', '1510', 'lcd', '20000000', '0', '0', '3', '1'),
('380', '25', '17', '2013-01-13', '1510', 'keyboard', '2000000', '0', '0', '3', '1'),
('381', '25', '17', '2013-01-13', '1550', '', '-22000000', '0', '0', '3', NULL),
('382', '26', '4', '2013-01-13', '1510', '1 * lcd', '-3000000', '0', '0', NULL, NULL),
('383', '26', '4', '2013-01-13', '1510', '1 * keyboard', '-300000', '0', '0', NULL, NULL),
('384', '26', '4', '2013-01-13', '1060', 'Biaya overhead', '-25000', '0', '0', '1', '1'),
('385', '26', '4', '2013-01-13', '1530', 'Biaya overhead', '25000', '0', '0', '1', '1'),
('386', '26', '4', '2013-01-13', '1060', 'Biaya buruh', '-200000', '0', '0', '1', '0'),
('387', '26', '4', '2013-01-13', '1530', 'Biaya buruh', '200000', '0', '0', '1', '0'),
('388', '26', '4', '2013-01-13', '1510', 'Produced 3 * laptop', '3300000', '0', '0', NULL, NULL),
('389', '13', '35', '2013-01-13', '5010', '', '1175000', '0', '0', '2', '4'),
('390', '13', '35', '2013-01-13', '1510', '', '-1175000', '0', '0', '2', '4'),
('391', '10', '29', '2013-01-13', '4010', '', '-5875000', '0', '0', '2', '4'),
('392', '10', '29', '2013-01-13', '1200', '', '6168750', '0', '0', '2', '4'),
('393', '10', '29', '2013-01-13', '2150', '', '-293750', '0', '0', '2', '4'),
('394', '12', '26', '2013-01-13', '1060', '', '315000', '0', '0', '2', '4'),
('395', '12', '26', '2013-01-13', '1200', '', '-315000', '0', '0', '2', '4'),
('396', '12', '27', '2013-01-13', '1060', '', '3000000', '0', '0', '2', '4'),
('397', '12', '27', '2013-01-13', '1200', '', '-3000000', '0', '0', '2', '4'),
('398', '25', '18', '2013-01-14', '1510', 'tuna', '750000', '0', '0', '3', '2'),
('399', '25', '18', '2013-01-14', '1550', '', '-750000', '0', '0', '3', NULL),
('400', '20', '14', '2013-01-14', '2100', '', '-787500', '0', '0', '3', '2'),
('401', '20', '14', '2013-01-14', '1550', '', '750000', '0', '0', '3', '2'),
('402', '20', '14', '2013-01-14', '2150', '', '37500', '0', '0', '3', '2'),
('403', '13', '36', '2013-01-23', '5010', '', '100000', '0', '0', '2', '4'),
('404', '13', '36', '2013-01-23', '1510', '', '-100000', '0', '0', '2', '4'),
('405', '25', '19', '2013-01-29', '1510', 'amx500', '1000000', '0', '0', '3', '4'),
('406', '25', '19', '2013-01-29', '1550', '', '-1000000', '0', '0', '3', NULL),
('407', '20', '15', '2013-01-29', '2100', '', '-1050000', '0', '0', '3', '4'),
('408', '20', '15', '2013-01-29', '5010', '', '0', '0', '0', '3', '4'),
('409', '20', '15', '2013-01-29', '1550', '', '1000000', '0', '0', '3', '4'),
('410', '20', '15', '2013-01-29', '2150', '', '50000', '0', '0', '3', '4'),
('411', '25', '20', '2013-01-29', '1510', 'amx500', '1000000', '0', '0', '3', '4'),
('412', '25', '20', '2013-01-29', '1550', '', '-1000000', '0', '0', '3', NULL),
('413', '20', '16', '2013-01-29', '2100', '', '-1050000', '0', '0', '3', '4'),
('414', '20', '16', '2013-01-29', '1550', '', '1000000', '0', '0', '3', '4'),
('415', '20', '16', '2013-01-29', '2150', '', '50000', '0', '0', '3', '4'),
('416', '0', '2', '2012-12-31', '3590', 'Penghujung tahun', '-304691893', '0', '0', NULL, NULL),
('417', '0', '2', '2012-12-31', '9990', 'Penghujung tahun', '304691893', '0', '0', NULL, NULL);

### Structure of table `grn_batch` ###

DROP TABLE IF EXISTS `grn_batch`;

CREATE TABLE `grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

### Data of table `grn_batch` ###

INSERT INTO `grn_batch` VALUES
('1', '1', '1', '1', '2012-11-30', 'DEF'),
('2', '1', '2', 'auto', '2012-12-01', 'DEF'),
('3', '2', '3', '2', '2012-12-05', 'DEF'),
('4', '2', '4', 'auto', '2012-12-07', 'DEF'),
('5', '1', '5', '3', '2012-12-07', 'DEF'),
('6', '2', '6', 'auto', '2012-12-07', 'DEF'),
('7', '1', '7', '4', '2012-12-11', 'DEF'),
('8', '1', '8', '5', '2012-12-11', 'DEF'),
('9', '1', '9', 'auto', '2012-12-11', 'DEF'),
('10', '1', '10', '6', '2012-12-17', 'DEF'),
('11', '2', '11', 'auto', '2012-12-21', 'DEF'),
('12', '2', '12', 'auto', '2012-12-21', 'DEF'),
('13', '2', '13', 'auto', '2012-12-21', 'DEF'),
('14', '1', '14', '7', '2012-12-21', 'DEF'),
('15', '3', '15', '8', '2013-01-09', 'KUDUS'),
('16', '3', '16', 'auto', '2013-01-09', 'DEF'),
('17', '1', '17', '9', '2013-01-13', 'KUDUS'),
('18', '2', '18', 'auto', '2013-01-14', 'DEF'),
('19', '4', '19', '10', '2013-01-29', 'DEF'),
('20', '4', '20', 'auto', '2013-01-29', 'DEF');

### Structure of table `grn_items` ###

DROP TABLE IF EXISTS `grn_items`;

CREATE TABLE `grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ;

### Data of table `grn_items` ###

INSERT INTO `grn_items` VALUES
('1', '1', '1', 'kabel', 'kabel', '100', '100'),
('2', '1', '2', 'speaker', 'speaker', '100', '100'),
('3', '2', '3', 'kabel', 'kabel', '200', '200'),
('4', '3', '4', 'panadol', 'panadol obat sakit kepala', '100', '100'),
('5', '3', '5', 'decolgen', 'decolgen', '100', '100'),
('6', '4', '6', 'decolgen', 'decolgen', '1000', '1000'),
('7', '5', '7', 'kabel', 'kabel', '200', '200'),
('8', '6', '8', 'decolgen', 'decolgen', '100', '100'),
('9', '7', '9', 'transistor', 'transistor', '1000', '1000'),
('10', '8', '10', 'kabel', 'kabel', '10', '10'),
('11', '9', '11', 'kabel', 'kabel', '100', '100'),
('12', '10', '12', 'tepung', 'tepung', '100', '0'),
('13', '10', '13', 'gula', 'gula', '100', '0'),
('14', '10', '14', 'coklat', 'coklat', '100', '0'),
('15', '11', '15', 'gula', 'gula', '10', '10'),
('16', '12', '16', 'speaker', 'speaker', '10', '10'),
('17', '13', '17', 'transistor', 'transistor', '900', '900'),
('18', '14', '18', 'kabel', 'kabel', '5', '0'),
('19', '15', '19', 'aerocomac3000', 'aerocom tipe 3000', '5', '5'),
('20', '16', '20', 'elbow', 'elbow', '10', '10'),
('21', '16', '21', 'pipa', 'pipa', '10', '10'),
('22', '16', '22', 'station', 'station', '15', '15'),
('23', '17', '23', 'lcd', 'lcd', '20', '0'),
('24', '17', '24', 'keyboard', 'keyboard', '20', '0'),
('25', '18', '25', 'tuna', 'ikan tuna', '25', '25'),
('26', '19', '26', 'amx500', 'amoxicilling 500mg', '100', '100'),
('27', '20', '27', 'amx500', 'amoxicilling 500mg', '100', '100');

### Structure of table `groups` ###

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `groups` ###

INSERT INTO `groups` VALUES
('1', 'Small', '0'),
('2', 'Medium', '0'),
('3', 'Large', '0');

### Structure of table `item_codes` ###

DROP TABLE IF EXISTS `item_codes`;

CREATE TABLE `item_codes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) NOT NULL,
  `stock_id` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  `category_id` smallint(6) unsigned NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ;

### Data of table `item_codes` ###

INSERT INTO `item_codes` VALUES
('1', 'kabel', 'kabel', 'kabel', '1', '1', '0', '0'),
('2', 'speaker', 'speaker', 'speaker', '1', '1', '0', '0'),
('3', 'ghostdetector', 'ghostdetector', 'ghost detector', '1', '1', '0', '0'),
('4', 'decolgen', 'decolgen', 'decolgen', '5', '1', '0', '0'),
('5', 'panadol', 'panadol', 'panadol obat sakit kepala', '6', '1', '0', '0'),
('6', 'tuna', 'tuna', 'ikan tuna', '1', '1', '0', '0'),
('7', 'transistor', 'transistor', 'transistor', '1', '1', '0', '0'),
('8', 'radiorakitan', 'radiorakitan', 'radio rakitan', '1', '1', '0', '0'),
('9', 'tepung', 'tepung', 'tepung', '1', '1', '0', '0'),
('10', 'gula', 'gula', 'gula', '1', '1', '0', '0'),
('11', 'coklat', 'coklat', 'coklat', '1', '1', '0', '0'),
('12', 'roti', 'roti', 'roti coklat', '1', '1', '0', '0'),
('13', 'aerocomac3000', 'aerocomac3000', 'aerocom tipe 3000', '1', '1', '0', '0'),
('14', 'pipa', 'pipa', 'pipa', '1', '1', '0', '0'),
('15', 'station', 'station', 'station', '1', '1', '0', '0'),
('16', 'elbow', 'elbow', 'elbow', '1', '1', '0', '0'),
('17', 'proyek_rsud_klaten', 'proyek_rsud_klaten', 'proyek_rsud_klaten', '1', '1', '0', '0'),
('18', 'laptop', 'laptop', 'laptop', '1', '1', '0', '0'),
('19', 'lcd', 'lcd', 'lcd', '1', '1', '0', '0'),
('20', 'keyboard', 'keyboard', 'keyboard', '1', '1', '0', '0'),
('21', 'amx500', 'amx500', 'amoxicilling 500mg', '7', '1', '0', '0');

### Structure of table `item_tax_type_exemptions` ###

DROP TABLE IF EXISTS `item_tax_type_exemptions`;

CREATE TABLE `item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `item_tax_type_exemptions` ###


### Structure of table `item_tax_types` ###

DROP TABLE IF EXISTS `item_tax_types`;

CREATE TABLE `item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `item_tax_types` ###

INSERT INTO `item_tax_types` VALUES
('1', 'Regular', '0', '0');

### Structure of table `item_units` ###

DROP TABLE IF EXISTS `item_units`;

CREATE TABLE `item_units` (
  `abbr` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `item_units` ###

INSERT INTO `item_units` VALUES
('ea.', 'Each', '0', '0'),
('pcs', 'pieces', '-1', '0'),
('roll', 'roll', '-1', '0'),
('kg', 'berat kilogram', '-1', '0'),
('gr', 'gram', '-1', '0'),
('unit', 'satu lot paket', '-1', '0');

### Structure of table `loc_stock` ###

DROP TABLE IF EXISTS `loc_stock`;

CREATE TABLE `loc_stock` (
  `loc_code` char(5) NOT NULL DEFAULT '',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `reorder_level` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `loc_stock` ###

INSERT INTO `loc_stock` VALUES
('DEF', 'aerocomac3000', '0'),
('DEF', 'amx500', '0'),
('DEF', 'coklat', '0'),
('DEF', 'decolgen', '0'),
('DEF', 'elbow', '0'),
('DEF', 'ghostdetector', '0'),
('DEF', 'gula', '0'),
('DEF', 'kabel', '0'),
('DEF', 'keyboard', '0'),
('DEF', 'laptop', '0'),
('DEF', 'lcd', '0'),
('DEF', 'panadol', '0'),
('DEF', 'pipa', '0'),
('DEF', 'proyek_rsud_klaten', '0'),
('DEF', 'radiorakitan', '0'),
('DEF', 'roti', '0'),
('DEF', 'speaker', '0'),
('DEF', 'station', '0'),
('DEF', 'tepung', '0'),
('DEF', 'transistor', '0'),
('DEF', 'tuna', '0'),
('KUDUS', 'aerocomac3000', '0'),
('KUDUS', 'amx500', '0'),
('KUDUS', 'coklat', '0'),
('KUDUS', 'decolgen', '0'),
('KUDUS', 'elbow', '0'),
('KUDUS', 'ghostdetector', '0'),
('KUDUS', 'gula', '0'),
('KUDUS', 'kabel', '0'),
('KUDUS', 'keyboard', '0'),
('KUDUS', 'laptop', '0'),
('KUDUS', 'lcd', '0'),
('KUDUS', 'panadol', '0'),
('KUDUS', 'pipa', '0'),
('KUDUS', 'proyek_rsud_klaten', '0'),
('KUDUS', 'radiorakitan', '0'),
('KUDUS', 'roti', '0'),
('KUDUS', 'speaker', '0'),
('KUDUS', 'station', '0'),
('KUDUS', 'tepung', '0'),
('KUDUS', 'transistor', '0'),
('KUDUS', 'tuna', '0'),
('SYG', 'aerocomac3000', '0'),
('SYG', 'amx500', '0'),
('SYG', 'coklat', '0'),
('SYG', 'decolgen', '0'),
('SYG', 'elbow', '0'),
('SYG', 'ghostdetector', '0'),
('SYG', 'gula', '0'),
('SYG', 'kabel', '0'),
('SYG', 'keyboard', '0'),
('SYG', 'laptop', '0'),
('SYG', 'lcd', '0'),
('SYG', 'panadol', '0'),
('SYG', 'pipa', '0'),
('SYG', 'proyek_rsud_klaten', '0'),
('SYG', 'radiorakitan', '0'),
('SYG', 'roti', '0'),
('SYG', 'speaker', '0'),
('SYG', 'station', '0'),
('SYG', 'tepung', '0'),
('SYG', 'transistor', '0'),
('SYG', 'tuna', '0');

### Structure of table `locations` ###

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `loc_code` varchar(5) NOT NULL DEFAULT '',
  `location_name` varchar(60) NOT NULL DEFAULT '',
  `delivery_address` tinytext NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `phone2` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(30) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `locations` ###

INSERT INTO `locations` VALUES
('DEF', 'Default', 'N/A', '', '', '', '', '', '0'),
('SYG', 'sayung', 'sayung', '1234', '213423', '1234', 'sayung@yahoo.com', 'hisyam ali', '0'),
('KUDUS', 'cabang kudus', 'alamat kudus', '12345', '12341235', '1234123', 'wong_kudus@kuduskab.go.id', 'wong kudus', '0');

### Structure of table `movement_types` ###

DROP TABLE IF EXISTS `movement_types`;

CREATE TABLE `movement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `movement_types` ###

INSERT INTO `movement_types` VALUES
('1', 'Adjustment', '0');

### Structure of table `payment_terms` ###

DROP TABLE IF EXISTS `payment_terms`;

CREATE TABLE `payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT '0',
  `day_in_following_month` smallint(6) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `payment_terms` ###

INSERT INTO `payment_terms` VALUES
('1', 'sebelum tanggal 15', '0', '15', '0'),
('2', 'Sebelum Akhir bulan', '0', '30', '0'),
('3', 'Bayar Dalam 10 Hari', '10', '0', '0'),
('4', 'Cash', '0', '0', '0');

### Structure of table `prices` ###

DROP TABLE IF EXISTS `prices`;

CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `prices` ###


### Structure of table `print_profiles` ###

DROP TABLE IF EXISTS `print_profiles`;

CREATE TABLE `print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) NOT NULL,
  `report` varchar(5) DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ;

### Data of table `print_profiles` ###

INSERT INTO `print_profiles` VALUES
('1', 'Out of office', NULL, '0'),
('2', 'Sales Department', NULL, '0'),
('3', 'Central', NULL, '2'),
('4', 'Sales Department', '104', '2'),
('5', 'Sales Department', '105', '2'),
('6', 'Sales Department', '107', '2'),
('7', 'Sales Department', '109', '2'),
('8', 'Sales Department', '110', '2'),
('9', 'Sales Department', '201', '2');

### Structure of table `printers` ###

DROP TABLE IF EXISTS `printers`;

CREATE TABLE `printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(60) NOT NULL,
  `queue` varchar(20) NOT NULL,
  `host` varchar(40) NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `printers` ###

INSERT INTO `printers` VALUES
('1', 'QL500', 'Label printer', 'QL500', 'server', '127', '20'),
('2', 'Samsung', 'Main network printer', 'scx4521F', 'server', '515', '5'),
('3', 'Local', 'Local print server at user IP', 'lp', '', '515', '10');

### Structure of table `purch_data` ###

DROP TABLE IF EXISTS `purch_data`;

CREATE TABLE `purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `purch_data` ###

INSERT INTO `purch_data` VALUES
('1', 'kabel', '125000', '', '1', 'kabel'),
('1', 'speaker', '100000', '', '1', 'speaker'),
('2', 'panadol', '2000', '', '1', 'panadol obat sakit kepala'),
('2', 'decolgen', '3000', '', '1', 'decolgen'),
('1', 'transistor', '1000', '', '1', 'transistor'),
('1', 'tepung', '3000', '', '1', 'tepung'),
('1', 'gula', '5000', '', '1', 'gula'),
('1', 'coklat', '20000', '', '1', 'coklat'),
('2', 'gula', '0', '', '1', 'gula'),
('2', 'speaker', '200000', '', '1', 'speaker'),
('2', 'transistor', '2000', '', '1', 'transistor'),
('3', 'aerocomac3000', '100000', '', '1', 'aerocom tipe 3000'),
('3', 'elbow', '50000', '', '1', 'elbow'),
('3', 'pipa', '200000', '', '1', 'pipa'),
('3', 'station', '700000', '', '1', 'station'),
('1', 'lcd', '1000000', '', '1', 'lcd'),
('1', 'keyboard', '100000', '', '1', 'keyboard'),
('2', 'tuna', '30000', '', '1', 'ikan tuna'),
('4', 'amx500', '10000', '', '1', 'amoxicilling 500mg');

### Structure of table `purch_order_details` ###

DROP TABLE IF EXISTS `purch_order_details`;

CREATE TABLE `purch_order_details` (
  `po_detail_item` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`po_detail_item`),
  KEY `order` (`order_no`,`po_detail_item`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ;

### Data of table `purch_order_details` ###

INSERT INTO `purch_order_details` VALUES
('1', '1', 'kabel', 'kabel', '2012-12-01', '100', '100000', '100000', '100000', '100', '100'),
('2', '1', 'speaker', 'speaker', '2012-12-01', '100', '100000', '100000', '100000', '100', '100'),
('3', '2', 'kabel', 'kabel', '2012-12-01', '200', '100000', '100000', '100000', '200', '200'),
('4', '3', 'panadol', 'panadol obat sakit kepala', '2012-12-06', '100', '2000', '2000', '2000', '100', '100'),
('5', '3', 'decolgen', 'decolgen', '2012-12-06', '100', '3000', '3000', '3000', '100', '100'),
('6', '4', 'decolgen', 'decolgen', '2012-12-07', '1000', '3000', '3000', '3000', '1000', '1000'),
('7', '5', 'kabel', 'kabel', '2012-12-08', '200', '100000', '100000', '100000', '200', '200'),
('8', '6', 'decolgen', 'decolgen', '2012-12-07', '100', '3000', '3000', '3000', '100', '100'),
('9', '7', 'transistor', 'transistor', '2012-12-12', '1000', '1000', '1000', '1000', '1000', '1000'),
('10', '8', 'kabel', 'kabel', '2012-12-12', '10', '100000', '100000', '100000', '10', '10'),
('11', '9', 'kabel', 'kabel', '2012-12-11', '100', '100000', '100000', '100000', '100', '100'),
('12', '10', 'tepung', 'tepung', '2012-12-18', '0', '3000', '3000', '3000', '100', '100'),
('13', '10', 'gula', 'gula', '2012-12-18', '0', '5000', '5000', '5000', '100', '100'),
('14', '10', 'coklat', 'coklat', '2012-12-18', '0', '20000', '20000', '20000', '100', '100'),
('15', '11', 'gula', 'gula', '2012-12-21', '10', '0', '0', '4166.6666666667', '10', '10'),
('16', '12', 'speaker', 'speaker', '2012-12-21', '10', '200000', '200000', '109174.31192661', '10', '10'),
('17', '13', 'transistor', 'transistor', '2012-12-21', '900', '2000', '2000', '1500', '900', '900'),
('18', '14', 'kabel', 'kabel', '2012-12-22', '0', '125000', '125000', '101024.59016393', '5', '5'),
('19', '15', 'aerocomac3000', 'aerocom tipe 3000', '2013-01-10', '5', '100000', '100000', '100000', '5', '5'),
('20', '16', 'elbow', 'elbow', '2013-01-09', '10', '50000', '50000', '50000', '10', '10'),
('21', '16', 'pipa', 'pipa', '2013-01-09', '10', '200000', '200000', '200000', '10', '10'),
('22', '16', 'station', 'station', '2013-01-09', '15', '700000', '700000', '700000', '15', '15'),
('23', '17', 'lcd', 'lcd', '2013-01-14', '0', '1000000', '1000000', '1000000', '20', '20'),
('24', '17', 'keyboard', 'keyboard', '2013-01-14', '0', '100000', '100000', '100000', '20', '20'),
('25', '18', 'tuna', 'ikan tuna', '2013-01-14', '25', '30000', '30000', '30000', '25', '25'),
('26', '19', 'amx500', 'amoxicilling 500mg', '2013-01-30', '100', '10000', '10000', '10000', '100', '100'),
('27', '20', 'amx500', 'amoxicilling 500mg', '2013-01-29', '100', '10000', '10000', '10000', '100', '100');

### Structure of table `purch_orders` ###

DROP TABLE IF EXISTS `purch_orders`;

CREATE TABLE `purch_orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `comments` tinytext,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext NOT NULL,
  `requisition_no` tinytext,
  `into_stock_location` varchar(5) NOT NULL DEFAULT '',
  `delivery_address` tinytext NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_no`),
  KEY `ord_date` (`ord_date`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

### Data of table `purch_orders` ###

INSERT INTO `purch_orders` VALUES
('1', '1', NULL, '2012-11-30', '1', '234', 'DEF', 'ke gudang lengkong', '21000000', '0'),
('2', '1', NULL, '2012-12-01', 'auto', '12345', 'DEF', 'default', '21000000', '0'),
('3', '2', NULL, '2012-12-05', '2', 'Q1243124', 'DEF', 'KLIPANG', '525000', '0'),
('4', '2', NULL, '2012-12-07', 'auto', '12345', 'DEF', 'N/A', '3150000', '0'),
('5', '1', NULL, '2012-12-07', '3', '2345', 'DEF', 'N/A', '21000000', '0'),
('6', '2', NULL, '2012-12-07', 'auto', '1234', 'DEF', 'N/A', '315000', '0'),
('7', '1', NULL, '2012-12-11', '4', NULL, 'DEF', 'N/A', '1050000', '0'),
('8', '1', NULL, '2012-12-11', '5', NULL, 'DEF', 'N/A', '1050000', '0'),
('9', '1', NULL, '2012-12-11', 'auto', '123444/1234', 'DEF', 'ke gudang', '10500000', '0'),
('10', '1', NULL, '2012-12-17', '6', '123', 'DEF', 'N/A', '2940000', '0'),
('11', '2', NULL, '2012-12-21', 'auto', '12342132', 'DEF', 'N/A', '0', '0'),
('12', '2', NULL, '2012-12-21', 'auto', '125250375', 'DEF', 'N/A', '2100000', '0'),
('13', '2', NULL, '2012-12-21', 'auto', '345222', 'DEF', 'N/A', '1890000', '0'),
('14', '1', NULL, '2012-12-21', '7', NULL, 'DEF', 'N/A', '656250', '0'),
('15', '3', NULL, '2013-01-09', '8', NULL, 'KUDUS', 'alamat kudus', '525000', '0'),
('16', '3', NULL, '2013-01-09', 'auto', '2345', 'DEF', 'N/A', '13650000', '0'),
('17', '1', NULL, '2013-01-13', '9', NULL, 'KUDUS', 'alamat kudus', '23100000', '0'),
('18', '2', NULL, '2013-01-14', 'auto', '3211', 'DEF', 'N/A', '787500', '0'),
('19', '4', NULL, '2013-01-29', '10', NULL, 'DEF', 'N/A', '1050000', '0'),
('20', '4', NULL, '2013-01-29', 'auto', '008', 'DEF', 'N/A', '1050000', '0');

### Structure of table `quick_entries` ###

DROP TABLE IF EXISTS `quick_entries`;

CREATE TABLE `quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) NOT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `quick_entries` ###

INSERT INTO `quick_entries` VALUES
('1', '1', 'Maintenance', '0', 'Amount', '0'),
('2', '4', 'Phone', '0', 'Amount', '0'),
('3', '2', 'Cash Sales', '0', 'Amount', '0');

### Structure of table `quick_entry_lines` ###

DROP TABLE IF EXISTS `quick_entry_lines`;

CREATE TABLE `quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT '0',
  `action` varchar(2) NOT NULL,
  `dest_id` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

### Data of table `quick_entry_lines` ###

INSERT INTO `quick_entry_lines` VALUES
('1', '1', '0', 't-', '1', '0', '0'),
('2', '2', '0', 't-', '1', '0', '0'),
('3', '3', '0', 't-', '1', '0', '0'),
('4', '3', '0', '=', '4010', '0', '0'),
('5', '1', '0', '=', '5765', '0', '0'),
('6', '2', '0', '=', '5780', '0', '0');

### Structure of table `recurrent_invoices` ###

DROP TABLE IF EXISTS `recurrent_invoices`;

CREATE TABLE `recurrent_invoices` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `order_no` int(11) unsigned NOT NULL,
  `debtor_no` int(11) unsigned DEFAULT NULL,
  `group_no` smallint(6) unsigned DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `monthly` int(11) NOT NULL DEFAULT '0',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `recurrent_invoices` ###


### Structure of table `refs` ###

DROP TABLE IF EXISTS `refs`;

CREATE TABLE `refs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `refs` ###

INSERT INTO `refs` VALUES
('1', '0', '1'),
('1', '1', '1'),
('1', '2', '1'),
('2', '2', '2'),
('3', '2', '3'),
('10', '10', '10'),
('11', '10', '11'),
('12', '10', '12'),
('13', '10', '13'),
('14', '10', '14'),
('15', '10', '15'),
('16', '10', '16'),
('17', '10', '17'),
('18', '10', '18'),
('19', '10', '19'),
('2', '10', '2'),
('20', '10', '20'),
('21', '10', '21'),
('22', '10', '22'),
('23', '10', '23'),
('24', '10', '24'),
('25', '10', '25'),
('26', '10', '26'),
('27', '10', '27'),
('28', '10', '28'),
('29', '10', '29'),
('3', '10', '3'),
('4', '10', '4'),
('5', '10', '5'),
('6', '10', '6'),
('7', '10', '7'),
('8', '10', '8'),
('9', '10', '9'),
('1', '11', '1'),
('2', '11', '2'),
('3', '11', '3'),
('4', '11', '4'),
('5', '11', '5'),
('6', '11', '6'),
('7', '11', '7'),
('1', '12', '1'),
('10', '12', '10'),
('11', '12', '11'),
('12', '12', '12'),
('13', '12', '13'),
('14', '12', '14'),
('15', '12', '15'),
('16', '12', '16'),
('17', '12', '17'),
('18', '12', '18'),
('19', '12', '19'),
('2', '12', '2'),
('20', '12', '20'),
('21', '12', '21'),
('22', '12', '22'),
('23', '12', '23'),
('24', '12', '24'),
('25', '12', '25'),
('26', '12', '26'),
('27', '12', '27'),
('3', '12', '3'),
('4', '12', '4'),
('5', '12', '5'),
('6', '12', '6'),
('7', '12', '7'),
('8', '12', '8'),
('9', '12', '9'),
('2', '13', '1'),
('23', '13', '10'),
('28', '13', '11'),
('29', '13', '12'),
('30', '13', '13'),
('32', '13', '14'),
('33', '13', '15'),
('34', '13', '16'),
('35', '13', '17'),
('36', '13', '18'),
('4', '13', '2'),
('6', '13', '3'),
('10', '13', '4'),
('11', '13', '5'),
('17', '13', '6'),
('18', '13', '7'),
('20', '13', '8'),
('21', '13', '9'),
('1', '13', 'auto'),
('3', '13', 'auto'),
('5', '13', 'auto'),
('7', '13', 'auto'),
('8', '13', 'auto'),
('9', '13', 'auto'),
('12', '13', 'auto'),
('13', '13', 'auto'),
('14', '13', 'auto'),
('15', '13', 'auto'),
('16', '13', 'auto'),
('19', '13', 'auto'),
('22', '13', 'auto'),
('24', '13', 'auto'),
('25', '13', 'auto'),
('26', '13', 'auto'),
('27', '13', 'auto'),
('31', '13', 'auto'),
('1', '18', '1'),
('19', '18', '10'),
('3', '18', '2'),
('5', '18', '3'),
('7', '18', '4'),
('8', '18', '5'),
('10', '18', '6'),
('14', '18', '7'),
('15', '18', '8'),
('17', '18', '9'),
('2', '18', 'auto'),
('4', '18', 'auto'),
('6', '18', 'auto'),
('9', '18', 'auto'),
('11', '18', 'auto'),
('12', '18', 'auto'),
('13', '18', 'auto'),
('16', '18', 'auto'),
('18', '18', 'auto'),
('20', '18', 'auto'),
('1', '20', '1'),
('10', '20', '10'),
('11', '20', '11'),
('12', '20', '12'),
('14', '20', '13'),
('13', '20', '132'),
('15', '20', '14'),
('16', '20', '15'),
('2', '20', '2'),
('3', '20', '3'),
('4', '20', '4'),
('5', '20', '5'),
('6', '20', '6'),
('7', '20', '7'),
('8', '20', '8'),
('9', '20', '9'),
('1', '22', '1'),
('2', '22', '2'),
('3', '22', '3'),
('4', '22', '4'),
('5', '22', '42'),
('6', '22', '5'),
('1', '25', '1'),
('19', '25', '10'),
('3', '25', '2'),
('5', '25', '3'),
('7', '25', '4'),
('8', '25', '5'),
('10', '25', '6'),
('14', '25', '7'),
('15', '25', '8'),
('17', '25', '9'),
('2', '25', 'auto'),
('4', '25', 'auto'),
('6', '25', 'auto'),
('9', '25', 'auto'),
('11', '25', 'auto'),
('12', '25', 'auto'),
('13', '25', 'auto'),
('16', '25', 'auto'),
('18', '25', 'auto'),
('20', '25', 'auto'),
('1', '26', '1'),
('2', '26', '2'),
('3', '26', '3'),
('4', '26', '4'),
('2', '30', '1'),
('30', '30', '10'),
('31', '30', '11'),
('33', '30', '12'),
('35', '30', '13'),
('36', '30', '14'),
('37', '30', '15'),
('38', '30', '16'),
('4', '30', '2'),
('6', '30', '3'),
('12', '30', '4'),
('18', '30', '5'),
('22', '30', '7'),
('23', '30', '8'),
('25', '30', '9'),
('1', '30', 'auto'),
('3', '30', 'auto'),
('5', '30', 'auto'),
('7', '30', 'auto'),
('8', '30', 'auto'),
('9', '30', 'auto'),
('10', '30', 'auto'),
('11', '30', 'auto'),
('13', '30', 'auto'),
('14', '30', 'auto'),
('15', '30', 'auto'),
('16', '30', 'auto'),
('17', '30', 'auto'),
('19', '30', 'auto'),
('20', '30', 'auto'),
('24', '30', 'auto'),
('26', '30', 'auto'),
('27', '30', 'auto'),
('28', '30', 'auto'),
('29', '30', 'auto'),
('32', '30', 'auto'),
('34', '30', 'auto'),
('1', '32', '1'),
('2', '32', '2'),
('3', '32', '3'),
('4', '32', '4');

### Structure of table `sales_order_details` ###

DROP TABLE IF EXISTS `sales_order_details`;

CREATE TABLE `sales_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `stk_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `qty_sent` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sorder` (`trans_type`,`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 ;

### Data of table `sales_order_details` ###

INSERT INTO `sales_order_details` VALUES
('1', '1', '30', 'kabel', 'kabel', '1', '0', '1', '0'),
('2', '2', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('3', '2', '30', 'speaker', 'speaker', '100', '120000', '100', '0'),
('4', '3', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('5', '4', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('6', '5', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('7', '1', '32', 'decolgen', 'decolgen', '0', '3600', '10', '0'),
('8', '6', '30', 'decolgen', 'decolgen', '10', '3600', '10', '0'),
('9', '7', '30', 'kabel', 'kabel', '35', '120000', '35', '0'),
('10', '8', '30', 'kabel', 'kabel', '35', '120000', '35', '0'),
('11', '9', '30', 'kabel', 'kabel', '34', '120000', '34', '0'),
('12', '10', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('13', '11', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('14', '12', '30', 'kabel', 'kabel', '30', '120000', '30', '0'),
('15', '13', '30', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('16', '13', '30', 'kabel', 'kabel', '20', '120000', '20', '0'),
('17', '14', '30', 'kabel', 'kabel', '10', '120000', '10', '0'),
('18', '14', '30', 'speaker', 'speaker', '1', '120000', '1', '0'),
('19', '15', '30', 'kabel', 'kabel', '100', '120000', '100', '0'),
('20', '16', '30', 'kabel', 'kabel', '5', '120000', '5', '0'),
('21', '17', '30', 'kabel', 'kabel', '50', '120000', '50', '0'),
('22', '2', '32', 'kabel', 'kabel', '0', '120000', '5', '0'),
('23', '18', '30', 'kabel', 'kabel', '5', '120000', '5', '0'),
('24', '19', '30', 'kabel', 'kabel', '3', '120000', '3', '0'),
('25', '20', '30', 'radiorakitan', 'radio rakitan', '5', '626400', '5', '0'),
('27', '22', '30', 'kabel', 'kabel', '40', '120000', '40', '0'),
('28', '3', '32', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('29', '23', '30', 'decolgen', 'decolgen', '200', '3600', '200', '0'),
('30', '24', '30', 'kabel', 'kabel', '50', '120000', '50', '0'),
('31', '4', '32', 'roti', 'roti coklat', '0', '45450', '10', '0'),
('32', '25', '30', 'roti', 'roti coklat', '10', '45450', '10', '0'),
('33', '26', '30', 'tepung', 'tepung', '20', '4500', '20', '0'),
('34', '26', '30', 'coklat', 'coklat', '1', '30000', '1', '0'),
('35', '27', '30', 'roti', 'roti coklat', '5', '45450', '5', '0'),
('36', '28', '30', 'tepung', 'tepung', '1', '4500', '1', '0'),
('37', '29', '30', 'kabel', 'kabel', '3', '120000', '3', '0'),
('38', '30', '30', 'tepung', 'tepung', '3', '3600', '3', '0'),
('39', '31', '30', 'kabel', 'kabel', '1', '120000', '1', '0'),
('40', '32', '30', 'kabel', 'kabel', '1', '150000', '1', '0'),
('41', '33', '30', 'coklat', 'coklat', '10', '24000', '10', '0'),
('42', '34', '30', 'coklat', 'coklat', '1', '30000', '1', '0'),
('43', '34', '30', 'gula', 'gula', '10', '6251', '10', '0'),
('45', '35', '30', 'aerocomac3000', 'aerocom tipe 3000', '1', '150000', '1', '0'),
('46', '36', '30', 'aerocomac3000', 'aerocom tipe 3000', '2', '150000', '2', '0'),
('47', '37', '30', 'laptop', 'laptop', '1', '5875000', '1', '0'),
('48', '38', '30', 'aerocomac3000', 'aerocom tipe 3000', '0', '150000', '5', '0');

### Structure of table `sales_orders` ###

DROP TABLE IF EXISTS `sales_orders`;

CREATE TABLE `sales_orders` (
  `order_no` int(11) NOT NULL,
  `trans_type` smallint(6) NOT NULL DEFAULT '30',
  `version` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `branch_code` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  `customer_ref` tinytext NOT NULL,
  `comments` tinytext,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int(11) NOT NULL DEFAULT '0',
  `ship_via` int(11) NOT NULL DEFAULT '0',
  `delivery_address` tinytext NOT NULL,
  `contact_phone` varchar(30) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `deliver_to` tinytext NOT NULL,
  `freight_cost` double NOT NULL DEFAULT '0',
  `from_stk_loc` varchar(5) NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int(11) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`trans_type`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `sales_orders` ###

INSERT INTO `sales_orders` VALUES
('1', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-11-30', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-11-30', '4', '0'),
('2', '30', '1', '0', '1', '1', '1', '', NULL, '2012-12-03', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-04', '4', '12120000'),
('3', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-12-03', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-03', '4', '120000'),
('4', '30', '1', '0', '2', '2', '2', '', NULL, '2012-12-04', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '1200000'),
('5', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-04', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-04', '4', '1200000'),
('6', '30', '1', '0', '2', '2', '3', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '36000'),
('7', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4200000'),
('8', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4200000'),
('9', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '4080000'),
('10', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '3600000'),
('11', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '4', '3600000'),
('12', '30', '1', '0', '2', '2', '4', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-06', '3', '3600000'),
('13', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '3120000'),
('14', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-17', '1', '1320000'),
('15', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-17', '1', '12000000'),
('16', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '600000'),
('17', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-17', '3', '6000000'),
('18', '30', '1', '0', '2', '2', '5', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-08', '3', '600000'),
('19', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-08', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-08', '4', '360000'),
('20', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-11', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-11', '4', '3132000'),
('22', '30', '1', '0', '2', '2', '7', '', NULL, '2012-12-11', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-12', '3', '4800000'),
('23', '30', '1', '1', '2', '2', '8', '', 'Sales Quotation # 3', '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-15', '2', '720000'),
('24', '30', '1', '0', '2', '2', 'auto', '', NULL, '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2013-01-30', '2', '6000000'),
('25', '30', '1', '0', '3', '3', '9', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-18', '3', '477225'),
('26', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-15', '1', '126000'),
('27', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-27', '3', '238613'),
('28', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-27', '3', '4725'),
('29', '30', '1', '0', '1', '1', 'auto', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-17', '4', '360000'),
('30', '30', '1', '0', '1', '1', '10', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'DEF', '2012-12-18', '4', '10800'),
('31', '30', '1', '0', '1', '1', '11', '', NULL, '2012-12-17', '1', '1', '', NULL, NULL, 'pelanggan1', '0', 'SYG', '2012-12-18', '4', '120000'),
('32', '30', '1', '0', '3', '3', 'auto', '', NULL, '2012-12-18', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-28', '3', '157500'),
('33', '30', '1', '0', '3', '3', '12', '', NULL, '2012-12-31', '1', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-01', '3', '240000'),
('34', '30', '1', '0', '3', '3', 'auto', '', NULL, '2013-01-08', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-18', '3', '97136'),
('35', '30', '2', '0', '4', '6', '13', '', NULL, '2013-01-09', '3', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-10', '3', '157500'),
('36', '30', '1', '0', '4', '6', '14', '', NULL, '2013-01-13', '3', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-14', '3', '315000'),
('37', '30', '1', '0', '4', '6', '15', '', NULL, '2013-01-13', '5', '1', 'klaten', '1234', NULL, 'rsud-klaten', '0', 'DEF', '2013-01-14', '3', '6168750'),
('38', '30', '0', '0', '3', '3', '16', '', NULL, '2013-01-23', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2013-01-24', '3', '787500'),
('1', '32', '0', '0', '2', '2', '1', '', NULL, '2012-12-05', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-05', '4', '36000'),
('2', '32', '0', '0', '2', '2', '2', '', NULL, '2012-12-07', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-07', '4', '600000'),
('3', '32', '1', '0', '2', '2', '3', '', NULL, '2012-12-14', '1', '1', 'alamat 1', '1234', NULL, 'c1', '0', 'DEF', '2012-12-15', '2', '720000'),
('4', '32', '0', '0', '3', '3', '4', '', NULL, '2012-12-17', '3', '1', 'jl. atmodirono 123', '1234', NULL, 'atmo', '0', 'DEF', '2012-12-17', '3', '477225');

### Structure of table `sales_pos` ###

DROP TABLE IF EXISTS `sales_pos`;

CREATE TABLE `sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `sales_pos` ###

INSERT INTO `sales_pos` VALUES
('1', 'Default', '1', '1', 'DEF', '2', '0'),
('2', 'POS-1', '1', '1', 'DEF', '2', '0'),
('3', 'POS-2', '1', '1', 'DEF', '2', '0');

### Structure of table `sales_types` ###

DROP TABLE IF EXISTS `sales_types`;

CREATE TABLE `sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

### Data of table `sales_types` ###

INSERT INTO `sales_types` VALUES
('1', 'Retail', '1', '1.2', '0'),
('2', 'Wholesale', '0', '1.1', '0'),
('3', 'jualmahal', '0', '1.5', '0'),
('4', 'untung_besar', '0', '2.5', '0'),
('5', 'untung_besar_banget', '0', '5', '0');

### Structure of table `salesman` ###

DROP TABLE IF EXISTS `salesman`;

CREATE TABLE `salesman` (
  `salesman_code` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` char(60) NOT NULL DEFAULT '',
  `salesman_phone` char(30) NOT NULL DEFAULT '',
  `salesman_fax` char(30) NOT NULL DEFAULT '',
  `salesman_email` varchar(100) NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT '0',
  `break_pt` double NOT NULL DEFAULT '0',
  `provision2` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesman_code`),
  UNIQUE KEY `salesman_name` (`salesman_name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `salesman` ###

INSERT INTO `salesman` VALUES
('1', 'Sales Person', '', '', '', '5', '1000', '4', '0'),
('2', 'jontor', '12345', '12345', 'jontor@yahoo.com', '3', '1', '4', '0'),
('3', 'wong kudus', '12345', '123414', 'wong@kudus.com', '10', '2000000', '15', '0');

### Structure of table `security_roles` ###

DROP TABLE IF EXISTS `security_roles`;

CREATE TABLE `security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `sections` text,
  `areas` text,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `security_roles` ###

INSERT INTO `security_roles` VALUES
('1', 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132', '0'),
('2', 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;10496;10752;11008;13056;13312;15616;15872;16128;2319360;2450432;2515968;2581504;2778112;2909184;2974720;3040256', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15629;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;15884;16129;16130;16131;16132;2319460;2319461;2319462;2450532;2516068;2581604;2581605;2778212;2909284;2909285;2974820;3040356', '0'),
('3', 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873', '0'),
('4', 'Stock Manager', 'Stock Manager', '2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132', '0'),
('5', 'Production Manager', 'Production Manager', '512;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('6', 'Purchase Officer', 'Purchase Officer', '512;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('7', 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132', '0'),
('8', 'AP Officer', 'AP Officer', '512;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132', '0'),
('9', 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132', '0'),
('10', 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132', '0');

### Structure of table `shippers` ###

DROP TABLE IF EXISTS `shippers`;

CREATE TABLE `shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `phone2` varchar(30) NOT NULL DEFAULT '',
  `contact` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `shippers` ###

INSERT INTO `shippers` VALUES
('1', 'Default', '', '', '', '', '0');

### Structure of table `sql_trail` ###

DROP TABLE IF EXISTS `sql_trail`;

CREATE TABLE `sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `sql_trail` ###


### Structure of table `stock_category` ###

DROP TABLE IF EXISTS `stock_category`;

CREATE TABLE `stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_assembly_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

### Data of table `stock_category` ###

INSERT INTO `stock_category` VALUES
('1', 'Components', '1', 'each', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('2', 'Charges', '1', 'each', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('3', 'Systems', '1', 'each', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('4', 'Services', '1', 'hrs', 'D', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('5', 'obatflu', '1', 'ea.', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('6', 'obatsakitkepala', '1', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0'),
('7', 'generik', '1', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0');

### Structure of table `stock_master` ###

DROP TABLE IF EXISTS `stock_master`;

CREATE TABLE `stock_master` (
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `long_description` tinytext NOT NULL,
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mb_flag` char(1) NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) NOT NULL DEFAULT '',
  `cogs_account` varchar(15) NOT NULL DEFAULT '',
  `inventory_account` varchar(15) NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) NOT NULL DEFAULT '',
  `assembly_account` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `actual_cost` double NOT NULL DEFAULT '0',
  `last_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `stock_master` ###

INSERT INTO `stock_master` VALUES
('aerocomac3000', '1', '1', 'aerocom tipe 3000', 'aerocom', 'unit', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '100000', '0', '0', '0', '0', '0'),
('amx500', '7', '1', 'amoxicilling 500mg', 'antibiotik serbaguna', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '10000', '0', '0', '0', '0', '0'),
('coklat', '1', '1', 'coklat', 'bubuk coklat', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '20000', '0', '0', '0', '0', '0'),
('decolgen', '5', '1', 'decolgen', 'decolgen obat flu', 'ea.', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '3000', '0', '0', '0', '0', '0'),
('elbow', '1', '1', 'elbow', '', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '50000', '0', '0', '0', '0', '0'),
('ghostdetector', '1', '1', 'ghost detector', 'ghost detector', 'pcs', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '10000', '15000', '5000', '0', '0', '0'),
('gula', '1', '1', 'gula', 'gula pasir manis', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '4166.6666666667', '0', '0', '0', '0', '0'),
('kabel', '1', '1', 'kabel', 'kabel tembaga', 'roll', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '101024.59016393', '0', '0', '0', '0', '0'),
('keyboard', '1', '1', 'keyboard', 'keyboard', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '100000', '0', '0', '0', '0', '0'),
('laptop', '1', '1', 'laptop', 'laptop spesial candrasul', 'pcs', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1100000', '66666.666666667', '8333.3333333333', '0', '0', '0'),
('lcd', '1', '1', 'lcd', 'lcd laptop', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1000000', '0', '0', '0', '0', '0'),
('panadol', '6', '1', 'panadol obat sakit kepala', 'MD: 123\r\n', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '2000', '0', '0', '0', '0', '0'),
('pipa', '1', '1', 'pipa', 'pipa', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '200000', '0', '0', '0', '0', '0'),
('proyek_rsud_klaten', '1', '1', 'proyek_rsud_klaten', 'proyek rsud klaten', 'unit', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '9500000', '0', '100000', '0', '0', '0'),
('radiorakitan', '1', '1', 'radio rakitan', 'radio rakitan pabrik sendiri', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '510000', '10000', '2000', '0', '0', '0'),
('roti', '1', '1', 'roti coklat', 'roti coklat spesial', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '28000', '2000', '300', '0', '0', '1'),
('speaker', '1', '1', 'speaker', 'speaker aktif', 'pcs', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '109174.31192661', '0', '0', '0', '0', '0'),
('station', '1', '1', 'station', '', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '700000', '0', '0', '0', '0', '0'),
('tepung', '1', '1', 'tepung', 'tepung maizena', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '3000', '0', '0', '0', '0', '0'),
('transistor', '1', '1', 'transistor', 'transistor', 'kg', 'B', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '1500', '0', '0', '0', '0', '0'),
('tuna', '1', '1', 'ikan tuna', 'ikan tuna', 'kg', 'M', '4010', '5010', '1510', '5040', '1530', '0', '0', '0', '0', '30000', '0', '0', '0', '0', '0');

### Structure of table `stock_moves` ###

DROP TABLE IF EXISTS `stock_moves`;

CREATE TABLE `stock_moves` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_no` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `person_id` int(11) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `reference` char(40) NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`trans_id`),
  KEY `type` (`type`,`trans_no`),
  KEY `Move` (`stock_id`,`loc_code`,`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 ;

### Data of table `stock_moves` ###

INSERT INTO `stock_moves` VALUES
('1', '1', 'kabel', '25', 'DEF', '2012-11-30', '1', '100000', '', '100', '0', '100000', '1'),
('2', '1', 'speaker', '25', 'DEF', '2012-11-30', '1', '100000', '', '100', '0', '100000', '1'),
('3', '1', 'kabel', '13', 'DEF', '2012-11-30', '0', '0', 'auto', '-1', '0', '100000', '1'),
('4', '2', 'kabel', '25', 'DEF', '2012-12-01', '1', '100000', '', '200', '0', '100000', '1'),
('5', '2', 'kabel', '13', 'DEF', '2012-12-03', '0', '120000', '1', '-1', '0', '100000', '1'),
('6', '2', 'speaker', '13', 'DEF', '2012-12-03', '0', '120000', '1', '-100', '0', '100000', '1'),
('7', '1', 'kabel', '11', 'DEF', '2012-12-03', '0', '120000', 'Return', '2', '0', '100000', '0'),
('8', '2', 'speaker', '11', 'DEF', '2012-12-03', '0', '120000', 'Return', '100', '0', '100000', '0'),
('9', '3', 'ghostdetector', '11', 'DEF', '2012-12-03', '0', '36000', 'Return', '100', '0', '30000', '0'),
('10', '3', 'kabel', '13', 'DEF', '2012-12-03', '0', '120000', 'auto', '-1', '0', '100000', '1'),
('11', '4', 'kabel', '13', 'DEF', '2012-12-04', '0', '120000', '2', '-10', '0', '100000', '1'),
('12', '4', 'kabel', '11', 'DEF', '2012-12-04', '0', '120000', 'Return', '20', '0', '100000', '0'),
('13', '5', 'kabel', '13', 'DEF', '2012-12-04', '0', '120000', 'auto', '-10', '0', '100000', '1'),
('14', '5', 'kabel', '11', 'DEF', '2012-12-04', '0', '120000', 'Return Ex Inv: 4', '5', '0', '100000', '0'),
('15', '3', 'panadol', '25', 'DEF', '2012-12-05', '2', '2000', '', '100', '0', '2000', '1'),
('16', '3', 'decolgen', '25', 'DEF', '2012-12-05', '2', '3000', '', '100', '0', '3000', '1'),
('17', '6', 'decolgen', '13', 'DEF', '2012-12-05', '0', '3600', '3', '-10', '0', '3000', '1'),
('18', '7', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-35', '0', '100000', '1'),
('19', '8', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-35', '0', '100000', '1'),
('20', '9', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', 'auto', '-34', '0', '100000', '1'),
('21', '10', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', '4', '-30', '0', '100000', '1'),
('22', '11', 'kabel', '13', 'DEF', '2012-12-05', '0', '120000', '5', '-30', '0', '100000', '1'),
('23', '4', 'decolgen', '25', 'DEF', '2012-12-07', '2', '3000', '', '1000', '0', '3000', '1'),
('24', '12', 'decolgen', '13', 'DEF', '2012-12-07', '0', '3600', 'auto', '-200', '0', '3000', '1'),
('25', '12', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-20', '0', '100000', '1'),
('26', '13', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-10', '0', '100000', '1'),
('27', '13', 'speaker', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-1', '0', '100000', '1'),
('28', '14', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-100', '0', '100000', '1'),
('29', '5', 'kabel', '25', 'DEF', '2012-12-07', '1', '100000', '', '200', '0', '100000', '1'),
('30', '15', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-5', '0', '100000', '1'),
('31', '16', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', 'auto', '-50', '0', '100000', '1'),
('32', '17', 'kabel', '13', 'DEF', '2012-12-07', '0', '120000', '6', '-5', '0', '100000', '1'),
('33', '6', 'decolgen', '25', 'DEF', '2012-12-07', '2', '3000', '', '100', '0', '3000', '1'),
('34', '18', 'kabel', '13', 'DEF', '2012-12-08', '0', '120000', '7', '-3', '0', '100000', '1'),
('35', '7', 'transistor', '25', 'DEF', '2012-12-11', '1', '1000', '', '1000', '0', '1000', '1'),
('36', '8', 'kabel', '25', 'DEF', '2012-12-11', '1', '100000', '', '10', '0', '100000', '1'),
('37', '1', 'kabel', '26', 'DEF', '2012-12-11', '0', '100000', '1', '-50', '0', '100000', '1'),
('38', '1', 'transistor', '26', 'DEF', '2012-12-11', '0', '1000', '1', '-100', '0', '1000', '1'),
('39', '1', 'radiorakitan', '26', 'DEF', '2012-12-11', '0', '0', '1', '10', '0', '522000', '1'),
('40', '19', 'radiorakitan', '13', 'DEF', '2012-12-11', '0', '626400', 'auto', '-5', '0', '522000', '1'),
('41', '20', 'kabel', '13', 'DEF', '2012-12-11', '0', '120000', '8', '-40', '0', '100000', '1'),
('42', '9', 'kabel', '25', 'DEF', '2012-12-11', '1', '100000', '', '100', '0', '100000', '1'),
('43', '21', 'decolgen', '13', 'DEF', '2012-12-14', '0', '3600', '9', '-200', '0', '3000', '1'),
('44', '22', 'kabel', '13', 'DEF', '2012-12-14', '0', '120000', 'auto', '-50', '0', '100000', '1'),
('45', '6', 'decolgen', '11', 'DEF', '2012-12-14', '0', '3600', 'Return', '5', '0', '3000', '0'),
('46', '7', 'kabel', '11', 'DEF', '2012-12-14', '0', '120000', 'Return', '5', '0', '100000', '0'),
('47', '10', 'tepung', '25', 'DEF', '2012-12-17', '1', '3000', '', '100', '0', '3000', '1'),
('48', '10', 'gula', '25', 'DEF', '2012-12-17', '1', '5000', '', '100', '0', '5000', '1'),
('49', '10', 'coklat', '25', 'DEF', '2012-12-17', '1', '20000', '', '100', '0', '20000', '1'),
('50', '2', 'tepung', '26', 'DEF', '2012-12-17', '0', '3000', '2', '-50', '0', '3000', '1'),
('51', '2', 'coklat', '26', 'DEF', '2012-12-17', '0', '20000', '2', '-50', '0', '20000', '1'),
('52', '2', 'gula', '26', 'DEF', '2012-12-17', '0', '5000', '2', '-50', '0', '5000', '1'),
('53', '2', 'roti', '26', 'DEF', '2012-12-17', '0', '0', '2', '50', '0', '30300', '1'),
('54', '23', 'roti', '13', 'DEF', '2012-12-17', '0', '45450', '10', '-10', '0', '30300', '1'),
('55', '24', 'tepung', '13', 'DEF', '2012-12-17', '0', '4500', 'auto', '-20', '0', '3000', '1'),
('56', '24', 'coklat', '13', 'DEF', '2012-12-17', '0', '30000', 'auto', '-1', '0', '20000', '1'),
('57', '25', 'roti', '13', 'DEF', '2012-12-17', '0', '45450', 'auto', '-5', '0', '30300', '1'),
('58', '26', 'tepung', '13', 'DEF', '2012-12-17', '0', '4500', 'auto', '-1', '0', '3000', '1'),
('59', '27', 'kabel', '13', 'DEF', '2012-12-17', '0', '120000', 'auto', '-3', '0', '100000', '1'),
('60', '1', 'roti', '16', 'DEF', '2012-12-17', '1', '0', '1', '-5', '0', '0', '1'),
('61', '1', 'roti', '16', 'SYG', '2012-12-17', '1', '0', '1', '5', '0', '0', '1'),
('62', '1', 'kabel', '16', 'DEF', '2012-12-17', '1', '0', '1', '-5', '0', '0', '1'),
('63', '1', 'kabel', '16', 'SYG', '2012-12-17', '1', '0', '1', '5', '0', '0', '1'),
('64', '1', 'tepung', '16', 'DEF', '2012-12-17', '1', '0', '1', '-10', '0', '0', '1'),
('65', '1', 'tepung', '16', 'SYG', '2012-12-17', '1', '0', '1', '10', '0', '0', '1'),
('66', '28', 'kabel', '13', 'SYG', '2012-12-17', '0', '120000', '11', '-1', '0', '100000', '1'),
('67', '29', 'kabel', '13', 'DEF', '2012-12-18', '0', '150000', '12', '-1', '0', '100000', '1'),
('68', '30', 'tepung', '13', 'DEF', '2012-12-18', '0', '3600', '13', '-3', '0', '3000', '1'),
('69', '11', 'gula', '25', 'DEF', '2012-12-21', '2', '0', '', '10', '0', '4166.6666666667', '1'),
('70', '12', 'speaker', '25', 'DEF', '2012-12-21', '2', '200000', '', '10', '0', '109174.31192661', '1'),
('71', '13', 'transistor', '25', 'DEF', '2012-12-21', '2', '2000', '', '900', '0', '1500', '1'),
('72', '14', 'kabel', '25', 'DEF', '2012-12-21', '1', '125000', '', '5', '0', '101024.59016393', '1'),
('73', '31', 'coklat', '13', 'DEF', '2013-01-08', '0', '30000', 'auto', '-1', '0', '20000', '1'),
('74', '31', 'gula', '13', 'DEF', '2013-01-08', '0', '6251', 'auto', '-10', '0', '4166.6666666667', '1'),
('75', '15', 'aerocomac3000', '25', 'KUDUS', '2013-01-09', '3', '100000', '', '5', '0', '100000', '1'),
('76', '32', 'coklat', '13', 'DEF', '2013-01-09', '0', '24000', '14', '-10', '0', '20000', '1'),
('77', '33', 'kabel', '13', 'DEF', '2013-01-09', '0', '120000', '15', '-30', '0', '101024.59016393', '1'),
('78', '16', 'elbow', '25', 'DEF', '2013-01-09', '3', '50000', '', '10', '0', '50000', '1'),
('79', '16', 'pipa', '25', 'DEF', '2013-01-09', '3', '200000', '', '10', '0', '200000', '1'),
('80', '16', 'station', '25', 'DEF', '2013-01-09', '3', '700000', '', '15', '0', '700000', '1'),
('81', '3', 'elbow', '26', 'DEF', '2013-01-09', '0', '50000', '3', '-10', '0', '50000', '1'),
('82', '3', 'station', '26', 'DEF', '2013-01-09', '0', '700000', '3', '-10', '0', '700000', '1'),
('83', '3', 'pipa', '26', 'DEF', '2013-01-09', '0', '200000', '3', '-10', '0', '200000', '1'),
('84', '3', 'proyek_rsud_klaten', '26', 'KUDUS', '2013-01-09', '0', '0', '3', '1', '0', '9600000', '1'),
('85', '34', 'aerocomac3000', '13', 'KUDUS', '2013-01-13', '0', '150000', '16', '-2', '0', '100000', '1'),
('86', '17', 'lcd', '25', 'KUDUS', '2013-01-13', '1', '1000000', '', '20', '0', '1000000', '1'),
('87', '17', 'keyboard', '25', 'KUDUS', '2013-01-13', '1', '100000', '', '20', '0', '100000', '1'),
('88', '2', 'lcd', '16', 'KUDUS', '2013-01-13', '1', '0', '2', '-5', '0', '0', '1'),
('89', '2', 'lcd', '16', 'DEF', '2013-01-13', '1', '0', '2', '5', '0', '0', '1'),
('90', '2', 'keyboard', '16', 'KUDUS', '2013-01-13', '1', '0', '2', '-5', '0', '0', '1'),
('91', '2', 'keyboard', '16', 'DEF', '2013-01-13', '1', '0', '2', '5', '0', '0', '1'),
('92', '4', 'lcd', '26', 'DEF', '2013-01-13', '0', '1000000', '4', '-3', '0', '1000000', '1'),
('93', '4', 'keyboard', '26', 'DEF', '2013-01-13', '0', '100000', '4', '-3', '0', '100000', '1'),
('94', '4', 'laptop', '26', 'DEF', '2013-01-13', '0', '0', '4', '3', '0', '1175000', '1'),
('95', '35', 'laptop', '13', 'DEF', '2013-01-13', '0', '5875000', '17', '-1', '0', '1175000.0000000002', '1'),
('96', '18', 'tuna', '25', 'DEF', '2013-01-14', '2', '30000', '', '25', '0', '30000', '1'),
('97', '36', 'aerocomac3000', '13', 'KUDUS', '2013-01-23', '0', '150000', '18', '-1', '0', '100000', '1'),
('98', '19', 'amx500', '25', 'DEF', '2013-01-29', '4', '10000', '', '100', '0', '10000', '1'),
('99', '20', 'amx500', '25', 'DEF', '2013-01-29', '4', '10000', '', '100', '0', '10000', '1');

### Structure of table `supp_allocations` ###

DROP TABLE IF EXISTS `supp_allocations`;

CREATE TABLE `supp_allocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` double unsigned DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int(11) DEFAULT NULL,
  `trans_type_from` int(11) DEFAULT NULL,
  `trans_no_to` int(11) DEFAULT NULL,
  `trans_type_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `From` (`trans_type_from`,`trans_no_from`),
  KEY `To` (`trans_type_to`,`trans_no_to`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ;

### Data of table `supp_allocations` ###

INSERT INTO `supp_allocations` VALUES
('2', '11000000', '2012-12-03', '2', '22', '1', '20'),
('3', '21000000', '2012-12-03', '2', '22', '2', '20'),
('4', '10000000', '2012-11-30', '1', '22', '1', '20'),
('5', '525000', '2012-12-12', '4', '22', '3', '20'),
('6', '3150000', '2012-12-12', '4', '22', '4', '20'),
('7', '315000', '2012-12-12', '4', '22', '6', '20'),
('8', '525000', '2012-12-12', '5', '22', '3', '20'),
('9', '3150000', '2012-12-12', '5', '22', '4', '20'),
('10', '315000', '2012-12-12', '5', '22', '6', '20'),
('11', '21000000', '2012-12-12', '6', '22', '5', '20'),
('12', '2100000', '2012-12-12', '6', '22', '7', '20'),
('13', '10500000', '2012-12-12', '6', '22', '8', '20');

### Structure of table `supp_invoice_items` ###

DROP TABLE IF EXISTS `supp_invoice_items`;

CREATE TABLE `supp_invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_trans_no` int(11) DEFAULT NULL,
  `supp_trans_type` int(11) DEFAULT NULL,
  `gl_code` varchar(15) NOT NULL DEFAULT '',
  `grn_item_id` int(11) DEFAULT NULL,
  `po_detail_item_id` int(11) DEFAULT NULL,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `quantity` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `memo_` tinytext,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ;

### Data of table `supp_invoice_items` ###

INSERT INTO `supp_invoice_items` VALUES
('1', '1', '20', '0', '1', '1', 'kabel', 'kabel', '100', '100000', '5000', NULL),
('2', '1', '20', '0', '2', '2', 'speaker', 'speaker', '100', '100000', '5000', NULL),
('3', '2', '20', '0', '3', '3', 'kabel', 'kabel', '200', '100000', '5000', NULL),
('4', '3', '20', '0', '4', '4', 'panadol', 'panadol obat sakit kepala', '100', '2000', '100', NULL),
('5', '3', '20', '0', '5', '5', 'decolgen', 'decolgen', '100', '3000', '150', NULL),
('6', '4', '20', '0', '6', '6', 'decolgen', 'decolgen', '1000', '3000', '150', NULL),
('7', '5', '20', '0', '7', '7', 'kabel', 'kabel', '200', '100000', '5000', NULL),
('8', '6', '20', '0', '8', '8', 'decolgen', 'decolgen', '100', '3000', '150', NULL),
('9', '7', '20', '0', '9', '9', 'transistor', 'transistor', '1000', '1000', '50', NULL),
('10', '7', '20', '0', '10', '10', 'kabel', 'kabel', '10', '100000', '5000', NULL),
('11', '8', '20', '0', '11', '11', 'kabel', 'kabel', '100', '100000', '5000', NULL),
('12', '9', '20', '0', '15', '15', 'gula', 'gula', '10', '0', '0', NULL),
('13', '10', '20', '0', '16', '16', 'speaker', 'speaker', '10', '200000', '10000', NULL),
('14', '11', '20', '0', '17', '17', 'transistor', 'transistor', '900', '2000', '100', NULL),
('15', '12', '20', '0', '19', '19', 'aerocomac3000', 'aerocom tipe 3000', '5', '100000', '5000', NULL),
('16', '13', '20', '0', '20', '20', 'elbow', 'elbow', '10', '50000', '2500', NULL),
('17', '13', '20', '0', '21', '21', 'pipa', 'pipa', '10', '200000', '10000', NULL),
('18', '13', '20', '0', '22', '22', 'station', 'station', '15', '700000', '35000', NULL),
('19', '14', '20', '0', '25', '25', 'tuna', 'ikan tuna', '25', '30000', '1500', NULL),
('20', '15', '20', '5010', '0', '0', '', NULL, '0', '0', '0', NULL),
('21', '15', '20', '0', '26', '26', 'amx500', 'amoxicilling 500mg', '100', '10000', '500', NULL),
('22', '16', '20', '0', '27', '27', 'amx500', 'amoxicilling 500mg', '100', '10000', '500', NULL);

### Structure of table `supp_trans` ###

DROP TABLE IF EXISTS `supp_trans`;

CREATE TABLE `supp_trans` (
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `supplier_id` int(11) unsigned DEFAULT NULL,
  `reference` tinytext NOT NULL,
  `supp_reference` varchar(60) NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`,`trans_no`),
  KEY `supplier_id` (`supplier_id`),
  KEY `SupplierID_2` (`supplier_id`,`supp_reference`),
  KEY `type` (`type`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `supp_trans` ###

INSERT INTO `supp_trans` VALUES
('1', '20', '1', '1', '123', '2012-11-30', '2012-11-30', '20000000', '0', '1000000', '1', '21000000', '0'),
('2', '20', '1', '2', '12345', '2012-12-01', '2012-12-01', '20000000', '0', '1000000', '1', '21000000', '0'),
('3', '20', '2', '3', '123', '2012-12-05', '2012-12-05', '500000', '0', '25000', '1', '1050000', '0'),
('4', '20', '2', '4', '12345', '2012-12-07', '2012-12-07', '3000000', '0', '150000', '1', '6300000', '0'),
('5', '20', '1', '5', '1241234', '2012-12-07', '2012-12-07', '20000000', '0', '1000000', '1', '21000000', '0'),
('6', '20', '2', '6', '1234', '2012-12-07', '2012-12-07', '300000', '0', '15000', '1', '630000', '0'),
('7', '20', '1', '7', '12345345', '2012-12-11', '2012-12-11', '2000000', '0', '100000', '1', '2100000', '0'),
('8', '20', '1', '8', '123444/1234', '2012-12-11', '2012-12-11', '10000000', '0', '500000', '1', '10500000', '0'),
('9', '20', '2', '9', '12342132', '2012-12-21', '2012-12-21', '0', '0', '0', '1', '0', '0'),
('10', '20', '2', '10', '125250375', '2012-12-21', '2012-12-21', '2000000', '0', '100000', '1', '0', '0'),
('11', '20', '2', '11', '345222', '2012-12-21', '2012-12-21', '1800000', '0', '90000', '1', '0', '0'),
('12', '20', '3', '12', '234', '2013-01-09', '2013-01-19', '500000', '0', '25000', '1', '0', '0'),
('13', '20', '3', '132', '2345', '2013-01-09', '2013-01-19', '13000000', '0', '650000', '1', '0', '0'),
('14', '20', '2', '13', '3211', '2013-01-14', '2013-01-14', '750000', '0', '37500', '1', '0', '0'),
('15', '20', '4', '14', '007', '2013-01-29', '2013-02-08', '1000000', '0', '50000', '1', '0', '0'),
('16', '20', '4', '15', '008', '2013-01-29', '2013-02-08', '1000000', '0', '50000', '1', '0', '0'),
('1', '22', '1', '1', '', '2012-11-30', '2012-11-30', '-10000000', '0', '0', '1', '10000000', '0'),
('2', '22', '1', '2', '', '2012-12-03', '2012-12-03', '-32000000', '0', '0', '1', '32000000', '0'),
('3', '22', '1', '3', '', '2012-12-11', '2012-12-11', '-15000000', '0', '0', '1', '0', '0'),
('4', '22', '2', '4', '', '2012-12-12', '2012-12-12', '-3990000', '0', '0', '1', '3990000', '0'),
('5', '22', '2', '42', '', '2012-12-12', '2012-12-12', '-3990000', '0', '0', '1', '3990000', '0'),
('6', '22', '1', '5', '', '2012-12-12', '2012-12-12', '-33600000', '0', '0', '1', '33600000', '0');

### Structure of table `suppliers` ###

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) NOT NULL DEFAULT '',
  `supp_ref` varchar(30) NOT NULL DEFAULT '',
  `address` tinytext NOT NULL,
  `supp_address` tinytext NOT NULL,
  `gst_no` varchar(25) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `bank_account` varchar(60) NOT NULL DEFAULT '',
  `curr_code` char(3) DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  `dimension_id` int(11) DEFAULT '0',
  `dimension2_id` int(11) DEFAULT '0',
  `tax_group_id` int(11) DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `purchase_account` varchar(15) NOT NULL DEFAULT '',
  `payable_account` varchar(15) NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) NOT NULL DEFAULT '',
  `notes` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `suppliers` ###

INSERT INTO `suppliers` VALUES
('1', 'supplier1', 'supplier1', 'alamat surat', 'alamat fisik', '1234567', '', '12345', 'www.supplier1.com', 'bank_supp_1', 'IDR', '4', '0', '0', '0', '1', '0', '', '2100', '5060', 'catatan umum', '0'),
('2', 'PT. Dan Kos', 'PT DAN KOS', '', '', '1234', '', '12345', 'www.dankos.com', 'BCA', 'IDR', '4', '0', '0', '0', '1', '1000000', '', '2100', '5060', '', '0'),
('3', 'pt. aerocom genco indonesia', 'aerocom', '', '', '23141.231412.312412', '', '', 'www.aerocom.com', '', 'IDR', '3', '0', '0', '0', '1', '0', '', '2100', '5060', '', '0'),
('4', 'aam', 'aam', '', '', '1234123', '', '', '', '', 'IDR', '3', '0', '0', '0', '1', '0', '', '2100', '5060', '', '0');

### Structure of table `sys_prefs` ###

DROP TABLE IF EXISTS `sys_prefs`;

CREATE TABLE `sys_prefs` (
  `name` varchar(35) NOT NULL DEFAULT '',
  `category` varchar(30) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` tinytext,
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `sys_prefs` ###

INSERT INTO `sys_prefs` VALUES
('coy_name', 'setup.company', 'varchar', '60', 'Multisolusi Informatika'),
('gst_no', 'setup.company', 'varchar', '25', '12345'),
('coy_no', 'setup.company', 'varchar', '25', '0123456'),
('tax_prd', 'setup.company', 'int', '11', '1'),
('tax_last', 'setup.company', 'int', '11', '1'),
('postal_address', 'setup.company', 'tinytext', '0', 'Perumahan Klipang Pesona Asri II\r\nBlok A NO.227\r\nKel. Sendang Mulyo Kec. Tembalang\r\nKota Semarang 50272'),
('phone', 'setup.company', 'varchar', '30', '08123456'),
('fax', 'setup.company', 'varchar', '30', '08123456'),
('email', 'setup.company', 'varchar', '100', 'yc2int@yahoo.com'),
('coy_logo', 'setup.company', 'varchar', '100', NULL),
('domicile', 'setup.company', 'varchar', '55', 'Klipang Pesona Asri II Blok A NO.227'),
('curr_default', 'setup.company', 'char', '3', 'IDR'),
('use_dimension', 'setup.company', 'tinyint', '1', '0'),
('f_year', 'setup.company', 'int', '11', '6'),
('no_item_list', 'setup.company', 'tinyint', '1', '1'),
('no_customer_list', 'setup.company', 'tinyint', '1', '1'),
('no_supplier_list', 'setup.company', 'tinyint', '1', '1'),
('base_sales', 'setup.company', 'int', '11', '1'),
('time_zone', 'setup.company', 'tinyint', '1', '0'),
('add_pct', 'setup.company', 'int', '5', '0'),
('round_to', 'setup.company', 'int', '5', '1'),
('login_tout', 'setup.company', 'smallint', '6', '600'),
('past_due_days', 'glsetup.general', 'int', '11', '30'),
('profit_loss_year_act', 'glsetup.general', 'varchar', '15', '9990'),
('retained_earnings_act', 'glsetup.general', 'varchar', '15', '3590'),
('bank_charge_act', 'glsetup.general', 'varchar', '15', '5690'),
('exchange_diff_act', 'glsetup.general', 'varchar', '15', '4450'),
('default_credit_limit', 'glsetup.customer', 'int', '11', '1000'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', '1', '0'),
('legal_text', 'glsetup.customer', 'tinytext', '0', NULL),
('freight_act', 'glsetup.customer', 'varchar', '15', '4430'),
('debtors_act', 'glsetup.sales', 'varchar', '15', '1200'),
('default_sales_act', 'glsetup.sales', 'varchar', '15', '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', '15', '4510'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', '15', '4500'),
('default_delivery_required', 'glsetup.sales', 'smallint', '6', '1'),
('default_dim_required', 'glsetup.dims', 'int', '11', '20'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', '15', '5060'),
('creditors_act', 'glsetup.purchase', 'varchar', '15', '2100'),
('po_over_receive', 'glsetup.purchase', 'int', '11', '10'),
('po_over_charge', 'glsetup.purchase', 'int', '11', '10'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', '1', '0'),
('default_inventory_act', 'glsetup.items', 'varchar', '15', '1510'),
('default_cogs_act', 'glsetup.items', 'varchar', '15', '5010'),
('default_adj_act', 'glsetup.items', 'varchar', '15', '5040'),
('default_inv_sales_act', 'glsetup.items', 'varchar', '15', '4010'),
('default_assembly_act', 'glsetup.items', 'varchar', '15', '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', '11', '20'),
('version_id', 'system', 'varchar', '11', '2.3rc'),
('auto_curr_reval', 'setup.company', 'smallint', '6', '1'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', '15', '1550'),
('paypal_bank_id', 'paypal.setup', 'int', '11', '0'),
('paypal_create_invoices', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_sales_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_sales_tax_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_shipping_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_insurance_act', 'paypal.setup', 'varchar', '15', '0'),
('paypal_withdraw_id', 'paypal.setup', 'int', '11', '0'),
('use_paypal_trn_id', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_sales_type_id', 'paypal.setup', 'int', '11', '0'),
('paypal_add_tax', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_recpt_today', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_tax_group_id', 'paypal.setup', 'int', '11', '0'),
('paypal_tax_type_id', 'paypal.setup', 'int', '11', '0'),
('paypal_item_tax_id', 'paypal.setup', 'int', '11', '0'),
('paypal_tax_included', 'paypal.setup', 'tinyint', '1', '0'),
('paypal_name_col', 'paypal.setup', 'varchar', '55', NULL),
('paypal_salesman', 'paypal.setup', 'int', '11', '0'),
('paypal_area', 'paypal.setup', 'int', '11', '0'),
('paypal_location', 'paypal.setup', 'varchar', '5', NULL),
('paypal_shipper', 'paypal.setup', 'int', '11', NULL),
('paypal_credit_status', 'paypal.setup', 'int', '11', NULL);

### Structure of table `sys_types` ###

DROP TABLE IF EXISTS `sys_types`;

CREATE TABLE `sys_types` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '1',
  `next_reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `sys_types` ###

INSERT INTO `sys_types` VALUES
('0', '17', '2'),
('1', '7', '2'),
('2', '4', '4'),
('4', '3', '1'),
('10', '16', '30'),
('11', '2', '8'),
('12', '6', '28'),
('13', '1', '19'),
('16', '2', '3'),
('17', '2', '1'),
('18', '1', '11'),
('20', '6', '16'),
('21', '1', '1'),
('22', '3', '6'),
('25', '1', '11'),
('26', '1', '5'),
('28', '1', '1'),
('29', '1', '1'),
('30', '0', '17'),
('32', '0', '5'),
('35', '1', '1'),
('40', '1', '1');

### Structure of table `tag_associations` ###

DROP TABLE IF EXISTS `tag_associations`;

CREATE TABLE `tag_associations` (
  `record_id` varchar(15) NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `record_id` (`record_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `tag_associations` ###


### Structure of table `tags` ###

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `tags` ###


### Structure of table `tax_group_items` ###

DROP TABLE IF EXISTS `tax_group_items`;

CREATE TABLE `tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `tax_group_items` ###

INSERT INTO `tax_group_items` VALUES
('1', '1', '5');

### Structure of table `tax_groups` ###

DROP TABLE IF EXISTS `tax_groups`;

CREATE TABLE `tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

### Data of table `tax_groups` ###

INSERT INTO `tax_groups` VALUES
('1', 'Tax', '0', '0'),
('2', 'Tax Exempt', '0', '0');

### Structure of table `tax_types` ###

DROP TABLE IF EXISTS `tax_types`;

CREATE TABLE `tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

### Data of table `tax_types` ###

INSERT INTO `tax_types` VALUES
('1', '5', '2150', '2150', 'Tax', '0');

### Structure of table `trans_tax_details` ###

DROP TABLE IF EXISTS `trans_tax_details`;

CREATE TABLE `trans_tax_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ex_rate` double NOT NULL DEFAULT '1',
  `included_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `memo` tinytext,
  PRIMARY KEY (`id`),
  KEY `Type_and_Number` (`trans_type`,`trans_no`),
  KEY `tran_date` (`tran_date`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1 ;

### Data of table `trans_tax_details` ###

INSERT INTO `trans_tax_details` VALUES
('1', '20', '1', '2012-11-30', '1', '5', '1', '0', '20000000', '1000000', '123'),
('2', '20', '2', '2012-12-01', '1', '5', '1', '0', '20000000', '1000000', '12345'),
('3', '13', '2', '2012-12-03', '1', '5', '1', '1', '11542857', '577143', '1'),
('4', '10', '2', '2012-12-03', '1', '5', '1', '1', '11542857', '577143', '2'),
('5', '11', '1', '2012-12-03', '1', '5', '1', '1', '228571', '11429', '1'),
('6', '11', '2', '2012-12-03', '1', '5', '1', '1', '11428571', '571429', '2'),
('7', '11', '3', '2012-12-03', '1', '5', '1', '1', '3428571', '171429', '3'),
('8', '13', '3', '2012-12-03', '1', '5', '1', '1', '114286', '5714', 'auto'),
('9', '10', '3', '2012-12-03', '1', '5', '1', '1', '114286', '5714', '3'),
('10', '13', '4', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', '2'),
('11', '11', '4', '2012-12-04', '1', '5', '1', '1', '2285714', '114286', '4'),
('12', '13', '5', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', 'auto'),
('13', '10', '4', '2012-12-04', '1', '5', '1', '1', '1142857', '57143', '4'),
('14', '11', '5', '2012-12-04', '1', '5', '1', '1', '571429', '28571', '5'),
('15', '20', '3', '2012-12-05', '1', '5', '1', '0', '500000', '25000', '123'),
('16', '13', '6', '2012-12-05', '1', '5', '1', '1', '34286', '1714', '3'),
('17', '10', '5', '2012-12-05', '1', '5', '1', '1', '1142857', '57143', '5'),
('18', '10', '6', '2012-12-05', '1', '5', '1', '1', '34286', '1714', '6'),
('19', '13', '7', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', 'auto'),
('20', '10', '7', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', '7'),
('21', '13', '8', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', 'auto'),
('22', '10', '8', '2012-12-05', '1', '5', '1', '1', '4000000', '200000', '8'),
('23', '13', '9', '2012-12-05', '1', '5', '1', '1', '3885714', '194286', 'auto'),
('24', '10', '9', '2012-12-05', '1', '5', '1', '1', '3885714', '194286', '9'),
('25', '13', '10', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '4'),
('26', '10', '10', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '10'),
('27', '13', '11', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '5'),
('28', '10', '11', '2012-12-05', '1', '5', '1', '1', '3428571', '171429', '11'),
('29', '20', '4', '2012-12-07', '1', '5', '1', '0', '3000000', '150000', '12345'),
('30', '13', '12', '2012-12-07', '1', '5', '1', '1', '2971428', '148572', 'auto'),
('31', '10', '12', '2012-12-07', '1', '5', '1', '1', '2971428', '148572', '12'),
('32', '13', '13', '2012-12-07', '1', '5', '1', '1', '1257143', '62857', 'auto'),
('33', '10', '13', '2012-12-07', '1', '5', '1', '1', '1257143', '62857', '13'),
('34', '13', '14', '2012-12-07', '1', '5', '1', '1', '11428571', '571429', 'auto'),
('35', '10', '14', '2012-12-07', '1', '5', '1', '1', '11428571', '571429', '14'),
('36', '20', '5', '2012-12-07', '1', '5', '1', '0', '20000000', '1000000', '1241234'),
('37', '13', '15', '2012-12-07', '1', '5', '1', '1', '571429', '28571', 'auto'),
('38', '10', '15', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '15'),
('39', '13', '16', '2012-12-07', '1', '5', '1', '1', '5714286', '285714', 'auto'),
('40', '10', '16', '2012-12-07', '1', '5', '1', '1', '5714286', '285714', '16'),
('41', '13', '17', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '6'),
('42', '10', '17', '2012-12-07', '1', '5', '1', '1', '571429', '28571', '17'),
('43', '20', '6', '2012-12-07', '1', '5', '1', '0', '300000', '15000', '1234'),
('44', '13', '18', '2012-12-08', '1', '5', '1', '1', '342857', '17143', '7'),
('45', '20', '7', '2012-12-11', '1', '5', '1', '0', '2000000', '100000', '12345345'),
('46', '13', '19', '2012-12-11', '1', '5', '1', '1', '2982857', '149143', 'auto'),
('47', '10', '18', '2012-12-11', '1', '5', '1', '1', '2982857', '149143', '18'),
('48', '13', '20', '2012-12-11', '1', '5', '1', '1', '4571429', '228571', '8'),
('49', '10', '19', '2012-12-11', '1', '5', '1', '1', '4571429', '228571', '19'),
('50', '20', '8', '2012-12-11', '1', '5', '1', '0', '10000000', '500000', '123444/1234'),
('51', '13', '21', '2012-12-14', '1', '5', '1', '1', '685714', '34286', '9'),
('52', '13', '22', '2012-12-14', '1', '5', '1', '1', '5714286', '285714', 'auto'),
('53', '10', '20', '2012-12-14', '1', '5', '1', '1', '5714286', '285714', '20'),
('54', '11', '6', '2012-12-14', '1', '5', '1', '1', '17143', '857', '6'),
('55', '11', '7', '2012-12-14', '1', '5', '1', '1', '571429', '28571', '7'),
('56', '13', '23', '2012-12-17', '1', '5', '1', '0', '454500', '22725', '10'),
('57', '10', '21', '2012-12-17', '1', '5', '1', '0', '454500', '22725', '21'),
('58', '13', '24', '2012-12-17', '1', '5', '1', '0', '120000', '6000', 'auto'),
('59', '10', '22', '2012-12-17', '1', '5', '1', '0', '120000', '6000', '22'),
('60', '13', '25', '2012-12-17', '1', '5', '1', '0', '227250', '11362.5', 'auto'),
('61', '10', '23', '2012-12-17', '1', '5', '1', '0', '227250', '11362.5', '23'),
('62', '13', '26', '2012-12-17', '1', '5', '1', '0', '4500', '225', 'auto'),
('63', '10', '24', '2012-12-17', '1', '5', '1', '0', '4500', '225', '24'),
('64', '13', '27', '2012-12-17', '1', '5', '1', '1', '342857', '17143', 'auto'),
('65', '10', '25', '2012-12-17', '1', '5', '1', '1', '342857', '17143', '25'),
('66', '13', '28', '2012-12-17', '1', '5', '1', '1', '114286', '5714', '11'),
('67', '13', '29', '2012-12-18', '1', '5', '1', '0', '150000', '7500', '12'),
('68', '13', '30', '2012-12-18', '1', '5', '1', '1', '10286', '514', '13'),
('69', '10', '26', '2012-12-18', '1', '5', '1', '1', '342857', '17143', '26'),
('70', '20', '10', '2012-12-21', '1', '5', '1', '0', '2000000', '100000', '125250375'),
('71', '20', '11', '2012-12-21', '1', '5', '1', '0', '1800000', '90000', '345222'),
('72', '13', '31', '2013-01-08', '1', '5', '1', '0', '92510', '4625.5', 'auto'),
('73', '10', '27', '2013-01-08', '1', '5', '1', '0', '92510', '4625.5', '27'),
('74', '20', '12', '2013-01-09', '1', '5', '1', '0', '500000', '25000', '234'),
('75', '13', '32', '2013-01-09', '1', '5', '1', '1', '228571', '11429', '14'),
('76', '13', '33', '2013-01-09', '1', '5', '1', '1', '3428571', '171429', '15'),
('77', '20', '13', '2013-01-09', '1', '5', '1', '0', '13000000', '650000', '2345'),
('78', '13', '34', '2013-01-13', '1', '5', '1', '0', '300000', '15000', '16'),
('79', '10', '28', '2013-01-13', '1', '5', '1', '0', '300000', '15000', '28'),
('80', '13', '35', '2013-01-13', '1', '5', '1', '0', '5875000', '293750', '17'),
('81', '10', '29', '2013-01-13', '1', '5', '1', '0', '5875000', '293750', '29'),
('82', '20', '14', '2013-01-14', '1', '5', '1', '0', '750000', '37500', '3211'),
('83', '13', '36', '2013-01-23', '1', '5', '1', '0', '150000', '7500', '18'),
('84', '20', '15', '2013-01-29', '1', '5', '1', '0', '1000000', '50000', '007'),
('85', '20', '16', '2013-01-29', '1', '5', '1', '0', '1000000', '50000', '008');

### Structure of table `useronline` ###

DROP TABLE IF EXISTS `useronline`;

CREATE TABLE `useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `file` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

### Data of table `useronline` ###


### Structure of table `users` ###

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `real_name` varchar(100) NOT NULL DEFAULT '',
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(100) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_sep` tinyint(1) NOT NULL DEFAULT '0',
  `tho_sep` tinyint(1) NOT NULL DEFAULT '0',
  `dec_sep` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) NOT NULL DEFAULT 'default',
  `page_size` varchar(20) NOT NULL DEFAULT 'A4',
  `prices_dec` smallint(6) NOT NULL DEFAULT '2',
  `qty_dec` smallint(6) NOT NULL DEFAULT '2',
  `rates_dec` smallint(6) NOT NULL DEFAULT '4',
  `percent_dec` smallint(6) NOT NULL DEFAULT '1',
  `show_gl` tinyint(1) NOT NULL DEFAULT '1',
  `show_codes` tinyint(1) NOT NULL DEFAULT '0',
  `show_hints` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint(1) DEFAULT '10',
  `graphic_links` tinyint(1) DEFAULT '1',
  `pos` smallint(6) DEFAULT '1',
  `print_profile` varchar(30) NOT NULL DEFAULT '1',
  `rep_popup` tinyint(1) DEFAULT '1',
  `sticky_doc_date` tinyint(1) DEFAULT '0',
  `startup_tab` varchar(20) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

### Data of table `users` ###

INSERT INTO `users` VALUES
('1', 'admin', '33dc943f9ee115ab7a1af5961d70d905', 'Administrator', '2', '', 'adm@adm.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-02-20 09:39:25', '25', '1', '1', '', '1', '0', 'orders', '0'),
('2', 'firmanusm', 'de3268e8840f839344b2915407d4f8b5', 'firmanusm', '10', 'firmanusm', 'firmanusm@gmail.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-01-01 16:52:15', '25', '1', '1', '', '1', '0', 'orders', '0'),
('3', 'kayafit', '083bdf5556d405a2557cbb93db538e67', 'kayafit', '10', '01234567', 'suryasigma@yahoo.com', 'id_ID', '1', '0', '0', '0', 'elegant', 'Letter', '0', '0', '0', '0', '1', '0', '1', '2013-01-15 10:26:10', '25', '1', '1', '', '1', '0', 'orders', '0');

### Structure of table `voided` ###

DROP TABLE IF EXISTS `voided`;

CREATE TABLE `voided` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `voided` ###


### Structure of table `wo_issue_items` ###

DROP TABLE IF EXISTS `wo_issue_items`;

CREATE TABLE `wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_issue_items` ###


### Structure of table `wo_issues` ###

DROP TABLE IF EXISTS `wo_issues`;

CREATE TABLE `wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_issues` ###


### Structure of table `wo_manufacture` ###

DROP TABLE IF EXISTS `wo_manufacture`;

CREATE TABLE `wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

### Data of table `wo_manufacture` ###


### Structure of table `wo_requirements` ###

DROP TABLE IF EXISTS `wo_requirements`;

CREATE TABLE `wo_requirements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `workcentre` int(11) NOT NULL DEFAULT '0',
  `units_req` double NOT NULL DEFAULT '1',
  `std_cost` double NOT NULL DEFAULT '0',
  `loc_code` char(5) NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ;

### Data of table `wo_requirements` ###

INSERT INTO `wo_requirements` VALUES
('1', '1', 'kabel', '1', '5', '0', 'DEF', '50'),
('2', '1', 'transistor', '1', '10', '0', 'DEF', '100'),
('3', '2', 'tepung', '2', '1', '0', 'DEF', '50'),
('4', '2', 'coklat', '2', '1', '0', 'DEF', '50'),
('5', '2', 'gula', '2', '1', '0', 'DEF', '50'),
('6', '3', 'elbow', '3', '10', '0', 'DEF', '10'),
('7', '3', 'station', '3', '10', '0', 'DEF', '10'),
('8', '3', 'pipa', '3', '10', '0', 'DEF', '10'),
('9', '4', 'lcd', '4', '1', '0', 'DEF', '3'),
('10', '4', 'keyboard', '4', '1', '0', 'DEF', '3');

### Structure of table `workcentres` ###

DROP TABLE IF EXISTS `workcentres`;

CREATE TABLE `workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `description` char(50) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `workcentres` ###

INSERT INTO `workcentres` VALUES
('1', 'perakitan radio', 'pusat perakitan radio', '0'),
('2', 'pembuatan_makanan', 'divisi pembuatan makanan', '0'),
('3', 'rsud-klaten', 'rsud-klaten', '0'),
('4', 'perakitan laptop', '', '0');

### Structure of table `workorders` ###

DROP TABLE IF EXISTS `workorders`;

CREATE TABLE `workorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_ref` varchar(60) NOT NULL DEFAULT '',
  `loc_code` varchar(5) NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT '1',
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `additional_costs` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wo_ref` (`wo_ref`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

### Data of table `workorders` ###

INSERT INTO `workorders` VALUES
('1', '1', 'DEF', '10', 'radiorakitan', '2012-12-11', '0', '2012-12-11', '2012-12-11', '10', '1', '1', '20000'),
('2', '2', 'DEF', '50', 'roti', '2012-12-17', '0', '2012-12-17', '2012-12-17', '50', '1', '1', '15000'),
('3', '3', 'KUDUS', '1', 'proyek_rsud_klaten', '2013-01-09', '0', '2013-01-09', '2013-01-09', '1', '1', '1', '100000'),
('4', '4', 'DEF', '3', 'laptop', '2013-01-13', '0', '2013-01-13', '2013-01-13', '3', '1', '1', '25000');