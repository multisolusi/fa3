-- --------------------------------------------------------
-- Host:                         202.122.14.202
-- Server version:               5.5.17 - MySQL Community Server (GPL) by Remi
-- Server OS:                    Linux
-- HeidiSQL version:             7.0.0.4140
-- Date/time:                    2012-11-30 16:08:27
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for newaccounting
CREATE DATABASE IF NOT EXISTS `act` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `act`;


-- Dumping structure for table newaccounting.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `area_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_code`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.areas: 1 rows
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`area_code`, `description`, `inactive`) VALUES
	(1, 'Semarang', 0);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;


-- Dumping structure for table newaccounting.attachments
CREATE TABLE IF NOT EXISTS `attachments` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.attachments: 0 rows
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;


-- Dumping structure for table newaccounting.audit_trail
CREATE TABLE IF NOT EXISTS `audit_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) unsigned NOT NULL DEFAULT '0',
  `trans_no` int(11) unsigned NOT NULL DEFAULT '0',
  `user` smallint(6) unsigned NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(60) DEFAULT NULL,
  `fiscal_year` int(11) NOT NULL,
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  KEY `Type_and_Number` (`type`,`trans_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.audit_trail: ~0 rows (approximately)
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;


-- Dumping structure for table newaccounting.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.bank_accounts: 1 rows
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
INSERT INTO `bank_accounts` (`account_code`, `account_type`, `bank_account_name`, `bank_account_number`, `bank_name`, `bank_address`, `bank_curr_code`, `dflt_curr_act`, `id`, `last_reconciled_date`, `ending_reconcile_balance`, `inactive`) VALUES
	('1100', 0, 'Akun Sekarang', 'N/A', 'N/A', NULL, 'IDR', 0, 1, '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;


-- Dumping structure for table newaccounting.bank_trans
CREATE TABLE IF NOT EXISTS `bank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) DEFAULT NULL,
  `trans_no` int(11) DEFAULT NULL,
  `bank_act` varchar(15) NOT NULL DEFAULT '',
  `ref` varchar(40) DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `bank_trans_type_id` int(10) unsigned DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.bank_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_trans` ENABLE KEYS */;


-- Dumping structure for table newaccounting.bom
CREATE TABLE IF NOT EXISTS `bom` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.bom: 0 rows
/*!40000 ALTER TABLE `bom` DISABLE KEYS */;
/*!40000 ALTER TABLE `bom` ENABLE KEYS */;


-- Dumping structure for table newaccounting.budget_trans
CREATE TABLE IF NOT EXISTS `budget_trans` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.budget_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `budget_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget_trans` ENABLE KEYS */;


-- Dumping structure for table newaccounting.chart_class
CREATE TABLE IF NOT EXISTS `chart_class` (
  `cid` varchar(3) NOT NULL,
  `class_name` varchar(60) NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.chart_class: 4 rows
/*!40000 ALTER TABLE `chart_class` DISABLE KEYS */;
INSERT INTO `chart_class` (`cid`, `class_name`, `ctype`, `inactive`) VALUES
	('1', 'Aktiva', 1, 0),
	('2', 'Kewajiban', 2, 0),
	('3', 'Pendapatan', 4, 0),
	('4', 'Biaya', 6, 0);
/*!40000 ALTER TABLE `chart_class` ENABLE KEYS */;


-- Dumping structure for table newaccounting.chart_master
CREATE TABLE IF NOT EXISTS `chart_master` (
  `account_code` varchar(15) NOT NULL DEFAULT '',
  `account_code2` varchar(15) NOT NULL DEFAULT '',
  `account_name` varchar(60) NOT NULL DEFAULT '',
  `account_type` varchar(10) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_code`),
  KEY `account_name` (`account_name`),
  KEY `accounts_by_type` (`account_type`,`account_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.chart_master: 28 rows
/*!40000 ALTER TABLE `chart_master` DISABLE KEYS */;
INSERT INTO `chart_master` (`account_code`, `account_code2`, `account_name`, `account_type`, `inactive`) VALUES
	('8102', '', 'Beban Bunga Bank', '54', 0),
	('8101', '', 'Beban Administrasi Bank', '54', 0),
	('7102', '', 'Pendapatan Kas', '59', 0),
	('7101', '', 'Pendapatan Bunga Bank', '59', 0),
	('6300', '', 'Selisih Mata Uang Asing', '1', 0),
	('6205', '', 'Beban Penyusutan', '5', 0),
	('6200', '', 'Administrasi dan Beban Umum', '5', 0),
	('6100', '', 'Beban Penjualan', '5', 0),
	('5103', '', 'Ongkos Masuk', '58', 0),
	('5102', '', 'Diskon Temin Pembelian', '58', 0),
	('5101', '', 'Harga Pokok Penjualan', '58', 0),
	('4200', '', 'Penjualan Kembali dan Diskon', '57', 0),
	('4100', '', 'Penjualan', '57', 0),
	('3400', '', 'Laba ditahan', '50', 0),
	('3200', '', 'Stock Biasa', '50', 0),
	('3100', '', 'Stok Awal', '50', 0),
	('2202', '', 'Pembayaran Wajib', '56', 0),
	('2201', '', 'Pembayaran Pajak', '56', 0),
	('2100', '', 'Utang Dagang/AP', '30', 0),
	('1700', '', 'Akumulasi Penyusutan', '51', 0),
	('1599', '', 'Transaksi Aktiva Tetap', '10', 0),
	('1502', '', 'Pajak Pembelian - VAT in', '53', 0),
	('1501', '', 'Uang Muka', '52', 0),
	('1415', '', 'Inventory - Perakitan Barang', '45', 0),
	('1410', '', 'Inventory - Komponen', '45', 0),
	('1300', '', 'Piutang Dagang/AR', '20', 0),
	('1200', '', 'Mata Uang Asing', '10', 0),
	('1100', '', 'Kas dan Bank IDR', '10', 0);
/*!40000 ALTER TABLE `chart_master` ENABLE KEYS */;


-- Dumping structure for table newaccounting.chart_types
CREATE TABLE IF NOT EXISTS `chart_types` (
  `id` varchar(10) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `class_id` varchar(3) NOT NULL DEFAULT '',
  `parent` varchar(10) NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.chart_types: 18 rows
/*!40000 ALTER TABLE `chart_types` DISABLE KEYS */;
INSERT INTO `chart_types` (`id`, `name`, `class_id`, `parent`, `inactive`) VALUES
	('1', 'Penjualan', '3', '', 0),
	('2', 'Harga Pokok Penjualan', '4', '', 0),
	('5', 'Beban', '4', '', 0),
	('10', 'Kas Bank', '1', '', 0),
	('20', 'Piutang Dagang', '1', '', 0),
	('30', 'Utang Dagang', '2', '', 0),
	('40', 'Aktiva Tetap', '1', '', 0),
	('45', 'Inventory', '1', '', 0),
	('50', 'Modal', '2', '', 0),
	('51', 'Penyusutan', '4', '', 0),
	('52', 'Keuangan', '4', '', 0),
	('53', 'Aktiva Lain-lain', '1', '', 0),
	('54', 'Beban Lain-Lain', '4', '', 0),
	('55', 'Kewajiban Jangka Panjang', '2', '', 0),
	('56', 'Kewajiban', '2', '', 0),
	('57', 'Pendapatan', '3', '', 0),
	('58', 'COGS', '4', '', 0),
	('59', 'Pendapatan Lain', '1', '', 0);
/*!40000 ALTER TABLE `chart_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext,
  KEY `type_and_id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Dumping structure for table newaccounting.credit_status
CREATE TABLE IF NOT EXISTS `credit_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_description` char(100) NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reason_description` (`reason_description`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.credit_status: 3 rows
/*!40000 ALTER TABLE `credit_status` DISABLE KEYS */;
INSERT INTO `credit_status` (`id`, `reason_description`, `dissallow_invoices`, `inactive`) VALUES
	(1, 'Good History', 0, 0),
	(3, 'No more work until payment received', 1, 0),
	(4, 'In liquidation', 1, 0);
/*!40000 ALTER TABLE `credit_status` ENABLE KEYS */;


-- Dumping structure for table newaccounting.crm_categories
CREATE TABLE IF NOT EXISTS `crm_categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.crm_categories: ~12 rows (approximately)
/*!40000 ALTER TABLE `crm_categories` DISABLE KEYS */;
INSERT INTO `crm_categories` (`id`, `type`, `action`, `name`, `description`, `system`, `inactive`) VALUES
	(1, 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', 1, 0),
	(2, 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', 1, 0),
	(3, 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', 1, 0),
	(4, 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', 1, 0),
	(5, 'customer', 'general', 'General', 'General contact data for customer', 1, 0),
	(6, 'customer', 'order', 'Orders', 'Order confirmation', 1, 0),
	(7, 'customer', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
	(8, 'customer', 'invoice', 'Invoices', 'Invoice posting', 1, 0),
	(9, 'supplier', 'general', 'General', 'General contact data for supplier', 1, 0),
	(10, 'supplier', 'order', 'Orders', 'Order confirmation', 1, 0),
	(11, 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
	(12, 'supplier', 'invoice', 'Invoices', 'Invoice posting', 1, 0);
/*!40000 ALTER TABLE `crm_categories` ENABLE KEYS */;


-- Dumping structure for table newaccounting.crm_contacts
CREATE TABLE IF NOT EXISTS `crm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_contacts',
  `type` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) DEFAULT NULL COMMENT 'entity id in related class table',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.crm_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `crm_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_contacts` ENABLE KEYS */;


-- Dumping structure for table newaccounting.crm_persons
CREATE TABLE IF NOT EXISTS `crm_persons` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.crm_persons: ~0 rows (approximately)
/*!40000 ALTER TABLE `crm_persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_persons` ENABLE KEYS */;


-- Dumping structure for table newaccounting.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `currency` varchar(60) NOT NULL DEFAULT '',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(100) NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.currencies: 3 rows
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`currency`, `curr_abrev`, `curr_symbol`, `country`, `hundreds_name`, `inactive`, `auto_update`) VALUES
	('Euro', 'EUR', '?', 'Europe', 'Cents', 0, 1),
	('US Dollar', 'USD', '$', 'USA', 'Cents', 0, 1),
	('Rupiah', 'IDR', 'Rp', 'Indonesia', 'Cents', 0, 1);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;


-- Dumping structure for table newaccounting.cust_allocations
CREATE TABLE IF NOT EXISTS `cust_allocations` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.cust_allocations: ~0 rows (approximately)
/*!40000 ALTER TABLE `cust_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_allocations` ENABLE KEYS */;


-- Dumping structure for table newaccounting.cust_branch
CREATE TABLE IF NOT EXISTS `cust_branch` (
  `branch_code` int(11) NOT NULL AUTO_INCREMENT,
  `debtor_no` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(60) NOT NULL DEFAULT '',
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
  `notes` tinytext,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `branch_ref` varchar(30) NOT NULL,
  PRIMARY KEY (`branch_code`,`debtor_no`),
  KEY `branch_code` (`branch_code`),
  KEY `branch_ref` (`branch_ref`),
  KEY `group_no` (`group_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.cust_branch: 0 rows
/*!40000 ALTER TABLE `cust_branch` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_branch` ENABLE KEYS */;


-- Dumping structure for table newaccounting.debtors_master
CREATE TABLE IF NOT EXISTS `debtors_master` (
  `debtor_no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
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
  `notes` tinytext,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_ref` varchar(30) NOT NULL,
  PRIMARY KEY (`debtor_no`),
  UNIQUE KEY `debtor_ref` (`debtor_ref`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.debtors_master: 0 rows
/*!40000 ALTER TABLE `debtors_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtors_master` ENABLE KEYS */;


-- Dumping structure for table newaccounting.debtor_trans
CREATE TABLE IF NOT EXISTS `debtor_trans` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.debtor_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `debtor_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_trans` ENABLE KEYS */;


-- Dumping structure for table newaccounting.debtor_trans_details
CREATE TABLE IF NOT EXISTS `debtor_trans_details` (
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
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  KEY `src_id` (`src_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.debtor_trans_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `debtor_trans_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_trans_details` ENABLE KEYS */;


-- Dumping structure for table newaccounting.dimensions
CREATE TABLE IF NOT EXISTS `dimensions` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.dimensions: ~0 rows (approximately)
/*!40000 ALTER TABLE `dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimensions` ENABLE KEYS */;


-- Dumping structure for table newaccounting.exchange_rates
CREATE TABLE IF NOT EXISTS `exchange_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_code` char(3) NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `curr_code` (`curr_code`,`date_`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.exchange_rates: 0 rows
/*!40000 ALTER TABLE `exchange_rates` DISABLE KEYS */;
INSERT INTO `exchange_rates` (`id`, `curr_code`, `rate_buy`, `rate_sell`, `date_`) VALUES
	(1, 'EUR', 12490.31, 12490.31, '2012-11-30'),
	(2, 'USD', 9612.3672464214, 9612.3672464214, '2012-11-30');
/*!40000 ALTER TABLE `exchange_rates` ENABLE KEYS */;


-- Dumping structure for table newaccounting.fiscal_year
CREATE TABLE IF NOT EXISTS `fiscal_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `begin` (`begin`),
  UNIQUE KEY `end` (`end`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.fiscal_year: ~1 rows (approximately)
/*!40000 ALTER TABLE `fiscal_year` DISABLE KEYS */;
INSERT INTO `fiscal_year` (`id`, `begin`, `end`, `closed`) VALUES
	(1, '2008-01-01', '2008-12-31', 0),
	(2, '2009-01-01', '2009-12-31', 0),
	(3, '2010-01-01', '2010-12-31', 0),
	(4, '2011-01-01', '2011-12-31', 0),
	(5, '2012-01-01', '2012-12-31', 0);
/*!40000 ALTER TABLE `fiscal_year` ENABLE KEYS */;


-- Dumping structure for table newaccounting.gl_trans
CREATE TABLE IF NOT EXISTS `gl_trans` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.gl_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `gl_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `gl_trans` ENABLE KEYS */;


-- Dumping structure for table newaccounting.grn_batch
CREATE TABLE IF NOT EXISTS `grn_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `purch_order_no` int(11) DEFAULT NULL,
  `reference` varchar(60) NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_date` (`delivery_date`),
  KEY `purch_order_no` (`purch_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.grn_batch: ~0 rows (approximately)
/*!40000 ALTER TABLE `grn_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_batch` ENABLE KEYS */;


-- Dumping structure for table newaccounting.grn_items
CREATE TABLE IF NOT EXISTS `grn_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grn_batch_id` int(11) DEFAULT NULL,
  `po_detail_item` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(20) NOT NULL DEFAULT '',
  `description` tinytext,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `grn_batch_id` (`grn_batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.grn_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `grn_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `grn_items` ENABLE KEYS */;


-- Dumping structure for table newaccounting.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.groups: 3 rows
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `description`, `inactive`) VALUES
	(1, 'Small', 0),
	(2, 'Medium', 0),
	(3, 'Large', 0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table newaccounting.item_codes
CREATE TABLE IF NOT EXISTS `item_codes` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.item_codes: 0 rows
/*!40000 ALTER TABLE `item_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_codes` ENABLE KEYS */;


-- Dumping structure for table newaccounting.item_tax_types
CREATE TABLE IF NOT EXISTS `item_tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.item_tax_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_tax_types` DISABLE KEYS */;
INSERT INTO `item_tax_types` (`id`, `name`, `exempt`, `inactive`) VALUES
	(1, 'bebas_pajak', 1, 0),
	(2, 'barang_kena_ppn', 0, 0),
	(3, 'barang_kena_pph', 0, 0),
	(4, 'barang_kena_pph_ppn', 0, 0);
/*!40000 ALTER TABLE `item_tax_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.item_tax_type_exemptions
CREATE TABLE IF NOT EXISTS `item_tax_type_exemptions` (
  `item_tax_type_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_tax_type_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.item_tax_type_exemptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `item_tax_type_exemptions` DISABLE KEYS */;
INSERT INTO `item_tax_type_exemptions` (`item_tax_type_id`, `tax_type_id`) VALUES
	(2, 2),
	(3, 3),
	(4, 2),
	(4, 3);
/*!40000 ALTER TABLE `item_tax_type_exemptions` ENABLE KEYS */;


-- Dumping structure for table newaccounting.item_units
CREATE TABLE IF NOT EXISTS `item_units` (
  `abbr` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `decimals` tinyint(2) NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`abbr`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.item_units: 0 rows
/*!40000 ALTER TABLE `item_units` DISABLE KEYS */;
INSERT INTO `item_units` (`abbr`, `name`, `decimals`, `inactive`) VALUES
	('pcs', 'pieces', -1, 0);
/*!40000 ALTER TABLE `item_units` ENABLE KEYS */;


-- Dumping structure for table newaccounting.locations
CREATE TABLE IF NOT EXISTS `locations` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.locations: 1 rows
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` (`loc_code`, `location_name`, `delivery_address`, `phone`, `phone2`, `fax`, `email`, `contact`, `inactive`) VALUES
	('DEF', 'Default', 'N/A', '', '', '', '', '', 0);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;


-- Dumping structure for table newaccounting.loc_stock
CREATE TABLE IF NOT EXISTS `loc_stock` (
  `loc_code` char(5) NOT NULL DEFAULT '',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `reorder_level` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_code`,`stock_id`),
  KEY `stock_id` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.loc_stock: ~0 rows (approximately)
/*!40000 ALTER TABLE `loc_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `loc_stock` ENABLE KEYS */;


-- Dumping structure for table newaccounting.movement_types
CREATE TABLE IF NOT EXISTS `movement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.movement_types: 1 rows
/*!40000 ALTER TABLE `movement_types` DISABLE KEYS */;
INSERT INTO `movement_types` (`id`, `name`, `inactive`) VALUES
	(1, 'Penyesuaian', 0);
/*!40000 ALTER TABLE `movement_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.payment_terms
CREATE TABLE IF NOT EXISTS `payment_terms` (
  `terms_indicator` int(11) NOT NULL AUTO_INCREMENT,
  `terms` char(80) NOT NULL DEFAULT '',
  `days_before_due` smallint(6) NOT NULL DEFAULT '0',
  `day_in_following_month` smallint(6) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`terms_indicator`),
  UNIQUE KEY `terms` (`terms`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.payment_terms: 4 rows
/*!40000 ALTER TABLE `payment_terms` DISABLE KEYS */;
INSERT INTO `payment_terms` (`terms_indicator`, `terms`, `days_before_due`, `day_in_following_month`, `inactive`) VALUES
	(1, 'Hari ke 15 pertengahan bulan', 0, 17, 0),
	(2, 'Akhir bulan berlangsung', 0, 30, 0),
	(3, 'Pembayaran dalam 10 hari', 10, 0, 0),
	(4, 'COD', 1, 0, 0);
/*!40000 ALTER TABLE `payment_terms` ENABLE KEYS */;


-- Dumping structure for table newaccounting.prices
CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(20) NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.prices: 0 rows
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;


-- Dumping structure for table newaccounting.printers
CREATE TABLE IF NOT EXISTS `printers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(60) NOT NULL,
  `queue` varchar(20) NOT NULL,
  `host` varchar(40) NOT NULL,
  `port` smallint(11) unsigned NOT NULL,
  `timeout` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.printers: 3 rows
/*!40000 ALTER TABLE `printers` DISABLE KEYS */;
INSERT INTO `printers` (`id`, `name`, `description`, `queue`, `host`, `port`, `timeout`) VALUES
	(1, 'QL500', 'Label printer', 'QL500', 'server', 127, 20),
	(2, 'Samsung', 'Main network printer', 'scx4521F', 'server', 515, 5),
	(3, 'Local', 'Local print server at user IP', 'lp', '', 515, 10);
/*!40000 ALTER TABLE `printers` ENABLE KEYS */;


-- Dumping structure for table newaccounting.print_profiles
CREATE TABLE IF NOT EXISTS `print_profiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(30) NOT NULL,
  `report` varchar(5) DEFAULT NULL,
  `printer` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile` (`profile`,`report`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.print_profiles: 9 rows
/*!40000 ALTER TABLE `print_profiles` DISABLE KEYS */;
INSERT INTO `print_profiles` (`id`, `profile`, `report`, `printer`) VALUES
	(1, 'Out of office', NULL, 0),
	(2, 'Sales Department', NULL, 0),
	(3, 'Central', NULL, 2),
	(4, 'Sales Department', '104', 2),
	(5, 'Sales Department', '105', 2),
	(6, 'Sales Department', '107', 2),
	(7, 'Sales Department', '109', 2),
	(8, 'Sales Department', '110', 2),
	(9, 'Sales Department', '201', 2);
/*!40000 ALTER TABLE `print_profiles` ENABLE KEYS */;


-- Dumping structure for table newaccounting.purch_data
CREATE TABLE IF NOT EXISTS `purch_data` (
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `stock_id` char(20) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`,`stock_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.purch_data: 0 rows
/*!40000 ALTER TABLE `purch_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `purch_data` ENABLE KEYS */;


-- Dumping structure for table newaccounting.purch_orders
CREATE TABLE IF NOT EXISTS `purch_orders` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.purch_orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `purch_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `purch_orders` ENABLE KEYS */;


-- Dumping structure for table newaccounting.purch_order_details
CREATE TABLE IF NOT EXISTS `purch_order_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.purch_order_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `purch_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `purch_order_details` ENABLE KEYS */;


-- Dumping structure for table newaccounting.quick_entries
CREATE TABLE IF NOT EXISTS `quick_entries` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) NOT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.quick_entries: 3 rows
/*!40000 ALTER TABLE `quick_entries` DISABLE KEYS */;
INSERT INTO `quick_entries` (`id`, `type`, `description`, `base_amount`, `base_desc`, `bal_type`) VALUES
	(1, 1, 'Maintenance', 0, 'Amount', 0),
	(2, 1, 'Phone', 0, 'Amount', 0),
	(3, 2, 'Cash Sales', 0, 'Amount', 0);
/*!40000 ALTER TABLE `quick_entries` ENABLE KEYS */;


-- Dumping structure for table newaccounting.quick_entry_lines
CREATE TABLE IF NOT EXISTS `quick_entry_lines` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `qid` smallint(6) unsigned NOT NULL,
  `amount` double DEFAULT '0',
  `action` varchar(2) NOT NULL,
  `dest_id` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` smallint(6) unsigned DEFAULT NULL,
  `dimension2_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.quick_entry_lines: 3 rows
/*!40000 ALTER TABLE `quick_entry_lines` DISABLE KEYS */;
INSERT INTO `quick_entry_lines` (`id`, `qid`, `amount`, `action`, `dest_id`, `dimension_id`, `dimension2_id`) VALUES
	(1, 1, 0, '=', '6600', 0, 0),
	(2, 2, 0, '=', '6730', 0, 0),
	(3, 3, 0, '=', '3000', 0, 0);
/*!40000 ALTER TABLE `quick_entry_lines` ENABLE KEYS */;


-- Dumping structure for table newaccounting.recurrent_invoices
CREATE TABLE IF NOT EXISTS `recurrent_invoices` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.recurrent_invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `recurrent_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrent_invoices` ENABLE KEYS */;


-- Dumping structure for table newaccounting.refs
CREATE TABLE IF NOT EXISTS `refs` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`type`),
  KEY `Type_and_Reference` (`type`,`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.refs: ~0 rows (approximately)
/*!40000 ALTER TABLE `refs` DISABLE KEYS */;
/*!40000 ALTER TABLE `refs` ENABLE KEYS */;


-- Dumping structure for table newaccounting.salesman
CREATE TABLE IF NOT EXISTS `salesman` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.salesman: 1 rows
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` (`salesman_code`, `salesman_name`, `salesman_phone`, `salesman_fax`, `salesman_email`, `provision`, `break_pt`, `provision2`, `inactive`) VALUES
	(1, 'Salesman', '', '', '', 0, 1000, 0, 0);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sales_orders
CREATE TABLE IF NOT EXISTS `sales_orders` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sales_orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sales_order_details
CREATE TABLE IF NOT EXISTS `sales_order_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sales_order_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_details` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sales_pos
CREATE TABLE IF NOT EXISTS `sales_pos` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(30) NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) NOT NULL,
  `pos_account` smallint(6) unsigned NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_name` (`pos_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sales_pos: 1 rows
/*!40000 ALTER TABLE `sales_pos` DISABLE KEYS */;
INSERT INTO `sales_pos` (`id`, `pos_name`, `cash_sale`, `credit_sale`, `pos_location`, `pos_account`, `inactive`) VALUES
	(1, 'Default', 1, 1, 'DEF', 1, 0);
/*!40000 ALTER TABLE `sales_pos` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sales_types
CREATE TABLE IF NOT EXISTS `sales_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_type` char(50) NOT NULL DEFAULT '',
  `tax_included` int(1) NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sales_type` (`sales_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sales_types: 2 rows
/*!40000 ALTER TABLE `sales_types` DISABLE KEYS */;
INSERT INTO `sales_types` (`id`, `sales_type`, `tax_included`, `factor`, `inactive`) VALUES
	(1, 'Retail', 1, 1, 0),
	(2, 'Wholesale', 0, 1, 0);
/*!40000 ALTER TABLE `sales_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.security_roles
CREATE TABLE IF NOT EXISTS `security_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `sections` text,
  `areas` text,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.security_roles: 4 rows
/*!40000 ALTER TABLE `security_roles` DISABLE KEYS */;
INSERT INTO `security_roles` (`id`, `role`, `description`, `sections`, `areas`, `inactive`) VALUES
	(1, 'FA 2.1 Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '773;774;2818;2822;3073;3073;3075;3076;3077;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5640;5889;5891;8193;8194;8194;8450;8451;10753;11009;11010;11012;13313;13315;15873;15882;16129;16130;16131;16132', 0),
	(2, 'FA 2.1 Accountant', 'Accountant', '512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;10496;10752;11008;13312;15616;15872;16128', '513;519;520;521;522;523;524;525;769;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5633;5634;5635;5636;5637;5638;5639;5640;5640;5889;5891;7937;7938;7939;7940;8193;8194;8194;8195;8196;8197;8449;8450;8451;10497;10753;10753;10754;10755;10756;10757;11009;11010;11010;11012;13313;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15624;15625;15626;15873;15873;15874;15875;15876;15877;15878;15879;15880;15881;15882;16129;16129;16130;16130;16131;16132', 0),
	(3, 'FA 2.1 System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5633;5634;5635;5636;5637;5638;5639;5640;5640;5889;5891;7937;7938;7939;7940;8193;8194;8194;8195;8196;8197;8449;8450;8451;10497;10753;10753;10754;10755;10756;10757;11009;11010;11010;11012;13057;13313;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15624;15625;15626;15627;15873;15873;15874;15875;15876;15877;15878;15879;15880;15881;15882;16129;16129;16130;16130;16131;16132', 0),
	(4, 'Super Admin', 'Super Admin', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15629;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;15884;16129;16130;16131;16132', 0);
/*!40000 ALTER TABLE `security_roles` ENABLE KEYS */;


-- Dumping structure for table newaccounting.shippers
CREATE TABLE IF NOT EXISTS `shippers` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper_name` varchar(60) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `phone2` varchar(30) NOT NULL DEFAULT '',
  `contact` tinytext NOT NULL,
  `address` tinytext NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipper_id`),
  UNIQUE KEY `name` (`shipper_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.shippers: 1 rows
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` (`shipper_id`, `shipper_name`, `phone`, `phone2`, `contact`, `address`, `inactive`) VALUES
	(1, 'Default', '', '', '', '', 0);
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sql_trail
CREATE TABLE IF NOT EXISTS `sql_trail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sql` text NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sql_trail: 0 rows
/*!40000 ALTER TABLE `sql_trail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sql_trail` ENABLE KEYS */;


-- Dumping structure for table newaccounting.stock_category
CREATE TABLE IF NOT EXISTS `stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
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
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.stock_category: 4 rows
/*!40000 ALTER TABLE `stock_category` DISABLE KEYS */;
INSERT INTO `stock_category` (`category_id`, `description`, `inactive`, `dflt_tax_type`, `dflt_units`, `dflt_mb_flag`, `dflt_sales_act`, `dflt_cogs_act`, `dflt_inventory_act`, `dflt_adjustment_act`, `dflt_assembly_act`, `dflt_dim1`, `dflt_dim2`, `dflt_no_sale`) VALUES
	(1, 'Komponen', 0, 1, 'each', 'B', '3000', '4010', '1420', '4210', '1410', 0, 0, 0),
	(2, 'Kena Biaya', 0, 1, 'each', 'B', '3000', '4010', '1420', '4210', '1410', 0, 0, 0),
	(3, 'Sistem', 0, 1, 'each', 'B', '3000', '4010', '1420', '4210', '1410', 0, 0, 0),
	(4, 'Jasa', 0, 1, 'each', 'B', '3000', '4010', '1420', '4210', '1410', 0, 0, 0),
	(5, 'kategori1', 0, 0, 'pcs', 'M', '1100', '1100', '1100', '1100', '1410', 0, 0, 0);
/*!40000 ALTER TABLE `stock_category` ENABLE KEYS */;


-- Dumping structure for table newaccounting.stock_master
CREATE TABLE IF NOT EXISTS `stock_master` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.stock_master: ~0 rows (approximately)
/*!40000 ALTER TABLE `stock_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_master` ENABLE KEYS */;


-- Dumping structure for table newaccounting.stock_moves
CREATE TABLE IF NOT EXISTS `stock_moves` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.stock_moves: ~0 rows (approximately)
/*!40000 ALTER TABLE `stock_moves` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_moves` ENABLE KEYS */;


-- Dumping structure for table newaccounting.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supp_name` varchar(60) NOT NULL DEFAULT '',
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
  `supp_ref` varchar(30) NOT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supp_ref` (`supp_ref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.suppliers: 0 rows
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;


-- Dumping structure for table newaccounting.supp_allocations
CREATE TABLE IF NOT EXISTS `supp_allocations` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.supp_allocations: ~0 rows (approximately)
/*!40000 ALTER TABLE `supp_allocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `supp_allocations` ENABLE KEYS */;


-- Dumping structure for table newaccounting.supp_invoice_items
CREATE TABLE IF NOT EXISTS `supp_invoice_items` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.supp_invoice_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `supp_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `supp_invoice_items` ENABLE KEYS */;


-- Dumping structure for table newaccounting.supp_trans
CREATE TABLE IF NOT EXISTS `supp_trans` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.supp_trans: ~0 rows (approximately)
/*!40000 ALTER TABLE `supp_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `supp_trans` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sys_prefs
CREATE TABLE IF NOT EXISTS `sys_prefs` (
  `name` varchar(35) NOT NULL DEFAULT '',
  `category` varchar(30) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `length` smallint(6) DEFAULT NULL,
  `value` tinytext,
  PRIMARY KEY (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sys_prefs: 50 rows
/*!40000 ALTER TABLE `sys_prefs` DISABLE KEYS */;
INSERT INTO `sys_prefs` (`name`, `category`, `type`, `length`, `value`) VALUES
	('coy_name', 'setup.company', 'varchar', 60, 'multisolusi informatika'),
	('gst_no', 'setup.company', 'varchar', 25, '12345'),
	('coy_no', 'setup.company', 'varchar', 25, '1'),
	('tax_prd', 'setup.company', 'int', 11, '1'),
	('tax_last', 'setup.company', 'int', 11, '1'),
	('postal_address', 'setup.company', 'tinytext', 0, 'klipang'),
	('phone', 'setup.company', 'varchar', 30, '081225222272'),
	('fax', 'setup.company', 'varchar', 30, '081225222272'),
	('email', 'setup.company', 'varchar', 100, 'yc2int@yahoo.com'),
	('coy_logo', 'setup.company', 'varchar', 100, ''),
	('domicile', 'setup.company', 'varchar', 55, 'semarang'),
	('curr_default', 'setup.company', 'char', 3, 'IDR'),
	('use_dimension', 'setup.company', 'tinyint', 1, '0'),
	('f_year', 'setup.company', 'int', 11, '5'),
	('no_item_list', 'setup.company', 'tinyint', 1, '1'),
	('no_customer_list', 'setup.company', 'tinyint', 1, '1'),
	('no_supplier_list', 'setup.company', 'tinyint', 1, '1'),
	('base_sales', 'setup.company', 'int', 11, '1'),
	('time_zone', 'setup.company', 'tinyint', 1, '0'),
	('add_pct', 'setup.company', 'int', 5, '-1'),
	('round_to', 'setup.company', 'int', 5, '1'),
	('login_tout', 'setup.company', 'smallint', 6, '600'),
	('past_due_days', 'glsetup.general', 'int', 11, '30'),
	('profit_loss_year_act', 'glsetup.general', 'varchar', 15, '1100'),
	('retained_earnings_act', 'glsetup.general', 'varchar', 15, '1100'),
	('bank_charge_act', 'glsetup.general', 'varchar', 15, '1100'),
	('exchange_diff_act', 'glsetup.general', 'varchar', 15, '1100'),
	('default_credit_limit', 'glsetup.customer', 'int', 11, '1000'),
	('accumulate_shipping', 'glsetup.customer', 'tinyint', 1, '0'),
	('legal_text', 'glsetup.customer', 'tinytext', 0, ''),
	('freight_act', 'glsetup.customer', 'varchar', 15, '1100'),
	('debtors_act', 'glsetup.sales', 'varchar', 15, '1100'),
	('default_sales_act', 'glsetup.sales', 'varchar', 15, ''),
	('default_sales_discount_act', 'glsetup.sales', 'varchar', 15, '1100'),
	('default_prompt_payment_act', 'glsetup.sales', 'varchar', 15, '3200'),
	('default_delivery_required', 'glsetup.sales', 'smallint', 6, '1'),
	('default_dim_required', 'glsetup.dims', 'int', 11, '20'),
	('pyt_discount_act', 'glsetup.purchase', 'varchar', 15, '1100'),
	('creditors_act', 'glsetup.purchase', 'varchar', 15, '1100'),
	('po_over_receive', 'glsetup.purchase', 'int', 11, '10'),
	('po_over_charge', 'glsetup.purchase', 'int', 11, '10'),
	('allow_negative_stock', 'glsetup.inventory', 'tinyint', 1, '0'),
	('default_inventory_act', 'glsetup.items', 'varchar', 15, '1100'),
	('default_cogs_act', 'glsetup.items', 'varchar', 15, '1100'),
	('default_adj_act', 'glsetup.items', 'varchar', 15, '1100'),
	('default_inv_sales_act', 'glsetup.items', 'varchar', 15, '1100'),
	('default_assembly_act', 'glsetup.items', 'varchar', 15, '1410'),
	('default_workorder_required', 'glsetup.manuf', 'int', 11, '20'),
	('version_id', 'system', 'varchar', 11, '2.3rc'),
	('auto_curr_reval', 'setup.company', 'smallint', 6, '1'),
	('grn_clearing_act', 'glsetup.purchase', 'varchar', 15, '0');
/*!40000 ALTER TABLE `sys_prefs` ENABLE KEYS */;


-- Dumping structure for table newaccounting.sys_types
CREATE TABLE IF NOT EXISTS `sys_types` (
  `type_id` smallint(6) NOT NULL DEFAULT '0',
  `type_no` int(11) NOT NULL DEFAULT '1',
  `next_reference` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.sys_types: ~22 rows (approximately)
/*!40000 ALTER TABLE `sys_types` DISABLE KEYS */;
INSERT INTO `sys_types` (`type_id`, `type_no`, `next_reference`) VALUES
	(0, 17, '1'),
	(1, 7, '1'),
	(2, 4, '1'),
	(4, 3, '1'),
	(10, 16, '1'),
	(11, 2, '1'),
	(12, 6, '1'),
	(13, 6, '1'),
	(16, 2, '1'),
	(17, 2, '1'),
	(18, 1, '1'),
	(20, 6, '1'),
	(21, 1, '1'),
	(22, 3, '1'),
	(25, 1, '1'),
	(26, 1, '1'),
	(28, 1, '1'),
	(29, 1, '1'),
	(30, 0, '1'),
	(32, 0, '1'),
	(35, 1, '1'),
	(40, 1, '1');
/*!40000 ALTER TABLE `sys_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(60) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.tags: 0 rows
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


-- Dumping structure for table newaccounting.tag_associations
CREATE TABLE IF NOT EXISTS `tag_associations` (
  `record_id` varchar(15) NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `record_id` (`record_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.tag_associations: 0 rows
/*!40000 ALTER TABLE `tag_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_associations` ENABLE KEYS */;


-- Dumping structure for table newaccounting.tax_groups
CREATE TABLE IF NOT EXISTS `tax_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.tax_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_groups` DISABLE KEYS */;
INSERT INTO `tax_groups` (`id`, `name`, `tax_shipping`, `inactive`) VALUES
	(1, 'grup_pajak_umum', 0, 0);
/*!40000 ALTER TABLE `tax_groups` ENABLE KEYS */;


-- Dumping structure for table newaccounting.tax_group_items
CREATE TABLE IF NOT EXISTS `tax_group_items` (
  `tax_group_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`tax_group_id`,`tax_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.tax_group_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_group_items` DISABLE KEYS */;
INSERT INTO `tax_group_items` (`tax_group_id`, `tax_type_id`, `rate`) VALUES
	(1, 1, 0),
	(1, 2, 10),
	(1, 3, 6);
/*!40000 ALTER TABLE `tax_group_items` ENABLE KEYS */;


-- Dumping structure for table newaccounting.tax_types
CREATE TABLE IF NOT EXISTS `tax_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`rate`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.tax_types: ~1 rows (approximately)
/*!40000 ALTER TABLE `tax_types` DISABLE KEYS */;
INSERT INTO `tax_types` (`id`, `rate`, `sales_gl_code`, `purchasing_gl_code`, `name`, `inactive`) VALUES
	(1, 0, '1100', '1100', 'non-pajak', 0),
	(2, 10, '4100', '4100', 'ppn_10', 0),
	(3, 6, '1415', '1415', 'pph', 0);
/*!40000 ALTER TABLE `tax_types` ENABLE KEYS */;


-- Dumping structure for table newaccounting.trans_tax_details
CREATE TABLE IF NOT EXISTS `trans_tax_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.trans_tax_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `trans_tax_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_tax_details` ENABLE KEYS */;


-- Dumping structure for table newaccounting.useronline
CREATE TABLE IF NOT EXISTS `useronline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `file` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.useronline: 0 rows
/*!40000 ALTER TABLE `useronline` DISABLE KEYS */;
/*!40000 ALTER TABLE `useronline` ENABLE KEYS */;


-- Dumping structure for table newaccounting.users
CREATE TABLE IF NOT EXISTS `users` (
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
  `startup_tab` varchar(20) NOT NULL DEFAULT 'orders',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `role_id`, `phone`, `email`, `language`, `date_format`, `date_sep`, `tho_sep`, `dec_sep`, `theme`, `page_size`, `prices_dec`, `qty_dec`, `rates_dec`, `percent_dec`, `show_gl`, `show_codes`, `show_hints`, `last_visit_date`, `query_size`, `graphic_links`, `pos`, `print_profile`, `rep_popup`, `sticky_doc_date`, `startup_tab`, `inactive`) VALUES
	(1, 'admin', '33dc943f9ee115ab7a1af5961d70d905', 'Administrator', 3, '', 'info@multisolusi.info', 'C', 0, 0, 0, 0, 'default', 'Letter', 2, 2, 4, 1, 1, 0, 0, '2012-11-30 10:09:47', 10, 1, 1, '', 1, 0, 'orders', 0),
	(2, 'superadmin', '33dc943f9ee115ab7a1af5961d70d905', 'super administrator', 4, '081225222272', 'yc2int@yahoo.com', 'id_ID', 0, 0, 0, 0, 'studio', 'Letter', 2, 2, 4, 1, 1, 0, 0, '2012-11-30 10:11:43', 10, 1, 1, '', 1, 0, 'orders', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table newaccounting.voided
CREATE TABLE IF NOT EXISTS `voided` (
  `type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext NOT NULL,
  UNIQUE KEY `id` (`type`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.voided: ~0 rows (approximately)
/*!40000 ALTER TABLE `voided` DISABLE KEYS */;
/*!40000 ALTER TABLE `voided` ENABLE KEYS */;


-- Dumping structure for table newaccounting.workcentres
CREATE TABLE IF NOT EXISTS `workcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `description` char(50) NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.workcentres: 0 rows
/*!40000 ALTER TABLE `workcentres` DISABLE KEYS */;
/*!40000 ALTER TABLE `workcentres` ENABLE KEYS */;


-- Dumping structure for table newaccounting.workorders
CREATE TABLE IF NOT EXISTS `workorders` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.workorders: ~0 rows (approximately)
/*!40000 ALTER TABLE `workorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorders` ENABLE KEYS */;


-- Dumping structure for table newaccounting.wo_issues
CREATE TABLE IF NOT EXISTS `wo_issues` (
  `issue_no` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) DEFAULT NULL,
  `workcentre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`issue_no`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.wo_issues: ~0 rows (approximately)
/*!40000 ALTER TABLE `wo_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_issues` ENABLE KEYS */;


-- Dumping structure for table newaccounting.wo_issue_items
CREATE TABLE IF NOT EXISTS `wo_issue_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(40) DEFAULT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.wo_issue_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `wo_issue_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_issue_items` ENABLE KEYS */;


-- Dumping structure for table newaccounting.wo_manufacture
CREATE TABLE IF NOT EXISTS `wo_manufacture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) DEFAULT NULL,
  `workorder_id` int(11) NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `workorder_id` (`workorder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.wo_manufacture: ~0 rows (approximately)
/*!40000 ALTER TABLE `wo_manufacture` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_manufacture` ENABLE KEYS */;


-- Dumping structure for table newaccounting.wo_requirements
CREATE TABLE IF NOT EXISTS `wo_requirements` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table newaccounting.wo_requirements: ~0 rows (approximately)
/*!40000 ALTER TABLE `wo_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_requirements` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
