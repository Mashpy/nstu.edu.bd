-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2012 at 06:15 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nstu_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_assets`
--

CREATE TABLE IF NOT EXISTS `qy1d9_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `qy1d9_assets`
--

INSERT INTO `qy1d9_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 171, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 120, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 121, 122, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 123, 124, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 125, 126, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 127, 128, 1, 'com_login', 'com_login', '{}'),
(13, 1, 129, 130, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 131, 132, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 133, 134, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 135, 136, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 137, 138, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 139, 140, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 141, 144, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 145, 146, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 147, 148, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 149, 150, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 151, 152, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 153, 156, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 157, 160, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 161, 162, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 33, 2, 'com_content.category.2', 'About NSTU', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 142, 143, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 158, 159, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 154, 155, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 163, 164, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 165, 166, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 8, 34, 41, 2, 'com_content.category.8', 'Administrative', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(36, 8, 42, 75, 2, 'com_content.category.9', 'Academic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 8, 76, 81, 2, 'com_content.category.10', 'Activities', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(38, 8, 82, 85, 2, 'com_content.category.11', 'Photo Galary', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(39, 8, 86, 87, 2, 'com_content.category.12', 'Notice', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(40, 8, 88, 89, 2, 'com_content.category.13', 'Site Map', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(41, 8, 90, 93, 2, 'com_content.category.14', 'Contact Us', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(42, 8, 94, 97, 2, 'com_content.category.15', 'Admission', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(43, 8, 98, 113, 2, 'com_content.category.16', 'News Flash', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(44, 36, 43, 44, 3, 'com_content.article.1', 'Abhijit Chakraborty', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 36, 45, 46, 3, 'com_content.article.2', 'Academic system', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 36, 49, 50, 3, 'com_content.article.3', 'Applied Chemistry & Chemical Engineering', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 36, 47, 48, 3, 'com_content.article.4', 'Basic Engineering', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 38, 83, 84, 3, 'com_content.article.5', 'Beauty Of NSTU', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 36, 51, 52, 3, 'com_content.article.6', 'Business Administration', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 35, 35, 36, 3, 'com_content.article.7', 'Chancellor', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 36, 53, 54, 3, 'com_content.article.8', 'Computer Science and Telecommunication Engineering', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 41, 91, 92, 3, 'com_content.article.9', 'contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 37, 77, 78, 3, 'com_content.article.10', 'Cultural Activities', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 36, 55, 56, 3, 'com_content.article.11', 'Departments', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 36, 57, 58, 3, 'com_content.article.12', 'English', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 36, 59, 60, 3, 'com_content.article.13', 'Environmental Science and Hazard Studies', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 36, 61, 62, 3, 'com_content.article.15', 'Faculties', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 36, 63, 64, 3, 'com_content.article.16', 'Fisheries and Marine Science', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 27, 19, 20, 3, 'com_content.article.17', 'Food Technology and Nutrition Science', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 27, 21, 22, 3, 'com_content.article.18', 'History', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 36, 65, 66, 3, 'com_content.article.19', 'Mathematics', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 36, 67, 68, 3, 'com_content.article.20', 'Md. Abdul Kaium Masud', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 27, 23, 24, 3, 'com_content.article.21', 'Md. Bellal Hossain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 36, 69, 70, 3, 'com_content.article.22', 'Md. Rakeb-Ul-Islam', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 35, 37, 38, 3, 'com_content.article.23', 'Message From VC', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 36, 71, 72, 3, 'com_content.article.24', 'Microbiology', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 27, 25, 26, 3, 'com_content.article.25', 'Mission & Vision', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 42, 95, 96, 3, 'com_content.article.26', 'Noakhali Science and Technology University Admission 2012', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 37, 79, 80, 3, 'com_content.article.27', 'NSTU Open Source Network (NSTU OSN)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 36, 73, 74, 3, 'com_content.article.28', 'Pharmacy', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 27, 27, 28, 3, 'com_content.article.29', 'Registrar Office', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 35, 39, 40, 3, 'com_content.article.30', 'Vice Chancellor', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 27, 29, 30, 3, 'com_content.article.31', 'Why NSTU', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 27, 31, 32, 3, 'com_content.article.32', 'Facilities', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 1, 167, 168, 1, 'com_foxcontact', 'com_foxcontact', '{}'),
(77, 43, 99, 100, 3, 'com_content.article.33', 'নোবিপ্রবি ক্যাম্পাসে দিনব্যাপী এআইএফ প্রমোশনাল ওয়ার্কশপ অনুষ্ঠিত', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 43, 101, 102, 3, 'com_content.article.34', 'নোবিপ্রবি বিতর্ক উৎসব', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 43, 103, 104, 3, 'com_content.article.35', 'নোবিপ্রবি’তে মহান শহীদ দিবস ও আমত্মর্জাতিক মাতৃভাষা দিবস উদ্যাপন', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 43, 105, 106, 3, 'com_content.article.36', 'নানা আয়োজনে নোবিপ্রবি’র ৬ষ্ঠ বর্ষ উদযাপন', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 43, 107, 108, 3, 'com_content.article.37', 'নোবিপ্রবি ওপেন সোর্স নেটওয়ার্কের সফটওয়্যার ফ্রীডম ডে উদযাপন', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 43, 109, 110, 3, 'com_content.article.38', ' নোবিপ্রবি''তে কোস্টাল এগ্রিকালচার বিভাগের মতবিনিময় সভা অনুষ্ঠিত', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 43, 111, 112, 3, 'com_content.article.39', 'নোবিপ্রবি''র ২০১২-১৩ শিক্ষাবর্ষের ভর্তি পরীক্ষা', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 1, 169, 170, 1, 'com_phocagallery', 'com_phocagallery', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 8, 114, 119, 2, 'com_content.category.17', 'student', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(86, 85, 115, 116, 3, 'com_content.article.40', 'Student''s corner of CSTE', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 85, 117, 118, 3, 'com_content.article.41', 'Student''s corner of Pharmacy', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_associations`
--

CREATE TABLE IF NOT EXISTS `qy1d9_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_banners`
--

CREATE TABLE IF NOT EXISTS `qy1d9_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_banner_clients`
--

CREATE TABLE IF NOT EXISTS `qy1d9_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `qy1d9_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_categories`
--

CREATE TABLE IF NOT EXISTS `qy1d9_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `qy1d9_categories`
--

INSERT INTO `qy1d9_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 33, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'about-nstu', 'com_content', 'About NSTU', 'about-nstu', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'About NSTU - Noakhali Science and Technology University', 'About NSTU', '{"author":"","robots":""}', 42, '2010-06-28 13:26:37', 323, '2012-09-27 11:16:03', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 35, 1, 13, 14, 1, 'administrative', 'com_content', 'Administrative', 'administrative', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Administrative - Noakhali Science and Technology University', 'Administrative', '{"author":"","robots":""}', 323, '2012-09-27 11:15:50', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 36, 1, 15, 16, 1, 'academic', 'com_content', 'Academic', 'academic', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Academic - Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:16:25', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 37, 1, 17, 18, 1, 'activities', 'com_content', 'Activities', 'activities', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:16:47', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 38, 1, 19, 20, 1, 'photo-galary', 'com_content', 'Photo Galary', 'photo-galary', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Photo Galary- Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:17:09', 0, '0000-00-00 00:00:00', 0, '*'),
(12, 39, 1, 21, 22, 1, 'notice', 'com_content', 'Notice', 'notice', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Notice-Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:17:26', 0, '0000-00-00 00:00:00', 0, '*'),
(13, 40, 1, 23, 24, 1, 'site-map', 'com_content', 'Site Map', 'site-map', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Site Map- Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:17:41', 323, '2012-09-27 11:19:04', 0, '*'),
(14, 41, 1, 25, 26, 1, 'contact-us', 'com_content', 'Contact Us', 'contact-us', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Contact Us - Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:17:52', 323, '2012-09-27 11:18:55', 0, '*'),
(15, 42, 1, 27, 28, 1, 'admission', 'com_content', 'Admission', 'admission', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'Admission-- Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:18:07', 323, '2012-09-27 11:18:44', 0, '*'),
(16, 43, 1, 29, 30, 1, 'news-flash', 'com_content', 'News Flash', 'news-flash', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', 'News Flash - Noakhali Science and Technology University', '', '{"author":"","robots":""}', 323, '2012-09-27 11:18:30', 0, '0000-00-00 00:00:00', 0, '*'),
(17, 85, 1, 31, 32, 1, 'student', 'com_content', 'student', 'student', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 323, '2012-10-01 12:47:43', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_contact_details`
--

CREATE TABLE IF NOT EXISTS `qy1d9_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_contact_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_content`
--

CREATE TABLE IF NOT EXISTS `qy1d9_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `qy1d9_content`
--

INSERT INTO `qy1d9_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 44, 'Abhijit Chakraborty', 'abhijit-chakraborty', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Profile : Abhijit Chakraborty</p>\r\n<p> </p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Lecturer, Dept. of Computer Science &amp; Telecommunication Engineering</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Joined as a full time Lecturer in the dept. of CSTE on 03 – 06 - 2010, at this University</p>\r\n<h2><strong>Contact Details:</strong></h2>\r\n<p class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">E- mail: </span></strong><a href="mailto:abhijit.cse@gmail.com"><strong><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">abhijit.cse@gmail.com</span></strong><strong><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';"><img src="images/jewel.jpg" border="0" width="188" height="188" style="border: 0; float: right;" /></span></strong></a></p>\r\n<p class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">Mobile : +880-01912183607 </span></strong></p>\r\n<p><strong><span style="font-size: 10pt; font-family: ''Book Antiqua'';">Noakhali Science and Technology University</span></strong></p>\r\n<p><strong><span style="font-size: 10pt; font-family: ''Book Antiqua'';">Sonapur, Noakhali-3814 , Bangladesh</span></strong></p>\r\n<p><strong><span style="font-size: 10pt; font-family: ''Book Antiqua'';">Office Phone: +88-0321-71486</span></strong></p>\r\n<p><strong><span style="font-size: 10pt; font-family: ''Book Antiqua'';">Website : http://www.nstu.edu.bd/index.php/academic/departments?id=87</span></strong></p>\r\n<h3 class="MsoNormal"><strong><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">Academic Background:</span></strong></h3>\r\n<p class="MsoNormal"><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">Masters of Engineering in Computer Science &amp; Engineering <br /> Bangladesh University of Engineering &amp; Technology.(BUET), 08 Batch(Pursuing)</span></p>\r\n<p class="MsoNormal"><span style="font-size: 14pt; line-height: 115%; font-family: ''Times New Roman'',''serif'';">B.Sc.(Hons.) in Computer Science &amp; Engineering,<br /> University of Chittagong (CU), 01 Batch</span></p>\r\n<p><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Research Interest:</span></span></strong></p>\r\n<p><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">1. Software Engineering</span></strong></p>\r\n<p><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">2 Traffic Engineering</span></strong></p>\r\n<p><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">3. Fiber optic Communication<br /></span></strong></p>\r\n<h3 class="MsoNormal"><strong><span style="font-family: ''Times New Roman'',''serif'';">RESEARCH AND PUBLICATIONS:</span></strong></h3>\r\n<p> </p>\r\n<div style="border-style: none none solid; border-color: -moz-use-text-color -moz-use-text-color windowtext; border-width: medium medium 1.5pt; padding: 0in 0in 2pt; margin-left: 0in; margin-right: -7.65pt;">\r\n<p class="MsoNoSpacing" style="padding: 0in; text-align: justify;"><strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';">1.</span></strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';"> Ashraful Arefin, <strong>Abhijit Chakraborty</strong>, Md. Mahfuzur Rahman and Mad. Atiqur Rahman, “Thinned Vertical Cavity Surface Emitting Laser Fabrication for Optical Interconnects”, Journal of Dhaka International University, ISSN: 2077-0111, Page No.: 161-169.</span></p>\r\n<p class="MsoNoSpacing" style="padding: 0in; text-align: justify;"><strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';">2.</span></strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';"><strong>Abhijit Chakraborty</strong>, Md. Shahidul Islam, Farah Sharmin and A F M Suaib akter, “Analysis and Mitigation of Signal Dependent Noise in Fiber Optic Transmission System”, Journal of Dhaka International University, ISSN: 2077-0111, Page No. : 121-128.</span></p>\r\n<p class="MsoNoSpacing" style="padding: 0in; text-align: justify;"><strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';">3.</span></strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';"> <strong>Abhijit Chakraborty</strong>, Mrinal Kanti Bawaly, ashraful Arefin and Ali Newaz Bahar, “The Role of Requirement Engineering in Software Development Life Cycle,” Internal Journal of Emerging Trends in Computing and Information Sciences , ISSN 2079-8407, May 2012. </span></p>\r\n<p class="MsoNoSpacing" style="padding: 0in; text-align: justify;"><strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';">4.</span></strong><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif'';"> Ali Newaz Bahar, Mrinal Kanti Bawaly and <strong>Abhijit Chakraborty</strong>, “An Intelligent Approach of Regulating Electric- Fan Adapting to Temperature and Relative Humidity, International Journal of Intelligent Systems and Applications, ISSN: 2074-9058, May 2012.</span></p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:25:10', 323, '', '2012-09-30 03:22:35', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:25:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 14, 'Abhijit ChakrabortyLecturer, Dept. of Computer Science & Telecommunication Engineering', 'Abhijit Chakraborty\r\nLecturer, Dept. of Computer Science & Telecommunication Engineering', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 45, 'Academic system', 'academic-system', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette''; text-align: center;"><strong>Academic system</strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Noakhali Science and Technology University follows a semester system for its four-year undergraduate programme. A student would take 160-172 credit hours. The four-year degree will be completed in eight terms of 22 weeks each. The first 15 weeks will be engaged for lectures, lab or fieldwork with a one-week break in the middle. Weeks 16 and 17 will be used for student''s preparatory leave for the examination. Examinations will be held during the next two weeks and the results declared within the remaining three.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Term 1 or January Term will begin on 2 January and end up on 4 June; Term 2 or June Term will run from 5 June to 5 November. The eight-week long vacation will remain effective from 6 November to 1 January when the teachers and students will go on vacation. For a part of the community the first seven weeks of this vacation will be employed to run an intensive Short Term when students will repeat a failed course or take a course anew to keep up with the 162 credit hours. Courses will be run in this term on a demand-and-supply basis. The number of classes per week for a course will be doubled. Exams and results will be completed in the last week. During this long vacation, admission for January Term will be finalized.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">A course in a Term will be evaluated for 100 marks per credit hour. The evaluation components will be student attendance, 5%; quiz-assignment, 25%; and the term final 70%. Three to four books will be prescribed as the texts for any course although the teacher will follow one in Toto. The lecture schedule will show the length of materials to be covered in each lecture. A lecture not given due to a valid reason will be given on a weekend day to makeup. A three credit hour course have three lectures, deliberations or lab exercises per week. The duration of a lab period is twice as much of a lecture period and that for a fieldwork is four times as much. Friday and Saturday are the weekly holiday.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">A number of subjects were named to be included in the inaugural list. The prominent ones are Applied Chemistry and Chemical Engineering, Computer Science &amp; Telecommunication Engineering, Pharmacy, Fisheries and Marine Science, Microbiology, Mathematics, Food Technology and Nutrition Science, Environmental Science and Hazard Studies, English and Bachelor of Business Administration.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">NSTU will be a place of equal opportunity for all students. They will choose and participate in activities to develop their cultural abilities and sportive feats. Jobs or studentships like teaching and research assistance or lab demonstration may be available for meritorious students. Initially the university will run a research centre to cover the research facilities for the departments. Adaptive research may be carried out through this centre based on some burning issues related to the coastal system.</p>', '', 1, 0, 0, 9, '2012-09-27 11:26:55', 323, '', '2012-09-28 15:29:21', 323, 323, '2012-09-30 03:22:43', '2012-09-27 11:26:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 12, 'Noakhali Science and Technology University', 'Noakhali Science and Technology University follows a semester system for its four-year undergraduate programme. A student would take 160-172 credit hours. ', 1, 131, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 46, 'Applied Chemistry & Chemical Engineering', 'applied-chemistry-chemical-engineering', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the Applied Chemistry &amp; Chemical Engineering Department. It includes 13 Faculty Members, 260 Students and Staff: 5.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Dr. Muhammed Yusuf Miah,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Assistant professor<br />Applied Chemistry &amp; Chemical Engineering Department<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Name of Faculty Members :</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Assistant Professors:</strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Dr. Newaz Md. Bahadur</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">2. Mr. Md. Saiful Alam</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">3. Mr. Md. Ismail Hossain (Leave)</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">4. Mr. Md. Jakarul Islam(Study Leave)</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">5. Mr. Md. Ashraful Alam (Study Leave)</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">6. Mrs. Ansara Nuri (Study Leave)</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Mr. Juganta Kumar Roy (Study Leave)</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">2. Mr. Md. Tanvir Hossain</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">3. Mr. Md. Touhidul Islam</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">4. Mrs. Nazia Noor</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">5. Mr. Foteh Nur Robel</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">6. Mr. Md. Rafiqul Islam</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lab facilities:</span></h1>\r\n<div class="thepet">\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Applied Chemistry Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Organic Chemistry Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Inorganic Chemistry Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">General Chemistry Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chemical Technology Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chemical Engineering Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Physical Chemistry Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Industrial Raw material and Product Analysis Lab</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of ACCE</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of ACCE". So don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:27:55', 323, '', '2012-10-01 10:28:29', 323, 323, '2012-10-01 13:48:38', '2012-09-27 11:27:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 0, 15, '', 'Welcome to the Applied Chemistry & Chemical Engineering Department - Noakhali Science and Technology University', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 47, 'Basic Engineering', 'basic-engineering', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Welcome to Department of Basic Engineering</strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chairman(Acting) :Mr. Md. Bellal Hossain, Assistant Professor</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Faculty Members : 1, Staffs : Nill</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Assistant Professors:</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Dr. Md. Ashiqur Rahman Khan</p>\r\n<p> </p>', '', 1, 0, 0, 9, '2012-09-27 11:28:53', 323, '', '2012-09-30 03:30:38', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:28:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 13, '', 'Welcome to Department of Basic Engineering - Noakhali Science and Technology University', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 48, 'Beauty Of NSTU', 'beauty-of-nstu', '', '<p style="text-align: justify;"><strong>Noakhali Science and Technology University</strong> is a newly established public university in the coastal terrain Noakhali of Bangladesh. The landscape is amazing particularly because of thin population and thin plantation. The area is saline and not fertile. Trees are recent and not as robust as they should be. Tall trees do not mark the horizon. Ponds appear in large numbers, but most of them dry up during summer. Poor harvest and low vegetation is related to non-availability of nutrients in the sandy soil. Low- or high-tech methods, including indigenous measures, may turn these arid fields to rich farmlands. It may be appropriate for this university to watch these on academic foundations.</p>\r\n<p style="text-align: justify;">The site of the university is part of a vast Char that stretches on the south to Char Jabbar, Char Bata, Char Wapda and Char Clark before it reaches the feebly flowing Bhulua River. Like the district itself, Sonapur has a long history of erosion and accretion caused by the mighty Meghna on the west and the Bay of Bengal on the south.</p>', '', 1, 0, 0, 11, '2012-09-27 11:29:51', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-27 11:29:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', 'Noakhali Science and Technology University is a newly established public university in the coastal terrain Noakhali of Bangladesh.', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 49, 'Business Administration', 'business-administration', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the Business Administration Department. It includes 2 Faculty Members, 84 Students and Staff: 5.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Professor A. K. M. Sayedul Haque Chowdhury,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Vice Chancellor<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Mr. Masum Miah, Lecturer</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">2. <a href="component/content/article/9-academic/20-md-abdul-kaium-masud" target="_self"> Mr. Md. Abdul Kaium Masud</a>, Lecturer</p>\r\n</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of Business Administration</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of Business Administration". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:32:08', 323, '', '2012-10-01 11:43:34', 323, 323, '2012-10-01 11:43:34', '2012-09-27 11:32:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 11, '', 'Welcome to Business Administration Department - Noakhali Science and Technology University', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 50, 'Chancellor', 'chancellor', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><img src="images/zillur_rahman-bangladesh_0.jpg" border="0" alt="" width="114" height="153" align="left" /> Mr. Md. Zillur Rahman, the 19th President of the People’s Republic of Bangladesh, was born in a respectable Muslim family under Bhairab Thana of Kishoreganj district on March 09, 1929. His father late Meher Ali Mian was a renowned lawyer, Chairman of the then Mymensingh Local Board and Member of the District Board.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Zillur Rahman started his academic life in the district town of Mymensingh. He passed Matriculation (Grade 10 exam.) from Bhairab K. B. High School in 1945 and later obtained Intermediate of Arts (I. A.) certificate from Dhaka Intermediate College. In 1954, he got his M.A. with Honors in History and L. L. B. degree from the University of Dhaka.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Zillur Rahman played an active role in the great Language Movement in 1952. He presided over a student gathering held in the historic Amtala (Mango grove) of Dhaka University on 19 February 1952 to voice the demand for Bangla as the State Language. The work plan of 21 February was taken from that gathering. Mr. Zillur Rahman was one of the prominent student-leaders among the 11 who met at the pond-side between Fazlul Huq Hall and Dhaka Hall on 20 February 1952 and took the decision to break the prohibitory order under section144.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">In 1953, he was elected uncontested Vice-President (VP) of Student Union of Fazlul Huq Hall, University of Dhaka. He was expelled from the University and his Masters Degree withdrawn for his active participation in the Language Movement. However, facing intense agitation by the students, the university authority was compelled to restore his degree. At the time of Jukto-Front (United Front) Election in 1954, he was made the Vice-Chairman of Election Steering Committee for the greater Mymensingh district. He also performed his duties as the President of erstwhile East Pakistan Awami Sechchhasebak League (Volunteer front of the party). He was the founder President of Kishoreganj Awami League in 1956. He was elected General-Secretary of Dhaka District Bar Association in the Sixties.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Zillur Rahman came in close touch with Father of the Nation Bangabandhu Sheikh Mujibur Rahman in 1947, when as a student of Dhaka Intermediate College; he was campaigning on referendum in Sylhet during the British regime. He took part in all mass-movements, including the movement against military rule in 1962, Six-point Movement in 1966 and the mass-upsurge of 1969 as a close associate of Bangabandhu Sheikh Mujibur Rahman. In 1970, he was elected Member of the National Assembly (MNA) of Pakistan.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Zillur Rahman was one of the veteran organizers of Bangladesh Liberation War in 1971. He was associated with the Sadhin Bangla Betar Kendro (a Radio station of Independent Bangladesh) and the publication of newspaper named, “Joy Bangla”, the mouth-piece of the then Mujibnagar Government. During the war of liberation, the occupation regime of Pakistan sentenced him to twenty years of imprisonment in absentia, and confiscated all his properties. They also cancelled his Membership of the National Assembly.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">In 1972, immediately after the great victory in the war of liberation, as a Member of Bangladesh Constituent Assembly, Mr. Zillur Rahman actively took part in formulation of the Constitution of Bangladesh. He was elected Member of Parliament (MP) in 1973 and 1986 respectively. In 1996, he was elected MP in the 7th Parliament and became a Cabinet Minister. He held the portfolio of the Ministry of Local Government, Rural Development &amp; Cooperatives. Apart from his Ministership, as the Deputy Leader in the Parliament he successfully performed the responsibilities of this prestigious post till 2001. He was again elected MP in the 8th Parliament in 2001.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Zillur Rahman led the party efficiently at a very crucial time with courage and farsightedness after the arrest of Sheikh Hasina, the President of Bangladesh Awami League, on July 16, 2007 following the promulgation of State of Emergency on January 11, 2007. During her 11-month captive life in Special Jail and subsequently six-month stay abroad for treatment, Mr. Zillur Rahman played a vital role as the Acting President of the Party. He made immense contributions in keeping the Party united and restoring Democracy in the country with his political prudence and wisdom. Bangladesh Awami League won landslide victory in the 9th Parliament Election held on 29 December 2008. He became a Member of Parliament for the Sixth time. He played a pivotal role as the Deputy Leader of Parliament before taking oath as the 19th President of the Republic on February 12, 2009.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">In 1972, after the Independence, Father of the Nation Bangabandhu Sheikh Mujibur Rahman was elected the President while Mr. Md. Zillur Rahman was elected the General-Secretary of Bangladesh Awami League. He was re-elected General-Secretary of the Party in 1974. He became the first General Secretary of Bangladesh Krishok Shramik Awami League in 1975. After the brutal assassination of the Father of the Nation Bangabandhu Sheikh Mujibur Rahman and his family in 1975, he was put behind bars for 4 years. Mr. Zillur Rahman played an important role as Presidium Member of Bangladesh Awami League In 1981, when Sheikh Hasina, the elder daughter of Bangabandhu, returned home after seven years of exile. He suffered imprisonment again in 1986 while he was a Member of Parliament, for his active role against the autocratic government. He was elected General-Secretary of Bangladesh Awami League in 1992 and 1997 respectively through the Party’s Council.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Md. Zillur Rahman sworn in of the office of the President of the People’s Republic of Bangladesh on 12 February 2009 as the 19th President.</p>', '', 1, 0, 0, 8, '2012-09-27 11:33:23', 323, '', '2012-09-28 15:11:10', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:33:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 2, '', 'Chancellor - Noakhali Science and Technology University', 1, 36, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 51, 'Computer Science and Telecommunication Engineering', 'computer-science-and-telecommunication-engineering', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to Department of Computer Science and Telecommunication Engineering. It includes 12 Faculty Members, 260 Students and Staff: 4.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><a href="component/content/article/2-about-nstu/21-md-bellal-hossain" target="_self"> Md. Bellal Hossain</a>,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chairman and Assistant Professor<br />Computer Science and Telecommunication Engineering Department<br />Noakhali Science and Technology University<br style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';" /><a href="mailto:belal.nstu@gmail.com"></a><span style="display: none;">This email address is being protected from spambots. You need JavaScript enabled to view it. </span></p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Assistant Professors</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Dr. Mohammed Humayun Kabir, Assistant Professor</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">2. Javed Hossain, Assistant Professor</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">3. Md. Asadun Nabi (Study Leave), Assistant Professor<br /> <br /> 4.Mr. Md. Bellal Hossain, Assistant Professor</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lecturers:</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Mrs. Nahid Akhter <span style="font-size: 12pt; line-height: 115%; font-family: ''Times New Roman''; position: relative; top: -4pt;"> (Study Leave), </span></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">2. Mr. <a href="component/content/article/9-academic/1-abhijit-chakraborty" target="_self"> Abhijit Chakraborty</a>,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">3. Mr. Mrinal Kanti Baowaly,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">4.Miss. Fateha Khanam Bappee (Study Leave),</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">5. Mr. Ibrahim Azad,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">6. Mr. Md. Amran Hossain Bhuiyan,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">7. Mr. Md. Kamal Uddin,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">8. Mr. Abul Kalam Azad</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lab facilities:</span></h1>\r\n<div class="thepet">\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Programming &amp; Data Structure Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Digital System Processing &amp; Operating System Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Electrical &amp; Electronics Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Data communication Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Microprocessor Lab</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Microwave &amp; Satellite Communication Lab</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<h3 class="mypets" dir="ltr"><strong><a href="component/content/article/17-student/40-student-s-corner-of-cste">Students Corner of CSTE</a></strong></h3>', '', 1, 0, 0, 9, '2012-09-27 11:34:37', 323, '', '2012-10-01 16:00:31', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:34:37', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 20, 0, 10, '', 'Computer Science and Telecommunication Engineering - Noakhali Science and Technology University', 1, 67, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 52, 'contact', 'contact', '', '<p>Noakhali Science And Technology University</p>\r\n<p>Sonapur, Noakhali-3814</p>\r\n<p>Phone: +88-0321-71486</p>\r\n<p>Fax: +88-0321-62788</p>\r\n<p>Email: info@nstu.edu.bd</p>', '', 1, 0, 0, 14, '2012-09-27 11:35:54', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-27 11:35:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', 'contact - Noakhali Science and Technology University', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 53, 'Cultural Activities', 'cultural-activities', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Our Cultural activities</strong><br /><br />NSTU is very conscious to preserve Bangladesh''s culture. It celebrates International Mother Language Day, Pahela Baishak, Bosonta Baron, Independence Day, Victory Day, International Anti Drug Day, Friendship Day and other national and international days with actual manner.<br /><br />Cultural competition occurs here every year. This competition includes songs, dance, recitation, etc.<br /><br />NSTU is proud of its Prothom-alo Bondhusava and Debating Society. NSTU Prothom-alo Bandhusava is the first cultural organization in this campus. Every year Debating Society arrange intra- and inter-collage and university debates. A recitation organization named Jatiyo Kobita Porishod (local name: Pata Neer) is running successfully.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><br /><strong>Sports</strong><br /><br />The university has strong cricket, football, volleyball and badminton teams. Intradepartment and interdepartment sport competition is held regularly indoors and outdoors. The university takes parts in inter-university competitions.<br />Scholarships<br /><br />NSTU offers scholarships to its meritorious students. Poor and meritorious students receive awards. In every term, five students in each batch of each department are offered scholarships. Organizations provide scholarships regularly.<br />Religious activities<br /><br />Religious activities are celebrated by the students in NSTU''s friendly atmosphere regularly and respectively. Every year the Hindu students celebrate the Holy Jonmastomi and Sri Sri Sarasati puja with great festivity.</p>', '', 1, 0, 0, 10, '2012-09-27 11:36:56', 323, '', '2012-10-01 06:23:15', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:36:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 1, '', 'Cultural activities - NSTU is very conscious to preserve Bangladesh''s culture. It celebrates International Mother Language Day, Pahela Baishak, Bosonta Baron, Independence Day, Victory Day, International Anti Drug Day, Friendship Day and other national and international days with actual manner.', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `qy1d9_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(11, 54, 'Departments', 'departments', '', '<h2><span id="Major_departments" class="mw-headline"><strong> </strong></span></h2>\r\n<ul>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/8-computer-science-and-telecommunication-engineering"><span id="Computer_Science_and_Telecommunication_Engineering_.28CSTE.29" class="mw-headline">Computer Science and Telecommunication Engineering (CSTE)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/3-applied-chemistry-chemical-engineering"><span id="Applied_Chemistry_.26_Chemical_Engineering_.28ACCE.29" class="mw-headline">Applied Chemistry &amp; Chemical Engineering (ACCE)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/16-fisheries-and-marine-science"><span id="Fisheries_and_Marine_Science_.28FIMS.29" class="mw-headline">Fisheries and Marine Science (FIMS)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/28-pharmacy"><span id="Pharmacy" class="mw-headline">Pharmacy</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/24-microbiology"><span id="Microbiology" class="mw-headline">Microbiology</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/19-mathematics"><span id="Mathematics" class="mw-headline">Mathematics</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/12-english"><span id="English" class="mw-headline">English</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/13-environmental-science-and-hazard-studies&quot;"><span id="Environmental_Science_and_Hazard_Studies" class="mw-headline">Environmental Science and Hazard Studies</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/2-about-nstu/17-food-technology-and-nutrition-science"><span id="Food_Technology_and_Nutrition_Science" class="mw-headline">Food Technology and Nutrition Science</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="component/content/article/9-academic/6-business-administration"><span id="BBA" class="mw-headline">Business Administration</span></a></h3>\r\n</li>\r\n<li>\r\n<p><span id="BBA" class="mw-headline"><a href="component/content/article/9-academic/4-basic-engineering" target="_self"><strong>Basic Engineering (Supporting)</strong></a><br /></span></p>\r\n</li>\r\n</ul>', '', 1, 0, 0, 9, '2012-09-27 11:49:19', 323, '', '2012-10-01 15:59:46', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:49:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 8, '', 'Departments-Noakhali Science and Technology University', 1, 112, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 55, 'English', 'english', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the Department of English. It includes 04 Faculty Members, -- Students and Staff: --.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Mr. Md. Maruf Ul Alam,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Lecturer<br />Department of English<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lecturers:</span></h1>\r\n<div class="thepet">1. Mrs. Afsana Mousume, Lecturer<br /> <br /> 2. Mr. Md. Nasir Uddin, Lecturer<br /> <br /> 3. Mr. Md. Mushfiqur Rahman, Lecturer</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of English</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of English". So Please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:50:05', 323, '', '2012-10-01 11:02:49', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:50:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 9, '', 'English - Noakhali Science and Technology University', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 56, 'Environmental Science and Hazard Studies', 'environmental-science-and-hazard-studies', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the Environmental Science and Hazard Studies Department. It includes 3 Faculty Members, 60 Students and Staff: --.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">Chairman: Md. Saiful Alam (Acting) , Assistant Professor, Dept. of ACCE\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Environmental Science and Hazard Studies Department<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet">1. Mr. Md. Mahinuzzaman<br /> 2. Mr. Jayanta Kumar Basak</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of Environmental Science</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of Environmental Science". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:51:34', 323, '', '2012-10-01 11:32:13', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:51:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 7, '', 'Welcome to Environmental Science and Hazard Studies Department - Noakhali Science and Technology University', 1, 14, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 58, 'Faculties', 'faculties', '', '<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">FACULTY OF SCIENCE: Dean : Professor Dr. Md. Abul Hosen</p>\r\n</li>\r\n</ul>\r\n<ol>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/8-computer-science-and-telecommunication-engineering"><span id="Computer_Science_and_Telecommunication_Engineering_.28CSTE.29" class="mw-headline">Computer Science and Telecommunication Engineering (CSTE)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/3-applied-chemistry-chemical-engineering"><span id="Applied_Chemistry_.26_Chemical_Engineering_.28ACCE.29" class="mw-headline">Applied Chemistry &amp; Chemical Engineering (ACCE)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/16-fisheries-and-marine-science"><span id="Fisheries_and_Marine_Science_.28FIMS.29" class="mw-headline">Fisheries and Marine Science (FIMS)</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/28-pharmacy"><span id="Pharmacy" class="mw-headline">Pharmacy</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/24-microbiology"><span id="Microbiology" class="mw-headline">Microbiology</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/19-mathematics"><span id="Mathematics" class="mw-headline">Mathematics</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/12-english"><span id="English" class="mw-headline">English</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/13-environmental-science-and-hazard-studies"><span id="Environmental_Science_and_Hazard_Studies" class="mw-headline">Environmental Science and Hazard Studies</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/2-about-nstu/17-food-technology-and-nutrition-science"><span id="Food_Technology_and_Nutrition_Science" class="mw-headline">Food Technology and Nutrition Science</span></a></h3>\r\n</li>\r\n<li>\r\n<h3><a href="index.php/component/content/article/9-academic/6-business-administration"><span id="BBA" class="mw-headline">Business Administration</span></a></h3>\r\n</li>\r\n<li>\r\n<p><span id="BBA" class="mw-headline"><a href="index.php/component/content/article/9-academic/4-basic-engineering" target="_self"><strong>Basic Engineering (Supporting)</strong></a></span></p>\r\n</li>\r\n</ol>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Applied Chemistry &amp; Chemical Engineering, Computer Science and Telecommunication Engineering, Pharmacy, Fisheries and Marine Science department provide post graduation courses.</p>', '', 1, 0, 0, 9, '2012-09-27 11:53:56', 323, '', '2012-10-01 15:30:08', 323, 323, '2012-10-01 15:30:08', '2012-09-27 11:53:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 6, '', 'Faculties - Noakhali Science and Technology University', 1, 18, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 59, 'Fisheries and Marine Science', 'fisheries-and-marine-science', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the Fisheries and Marine Science Department. It includes 13 Faculty Members, 260 Students and Staff: 6.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chairman: Md. Rakeb-Ul-Islam,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Assistant Professor<br />Fisheries and Marine Science Department<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Professors:</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Professor Dr. Md. Abul Hossain , Dean , Faculty of Science, Noakhali Science and Technology University<br /> Associate Professors:<br /> <br /> 1. Dr. Md. Jahangir Sarker<br /> Assistant Professors:<br /> <br /> 1. Mr. A F M Arifur Rahman<br /> <br /> 2. Dr. Gausia Wahidunnesa Chowdhury<br /> <br /> 3. Mr. Mehedy Mahmudul Hasan<br /> <br /> 4. Mr. Md. Belal Hossain (Study Leave)<br /> <br /> 5. Mr. Abdullah Al Mamun(Study Leave)<br /> <br /> 6. Mr. Vakta Suprotim Sarker<br /> <br /> 7. Mr. Debashish Saha</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet"><br />\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">1. Mr. Ripon Kumar Adhikary Milton<br /> <br /> 2. Mr. Md. Mofizur Rahman Ripon<br /> <br /> 3. Mr. Md. Anisuzzaman Rimon<br /> <br /> 4. Mr. Md. Rabiul Hasan Rony</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lab facilities:</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Biochemistry Lab<br /> Fisheries Lab<br /> Microbiology Lab<br /> Chemistry Lab<br /> Environmental Lab</p>\r\n</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of FIMS</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of FIMS". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:54:52', 323, '', '2012-10-01 10:30:53', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:54:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 5, '', 'Welcome to the Fisheries and Marine Science Department- Noakhali Science and Technology University', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 60, 'Food Technology and Nutrition Science', 'food-technology-and-nutrition-science', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Welcome to the <strong style="font-weight: 400;">Food Technology and Nutrition Science Department</strong>. It includes 2 Faculty Members, 60 Students and Staff: --.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">Chairman(Acting): Mehedi Mahmudul Hasan, Assistant Professor\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong style="font-weight: 400;">Food Technology and Nutrition Science Department</strong><br /> Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet">1. Mr. S M Rejaul Hoque<br /> <br /> 2. Mr. Md. Tajul Islam</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of Food Technology</h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of Food Technology". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 2, '2012-09-27 11:55:50', 323, '', '2012-10-01 11:38:21', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:55:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 7, '', 'Welcome to Food Technology and Nutrition Science Department-Noakhali Science and Technology University', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 61, 'History', 'history', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Knewave'';">Noakhali Science And Technology University (popularly known as NSTU) is a newly established public university in the coastal terrain Noakhali of Bangladesh. It is the 27th public university (out of 32) and fifth science and technology university in Bangladesh. Its foundation stone was laid on 11 October 2003 and academic activities started on 22 June 2006. It has three faculties and ten departments.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Knewave'';">NSTU has about 1658 undergraduate and postgraduate students. It has 70 teachers. Founding a science and technology university in a coastal terrain like Noakhali is significant. A newly accrued coastal system may render this university a versatile field station to study the pattern of changes in the seashore and to harness its opportunities. Former Prime Minister Begum Khaleda Zia laid the foundation stone of Noakhali Science and Technology University on 11 October 2003. Earlier the Prime Minister Sheikh Hasina takes necessary steps to established this university.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Knewave'';">At 11 July 2001 her government passed a law in the parliament. Its construction work was formally inaugurated on 24 March 2005. It is the fifth of 12 such universities the government decided in 1997 to establish in the 12 greater districts where there was no university. The aim of founding a science and technology university as defined in the project pro-formal is to mold merit into skilled work force and to develop centers of excellence to create and disseminate knowledge. Innovating new technologies and developing the old ones is one of the research and development (R&amp;D) objectives of these universities.</p>', '', 1, 0, 0, 2, '2012-09-27 11:57:00', 323, '', '2012-10-01 04:12:29', 323, 0, '0000-00-00 00:00:00', '2012-09-27 11:57:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 6, '', 'History - Noakhali Science and Technology University', 1, 41, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 62, 'Mathematics', 'mathematics', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong style="font-weight: 400;">Welcome to the department of Mathematics.</strong> It includes 4 Faculty Members, 100 Students and Staff: 2.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">Mr.  MD. Nizam Uddin,\r\n<p>Assistant Professor</p>\r\n<p><strong style="font-weight: 400;">Department of Mathematics</strong><br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Professors:</span></h1>\r\n<div class="thepet">Assistant Professors :<br /> 1. Dr. Md. Hanif</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet" style="width: 1242; height: 57;">1. Mr. Md. Ziaul Hoque Mir Rubel<br /> 2. Mr. Md. Jasim Uddin</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of <strong style="font-weight: 400;">Mathematics</strong></h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of <strong style="font-weight: 400;">Mathematics</strong>". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 11:58:08', 323, '', '2012-10-01 10:55:25', 323, 323, '2012-10-01 10:55:25', '2012-09-27 11:58:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', 'Mathematics-Noakhali Science and Technology University', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 63, 'Md. Abdul Kaium Masud', 'md-abdul-kaium-masud', '', '<p><img src="images/Md. Abdul Kaium Masud.jpg" border="0" alt="" style="float: right;" /></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">MD. ABDUL KAIUM MASUD<br />Noakhali Science and Technology University<br />Sonapur, Noakhali - Bangladesh 3814 <br />MOBILE NO: 01718-509951<br />E-mail: masudbd08@gmail.com<br />Academic Background:<br /><br />MBA(ACCOUNTING &amp; INFORMATION SYSTEMS), University of Rajshahi, 2009<br /><br />BBA(ACCOUNTING &amp; INFORMATION SYSTEMS), University of Rajshahi, 2008<br /><br /> <br /><br />Publications:<br /><br />1. Masud Abdul Kaium, Productivity Measurement of Private Commercial Banks in Bangladesh; (Accepted) The Business and Economic Review, Vol. 1, No. 4<br /><br />2. Normal 0 false false false EN-US X-NONE X-NONE MicrosoftInternetExplorer4 Masud Abdul Kaium (2011), CSR practices of private commercial bank’s in Bangladesh: A comparative study; Accepted by MPRA and available in mpra.ub.uni-muenchen.de/35496/</p>', '', 1, 0, 0, 9, '2012-09-27 12:01:42', 323, '', '2012-09-30 04:28:19', 323, 0, '0000-00-00 00:00:00', '2012-09-27 12:01:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', 'Md. Abdul Kaium Masud- Noakhali Science and Technology University ', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 64, 'Md. Bellal Hossain', 'md-bellal-hossain', '', '<p><img src="images/bellal.jpg" border="0" alt="" width="174" height="202" style="float: right;" /></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Md. Bellal Hossain<br />Chairman and Assistant Professor<br />Computer Science and Telecommunication Engineering Department<br />Noakhali Science and Technology University<br />Cell.+880-171-6699401<br />Phone (office).+880-321-71486<br />E-mail: belal.nstu@gmail.com<br /><br />Academic Background: B.Sc Engineering (EEE), CUET.<br /><br />Publications:<br /><br />1. Md. Saifur Rahman, Md. Bellal Hossain, Md. Javed Hossain, Mrinal Kanti Baowaly “Performance Comparison and Improvement of Broadcasting Protocols in Mobile Ad-Hoc Network”, ARPN Journal of Systems and Software, ISSN: 2222-9833, Vol. 2, No. 2, March 2012.<br /><br />2. Mostafa Kamrul Ahsan, Md. Javed Hossain, Md. Bellal Hossain, “Node Based Radio Network Planning”, IFRSA’s International Journal of Computing, ISSN:2230-9039, Vol. 1, Issue 3, July 2011. (Published)<br /><br />3. Kazi Tofayel Ahmed, Md. Bellal Hossain, Md. Javed Hossain, “Designing a high bandwidth patch antenna and comparison within the former patch antennas”, Canadian Journal on Multimedia and Wireless Networks, ISSN: 1923-1697, Vol. 2, No. 2, April 2011. (Published)<br /><br />4. A. Nobi, Md. Bellal Hossain, M. Zamil Sultan, M.F. Kibria, Sazzadur Rahman, “Determination of fractal dimension of the classical triadic cantor set and stochastic cantor set using Monte-Carlo simulation and comparison with analytical solution”, Institutional Engineering and Technology, ISSN: 2076-3972, Vol. 1, Issue 1, January 2010. (Published)<br /><br />5. H.M. Imran Hassan, Md. Bellal Hossain, M. FahadHasan, A. Nobi,Md. Asaduzzaman, “Real Time Object Detection and Moving Object Tracking”, International Journal of Engineering and Technology, ISSN: 1812-7711, Vol. 6, Issue 4, December 2009. (Published)</p>', '', 1, 0, 0, 2, '2012-09-27 12:03:06', 323, '', '2012-09-30 04:30:24', 323, 0, '0000-00-00 00:00:00', '2012-09-27 12:03:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', 'Md. Bellal Hossain- Noakhali Science and Technology University ', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `qy1d9_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(22, 65, 'Md. Rakeb-Ul-Islam', 'md-rakeb-ul-islam', '', '<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-family: ''Times New Roman'';"><img src="images/Rakib.JPG" border="0" width="160" height="185" style="float: right; border: 1px solid black; margin-left: 30px; margin-right: 30px;" /></span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Md. Rakeb-Ul-Islam</span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Contact details:</span></span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Assistant Professor &amp; Chairman</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Department of Fisheries and Marine Science</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Noakhali Science and Technology University</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Sonapur, Noakhali-3814</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Phone: +88-0321-71484</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Mobile No. +88-01716-783991</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Fax No. +88-0321-62788</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Email: <a href="mailto:mrakeb_82bau@yahoo.com">mrakeb_82bau@yahoo.com</a></span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Website : <a>www.nstu.edu.bd</a> </span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"> </p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Research Ex</span></span></strong><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">p<span style="mso-no-proof: yes;">ertise:</span></span></span></strong></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Fish Molecular Genetics</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Fish Breeding and Hatchery Management</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Freshwater Aquaculture</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;"> </span></span></strong></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Research Interest:</span></span></strong></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Molecular Ecology</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Fish </span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Population Genetics</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Fish Biodiversity Conservation</span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><br /> <strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Employment History:</span></span></strong></p>\r\n<p class="MsoNormalCxSpMiddle" style="margin-bottom: .0001pt; mso-add-space: auto; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Current Employment</span></strong></p>\r\n<table class="MsoNormalTable" style="border-collapse: collapse; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;">\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormalCxSpFirst" style="margin-bottom: .0001pt; mso-add-space: auto; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Sept. 2010- Till date</span></p>\r\n</td>\r\n<td style="width: 96.9pt; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="129">\r\n<p class="MsoNormalCxSpMiddle" style="margin-bottom: .0001pt; mso-add-space: auto; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Assistant Professor</span></p>\r\n</td>\r\n<td style="width: 3.0in; padding: 0in 5.4pt 0in 5.4pt;" valign="top" width="288">\r\n<p class="MsoNormalCxSpMiddle" style="margin-bottom: .0001pt; mso-add-space: auto; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Department of Fisheries and Marine Science, Noakhali Science and Technology University</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Previous Employment History</span></strong></p>\r\n<table class="MsoNormalTable" style="width: 103.78%; border-collapse: collapse; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;" width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 6.25pt;">\r\n<td style="width: 20.48%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="20%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Sept. 2008- Mar. 2011</span></p>\r\n</td>\r\n<td style="width: 26.54%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="26%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Lecturer</span></p>\r\n</td>\r\n<td style="width: 52.98%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="52%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Department of Fisheries and Marine Science, </span></p>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Noakhali Science and Technology University</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1; mso-yfti-lastrow: yes; height: 6.25pt;">\r\n<td style="width: 20.48%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="20%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Apr. 2007-Aug. 2008</span></p>\r\n</td>\r\n<td style="width: 26.54%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="26%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Fisheries Research Officer</span></p>\r\n</td>\r\n<td style="width: 52.98%; padding: 0in 5.4pt 0in 5.4pt; height: 6.25pt;" valign="top" width="52%">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> Water Development Board</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Education</span></strong></p>\r\n<table class="MsoNormalTable" style="border-collapse: collapse; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">2006-2007 </span></p>\r\n</td>\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">M.S in Fisheries Biology &amp; Genetics</span></p>\r\n</td>\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> Agricultural University</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1; mso-yfti-lastrow: yes;">\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">2001-2005 </span></p>\r\n</td>\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">B.Sc. in Fisheries (Honors)</span></p>\r\n</td>\r\n<td style="padding: 0in 5.4pt 0in 5.4pt;" valign="top">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> Agricultural University</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua'';">Research Grants</span></strong></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Md. Rafiqul Islam Sarder,; Md. Fazul Awal Mollah; Md. Mukhlesur Rahman Khan (Professor. </span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh Agricultural University); <strong style="mso-bidi-font-weight: normal;">Md.</strong><strong style="mso-bidi-font-weight: normal;"> Rakeb-Ul-Islam</strong> (Noakhali Science and</span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Technology University), 2009. Livelihood improvement of freshwater prawn </span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">(<em style="mso-bidi-font-style: normal;">Macrobrachium rosenbergii</em>) farmers, nurserers and hatchery operators of Noakhali </span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">region underDANIDA project ensuring seed quality. RFLDC, DANIDA,</span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Bangladesh. Funds approved: US$ 62388.83. </span></p>\r\n<p class="MsoBodyText" style="margin-left: 9.35pt; text-align: justify; text-indent: -9.35pt; tab-stops: list 9.0pt;"><br /> <strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Md. Rakeb-Ul-Islam</span></strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">, 2010. <span style="color: black; mso-bidi-font-weight: bold;">Seasonal variation in the proximate composition of Chiring fish (<em style="mso-bidi-font-style: normal;">A.</em></span></span></p>\r\n<p class="MsoBodyText" style="text-align: justify; tab-stops: list 9.0pt;"><em style="mso-bidi-font-style: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; color: black; mso-bidi-font-weight: bold;">bato</span></em><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; color: black; mso-bidi-font-weight: bold;">). UGC, Bangladesh. Funds approved:</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> US$ 671.</span><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> <br /></span></strong></p>\r\n<p class="MsoBodyText" style="text-align: justify; tab-stops: list 9.0pt;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">List of Publications</span></strong></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Ahmed, G. U., M. N. Akter, <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong> and K. M. M. Rahman. 2011. Health condition of juvenile exotic carp, <em style="mso-bidi-font-style: normal;">Cyprinus carpio</em> from various fish farms of mymensingh area, Bangladesh. <em style="mso-bidi-font-style: normal;">International Journal of Natural Sciences</em>, <strong style="mso-bidi-font-weight: normal;">1(4)</strong>:77-81.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Akter, H., <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong> and M. Belal Hossain. 2012. Fecundity and gonadosomatic index (GSI) of Corsula, <em style="mso-bidi-font-style: normal;">Rhinomugil corsula</em> Hamilton, 1822 (Family: Mugilidae) from the lower Meghna River estuary, Bangladesh. <em style="mso-bidi-font-style: normal;">Global Veterinaria</em>, <strong style="mso-bidi-font-weight: normal;">9</strong>(2):129-132.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Azim, M. A., <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>, M. Belal Hossain and M. H. Minar. 2012. Seasonal variation in the proximate composition of gangetic sillago, <em style="mso-bidi-font-style: normal;">Sillaginopsis panijus</em> (Perciformes: sillaginidae). <em style="mso-bidi-font-style: normal;">Middle-East Journal of Scientific Research</em>, <strong style="mso-bidi-font-weight: normal;">11</strong>(5): 559-562.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Habib, M. A., M. A. Sohel, D. Saha, M. A. Salam and <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>. 2008. Livelihood status of women headed households (WHH) nursing prawn post larvae (PL) in Noakhali char area, Bangladesh. <em>J. Bangladesh Soc. Agric. Sci. Technol.</em><span style="mso-bidi-font-style: italic;">,<strong style="mso-bidi-font-weight: normal;">5</strong>(3&amp;4): 113-116<em>.</em></span></span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Hossain M., R. K. Adhikary, K. R. Mahbub, M. Begum and <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>. 2012. Effect of 10% concentrations of salt, garlic and coriander on the quality of smoked Hilsa fish (<em style="mso-bidi-font-style: normal;">Tenualosa ilisha</em>). <em style="mso-bidi-font-style: normal;">Am. J. Food Technol., <strong style="mso-bidi-font-weight: normal;">7</strong>(8): 501-505</em>.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Islam, M. F., M. M. Hassan, <strong style="mso-bidi-font-weight: normal;">M. R. Islam,</strong> Z. B. Mostafa and M. A. Haque. 2009. Management practice and relationship between different parameters of mouth brooding genetically improved farmed tilapia (GIFT) strain. <em style="mso-bidi-font-style: normal;">Bangladesh</em><em style="mso-bidi-font-style: normal;"> J. Prog. Sci. and Tech</em>., <strong style="mso-bidi-font-weight: normal;">7</strong>(2): 285-288.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua'';">Islam, M. R.</span></strong><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua'';"> and M. Belal Hossain. 2012. Genetic variations of three populations of Indian frog (<em style="mso-bidi-font-style: normal;">Hoplobatrachus tigerinus</em>) revealed by Allozyme marker. <em style="mso-bidi-font-style: normal;">International Journal of Zoological Research</em>, <strong style="mso-bidi-font-weight: normal;">8</strong>(4).</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Islam, M. R.</span></strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">, M. F. Tazim and R. K. Adhikary. 2010. Proximate composition of estuarine fish Rubicundus Eelgoby (<em style="mso-bidi-font-style: normal;">Odontamblyopus rubicundus</em>) (Bleeker, 1874) from the Meghna estuary. <em style="mso-bidi-font-style: normal;">Int. J. BioRes</em>, <strong style="mso-bidi-font-weight: normal;">9</strong>(2): 33-36.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; color: black;">I</span></strong><strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-fareast-font-family: Batang; color: black;">slam</span></strong><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; color: #0d0d0d;">, M. R.</span></strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; color: #0d0d0d;">, N. Sultana, S. Mondal and M. Belal Hossain. 2012.</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';"> Estimation of fecundity and gonadosomatic index (GSI) of Gangetic Whiting, <em style="mso-bidi-font-style: normal;">Sillaginopsis panijus</em> (Hamilton, 1822) from the Meghna river estuary, Bangladesh. <em style="mso-bidi-font-style: normal;">World Applied Science Journal</em>, <strong style="mso-bidi-font-weight: normal;">17</strong>(10):1253-1260.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Khan, M. R., M. M. Rahman, M. Samsuddin, <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong> and M. Rahman. 2011. Present status of aqua drugs and chemicals in Mymensingh district. </span><em><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">J. Bangladesh Soc. Agric. Sci. Technol. </span></em><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-bidi-font-style: italic;">8</span></strong><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-bidi-font-style: italic;">(1&amp;2): 169-174.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Minar, M. H.,R. K. Adhikary, M. M. Begum, <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong> and T. Akter. 2012. Proximate composition of Hilsha (<em style="mso-bidi-font-style: normal;">Tenualosa hilisha</em>) in laboratory condition. <em style="mso-bidi-font-style: normal;">Bangladesh</em><em style="mso-bidi-font-style: normal;"> J. Prog. Sci. and Tech</em>, <strong style="mso-bidi-font-weight: normal;">10</strong>(2). </span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">Modal, M., <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong> and M. Rahman. 2010. Livelihood status of fishing community of Kaptai lake of Bangladesh. <em>J. Bangladesh Soc. Agric. Sci. Technol</em><span style="mso-bidi-font-style: italic;">,<strong style="mso-bidi-font-weight: normal;"> 7</strong>(1&amp;2): 103-108.</span></span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Rahman, M. M., M. Hossain, M. M. R. Akanda, <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>, M. H. Rashid, M. M. Iqbal and M. R. Kabir. 2010. Biodiversity of fish fauna and fishing operations of Katar beel in Fulbaria upazilla of Mymensingh district. <em style="mso-bidi-font-style: normal;">Eco-friendly Agril. J.</em>, <strong style="mso-bidi-font-weight: normal;">3</strong>(11):480-486<em style="mso-bidi-font-style: normal;">.</em></span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Rahman, M., M. F. Tazim, S. C. Dey, A. K. M. S. Azam and <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>. 2012. Alternative livelihood of fishermen of Nijhum Dwip under Hatia upazila of Noakhali district in Bangladesh. <em style="mso-bidi-font-style: normal;">Asian J. Rural Dev.</em>,<strong style="mso-bidi-font-weight: normal;">2</strong>(2):24-31. </span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Rahman, M., M. M. Rahman, M. M. Hasan and <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>. 2012. Livelihood status and the potential of alternative income generating activities of fishers’ community of Nijhum Dwip under Hatiya Upazila of Noakhali district in Bangladesh. <em style="mso-bidi-font-style: normal;">Bangladesh</em><em style="mso-bidi-font-style: normal;"> Res. Pub. J.</em>, <strong style="mso-bidi-font-weight: normal;">6</strong>(4): 370-379.</span></p>\r\n<p class="MsoNormal" style="margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Singha, S., <strong style="mso-bidi-font-weight: normal;">M. R. Islam</strong>, S. Mondal and M. Rahman. 2011. Livelihood status of fishermen of Hail Haor, Sreemangal Upazila under Moulvibazar district. </span><em><span style="font-size: 10.0pt; font-family: ''Book Antiqua'';">J. Bangladesh Soc. Agric. Sci. Technol.</span></em><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">, <strong style="mso-bidi-font-weight: normal;">8</strong> (3 &amp; 4): 11-16.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><br /> <strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua''; mso-no-proof: yes;">Postgraduate Thesis</span></strong></p>\r\n<p class="MsoNormal"><strong style="mso-bidi-font-weight: normal;"><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua'';">Islam, M. R.</span></strong><span style="font-size: 10.0pt; line-height: 115%; font-family: ''Book Antiqua'';"> 2007. Study on genetic variations in three different populations of Indian Bullfrog (<em style="mso-bidi-font-style: normal;">Rana tigerina</em>) using Allozyme marker. MS (Fisheries Biology and Genetics) Thesis. Bangaldesh Agricultural University.</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><strong style="mso-bidi-font-weight: normal;"><span style="text-decoration: underline;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Member:</span></span></strong></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Bangladesh</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;"> Fisheries Research Forum</span></p>\r\n<p class="MsoNormal" style="margin-top: 0in; margin-right: 0in; margin-bottom: .0001pt; margin-left: .5in; text-align: justify; text-indent: -.5in; line-height: normal;"><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;">Bangladesh</span><span style="font-size: 10.0pt; font-family: ''Book Antiqua''; mso-no-proof: yes;"> Agricultural Forum</span></p>', '', 1, 0, 0, 9, '2012-09-27 12:06:14', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-27 12:06:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', 'Md. Rakeb-Ul-Islam - Noakhali Science and Technology University ', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 66, 'Message From VC', 'message-from-vc', '', '<h1>Noakhali Science and Technology University</h1>\r\n<h3>By Professor A K M Sayedul Haque Chowdhury</h3>\r\n<p> </p>\r\n<div id="news">\r\n<h2><img class="rimg" src="http://www.newstoday.com.bd/images/news_image_2010-11-02_3368.jpg" border="0" width="324" height="216" /></h2>\r\n<h2>The natural setting along with its human habitations of the Southern regions of Bangladesh has been endowed with the vast and immense potentials that can fully be harnessed only through creation of a band of skilled manpower equipped with the latest knowledge of science and technology. With this end in view, a decision to establish a full-fledged Science and Technology University at Noakhali was arrived at by the Government of Bangladesh under the dynamic leadership of the then Prime Minister Jananetri Sheikh Hasina in 2001, followed by the circulation of Noakhali Science and Technology University Act in the official gazette notification on 15 July 2001. The fundamental goals and objectives for establishing this University are: (i) to maintain coherence and attain equality with the latest advancement in science and technology of the world and (ii) to facilitate, at the national level, opportunities of higher education and cultivation of modern knowledge in the form of teaching and research, and extension thereof. A new movement had thus been initiated in the life and activities of the long neglected coastal regions of South Bangla. This Act came into force on 25 August 2003 and the academic programs of the university commenced on 22 June 2006. <br />Four years have passed away since then. I took over the office of the Vice-Chancellor of this newly established university on 27 September 2010. I am very happy today to greet and meet the representatives of local and national print and electronic media at this meeting of exchange of opinions. I welcome you all at this campus filled with endless possibilities and extend you all my warmest greetings. <br />This meeting for exchange of opinions could have been arranged much earlier and exactly that was proper to be done. Because, to me, the media, especially the print and electronic media are the most vital tools in any development endeavors, and it is simply impossible to attain the desired targets without their cooperation. The role of media in bridging the people with the development approach of the government is, in fact, immeasurable. Therefore, I like to place special importance on the cooperative linkage between the media and the development endeavors of the university. However, because of some prevalent circumstances, we had to go for this belated arrangement of today. <br />As the inheritance of the last four years, the university has got its administration building, academic building, VC''s residence, two dormitories, two halls of students'' residence, a mosque, brick soling roads connecting various buildings, an electrical station and a few other shades and shelters here and there as its physical infrastructures. A vast portion of the campus that extends to one hundred acres of land is mostly bereft from the touch of love and affection, except two ponds and a big water body. It is utterly annoying for the students, teachers, officers and employees of the university residing in the campus to have insufficient supply of electricity and constant sufferings due to paucity of usable water. Soon after my taking over of this university, all these circumstances led me to take immediate measures to improve the electricity situation, by making a bilateral contact with the REB and by installing a new electricity generator with the capacity of 250 KVA. As the water of this area is laden with high iron contents, I had to take special arrangements for supplying treated water from the ponds for the use of residents within the campus. Meanwhile a program has been taken up to clear the weeds and bushes of the campus and to beautify the campus with plantation of fruit and wood trees along with pockets of flower gardens. For this, a grass cutter machine and a power tiller have been procured and they are being used for development of campus soil. Besides, fish fries have been released in the water body and several thousands of tree saplings have been planted on both sides of the beriband or dam. In this way, we have been trying to turn this campus into a habitable one for the residents and to make it a center of attraction for all. These were the immediate priorities that I had to look into, and that is the reason of this belated arrangement of today. <br />I am indeed very happy that there had been no session jam at any level since the commencement of the academic programs of this university and all concerned have to work sincerely and hand-in-hand so that we can carry forward this trend in the days ahead. <br />The university has at present 43 teachers in eight teaching departments, 21 of whom are Assistant Professors and the rest 22 are lecturers. Of them, 8 teachers are on study leave within or outside the county. The present strength of students'' enrolment stands at 793, of them, 567 are male and 226 are female students. In order to make its academic activities effective a total of twelve labs with necessary apparatus and equipment and a library with a collection of 3571 books have also been developed. As many as 150 officers and employees are now engaged in its administration, management, construction, maintenance, transportation and other related activities. With one bus, one microbus and a jeep of its own, the university transport system is indeed very poor. However, 3 buses and 1 microbus are hired and used for regular transportation of students, teachers and officers staying outside the campus. Each of the classrooms has 50 seats, which need to be increased. Temporary arrangements have been made to run a cafeteria in a room of the ground floor of academic building. The construction of cafeteria has recently been completed, which we hope to inaugurate very soon. Moreover, steps are under way to publish an information booklet, wall and table calendars and a pocket diary and to run the academic activities following the academic calendar to be announced before the beginning of sessions. <br />As the residential facilities for the students, teachers, officers and employees are inadequate in the campus, the major portion of them (52.69%) has to live outside it. As a result, the dream of a vibrant and bustling campus remains beyond our reach. As a result, those who stay outside are very often faced with troubles and inconveniences on the one hand, and the overall administration and management including co-curricular programs of the university have to incur a great loss on the other. It is urgently needed to take up necessary programs like extension of residential facilities, construction of training centre and auditorium, extension of sports facilities and other related facilities. I would like to draw the attention of the Ministry of Education and other concerned Ministries of the government including the UGC on all these issues of prime importance and hope to have all-out supports of the media in this regard. <br />A university is not only the sacred seat of higher learning; rather it is the centre-piece of cultivation and generation of new knowledge and technology as well. It is necessary to create here a favorable research environment for generating new knowledge and technology at this newly established university. Majority of our teachers are young in age, charged with enormous zeal and enthusiasm. I firmly believe that in future we shall be able to set a unique example in front of the nation in developing a series of new technologies, if this enthusiasm of our teaching community could have been linked with the research process. To this end, I am planning to seek cooperation from the Ministry of Education, the UGC, the Ministry of Science and Technology, relevant research institutes and international agencies. We will be able to create here the desired environment if our young teachers come forward with their project proposals. <br />Steps are also under way to arrange monthly seminar or symposium on the recent development, constraints and possibilities in related discipline under the auspices of each teaching department of the university. There is no alternative to this for making higher education oriented to life and society, instead of keeping it closed inside the books. Resultantly, there will be a kind of wedding of our education system with the national and local problems, that will ultimately help improve the quality of higher education. <br />This coastal region of South Bangla belongs to the disaster-prone areas of the county. Therefore, the people of this vast habitation have to live with a series of disasters and natural calamities. They are utterly immersed under the excruciating poverty and hunger. Life here goes ahead waging fight every moment against the tidal surges, storms and intrusion of salinity. The Noakhali Science and Technology University pledges to stand by the side of the people of this area in their crucial struggle for life or death. We want to launch higher education and research programs in this university on Food Security and Disaster Management, Poverty Alleviation and Economic Development, Salinity-resistant Production Technology, Development of Coastal Economy and similar other subjects as early as possible. In this way, we like to shape this university as the lynch-pin of development of this region. As immediate steps we are going to take up plans to start short-term training programs on various issues of production, development and management. <br />I am happy to note here that our learners have proven their merit and skill in creative cultural and sports activities too. I had an opportunity of attending recently one such debate competition in which they impressed me with their intelligent deliberations and gift of the gab. We are taking measures to encourage them in such type of cultural pursuits. <br />A university is, to the students, a phase of preparation to enter the greater world of works and deeds. The major responsibilities of the university have been to help each of them to be the citizen of future society imbued with the spirit of patriotism and leadership quality, -- a skilled, competent and confident soul born out of academic pursuit and practical works under the strict rules and discipline. Bangabandhu, the Father of the Nation, had cherished a dream of Golden Bangla. We need a band of golden people to make the Golden Bangla. We want to work diligently to create a band of golden people at the Noakhali Science and Technology University of Sonapur (the Golden abode). The university thus intends to play its illuminating role in the future in the reconstruction of Digital Bangladesh. Therefore, the students'' politics has completely been stopped in this university. <br />In order to accomplish this vast task in a planned manner, it is necessary to amass cooperation of one and all. We want to work together, with cooperation from all corners including the local people, the local leaders, relevant corners of the society, all students, teachers, officers and employees of the university, the representatives of print and electronic media, the rich and local elites, in order to turn this university into an ideal university of the nation. It is by the order of government under the leadership of the honorable Prime Minister Jananetri Sheikh Hasina and the Supreme Command of Allah, the Merciful that I have taken over the office of the Vice-Chancellor of this university. I am none but a humble son of this soil and as such I feel proud to have this unique opportunity of serving my mother. I pledge to put all of my wisdom, labor, merit and love for the cause of this new university. And earnestly I do seek your all-out cooperation and support. Thank you all.<br />Joi Bangla. Joi Bangabandhu. Long live Bangladesh.</h2>\r\n<h2> </h2>\r\n<h2><br /><strong>Vice-Chancellor of</strong><br /><strong>Noakhali Science and Technology Univesity</strong></h2>\r\n</div>', '', 1, 0, 0, 8, '2012-09-27 12:07:31', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-27 12:07:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', 'Message From VC - Noakhali Science and Technology University ', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 67, 'Microbiology', 'microbiology', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong style="font-weight: 400;">Welcome to the Microbiology Department</strong>. It includes -- Faculty Members, 68 Students and Staff: 2.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">Mr. Md. Masud Alam, Lecturer\r\n<p><strong style="font-weight: 400;">Microbiology Department</strong><br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet" style="width: 1242; height: 57;">1. Mrs. Rokeya Siddiquee<br /> 2. Mr. Md. Ruhul Amin</div>\r\n<h3 class="mypets" dir="ltr">Students Corner of <strong style="font-weight: 400;"> Microbiology</strong></h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of <strong style="font-weight: 400;">Microbiology</strong>". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 12:08:16', 323, '', '2012-10-01 10:49:57', 323, 0, '0000-00-00 00:00:00', '2012-09-27 12:08:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 1, '', 'Microbiology - Noakhali Science and Technology University ', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `qy1d9_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(25, 68, 'Mission & Vision', 'mission-vision', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Knewave'';"><strong><span style="text-decoration: underline;">OUR MISSION AND VISSION</span><br /></strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Universities of a country are the place where the leaders of a nation are created. A university is the highest place of education where the students find the world class education and a door to enter the world of immense success. And the world is heading towards a new destination of science and technology. As why science and technology universities play vital role to create the quality graduates. These graduates will be the key of nation. To build a high quality society the Engineers and Technologist have to give their best.<br /><br />Noakhali Science and Technology University was established with immense hope for maintaining the high quality education. Since its establishment, it is running without any session jam and student politics. This University family is fully determined to gain its ultimate goal of success.</p>', '', 1, 0, 0, 2, '2012-09-27 14:01:44', 323, '', '2012-09-28 15:02:19', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:01:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 4, '', 'Mission & Vision- Noakhali Science and Technology University', 1, 42, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 69, 'Noakhali Science and Technology University Admission 2012', 'noakhali-science-and-technology-university-admission-2012', '', '<h2 style="text-align: left;">Noakhali Science and Technology University Admission 2012</h2>\r\n<p> </p>\r\n<h3><a href="http://www.entireeducation.com/wp-content/uploads/2012/03/NSTU.jpg"><img class="wp-image-5265 aligncenter" src="http://www.entireeducation.com/wp-content/uploads/2012/03/NSTU-300x190.jpg" border="0" alt="Noakhali Science and Technology University (NSTU)" title="NSTU" width="445" height="283" /></a></h3>\r\n<p> </p>\r\n<p><strong>Noakhali Science and Technology University</strong> (Bengali: নোয়াখালি বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়) (popularly referred to as NSTU) is a recently founded public university in the seaside landscape Noakhali of Bangladesh. It is the 27th public university (out of 32) and 5th science and technology university in Bangladesh. Its basis stone was lay on 11 October 2003 and academics actions started on 22 June 2006. It has 3 faculties and 7 departments. <em>Noakhali Science and Technology University</em> has about 1658 undergraduate and postgraduate students. It has seventy teachers.</p>\r\n<p> </p>\r\n<h3>Noakhali Science and Technology University</h3>\r\n<p> </p>\r\n<p><strong>Noakhali Science and Technology University Engineering and Technology:</strong></p>\r\n<p> </p>\r\n<ul>\r\n<li>Applied Chemistry &amp; Chemical Engineering,</li>\r\n<li>Computer Science and Telecommunication Engineering</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>Noakhali Science and Technology University Life Science:</strong></p>\r\n<p> </p>\r\n<ul>\r\n<li>Pharmacy, Fisheries and Marine Science,</li>\r\n<li>Microbiology, Mathematics,</li>\r\n<li>Food Technology and Nutrition Science,</li>\r\n<li>Environmental Science and Hazard Studies</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>Noakhali Science and Technology University Business Administration:</strong></p>\r\n<p> </p>\r\n<ul>\r\n<li>English, BBA</li>\r\n<li>Pharmaceutical Analysis &amp; Quality Control Lab</li>\r\n<li>Pharmaceutics Lab</li>\r\n<li>Biopharmaceutics &amp; Pharmacokinetics Lab</li>\r\n</ul>\r\n<p> </p>\r\n<h3>Noakhali Science and Technology University Scholarships</h3>\r\n<p> </p>\r\n<p><span style="text-decoration: underline;">Noakhali Science and Technology University</span> provides scholarships to its meritorious students. Weak and meritorious students acquire awards. In each and every term, 5 students in each and every batch of each department are available scholarships. Corporations give scholarships frequently.</p>\r\n<p> </p>\r\n<p>Thanks for visiting our site which is compatible of Universities Admissions and details. We provide the best information about Noakhali Science and Technology University Admission 2012 including Noakhali Science and Technology University Faculties,</p>\r\n<p> </p>', '', 1, 0, 0, 15, '2012-09-27 14:04:36', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-27 14:04:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', 'Noakhali Science and Technology University Admission 2012', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 70, 'NSTU Open Source Network (NSTU OSN)', 'osn', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Open source network activities:</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><br /><img src="images/nstu osn.jpg" border="0" alt="" width="459" height="297" /></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><br />Open Source Network started their journey in Noakhali Science and Technology University from 26 April 2008. Several workshops were arranged by nstu_osn.<br /><br />    * Ubuntu installation and administrative uses<br />    * Open Source philosophy and introducing with Joomla<br />    * Workshop on mid-level Joomla<br />    * Workshop on fedora core<br />    * Workshop on Red Hat Linux Administration<br /><br />This local OSN does some jobs related to IT application such as software, website development and so on. Some of the boys of nstu_osn develop a website for the department of CSTE; they are also working to develop the official site of NSTU.<br /><br />                                                    <strong><a href="http://www.facebook.com/groups/134936773263979">Join this FaceBook Group</a> </strong></p>', '', 1, 0, 0, 10, '2012-09-27 14:06:04', 323, '', '2012-10-01 04:09:36', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:06:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', 'NSTU Open Source Network (NSTU OSN) - Noakhali Science and Technology University', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 71, 'Pharmacy', 'pharmacy', '', '<p>\r\n<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>\r\n<script type="text/javascript" src="images/ddaccordion.js">// <![CDATA[\r\n/***********************************************\r\n* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)\r\n* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts\r\n* This notice must stay intact for legal use\r\n***********************************************/\r\n// ]]></script>\r\n<script type="text/javascript">// <![CDATA[\r\n//Initialize first demo:\r\nddaccordion.init({\r\n	headerclass: "mypets", //Shared CSS class name of headers group\r\n	contentclass: "thepet", //Shared CSS class name of contents group\r\n	revealtype: "mouseover", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"\r\n	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover\r\n	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false \r\n	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc]. [] denotes no content.\r\n	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)\r\n	animatedefault: false, //Should contents open by default be animated into view?\r\n	scrolltoheader: false, //scroll to header each time after it''s been expanded by the user?\r\n	persiststate: true, //persist state of opened contents within browser session?\r\n	toggleclass: ["", "openpet"], //Two CSS classes to be applied to the header when it''s collapsed and expanded, respectively ["class1", "class2"]\r\n	togglehtml: ["none", "", ""], //Additional HTML added to the header when it''s collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)\r\n	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"\r\n	oninit:function(expandedindices){ //custom code to run when headers have initalized\r\n		//do nothing\r\n	},\r\n	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed\r\n		//do nothing\r\n	}\r\n\r\n})\r\n// ]]></script>\r\n</p>\r\n<p align="center"> </p>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Information</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong style="font-weight: 400;">Welcome to the Pharmacy Department</strong>. It includes 11 Faculty Members, 260 Students and Staff: 5.</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Chairman</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Chairman: Dr. Md. Salim Hossain,</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Assistant professor<br /> Pharmacy Department<br />Noakhali Science and Technology University</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Name of Faculty Members :</span></h1>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Assistant Professors:</strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: Courgette;">1. Dr. Md. Shafiqul Islam<br /> 2. Mr. Md. Anwarul Bashar(Study Leave)<br /> 3. Mr. A F M shahid ud Dowla<br /> 4. Mr. Md. Mijanur Rahman Moghal</p>\r\n</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;"><strong>Lecturers:</strong></span></h1>\r\n<div class="thepet">1. Mr. Biswanath Das(Study Leave)<br /> 2. Mr. Polash Karmakar<br /> 3. Mr. Jamiuddin Ahmed<br /> 4. Miss. Latifa Bulbul<br /> 5. Md. Ariful Islam<br /> 6. Md. Hasanuzzaman Sabuj</div>\r\n<h1 class="mypets"><span style="text-decoration: underline;">Lab facilities:</span></h1>\r\n<div class="thepet">Organic Lab<br /> Inorganic Lab<br /> Physical Pharmacy Lab<br /> Physiology Lab<br /> Microbiology Lab<br /> Pharmacology Lab<br /> Pharmaceutical Technology Lab<br /> Pharmaceutical Analysis &amp; Quality Control Lab<br /> Pharmaceutics Lab<br /> Biopharmaceutics &amp; Pharmacokinetics Lab</div>\r\n<h3 class="mypets" dir="ltr"><span style="text-decoration: underline;"><strong><a href="component/content/article/17-student/41-pharmamirror">Students Corner of Pharmacy</a></strong></span></h3>\r\n<div class="thepet">\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><br /><br /></p>\r\n</div>', '', 1, 0, 0, 9, '2012-09-27 14:07:29', 323, '', '2012-10-01 15:58:30', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:07:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, 0, '', 'Pharmacy-Welcome to Pharmacy Department', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 72, 'Registrar Office', 'registrar-office', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette''; text-align: center;"><strong><span style="text-decoration: underline;">Welcome to Office of the Registrar!</span></strong><br /><br />The Registrar Office of NSTU is situated at Administrative building. Our Office hours are Monday through Friday, 8:00 am to 4:30 pm</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette''; text-align: center;"> </p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette''; text-align: center;"><span style="text-decoration: underline;">You can contact us for this issue:</span><br /><br /></p>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Registration and Billing</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Courses and Schedules</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Calendar &amp; Deadlines</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">General Information</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Student Records</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Graduation</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Transfer Credit</p>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Other Information</p>\r\n</li>\r\n</ul>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"> <br />You can post us this address or find us on campus.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Noakhali Science And Technology University</strong><br /><strong>Sonapur, Noakhali-3814</strong><br /><strong>Phone: +88-0321-71486</strong><br /><strong>Fax: +88-0321-62788</strong></p>', '', 1, 0, 0, 2, '2012-09-27 14:08:11', 323, '', '2012-09-28 15:27:04', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:08:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 3, '', 'Registrar Office- Noakhali Science and Technology University', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 73, 'Vice Chancellor', 'vice-chancellor', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><span class="style4 style5 style6 style8"><span class="style7">Professor A K M Sayedul Hoque Chowdhury, Vice Chacellor.<br /></span></span></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong><span class="style4 style5 style6 style8"><span class="style7"><img src="images/vc_office4.jpg" border="0" width="735" height="477" style="vertical-align: middle; border: 0;" /></span></span></strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette''; text-align: center;"><strong><span class="style4 style5 style7 style8"><span class="style9">The Welcome Message from the Vice-Chancellor</span></span></strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">I welcome you all at this campus filled with endless possibilities and extend you all my warmest greetings.</p>\r\n<p> </p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Professor A K M Sayedul Haque Chowdhury </strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong>Honorable Vice-Chancellor of</strong></p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"><strong> Noakhali Science And Technology University</strong></p>', '', 1, 0, 0, 8, '2012-09-27 14:10:47', 323, '', '2012-09-28 15:16:24', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:10:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', 'Vice Chancellor - Noakhali Science and Technology University', 1, 29, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 74, 'Why NSTU', 'why-nstu', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">The natural setting along with its human habitations of the Southern regions of Bangladesh has been endowed with the vast and immense potentials that can fully be harnessed only through creation of a band of skilled manpower equipped with the latest knowledge of science and technology. In the beginning of its age and expending its activities to spread the light of modern education of Science and Technology and practising wisdom in every field of knowledge.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Noakhali Science and Technology University was established with immense hope for maintaining the high quality education. Since its establishment, it is running without any session jam and student politics. This University family is fully determined to gain its ultimate goal of success.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">The university was established on March 24, 2005 and started its academic activities on June 22, 2006. NSTU is actually belongs to five subjects of pure science which may contribute to the country and nation as well as the whole world. The subjects are Computer Science &amp; Telecommunication Engineering (CSTE), Pharmacy, Applied Chemistry &amp; Chemical Engineering (ACCE), Microbiology, Fisheries &amp; Marine Science (FIMS), Environmental Science and Hazard Studies, Food Technology and Nutrition Science, Mathematics, English, Business Administration.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Library of NSTU is well furnished containing about 3500 books and around 500 local and foreign journals. Most important feature of this library is online library. Its construction has not been completed yet fully. When it will be started with its full bloom, students as well as other registered people of this university will be able to issue books from the library through online, and also can read the books. It is being developed day by day.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">The teachers are well educated having good art of presentation. They are also very much amicable and have love and affection for the students. The curriculum of the university is high standard. Different occasions are celebrated with a great festivity. Teachers and students of this university are very united.</p>', '', 1, 0, 0, 2, '2012-09-27 14:11:54', 323, '', '2012-09-28 15:03:55', 323, 0, '0000-00-00 00:00:00', '2012-09-27 14:11:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 24, 0, 2, '', 'Why NSTU - Noakhali Science and Technology University', 1, 29, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(32, 75, 'Facilities', 'facilities', '', '<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Noakhali University of Science and Technology (22''47''31"N,91''06''07"E) is being built at Sonapur, 8 kilometers southwest of Maijdee. It has a land area of 101 acres (0.41 km<sup>2</sup>) covering 93 Salla and 95 Noakhali Mouza.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">The construction of the university is not yet completed. Presently the campus consists of one administrative building, one academic building, two male student halls, two female student halls, one teacher''s and officer''s dormitory, vice chancellor''s building and a mosque. The campus has wide roads. There are two sport field and two big ponds in the campus area.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"> </p>\r\n<ul>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Friendly environment and local people</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Relationships between teachers and students as friends</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Free from noise and fulfill with fresh air</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Session jam free</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Semester system education</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Well-furnished language lab</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Rich computer lab (dual lab: Ubuntu + Windows XP) with Internet connection</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Every class room of each department are designed with multimedia projector</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Well-established laboratory in every relevant department</p>\r\n</li>\r\n<li>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';">Every student becomes very happy by studying here.</p>\r\n</li>\r\n</ul>', '', 1, 0, 0, 2, '2012-09-27 15:40:59', 323, '', '2012-09-28 15:07:38', 323, 0, '0000-00-00 00:00:00', '2012-09-27 15:40:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 1, '', 'Noakhali University of Science and Technology (22''47''31"N,91''06''07"E) is being built at Sonapur, 8 kilometers southwest of Maijdee. ', 1, 30, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 77, 'নোবিপ্রবি ক্যাম্পাসে দিনব্যাপী এআইএফ প্রমোশনাল ওয়ার্কশপ অনুষ্ঠিত', '2012-09-30-02-10-29', '', '<p>বাংলাদেশ বিশ্ববিদ্যালয় মঞ্জুরী কমিশন কর্তৃক আয়োজিত দিনব্যাপী নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় ক্যাম্পাসে গতকাল মোঙ্গলবার একাডেমিক ইনোভেশন ফান্ড (এআইএফ) প্রমোশনাল ওয়ার্কশপ অনুষ্ঠিত হয়। ওয়ার্কশপে প্রধান অতিথি ছিলেন, বাংলাদেশ বিশ্ববিদ্যালয় মঞ্জুরী কমিশনের সদস্য প্রফেসর ড. আমেনা বেগম, বিশেষ অতিথি ছিলেন কুমিল¬া বিশ্ববিদ্যালয়ের উপাচার্য প্রফেসর ড. আমির হোসেন খান।</p>\r\n<p>রিসোর্স পার্সন হিসেবে বাংলাদেশ বিশ্ববিদ্যালয় মঞ্জুরী কমিশনের সদস্য প্রফেসর ড. মো: তাজুল ইসলাম, এআইএফ ম্যানেজমেন্ট বিশেষজ্ঞ প্রফেসর ড. মো: মোজাহার আলী, হেকেপ প্রজেক্টের প্রজেক্ট কো-অর্ডিনেটর মো: কোরবান আলী, কনসালটেন্ট মো: জিল¬ুর রহমান, সিনিয়র প্রোগ্রাম অফিসার মো: মোস্তাক হোসেন, প্রকিউরমেন্ট অফিসার মো: আলমগীর হোসেন, ফাইন্যান্স অফিসার গাজী মো: নজরুল ইসলাম উপস্থিত ছিলেন।</p>\r\n<p>নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের উপাচার্য প্রফেসর এ কে এম সাঈদুল হক চৌধুরী সভপতিত্ব করেন। ওয়ার্কশপে নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় এবং কুমিল¬া বিশ্ববিদ্যালয়ের শিক্ষক ও কর্মকর্তাগণ অংশগ্রহণ করেন।</p>\r\n<p>উলে¬খ্য, উচ্চ শিক্ষার মান বৃদ্ধির লক্ষ্যে বিশ্বব্যাংক কর্তৃক অর্থায়ণকৃত এ প্রকল্প পৃথিবীর বিভিন্ন দেশে শুরু হয়েছে। শিক্ষা ও গবেষণার মান উন্নতকরণ, লাইব্রেরি, পরীক্ষা সিস্টেম ও প্রশাসন ব্যবস্থাসহ বিশেষকরে ইনফরমেশন টেকনোলজি (আইটি) ক্ষেত্রে বড় প্রকল্প গ্রহণের লক্ষ্যে শিক্ষকবৃন্দকে এগিয়ে আনার লক্ষ্যে এ ওয়ার্কশপ অনুষ্ঠিত হয়েছে। এ ওয়ার্কশপে প্রদত্ত দিক নির্দেশনা অনুযায়ী এ বিশ্ববিদ্যালয়ের শিক্ষকগণ প্রকল্প সাবমিট করবেন।</p>', '', 1, 0, 0, 16, '2012-09-30 02:10:29', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:10:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 78, 'নোবিপ্রবি বিতর্ক উৎসব', '2012-09-30-02-11-34', '', '<p>”যুক্তির উচ্ছাসে চেতনার বিকাশে ” এই মূল মন্ত্রকে সামনে রেখে যুক্তিবাদী সমাজ বিনির্মানের  লক্ষ্যে নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় ক্যাম্পাসে মঙ্গলবার অনুষ্ঠিত হবে ১ম নোবিপ্রবি বিতর্ক উৎসব। নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় ডিবেটিং সোসাইটি এ বিতর্ক উৎসবের আয়োজন করেছে। উৎসবে প্রধান অতিথি হিসেবে উপস্থিত থাকবেন জাতীয় সংসদের ডেপুটি স্পীকার জনাব কর্ণেল (অবঃ) শওকত আলী এমপি। উৎসবকে ঘিরে স্বাগতিক শিক্ষা প্রতিষ্ঠান নোবিপ্রবিতে বিরাজ করছে সাজ সাজ রব। আয়োজক থেকে শুরু করে বিশ্ববিদ্যালয় কর্তৃপক্ষ এবং সাধারণ ছাত্রছাত্রীদের উৎসাহের কমতি নেই।<br />এ উপলক্ষ্যে সোমবার বিশ্ববিদ্যালয় ক্যাম্পাসে নোবিপ্রবি ডিবেটিং সোসাইটির উদ্যোগে সংবাদ সম্মেলন অনুষ্ঠিত হয়। সংবাদ সম্মেলনে জানানো হয় বৃহত্তর নোয়াখালী ও দেশের বিভিন্ন প্রান্ত থেকে প্রায় সহস্রাধিক বিতার্কিকের  এই মিলন মেলায় দিনব্যাপি  প্রদর্শিত হবে বিভিন্ন মডেলের বিতর্ক, বিতক কর্মশালা, যুক্তিপূর্ণ আলোচনা ও মনোজ্ঞ সাংস্কৃতিক আনুষ্ঠান যেখানে দেশের খ্যাতিমান বিতার্কিক, সাংস্কৃতিক ও মিডিয়া ব্যক্তিত্ত¡ এবং বাংলাদেশের বিতর্ক আন্দোলনের কেন্দ্রীয় সংগঠন ন্যশনাল ডিবেট ফেডারেশন বাংলাদেশ এর সদস্য বৃন্দ উপস্থিত থাকবেন । এই উৎসবে মিডিয়া পার্টনার হিসেবে দৈনিক আমার দেশ ও বৈশাখী টিভি এবং রেডিও পার্টনার হিসাবে আছে রেডিও আমার। <br />সংবাদ সম্মেলনে লিখিত বক্তব্য পাঠ করেন নোবিপ্রবি ডিবেটিং সোসাইটির সহ-সভাপতি সুজাউল হামিদ । এছাড়াও উপস্থিত ছিলেন মডারেটর তারেক হাসান-আল-মাহমুদ, সহকারী মডারেটর আফসানা মৌসুমি, সভাপতি আসাদুজ্জামান এবং অন্যান্য সদস্য বৃন্দ।</p>', '', 1, 0, 0, 16, '2012-09-30 02:11:34', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:11:34', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 79, 'নোবিপ্রবি’তে মহান শহীদ দিবস ও আমত্মর্জাতিক মাতৃভাষা দিবস উদ্যাপন', '2012-09-30-02-12-42', '', '<p>ভাষা আন্দোলনে আত্মদানকারী ভাষা শহীদদের প্রতি সশ্রদ্ধ সালাম জানানোর মধ্য দিয়ে নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে উদ্যাপন করা হয়েছে অমর একুশে মহান শহীদ দিবস ও আমত্মর্জাতিক মাতৃভাষা দিবস। এ উপলক্ষে ক্যাম্পাসে আয়োজন করা হয় বিভিন্ন অনুষ্ঠানমালার। দিবসের প্রথম প্রহরে উপাচার্য প্রফেসর এ কে এম সাঈদুল হক চৌধুরী বিশ্ববিদ্যালয়ের পক্ষ থেকে শহীদ মিনারে পুষ্পসত্মবক অর্পণ করেন। এ সময় শিক্ষক সমিতির সভাপতি ড. মোহাম্মদ সেলিম হোসেন, সাধারণ সম্পাদক জনাব মো. আনিসুজ্জামান, যুগ্ম-সাধারণ সম্পাদক জনাব মোহা: রবিউল হাসান রনি, কোষাধ্যক্ষ জনাব মো. মাসুদ আলম সহ বিভিন্ন বিভাগ ও দপ্তরের শিক্ষক-ছাত্র ও কর্মকর্তাবৃন্দ উপস্থিত ছিলেন।</p>\r\n<p style="text-align: justify;">বিশ্ববিদ্যালয়ের গুরুত্বপূর্ণ ভবনসমূহে জাতীয় পতাকা উত্তোলন (অর্ধনমিত) ও কালো পতাকা উত্তোলন করা হয়। পতাকা উত্তোলনের পর অনুষ্ঠিত হয় প্রভাতফেরি ,এতে নগ্ন পায়ে বিশ্ববিদ্যালয়ের শিক্ষক-শিক্ষার্থী এবং কর্মকর্তা-কর্মচারীরা শ্বাশত সুর ‘আমার ভাইয়ের রক্তে রাঙানো একুশে ফেব্রম্নয়ারী, আমি কি ভুলিতে পারি’ উচ্চারনের মাধ্যমে এতে অংশগ্রহণ করেন। প্রভাতফেরি শেষে শহীদদের প্রতি শ্রদ্ধার্ঘ নিবেদন করেন যথাক্রমে নোবিপ্রবি শিক্ষক সমিতি, জাতীয় দিবস উদ্যাপন কমিটি, কর্মকর্তাবৃন্দ, কর্মচারীবৃন্দ, ভাষা শহীদ আবদুস সালাম হলের প্রভোস্ট, হযরত বিবি খাদিজা হলের প্রভোস্ট, ইংরেজী বিভাগসহ বিভিন্ন ব্যক্তি ও প্রতিষ্ঠান।বিশ্ববিদ্যালয়ের শিক্ষক-শিক্ষার্থী এবং কর্মকর্তা-কর্মচারীরা সকাল থেকেই কালো ব্যাজ ধারণ করেন।</p>\r\n<p style="text-align: justify;">সকাল সাড়ে ৮টায় বিশ্ববিদ্যালয়ের শহীদ মিনারের পাদদেশে অনুষ্ঠিত হয় মহান একুশে ও আমত্মর্জাতিক মাতৃভাষা দিবস উপলক্ষে আলোচনা সভা।  সভায় বিশ্ববিদ্যালয়ের শিক্ষক-শিক্ষার্থী ও কর্মকর্তা-কর্মচারীবৃন্দ উপস্থিত ছিলেন।আলোচনা সভা শেষে শিক্ষার্থীদের পরিবেশনায় দেশাত্মবোধক গান পরিবেশন করা হয়।</p>', '', 1, 0, 0, 16, '2012-09-30 02:12:42', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:12:42', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 4, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 80, 'নানা আয়োজনে নোবিপ্রবি’র ৬ষ্ঠ বর্ষ উদযাপন', '2012-09-30-02-13-05', '', '<p>গতকাল ছিল নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের ৬ষ্ঠ বিশ্ববিদ্যালয় দিবস। এ উপলক্ষে ক্যাম্পাসে বিভিন্ন কর্মসূচির আয়োজন করা হয়। কর্মসূচির মধ্যে ছিল দিবসের উদ্বোধনী ঘোষণা, আনন্দ শোভাযাত্রা, কেক কাটা এবং আলোচনা সভা।<br /> আলোচনা অনুষ্ঠানে প্রধান অতিথি ছিলেন নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের উপাচার্য প্রফেসর একেএম সাঈদুল হক চৌধুরী। বিশেষ অতিথি ছিলেন বিজ্ঞান অনুষদের ডিন প্রফেসর ড. মো. আবুল হোসেন। সভাপতিত্ব করেন বিশ্ববিদ্যালয়ের জাতীয় দিবস উদযাপন কমিটির আহ্বায়ক আবদুল্লাহ-আল মামুন। স্বাগত বক্তব্য রাখেন ইংরেজি বিভাগের চেয়ারম্যান মারুফ উল আলম। অন্যান্যের মধ্যে বক্তব্য রাখেন হিসাব পরিচালক দফতরের সেকশন অফিসার সাখাওয়াত হোসেন, শিক্ষক সমিতির সহ-সভাপতি ড. মোহাম্মদ ইউসুফ মিঞা, প্রক্টর ড. মোহাম্মদ জাহাঙ্গীর সরকার, হিসাব পরিচালক আবদুল জলিল, শিক্ষক সমিতির সভাপতি ড. মোহাম্মদ সেলিম হোসেন, সাধারণ সম্পাদক মো. আনিসুজ্জামান প্রমুখ। <br /> আলোচনা সভা শেষে ছাত্রছাত্রী, শিক্ষক, কর্মকর্তা-কর্মচারীরা এক আনন্দ শোভাযাত্রা বের করেন। শোভাযাত্রাটি ক্যাম্পাসের বিভিন্ন সড়ক প্রদক্ষিণ করে।</p>', '', 1, 0, 0, 16, '2012-09-30 02:13:05', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:13:05', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 81, 'নোবিপ্রবি ওপেন সোর্স নেটওয়ার্কের সফটওয়্যার ফ্রীডম ডে উদযাপন', '2012-09-30-02-13-47', '', '<p><span class="fbPhotoCaptionText">নানা আয়োজনের মাধ্যমে ‘সফটওয়্যার ফ্রীডম ডে’ উদযাপন করছে নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয় ওপেন সোর্স নেটওয়ার্ক। এ উপলক্ষে সকাল ১০টায় নোয়াখালী টাউন হল এর সামনে থেকে র‍্যালী শুরু হয়। র‍্যালীটি শহরের প্রধান রাস্তা হয়ে মসজিদ মোড়ে এসে শেষ হয়। সেখানে মুক্ত দর্শন নিয়ে সংক্ষিপ্ত আলোচনাসভা অনুষ্ঠিত হয়</span></p>', '', 1, 0, 0, 16, '2012-09-30 02:13:47', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:13:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `qy1d9_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(38, 82, ' নোবিপ্রবি''তে কোস্টাল এগ্রিকালচার বিভাগের মতবিনিময় সভা অনুষ্ঠিত', '2012-09-30-02-15-51', '', '<p><img src="http://www.noakhaliweb.com.bd/upload/news/pd_7220_1348539314_924145023.JPG" border="0" width="450" height="267" /></p>\r\n<p>২০ সেপ্টেম্বর ২০১২ নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে ‘কোস্টাল এগ্রিকালচার বিভাগে অধ্যয়নের গুরুত্ব এবং গবেষণায় বিপুল সম্ভাবনা’ শীর্ষক এক মতবিনিময় সভা বিশ্ববিদ্যালয়ের উপাচার্য মহোদয়ের সভাকক্ষে অনুষ্ঠিত হয়। এ সভায় বিশেষজ্ঞ হিসেবে অংশগ্রহণ করেন যুক্তরাষ্ট্রের ইস্ট ক্যারোলিনা ইউনিভার্সিটির জিওগ্রাফি বিভাগের প্রফেসর ড. থমাস ক্রফোর্ড, প্রফেসর ড. থমাস এলেন, প্রফেসর ড. স্কট কার্টিস, পোস্ট ডক্টরাল রিসার্চ এসোসিয়েট ড. আহমেদ সালাউদ্দিন এবং একই বিশ্ববিদ্যালয়ের সোসিওলজি বিভাগের প্রফেসর ড. ডোনাল্ড ব্রেডলি, প্লানিং প্রোগ্রাম এর প্রফেসর ড. অনুরাধা মুখার্জি। তাছাড়া ভারতের ইন্ডিয়ান ইনস্টিটিউট অব টেকনোলজি’র এগ্রিকালচারাল এন্ড ফুড ইঞ্জিনিয়ারিং বিভাগের প্রফেসর ড. অশোক মিশরা, শ্রীলংকার কলম্বো ইউনিভার্সিটির ডিপার্টমেন্ট অব ম্যাটেরোলজি’র ডেপুটি ডিরেক্টর জনাব কেহেলেল্লা প্রেমলাল এবং বাংলাদেশের সেন্টার ফর গ্লোবাল চেঞ্জ এর এক্সিকিউটিভ ডিরেক্টর ড. আহসান ইউ আহমেদ বক্তব্য রাখেন। এ সময় বিশ্ববিদ্যালয়ের উপাচার্য মহোদয় ছাড়াও বাংলাদেশী কাউন্টার পার্ট এর পক্ষে সুচিন্তিত বিজ্ঞান ভিত্তিক মতামত দেন নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের বিজ্ঞান অনুষদের ডীন প্রফেসর ড. মো: আবুল হোসেন, রেজিস্ট্রার প্রফেসর মো: মমিনুল হক, প্রক্টর ও ফিশারিজ এন্ড মেরিন সায়েন্স বিভাগের সহযোগী অধ্যাপক ড. মো: জাহাঙ্গীর সরকার, শিক্ষক সমিতির সভাপতি ড. মোহাম্মদ সেলিম হোসেন সহ বিভিন্ন বিভাগের চেয়ারম্যান ও দপ্তরের প্রধানগণ। মতবিনিময় সভায় সভাপতিত্ব করেন বিশিষ্ট কৃষি বিজ্ঞানী ও কোস্টাল এগ্রিকালচার বিভাগের প্রবক্তা এবং নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের উপাচার্য প্রফেসর এ কে এম সাঈদুল হক চৌধুরী। বিশেষজ্ঞ বক্তাগণ তাঁদের বক্তব্যে নোয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে কোস্টাল এগ্রিকালচার বিষয়ের অপার সম্ভাবনার কথা অত্যন্ত গুরুত্ব সহকারে উল্লেখ করেন। তাঁরা উপাচার্য মহোদয়ের মহান উদ্যোগের সাধুবাদ জানিয়ে বলেন, নোয়াখালী উপকূলীয় অঞ্চলে প্রতিষ্ঠিত এ বিশ্ববিদ্যালয়ে এ বিভাগটি খোলার উদ্যোগ সত্যিই একটি সময়োপযোগী পদক্ষেপ। এ বিষয় অধ্যয়ন করলে শিক্ষার্থীরা পরিবর্তিত আবহাওয়ার সাথে খাপ খাইয়ে উপকূলীয় অঞ্চলের সামগ্রিক কৃষি গবেষণা, সম্প্রসারণ কর্মকাণ্ড ও নীতিমালা সম্পর্কে যথেষ্ঠ অবদান রাখতে পারবে। আন্তর্জাতিক বিশেষজ্ঞগণ পরিশেষে এ বিশ্ববিদ্যালয়ের সাথে সহযোগিতা চুক্তি বিশেষকরে এ বিভাগের শিক্ষার্থীদেরকে সার্বিক সহযোগিতার প্রতিশ্রুতি দেন।</p>', '', 1, 0, 0, 16, '2012-09-30 02:15:51', 323, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-30 02:15:51', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 83, 'নোবিপ্রবি''র ২০১২-১৩ শিক্ষাবর্ষের ভর্তি পরীক্ষা', '2012-09-30-02-18-32', '', '<p><a href="images/NSTU admission part1.jpg"><img src="images/NSTU admission part1.jpg" border="0" alt="" /></a></p>\r\n<p> </p>\r\n<p><a href="images/NSTU admission part2.jpg"><img src="images/NSTU admission part2.jpg" border="0" alt="" /></a></p>', '', 1, 0, 0, 16, '2012-09-30 02:18:32', 323, '', '2012-10-02 00:46:18', 323, 323, '2012-10-02 00:47:10', '2012-09-30 02:18:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 33, 0, 0, '', '', 1, 237, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 86, 'Student''s corner of CSTE', 'student-s-corner-of-cste', '', '<p><span style="text-decoration: underline;"><strong>Communication:<br /></strong></span></p>\r\n<p><strong>শুধুমাত্র</strong> কম্পিউটার সায়েন্স এবং টেলিকমিউনিকেশন সকল ছাত্রকে অনলাইনের গ্রুপগুলোতে যুক্ত থাকার অনুরোধ করা যাচ্ছে।</p>\r\n<p><span style="text-decoration: underline;"><strong><a href="http://www.facebook.com/groups/csteall/">CSTE ALL BATCH</a><a href="http://www.facebook.com/groups/csteall/">:</a> </strong></span>এটি সকল কম্পিউটার সায়েন্স এবং টেলিকমিউনিকেশন বিভাগের ১ম ব্যাচ থেকে শুরু করে সকল ব্যাচের স্টুডেন্ট রয়েছে। এখানে আমাদের টেকনোলজির বিভিন্ন বিষয়গুলো নিয়ে আলোচনা করি এবং একে অপরের জানা বিষয়গুলো শেয়ার করা হয়।</p>\r\n<p><strong><a href="http://www.facebook.com/groups/nstuosn/"><span style="text-decoration: underline;"><span class="mrm groupsJumpTitle" style="max-width: 388px;">NSTU Open Source Network (NSTU_OSN)</span></span>: </a></strong>শ্রদ্ধা ওপেনসোর্সের জনক রিচার্ড ম্যাথিউ স্টলম্যানের প্রতি যার জন্য শুরু হয়েছিল মুক্ত সফটওয়্যার আন্দোলন এবং ধন্যবাদ বাংলাদেশে ওপেনসোর্সকে জনপ্রিয় করার পেছনে যাদের অবদান রয়েছে। ওপেনসোর্স সফটওয়্যার জনপ্রিয় করার লক্ষ্যে NSTU_OSN এর যাত্রা শুরু হয়েছিল। এই গ্রুপে ওপেনসোর্স নিয়ে আগামীদিনের কর্মকান্ড নিয়ে আলোচনা করা হয়।</p>\r\n<p><strong><span style="text-decoration: underline;"><a id="groupsJumpTitle" class="mrm groupsJumpTitle" href="http://www.facebook.com/groups/297499666939182/" style="max-width: 388px;">NSTU Coders:</a></span><span style="text-decoration: underline;"><a id="groupsJumpTitle" class="mrm groupsJumpTitle" href="http://www.facebook.com/groups/297499666939182/" style="max-width: 388px;"> </a></span></strong> গ্রুপটি শুধুমাত্র NSTU CSTE এর জন্য। যারা যারা প্রোগামিং এবং প্রোগামিং কনটেস্টে আগ্রহী তারা সবাই যোগ দিতে পারবে। এই গ্রু<span class="text_exposed_hide">...</span>পে সবাইকে পোগ্রামিং করতে হবে এবং পোগ্রামিং নিয়ে কাজ করতে হবে। আশা করি সবাই আগ্রহ এবং আনন্দ নিয়ে এই গ্রুপে যোগ দিবে এবং প্রোগামিং করবে। আমরা কেউই ভালো প্রোগামিং পারিনা। তাই সবাই মিলে চেষ্টা করে প্রোগ্রামিং শিখতে হবে।</p>\r\n<p><strong> </strong></p>\r\n<p><span style="text-decoration: underline;"><strong>Activities:</strong></span></p>\r\n<p><strong><span style="text-decoration: underline;"><a href="http://bigganbangla.com/">বিজ্ঞান বাংলাঃ</a></span><span style="text-decoration: underline;"><a href="http://bigganbangla.com/">  </a></span></strong>বিজ্ঞান বিষয়ক সকল বৈচিত্রময় ও মজার তথ্যের সমাহার বিজ্ঞাম বাংলা।</p>\r\n<p><strong><span style="text-decoration: underline;"><a href="http://bigganbangla.com/?page_id=1817">গ্যালাক্টিকাঃ  </a></span></strong><span class="st">জানবো, বুঝবো, শিখবো <em>বিজ্ঞান</em>কে এই মূলমন্ত্র নিয়ে কাজ করে ম্যাগাজিনটি। ইতিমধ্যে হার্ডকপি বের হয়েছে।</span></p>\r\n<p><span><span style="text-decoration: underline;"><a href="www.TechnologyBasic"><strong>টেকনোলজিবেসিকঃ</strong> </a></span></span>এই সাইটে ১০০০ এর চেয়েও বেশি টেকনোলজি টার্মের উপর বেসিক কনসেপ্ট দেয়ার চেষ্টা করা হয়েছে।</p>\r\n<p> </p>\r\n<p> </p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of CSTE". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>', '', 1, 0, 0, 17, '2012-10-01 13:04:04', 323, '', '2012-10-01 13:30:10', 323, 0, '0000-00-00 00:00:00', '2012-10-01 13:04:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 1, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 87, 'Student''s corner of Pharmacy', 'pharmamirror', '', '<p><strong>Activities:</strong></p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';"><span style="text-decoration: underline;"><a href="http://www.pharmamirror.com"><strong>Pharma Mirror</strong></a></span> – first online free access professional pharmaceutical magazine of its kind in the world. Pharma Mirror has an International Standard Serial Number ISSN 2219-763X of its own and it has been assigned by ISSN Center, Paris. <img src="http://imgcache.businessportals.com/magazine/pharma-mirror-4f70544.jpg" border="0" width="175" height="175" style="float: right;" /></p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">Pharma Mirror is founded by Fahad Hussain, a student of pharmacy department of this university with his team comprised of other few students of the same department. He is also acting as the Editor of this magazine. This is a great achievement of the students of the Pharmacy Department of Noakahali science and Technology University.</p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">Pharma Mirror is introducing pharmaceutical journalism over the pharma arena. It represents drugs directory, pharma events listing, current pharma job circulars of Bangladesh, pharmaceutical articles, pharmaceutical news &amp; innovation, pharma leader’s interview, featured pharma company profile, pharmacy &amp; medical case studies, pharmacy study materials.</p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">PharmaMirror is an internationally accepted pharma media and completed successful media partnerships with World''s renowned event management companies like Terrapinn Singapore, JFPS Malaysia, Opal Events USA, WTG UK, UBM India, Cphi Conferences, Virtue Insight India, FlemingEurope, BIT LifeScience, IMAPAC, CatalystGlobal etc. in more than 12 countries like <strong>USA, UK, China, India, Malaysia, Singapore, Korea, Portugal, Italy, Spain, Bangladesh. </strong></p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">Pharma Mirror participated at Asia Pharma Expo 2011 with a stall named ''Pharma Mirror''at Bangabondhu Int’l Conference Center; Dhaka, Bangladesh. Pharma Mirror was a also media partner of that event. Pharma Mirror team also participated at FIP World Congress 2011; Hyderabad, India &amp; Biosimilars Congression 2012, UK.</p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">Pharma Mirror believes in cutting-edge peer reviewed contents over the pharma arena.</p>\r\n<p style="font-size: 11.8pt; line-height: 120%; font-family: ''Courgette'';"> </p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';"><span class="textdsc"> </span></p>\r\n<p style="font-size: 13pt; line-height: 120%; font-family: ''Courgette'';">If you have creative projects for making a difference, people will be benefited from it, submit your research paper or project details to add this the webpage of "students corner of Pharmacy". So please don''t hesitate to <span style="text-decoration: underline;"><a href="contact-us">contact us</a></span>.</p>', '', 1, 0, 0, 17, '2012-10-01 13:39:02', 323, '', '2012-10-01 22:55:52', 323, 0, '0000-00-00 00:00:00', '2012-10-01 13:39:02', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 0, '', '', 1, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `qy1d9_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_content_frontpage`
--

INSERT INTO `qy1d9_content_frontpage` (`content_id`, `ordering`) VALUES
(31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_content_rating`
--

CREATE TABLE IF NOT EXISTS `qy1d9_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `qy1d9_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_extensions`
--

CREATE TABLE IF NOT EXISTS `qy1d9_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10009 ;

--
-- Dumping data for table `qy1d9_extensions`
--

INSERT INTO `qy1d9_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"0","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_base_description":"0","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"0","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `qy1d9_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"September 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.7","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'JSN_Epic_FREE', 'template', 'jsn_epic_free', '', 0, 1, 1, 0, '{"legacy":false,"name":"JSN_Epic_FREE","type":"template","creationDate":"02\\/17\\/2012","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2011 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.3.0","description":"TPL_JSN_EPIC_FREE_XML_DESCRIPTION","group":""}', '{"logoLink":"","logoSlogan":"","enableColoredLogo":"0","templateWidth":"narrow","narrowWidth":"960","wideWidth":"1150","floatWidth":"90","promoLeftWidth":"23","promoRightWidth":"23","leftWidth":"23","rightWidth":"23","innerleftWidth":"28","innerrightWidth":"28","showFrontpage":"1","equalHeight":"0","templateColor":"blue","templateTextStyle":"business","templateTextSize":"medium","templateSpecialFont":"0","enableCSS3Effect":"0","enableMMFX":"0","enableMMTransparency":"0","mmWidth":"185","enableSMFX":"0","enableSMTransparency":"0","smWidth":"185","sitetoolsPresentation":"menu","enableTextSizer":"0","enableWidthSelector":"0","enableColorSelector":"0","colorIcons":"blue,red,green,violet,orange,grey","enableTopH1":"0","enableGotopLink":"0","enableIconLinks":"0","enablePrintingOptimization":"0","analyticsCodePosition":"1","analyticsCode":"","customCSS":"","cssJsCompression":"0","cacheFolder":"tmp","enableJQuery":"0","enableSqueezebox":"0","enableMobileSupport":"0","showDesktopSwitcher":"0","logo-m":"none","content-top-m":"content-top","user-top-m":"user-top","user-bottom-m":"user-bottom","banner-m":"banner","content-bottom-m":"content-bottom","mainmenu-m":"mainmenu","footer-m":"footer"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Autson Slideshow', 'module', 'mod_AutsonSlideShow', '', 0, 1, 0, 0, '{"legacy":false,"name":"Autson Slideshow","type":"module","creationDate":"September 2011","author":"xing","copyright":"Copyright (C) 2010 - 2011 Autson.com. All rights reserved.","authorEmail":"info@autson.com","authorUrl":"www.autson.com","version":"1.2","description":"\\n\\n\\n\\n\\n\\n\\n\\nAutson Skitter Slideshow For Joomla! module Let your joomla more elegant Autson Skitter Slideshow! With numerous customization options, is one that will bode well for your theme. .HaveFun! http:\\/\\/www.AUTSON.com\\n\\n\\n\\n<br\\/>\\n\\n\\n\\n<p>\\n\\n\\n\\n\\n\\n\\n\\n","group":""}', '{"moduleclass_sfx":"","slidewidth":"800","slideheight":"300","menu_style":"list","timeinterval":"2500","velocity":"1","align":"center","backgroundcolor":"#000","linktarget":"_self","linkedtitle":"no","navigation":"list","navigationalign":"left","arrows":"yes","hidetools":"no","arrowspos":"default","numberspos":"default","border":"0","bordercolor":"#000","labelcolor":"#fff","labelsize":"22","titlefont":"BebasNeueRegular","desccolor":"#fff","descsize":"10","descfont":"arial","bgout":"#333","colorout":"#fff","bgover":"#000","colorover":"#fff","bgactive":"#cc3333","coloractive":"#fff","show_jquery":"yes","jver":"1.5.2","load":"onmod","img1":"modules\\/mod_AutsonSlideShow\\/images\\/001.jpg","label1":"","desc1":"","link1":"","@spacer":"","img2":"modules\\/mod_AutsonSlideShow\\/images\\/002.jpg","label2":"","desc2":"","link2":"","img3":"","label3":"","desc3":"","link3":"","img4":"","label4":"","desc4":"","link4":"","img5":"","label5":"","desc5":"","link5":"","img6":"","label6":"","desc6":"","link6":"","img7":"","label7":"","desc7":"","link7":"","img8":"","label8":"","desc8":"","link8":"","img9":"","label9":"","desc9":"","link9":"","img10":"","label10":"","desc10":"","link10":"","img11":"","label11":"","desc11":"","link11":"","img12":"","label12":"","desc12":"","link12":"","img13":"","label13":"","desc13":"","link13":"","img14":"","label14":"","desc14":"","link14":"","img15":"","label15":"","desc15":"","link15":"","img16":"","label16":"","desc16":"","link16":"","img17":"","label17":"","desc17":"","link17":"","img18":"","label18":"","desc18":"","link18":"","img19":"","label19":"","desc19":"","link19":"","img20":"","label20":"","desc20":"","link20":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'System - HD Gfont', 'plugin', 'HD_Gfont', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - HD Gfont","type":"plugin","creationDate":"January 2012","author":"Hyde-Design","copyright":"2012","authorEmail":"sales@hyde-design.co.uk","authorUrl":"www.hyde-design.co.uk","version":"3.25.1","description":"HD-Gfonts is a simple plugin that allows you to replace the standard fonts of your headings with a wider range of nearly 400 fonts and font variations from the Google Font Directory.","group":""}', '{"font-face-1":"Overlock","font-class-1":"H1","font-css-1":"","use_second":"0","font-face-2":"Overlock","font-class-2":"H2","font-css-2":"","use_third":"0","font-face-3":"Overlock","font-class-3":"H3","font-css-3":"","use_fourth":"0","font-face-4":"Overlock","font-class-4":"H4","font-css-4":"","use_fifth":"0","font-face-5":"Overlock","font-class-5":".componentheading","font-css-5":""}', '', '', 323, '2012-09-28 14:55:27', 0, 0),
(10003, 'Fox Contact', 'module', 'mod_foxcontact', '', 0, 1, 0, 0, '{"legacy":false,"name":"Fox Contact","type":"module","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.17","description":"MOD_FOXCONTACT_DESCRIPTION","group":""}', '{"formwidth":"100","formunit":"%","customhtml0display":"1","customhtml0order":"-1000","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"2","labelswidth":"230","labelsunit":"px","sender0display":"2","sender0order":"5","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"85","senderunit":"%","text0display":"1","text0order":"15","text1display":"0","text1order":"20","text2display":"0","text2order":"25","text3display":"0","text3order":"30","text4display":"0","text4order":"35","text5display":"0","text5order":"40","text6display":"0","text6order":"45","text7display":"0","text7order":"50","text8display":"0","text8order":"55","text9display":"0","text9order":"60","textwidth":"85","textunit":"%","dropdown0display":"1","dropdown0order":"65","dropdown1display":"0","dropdown1order":"70","dropdown2display":"0","dropdown2order":"75","dropdownwidth":"85","dropdownunit":"%","textarea0display":"1","textarea0order":"80","textarea1display":"0","textarea1order":"85","textarea2display":"0","textarea2order":"90","textareawidth":"85","textareaheight":"180","textareaunit":"%","checkbox0display":"1","checkbox0order":"95","checkbox1display":"0","checkbox1order":"100","checkbox2display":"0","checkbox2order":"105","checkbox3display":"0","checkbox3order":"110","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","uploadmax_file_size":"10000","upload_filter":"1","upload_audio":"0","upload_video":"0","upload_images":"1","upload_documents":"1","upload_archives":"1","submittype":"0","submiticon":"","resetbutton":"0","resettype":"0","reseticon":"","email_sent_action":"0","email_sent_textdisplay":"1","copy_to_submitter":"1","email_copy_summary":"0","spam_check":"1","spam_detected_textdisplay":"1","stdcaptchadisplay":"0","stdcaptchatype":"0","stdcaptcha_length":"5","stdcaptchawidth":"150","stdcaptchaheight":"75","stdcaptchafont":"","stdcaptchafontmin":"14","stdcaptchafontmax":"20","stdcaptchaangle":"20","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"hidden|hidden","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"hidden|hidden","jnews_auto_checked":"0","othernewsletters":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'com_foxcontact', 'component', 'com_foxcontact', '', 1, 1, 0, 0, '{"legacy":false,"name":"COM_FOXCONTACT","type":"component","creationDate":"Unknown","author":"Demis Palma","copyright":"Demis Palma","authorEmail":"demis@fox.ra.it","authorUrl":"http:\\/\\/www.fox.ra.it\\/","version":"2.0.17","description":"COM_FOXCONTACT_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Content - Facebook-Twitter-Google+1', 'plugin', 'fb_tw_plus1', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"Content - Facebook-Twitter-Google+1","type":"plugin","creationDate":"Aug 2012","author":"Compago","copyright":"Copyright (C) 2012 Compago TLC. All rights reserved.","authorEmail":"compagotlc@gmail.com","authorUrl":"www.compago.it","version":"","description":"Facebook+Twitter+GooglePlusOne Plugin for Joomla enable Twitter button, Google +1 button,Facebook \\"Like button\\",the \\"Share This button\\", and the Comment Box on your published articles.","group":""}', '{"enable_like":"1","enable_share":"1","enable_comments":"0","enable_twitter":"1","enable_google":"1","enable_in":"1","enable_pint":"1","weight_like":"1","weight_share":"6","weight_twitter":"2","weight_google":"3","weight_in":"4","weight_pint":"5","ignore_pagination":"0","auto_language":"0","content_tobe_excluded_buttons":"","category_tobe_excluded_buttons":["14"],"position":"1","container_buttons":"1","css_buttons":"height:40px;","view_article_buttons":"1","view_frontpage_buttons":"0","view_category_buttons":"0","content_tobe_excluded_comments":"","width_comments":"450","autofit_comments":"0","number_comments":"10","box_color":"light","container_comments":"1","css_comments":"border-top-style:solid;border-top-width:1px;padding:10px;text-align:center;","view_article_comments":"1","view_frontpage_comments":"0","view_category_comments":"0","asynchronous_fb":"0","layout_style":"button_count","show_faces":"1","send":"1","width_like":"","verb_to_display":"1","font":"arial","color_scheme":"light","language_fb":"en_US","container_like":"1","css_like":"float:left;margin:10px;","type":"article","defaultimage":"","onlydefaultimage":"0","description":"0","directyoutube":"0","share_button_style":"icontext","text_share_button":"Share","container_share":"1","css_share":"float:right;margin:10px;","enable_comments_count":"0","enable_comments_print":"0","container_comments_count":"1","css_comments_count":"","admin_id":"","app_id":"","fb_secret_key":"","enable_admin":"0","enable_app":"0","enable_fb_autopublish":"0","fb_id_publish":"","fb_token":"","fb_code":"","fb_admin":"","size_google":"medium","annotation_google":"bubble","language_google":"en-US","container_google":"1","css_google":"float:left;margin:10px;","html5_google":"0","asynchronous_google":"0","show_count_twitter":"horizontal","language_twitter":"en","data_via_twitter":"","data_related_twitter":"","hashtags_twitter":"","datasize_twitter":"medium","container_twitter":"1","css_twitter":"float:left;margin:10px;","asynchronous_twitter":"0","enable_twitter_autopublish":"0","twitter_use_tinyurl":"0","twitter_consumer_key":"","twitter_consumer_secret":"","twitter_oauth_token":"","twitter_oauth_token_secret":"","data-counter_in":"right","data-showzero_in":"0","container_in":"1","css_in":"float:left;margin:10px;","asynchronous_in":"0","count_layout_pint":"horizontal","selection_pint":"0","container_pint":"1","css_pint":"float:left;margin:10px;","asynchronous_pint":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'plg_sys_topofthepage', 'plugin', 'topofthepage', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_sys_topofthepage","type":"plugin","creationDate":"April 2011","author":"Michael Richey","copyright":"Copyright (C) 2005 - 2011 Michael Richey. All rights reserved.","authorEmail":"topofthepage@richeyweb.com","authorUrl":"www.richeyweb.com","version":"1.17","description":"PLG_SYS_TOPOFTHEPAGE_XML_DESCRIPTION","group":""}', '{"runinadmin":"0","spyposition":"200","omittext":"0","topalways":"0","smoothscroll":"1","smoothscrollduration":"500","smoothscrolltransition":"linear","smoothscrolleasing":"easeInOut","linklocation":"bottom_right","usestyle":"1","linkstyle":"#gototop{border:1px solid #000;margin:5px;padding:5px;background-color:#000;color:#ff0;} #gototop:hover{background-color:#ff0;color:#000;}"}', '', '', 323, '2012-09-30 13:33:32', 0, 0),
(10008, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_phocagallery","type":"component","creationDate":"09\\/07\\/2012","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.2.1","description":"Phoca Gallery","group":""}', '{"categories_description":"","categories_columns":"1","equal_percentage_width":"1","display_image_categories":"1","categories_box_width":"33%","image_categories_size":"5","categories_image_ordering":"10","categories_display_avatar":"0","display_subcategories":"1","display_empty_categories":"0","hide_categories":"","show_categories":"","display_access_category":"0","default_pagination_categories":"0","pagination_categories":"5,10,15,20,50","font_color":"#b36b00","background_color":"#fcfcfc","background_color_hover":"#f5f5f5","image_background_color":"#f5f5f5","image_background_shadow":"shadow1","border_color":"#e8e8e8","border_color_hover":"#b36b00","margin_box":"5","padding_box":"5","display_new":"0","display_hot":"0","display_name":"1","display_icon_detail":"1","display_icon_download":"0","display_icon_folder":"0","font_size_name":"12","char_length_name":"15","category_box_space":"0","display_categories_sub":"0","display_subcat_page":"0","display_category_icon_image":"0","category_image_ordering":"10","display_back_button":"1","display_categories_back_button":"1","default_pagination_category":"20","pagination_category":"5,10,15,20,50","display_img_desc_box":"0","font_size_img_desc":"10","img_desc_box_height":"30","char_length_img_desc":"300","display_categories_cv":"0","display_subcat_page_cv":"0","display_category_icon_image_cv":"0","category_image_ordering_cv":"9","display_back_button_cv":"1","display_categories_back_button_cv":"1","categories_columns_cv":"1","display_image_categories_cv":"1","image_categories_size_cv":"5","detail_window":"0","detail_window_background_color":"#ffffff","modal_box_overlay_color":"#000000","modal_box_overlay_opacity":"0.3","modal_box_border_color":"#6b6b6b","modal_box_border_width":"2","sb_slideshow_delay":"5","sb_lang":"en","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","boxplus_theme":"lightsquare","boxplus_bautocenter":"1","boxplus_autofit":"1","boxplus_slideshow":"0","boxplus_loop":"0","boxplus_captions":"bottom","boxplus_thumbs":"inside","boxplus_duration":"250","boxplus_transition":"linear","boxplus_contextmenu":"1","ytb_display":"0","enable_multibox":"0","display_multibox":["1"],"multibox_width":"980","multibox_height":"560","multibox_map_width":"280","multibox_map_height":"300","multibox_thubms_box_width":"300","multibox_thubms_count":"4","multibox_comments_width":"300","multibox_comments_height":"600","multibox_left_bgcolor":"#000000","multibox_right_bgcolor":"#ffffff","multibox_fixed_cols":"1","display_description_detail":"0","display_title_description":"0","font_size_desc":"11","font_color_desc":"#333333","description_detail_height":"16","description_lightbox_font_size":"12","description_lightbox_font_color":"#ffffff","description_lightbox_bg_color":"#000000","slideshow_delay":"3000","slideshow_pause":"2000","slideshow_random":"0","slideshow_description":"peekaboo","detail_buttons":"1","phocagallery_width":"","phocagallery_center":"0","category_ordering":"1","image_ordering":"1","gallery_metadesc":"","gallery_metakey":"","alt_value":"1","tags_links":"0","display_tags_links":"0","enable_custom_css":"0","custom_css":"","enable_cooliris":"0","start_cooliris":"0","piclens_image":"1","switch_image":"0","switch_width":"640","switch_height":"480","switch_fixed_size":"0","enable_overlib":"0","ol_bg_color":"#666666","ol_fg_color":"#f6f6f6","ol_tf_color":"#000000","ol_cf_color":"#ffffff","overlib_overlay_opacity":"0.7","overlib_image_rate":"","create_watermark":"0","watermark_position_x":"center","watermark_position_y":"middle","display_category_statistics":"0","display_main_cat_stat":"1","display_lastadded_cat_stat":"1","count_lastadded_cat_stat":"3","display_mostviewed_cat_stat":"1","count_mostviewed_cat_stat":"3","display_feed":"1","feed_cat_ids":"","feed_img_ordering":"6","feed_img_count":"5","feed_title":"","registered_access_level":["3"],"enable_user_cp":"0","enable_upload_avatar":"1","enable_avatar_approve":"0","enable_usercat_approve":"0","enable_usersubcat_approve":"0","enable_direct_subcat":"0","user_subcat_count":"5","max_create_cat_char":"1000","user_ucp_lang":"1","enable_userimage_approve":"1","max_upload_char":"1000","upload_maxsize":"3145728","upload_maxres_width":"3072","upload_maxres_height":"2304","user_images_max_size":"20971520","enable_multiple":"0","multiple_upload_method":"1","multiple_upload_chunk":"0","multiple_resize_width":"-1","multiple_resize_height":"-1","enable_java":"0","java_box_width":"480","java_box_height":"480","youtube_upload":"0","display_rating":"0","display_rating_img":"1","display_comment":"0","display_comment_img":"0","comment_width":"500","max_comment_char":"1000","display_comment_nopup":"0","external_comment_system":"0","fb_comment_user_id":"","display_camera_info":"0","exif_information":"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED_Height,COMPUTED_Width,COMPUTED_IsColor,COMPUTED_ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp","display_categories_geotagging":"0","categories_lng":"","categories_lat":"","categories_zoom":"2","categories_map_width":"","categories_map_height":"500","display_icon_geotagging":"0","display_category_geotagging":"0","category_map_width":"","category_map_height":"400","display_icon_vm":"0","pagination_thumbnail_creation":"0","clean_thumbnails":"0","enable_thumb_creation":"1","crop_thumbnail":"5","jpeg_quality":"100","enable_picasa_loading":"1","picasa_load_pagination":"20","enable_facebook_loading":"1","icon_format":"png","large_image_width":"640","large_image_height":"480","medium_image_width":"100","medium_image_height":"100","small_image_width":"50","small_image_height":"50","front_modal_box_width":"680","front_modal_box_height":"560","folder_permissions":"0755","jfile_thumbs":"1","alias_iconv":"0","enable_cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_filters`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_finder_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termse`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qy1d9_finder_taxonomy`
--

INSERT INTO `qy1d9_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_terms`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_finder_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_terms_common`
--

INSERT INTO `qy1d9_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_finder_types`
--

CREATE TABLE IF NOT EXISTS `qy1d9_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_finder_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_foxcontact_sessions`
--

CREATE TABLE IF NOT EXISTS `qy1d9_foxcontact_sessions` (
  `id` varchar(32) NOT NULL,
  `cid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `keyword` varchar(32) NOT NULL,
  `birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` text,
  UNIQUE KEY `index` (`id`,`cid`,`mid`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_foxcontact_sessions`
--

INSERT INTO `qy1d9_foxcontact_sessions` (`id`, `cid`, `mid`, `keyword`, `birth`, `data`) VALUES
('b5a0f0241da61260b0772c041e7d877a', 110, 0, 'captcha_answer', '2012-10-01 20:51:45', '9');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_foxcontact_settings`
--

CREATE TABLE IF NOT EXISTS `qy1d9_foxcontact_settings` (
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_foxcontact_settings`
--

INSERT INTO `qy1d9_foxcontact_settings` (`name`, `value`) VALUES
('captchadrawer', 'use_gd'),
('dns', 'dns_check'),
('mimefilter', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_languages`
--

CREATE TABLE IF NOT EXISTS `qy1d9_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qy1d9_languages`
--

INSERT INTO `qy1d9_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_menu`
--

CREATE TABLE IF NOT EXISTS `qy1d9_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `qy1d9_menu`
--

INSERT INTO `qy1d9_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 133, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":["2"],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'ABOUT NSTU', 'about-nstu', '', 'about-nstu', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 45, 54, 0, '*', 0),
(103, 'mainmenu', 'ADMINISTRATIVE', 'administrative', '', 'administrative', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 55, 62, 0, '*', 0),
(104, 'mainmenu', 'ACADEMIC', 'academic', '', 'academic', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 63, 70, 0, '*', 0),
(105, 'mainmenu', 'ACTIVITIES', 'activities', '', 'activities', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 71, 76, 0, '*', 0),
(106, 'mainmenu', 'PHOTO GALARY', 'photo-galary', '', 'photo-galary', 'index.php?option=com_phocagallery&view=category&id=0', 'component', 1, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_categories":"0","show_pagination_category":"1","show_pagination_limit_categories":"0","show_pagination_limit_category":"1","show_ordering_categories":"0","show_ordering_images":"1","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
(107, 'mainmenu', 'NOTICE', 'notice', '', 'notice', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 79, 80, 0, '*', 0),
(108, 'mainmenu', 'ADMISSION', 'admission', '', 'admission', 'index.php?option=com_content&view=article&id=39', 'component', 1, 1, 1, 22, 0, 323, '2012-10-01 23:07:03', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(110, 'mainmenu', 'CONTACT US', 'contact-us', '', 'contact-us', 'index.php?option=com_foxcontact&view=foxcontact', 'component', 1, 1, 1, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"to_address":"info@nstu.edu.bd","cc_address":"","bcc_address":"","email_subject":"","jmessenger_user":"0","page_subheading":"contact us","formwidth":"100","formunit":"%","customhtml0":"","customhtml0display":"1","customhtml0order":"-1000","customhtml1":"","customhtml1display":"1","customhtml1order":"1000","labelsdisplay":"0","labelswidth":"400","labelsunit":"px","sender0":"Name","sender0display":"2","sender0order":"5","sender1":"Email","sender1display":"2","sender1order":"10","sender1isemail":"1","senderwidth":"270","senderunit":"px","text0":"Mobile No.","text0display":"2","text0order":"15","text1":"","text1display":"0","text1order":"20","text2":"","text2display":"0","text2order":"25","text3":"","text3display":"0","text3order":"30","text4":"","text4display":"0","text4order":"35","text5":"","text5display":"0","text5order":"40","text6":"","text6display":"0","text6order":"45","text7":"","text7display":"0","text7order":"50","text8":"","text8display":"0","text8order":"55","text9":"","text9display":"0","text9order":"60","textwidth":"270","textunit":"px","dropdown0":"Select your issue","dropdown0display":"2","dropdown0values":"Admission,Academic,Others","dropdown0order":"65","dropdown1":"","dropdown1display":"0","dropdown1values":"","dropdown1order":"70","dropdown2":"","dropdown2display":"0","dropdown2values":"","dropdown2order":"75","dropdownwidth":"280","dropdownunit":"px","textarea0":"Write your letter...","textarea0display":"2","textarea0order":"80","textarea1":"","textarea1display":"0","textarea1order":"85","textarea2":"","textarea2display":"0","textarea2order":"90","textareawidth":"270","textareaheight":"180","textareaunit":"px","checkbox0":"Check this box to varify you are human","checkbox0display":"0","checkbox0order":"95","checkbox1":"","checkbox1display":"0","checkbox1order":"100","checkbox2":"","checkbox2display":"0","checkbox2order":"105","checkbox3":"","checkbox3display":"0","checkbox3order":"110","checkbox4":"","checkbox4display":"0","checkbox4order":"115","uploaddisplay":"0","uploadmethod":"1","upload":"","uploadmax_file_size":"10000","submittext":"Submit","submittype":"0","submiticon":"-1","resetbutton":"0","resettext":"","resettype":"0","reseticon":"-1","email_sent_action":"0","email_sent_text":"","email_sent_textdisplay":"1","email_sent_page":"101","copy_to_submitter":"1","email_copy_subject":"info@nstu.edu.bd","email_copy_text":"Thanks for your email. You will be notify soon.","email_copy_summary":"0","spam_check":"1","spam_words":"","spam_detected_text":"","spam_detected_textdisplay":"1","stdcaptchadisplay":"1","stdcaptcha":"Solve this equation and fill in the capcha box.","stdcaptchatype":"1","stdcaptcha_length":"2","stdcaptchawidth":"140","stdcaptchaheight":"90","stdcaptchafont":"freesansbold.ttf","stdcaptchafontmin":"35","stdcaptchafontmax":"35","stdcaptchaangle":"0","stdcaptcha_backgroundcolor":"#ffffff","stdcaptcha_textcolor":"#191919","stdcaptcha_disturbcolor":"#c8c8c8","stylesheet":"neon.css","acymailing":"0","acymailing_checkboxes":"checkbox|label","acymailing_auto_checked":"0","jnews":"0","jnews_checkboxes":"checkbox|label","jnews_auto_checked":"0","othernewsletters":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 105, 106, 0, '*', 0),
(111, 'mainmenu', 'History', 'history', '', 'about-nstu/history', 'index.php?option=com_content&view=article&id=18', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(112, 'mainmenu', 'Mission & Vision', 'mission-vision', '', 'about-nstu/mission-vision', 'index.php?option=com_content&view=article&id=25', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(113, 'mainmenu', 'Why NSTU', 'why-nstu', '', 'about-nstu/why-nstu', 'index.php?option=com_content&view=article&id=31', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(114, 'mainmenu', 'Facilities', 'facilities', '', 'about-nstu/facilities', 'index.php?option=com_content&view=article&id=32', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(115, 'mainmenu', 'Chancellor', 'chancellor', '', 'administrative/chancellor', 'index.php?option=com_content&view=article&id=7', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 57, 0, '*', 0),
(116, 'mainmenu', 'Vice Chancellor', 'vice-chancellor', '', 'administrative/vice-chancellor', 'index.php?option=com_content&view=article&id=30', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 59, 0, '*', 0),
(119, 'mainmenu', 'Faculties', 'faculties', '', 'academic/faculties', 'index.php?option=com_content&view=article&id=15', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(120, 'mainmenu', 'Registrar Office', 'registrar-office', '', 'administrative/registrar-office', 'index.php?option=com_content&view=article&id=29', 'component', 1, 103, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 61, 0, '*', 0),
(121, 'mainmenu', 'Departments', 'departments', '', 'academic/departments', 'index.php?option=com_content&view=article&id=11', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(122, 'mainmenu', 'Academic system', 'academic-system', '', 'academic/academic-system', 'index.php?option=com_content&view=article&id=2', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(123, 'mainmenu', 'NSTU OSN', 'nstu-osn', '', 'activities/nstu-osn', 'index.php?option=com_content&view=article&id=27', 'component', 1, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 72, 73, 0, '*', 0),
(124, 'mainmenu', 'Cultural activities', 'cultural-activities', '', 'activities/cultural-activities', 'index.php?option=com_content&view=article&id=10', 'component', 1, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(125, 'main-menu', 'MISSION & VISSION', 'mission-vision', '', 'mission-vision', 'index.php?option=com_content&view=article&id=25', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(126, 'main-menu', 'HISTORY', 'history', '', 'history', 'index.php?option=com_content&view=article&id=18', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 84, 0, '*', 0),
(127, 'main-menu', 'WHY NSTU', 'why-nstu', '', 'why-nstu', 'index.php?option=com_content&view=article&id=31', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(128, 'main-menu', 'FACILITIES', 'facilities', '', 'facilities', 'index.php?option=com_content&view=article&id=32', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(129, 'main-menu', 'CHANCELLOR', 'chancellor', '', 'chancellor', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(130, 'main-menu', 'VICE CHANCELOR', 'vice-chancelor', '', 'vice-chancelor', 'index.php?option=com_content&view=article&id=30', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(131, 'main-menu', 'REGISTER OFFICE', 'register-office', '', 'register-office', 'index.php?option=com_content&view=article&id=29', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(133, 'main-menu', 'DEPARTMENTS', 'depertments', '', 'depertments', 'index.php?option=com_content&view=article&id=11', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0),
(134, 'main-menu', 'ACADEMIC SYSTEM', 'academic-system', '', 'academic-system', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0),
(135, 'mainmenu', 'SITEMAP', 'whole-view-of-site', '', 'whole-view-of-site', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 103, 104, 0, '*', 0),
(136, 'main', 'COM_FOXCONTACT_MENU', 'com-foxcontact-menu', '', 'com-foxcontact-menu', 'index.php?option=com_foxcontact', 'component', 0, 1, 1, 10004, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_foxcontact/images/email-16.png', 0, '', 101, 102, 0, '', 1),
(137, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu.png', 0, '', 107, 132, 0, '', 1),
(138, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png', 0, '', 108, 109, 0, '', 1),
(139, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png', 0, '', 110, 111, 0, '', 1),
(140, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png', 0, '', 112, 113, 0, '', 1),
(141, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png', 0, '', 114, 115, 0, '', 1),
(142, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png', 0, '', 116, 117, 0, '', 1),
(143, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png', 0, '', 118, 119, 0, '', 1),
(144, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png', 0, '', 120, 121, 0, '', 1),
(145, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png', 0, '', 122, 123, 0, '', 1),
(146, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png', 0, '', 124, 125, 0, '', 1),
(147, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png', 0, '', 126, 127, 0, '', 1),
(148, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-tags.png', 0, '', 128, 129, 0, '', 1),
(149, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 137, 2, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png', 0, '', 130, 131, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_menu_types`
--

CREATE TABLE IF NOT EXISTS `qy1d9_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qy1d9_menu_types`
--

INSERT INTO `qy1d9_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'main-menu', 'Main Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_messages`
--

CREATE TABLE IF NOT EXISTS `qy1d9_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `qy1d9_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_modules`
--

CREATE TABLE IF NOT EXISTS `qy1d9_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `qy1d9_modules`
--

INSERT INTO `qy1d9_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Banners', '', '', 0, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 0, '{"target":"1","count":"5","cid":"0","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(88, 'Breadcrumbs', '', '', 0, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 'OUR NSTU ', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"main-menu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"box box-grey icon-star","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(91, 'ImageShow', '', '<p><img src="images/rd.jpg" border="0" alt="" /></p>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(92, 'Welcome', '', '<p style="font-size: 10pt; line-height: 150%; font-family: ''Niconne'';">Education is the backbone of a nation.Educational institutes are called the nation-building workshop. A number of universities are there in Bangladesh. Noakhali Science &amp; Technology University (NSTU) is one of them and one of the best public universities by virtue of its subjects. The site of the university is in fact a pollution free area of Noakhali. Natural beauty around the university is appreciable in comparison with other universities. The atmosphere of the university campus is very much convenient and favorable for study. It spread the light of modern education of Science and Technology and practising wisdom in every field of knowledge.</p>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(93, 'Who''s Online', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"box box-grey icon-star","cache":"0","filter_groups":"0"}', 0, '*'),
(94, 'Login', '', '', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"box box-grey icon-star","cache":"0"}', 0, '*'),
(95, 'Search', '', '', 3, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"0","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"box box-grey icon-star","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(100, 'slideshow', '', '', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_AutsonSlideShow', 1, 0, '{"moduleclass_sfx":"","slidewidth":"870","slideheight":"400","menu_style":"0","timeinterval":"2000","velocity":"1","align":"center","backgroundcolor":"#000","linktarget":"_self","linkedtitle":"no","navigation":"numbers","navigationalign":"right","arrows":"yes","hidetools":"no","arrowspos":"default","numberspos":"bottom","border":"6","bordercolor":"#ffffff","labelcolor":"#fff","labelsize":"22","titlefont":"BebasNeueRegular","desccolor":"#fff","descsize":"10","descfont":"arial","bgout":"#333","colorout":"#fff","bgover":"#000","colorover":"#fff","bgactive":"#cc3333","coloractive":"#fff","show_jquery":"yes","jver":"1.5.2","load":"onload","img1":"images\\/Photo 0031.jpg","label1":"","desc1":"","link1":"","img2":"images\\/administrative.jpg","label2":"","desc2":"","link2":"","img3":"images\\/flowers.jpg","label3":"","desc3":"","link3":"","img4":"images\\/vc_office4.jpg","label4":"Vice Chancellor ","desc4":"Professor A K M Sayedul Hoque Chowdhury, Noakhali Science And Technology University","link4":"","img5":"","label5":"","desc5":"","link5":"","img6":"","label6":"","desc6":"","link6":"","img7":"","label7":"","desc7":"","link7":"","img8":"","label8":"","desc8":"","link8":"","img9":"","label9":"","desc9":"","link9":"","img10":"","label10":"","desc10":"","link10":"","img11":"","label11":"","desc11":"","link11":"","img12":"","label12":"","desc12":"","link12":"","img13":"","label13":"","desc13":"","link13":"","img14":"","label14":"","desc14":"","link14":"","img15":"","label15":"","desc15":"","link15":"","img16":"","label16":"","desc16":"","link16":"","img17":"","label17":"","desc17":"","link17":"","img18":"","label18":"","desc18":"","link18":"","img19":"","label19":"","desc19":"","link19":"","img20":"","label20":"","desc20":"","link20":""}', 0, '*'),
(103, 'Latest News', '', '', 1, 'right', 323, '2012-10-01 23:05:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["16"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"box-grey icon-star","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_modules_menu`
--

CREATE TABLE IF NOT EXISTS `qy1d9_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_modules_menu`
--

INSERT INTO `qy1d9_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(90, 0),
(91, 101),
(92, 101),
(93, 0),
(94, 0),
(95, 0),
(100, 101),
(103, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `qy1d9_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_overrider`
--

CREATE TABLE IF NOT EXISTS `qy1d9_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `qy1d9_phocagallery`
--

INSERT INTO `qy1d9_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
(1, 2, 0, 'academic and garden', 'academic-and-garden', 'Beauti Of NSTU/academic and garden.jpg', NULL, '2012-10-01 03:32:34', 10, '', '', 0, '', 0, NULL, 0, 98149, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(2, 2, 0, 'ATM booth(mercentile bank)', 'atm-booth-mercentile-bank', 'Beauti Of NSTU/ATM booth(mercentile bank).jpg', NULL, '2012-10-01 03:32:34', 7, '', '', 0, '', 0, NULL, 0, 120651, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(3, 2, 0, 'building', 'building', 'Beauti Of NSTU/building.jpg', NULL, '2012-10-01 03:32:34', 6, '', '', 0, '', 0, NULL, 0, 68160, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(4, 2, 0, 'front view', 'front-view', 'Beauti Of NSTU/front view.jpg', NULL, '2012-10-01 03:32:34', 6, '', '', 0, '', 0, NULL, 0, 146089, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(5, 2, 0, 'lake', 'lake', 'Beauti Of NSTU/lake.jpg', NULL, '2012-10-01 03:32:34', 6, '', '', 0, '', 0, NULL, 0, 149493, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(6, 2, 0, 'nstu alll preview', 'nstu-alll-preview', 'Beauti Of NSTU/nstu alll preview.jpg', NULL, '2012-10-01 03:32:34', 10, '', '', 0, '', 0, NULL, 0, 71634, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(7, 2, 0, 'Park', 'park', 'Beauti Of NSTU/Park.jpg', NULL, '2012-10-01 03:32:34', 8, '', '', 0, '', 0, NULL, 0, 158437, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(8, 2, 0, 'showcase', 'showcase', 'Beauti Of NSTU/showcase.jpg', NULL, '2012-10-01 03:32:34', 8, '', '', 0, '', 0, NULL, 0, 112463, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(9, 3, 0, 'Academic Building', 'academic-building', 'academic/Academic Building.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 118423, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(10, 3, 0, 'Administrative Building', 'administrative-building', 'academic/Administrative Building.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 136012, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(11, 3, 0, 'ASH Hall', 'ash-hall', 'academic/ASH Hall.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 76622, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(12, 3, 0, 'bibi khadija hall', 'bibi-khadija-hall', 'academic/bibi khadija hall.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 115014, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(13, 3, 0, 'hall part 1', 'hall-part-1', 'academic/hall part 1.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 75049, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(14, 3, 0, 'hall part 2', 'hall-part-2', 'academic/hall part 2.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 69436, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(15, 3, 0, 'Student BUS 1', 'student-bus-1', 'academic/Student BUS 1.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 116956, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(16, 3, 0, 'Student BUS 2', 'student-bus-2', 'academic/Student BUS 2.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 101170, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(17, 3, 0, 'Teacher Dormatory', 'teacher-dormatory', 'academic/Teacher Dormatory.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 142195, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
(18, 3, 0, 'teachers car', 'teachers-car', 'academic/teachers car.jpg', NULL, '2012-10-01 03:45:21', 4, '', '', 0, '', 0, NULL, 0, 100377, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_categories`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qy1d9_phocagallery_categories`
--

INSERT INTO `qy1d9_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(3, 0, 0, 'Academic', '', 'academic', '', '', '', '', '2012-10-01 03:45:21', 1, 1, 0, '0000-00-00 00:00:00', NULL, 3, 1, 0, 5, '0', '0', '0', 'academic', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*'),
(2, 0, 0, 'Beauti Of NSTU', '', 'beauti-of-nstu', '', '', '', NULL, '2012-10-01 03:32:34', 1, 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, 0, 10, NULL, NULL, NULL, 'Beauti Of NSTU', '', '', 0, '', '', '', '', '', 0, '', NULL, NULL, NULL, NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_comments`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_fb_users`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_fb_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_img_comments`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_img_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_img_votes`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_img_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_img_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_img_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_tags`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_tags_ref`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_tags_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_user`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_votes`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_phocagallery_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `qy1d9_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_phocagallery_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_redirect_links`
--

CREATE TABLE IF NOT EXISTS `qy1d9_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `qy1d9_redirect_links`
--

INSERT INTO `qy1d9_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/nstu/index.php/academic/departments?id=77', '', 'http://localhost/nstu/index.php/academic/departments', '', 1, 0, '2012-09-28 12:33:59', '0000-00-00 00:00:00'),
(2, 'http://localhost/nstu/index.php/depertments?id=77', '', 'http://localhost/nstu/index.php/depertments', '', 1, 0, '2012-09-28 15:27:33', '0000-00-00 00:00:00'),
(3, 'http://nstu.edu.bd/newsite/depertments?id=79', '', 'http://nstu.edu.bd/newsite/depertments', '', 1, 0, '2012-09-30 08:44:50', '0000-00-00 00:00:00'),
(4, 'http://nstu.edu.bd/newsite/nstu.edu.bd/n&searchphrase=all&option=com_search/component/search/', '', 'http://nstu.edu.bd/newsite/component/search/?searchword=Food%20Technology%20and&searchphrase=all', '', 1, 0, '2012-09-30 08:57:26', '0000-00-00 00:00:00'),
(5, 'http://www.nstu.edu.bd/newsite/component/content/article?id=78', '', 'http://www.nstu.edu.bd/newsite/index.php/component/content/article/9-academic/8-computer-science-and-telecommunication-engineering', '', 1, 0, '2012-09-30 13:47:03', '0000-00-00 00:00:00'),
(6, 'http://nstu.edu.bd/newsite/component/content/article?id=87', '', 'http://nstu.edu.bd/newsite/index.php/component/content/article/9-academic/8-computer-science-and-telecommunication-engineering', '', 1, 0, '2012-10-01 06:15:55', '0000-00-00 00:00:00'),
(7, 'http://www.nstu.edu.bd/newsite/component/content/article/9-academic/index.php', '', 'http://www.nstu.edu.bd/newsite/component/content/article/9-academic/3-applied-chemistry-chemical-engineering', '', 4, 0, '2012-10-01 10:01:22', '0000-00-00 00:00:00'),
(8, 'http://www.nstu.edu.bd/index.php/admission/admission-test-notice-2012-2013', '', 'http://shamima.ebd24.com/2012/09/nstu-edu-bd-1st-year-admission-2012-13-noakhali-science-and-technology-university.html', '', 19, 0, '2012-10-01 15:00:33', '0000-00-00 00:00:00'),
(9, 'http://www.nstu.edu.bd/index.php/activities/57-notice/result/74-construction-process?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 15:14:12', '0000-00-00 00:00:00'),
(10, 'http://www.nstu.edu.bd/index.php/administrative/32-about-nstu', '', '', '', 1, 0, '2012-10-01 15:14:13', '0000-00-00 00:00:00'),
(11, 'http://www.nstu.edu.bd/index.php/administrative/registrar-office/57-notice/result', '', '', '', 1, 0, '2012-10-01 15:14:15', '0000-00-00 00:00:00'),
(12, 'http://www.nstu.edu.bd/index.php/component/content/article/35-academic/78-md-bellal-hossain', '', '', '', 1, 0, '2012-10-01 15:14:48', '0000-00-00 00:00:00'),
(13, 'http://nstu.edu.bd/index.php/about-nstu/facilities/57-notice/result', '', '', '', 1, 0, '2012-10-01 15:14:50', '0000-00-00 00:00:00'),
(14, 'http://nstu.edu.bd/index.php/about-nstu/mission-vision/74-construction-process?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 15:14:52', '0000-00-00 00:00:00'),
(15, 'http://www.nstu.edu.bd/index.php/notice/result', '', 'http://www.google.com/search?hl=en&q=noakhali+science+and+technology+university+admission&revid=998859714&sa=X&ei=AbJpUJaRO4jtrAebpYCwBw&ved=0CBgQ1QIo', '', 26, 0, '2012-10-01 15:16:07', '0000-00-00 00:00:00'),
(16, 'http://www.nstu.edu.bd/index.php/academic/academic', '', '', '', 3, 0, '2012-10-01 15:26:59', '0000-00-00 00:00:00'),
(17, 'http://www.nstu.edu.bd/index.php/about-nstu/index.php', '', 'http://www.nstu.edu.bd/index.php/about-nstu/history', '', 1, 0, '2012-10-01 15:30:37', '0000-00-00 00:00:00'),
(18, 'http://www.nstu.edu.bd/index.php/administrative/index.php', '', 'http://www.nstu.edu.bd/index.php/administrative/vice-chancellor', '', 2, 0, '2012-10-01 15:47:59', '0000-00-00 00:00:00'),
(19, 'http://www.nstu.edu.bd/index.php/site-map/sitemap/58-admission', '', 'http://www.google.com/m?q=noyakhali+science+and+tecnology+univarsity&client=ms-opera-mobile&channel=new', '', 4, 0, '2012-10-01 15:52:25', '0000-00-00 00:00:00'),
(20, 'http://www.nstu.edu.bd/component/content/article/17-student/index.php', '', 'http://www.nstu.edu.bd/component/content/article/17-student/41-pharmamirror', '', 11, 0, '2012-10-01 16:23:00', '0000-00-00 00:00:00'),
(21, 'http://www.nstu.edu.bd/about-nstu/index.php', '', 'http://www.nstu.edu.bd/about-nstu/mission-vision', '', 3, 0, '2012-10-01 16:45:16', '0000-00-00 00:00:00'),
(22, 'http://www.nstu.edu.bd/index.php/academic/departments/35-academic/76-md-rakeb-ul-islam', '', '', '', 1, 0, '2012-10-01 16:50:31', '0000-00-00 00:00:00'),
(23, 'http://www.nstu.edu.bd/index.php/academic/departments?id=87', '', '', '', 1, 0, '2012-10-01 16:54:32', '0000-00-00 00:00:00'),
(24, 'http://www.nstu.edu.bd/index.php/mission', '', '', '', 2, 0, '2012-10-01 17:20:41', '0000-00-00 00:00:00'),
(25, 'http://nstu.edu.bd/index.php/administrative/32-about-nstu/83-english?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 17:28:26', '0000-00-00 00:00:00'),
(26, 'http://nstu.edu.bd/index.php/history/57-notice/result', '', '', '', 1, 0, '2012-10-01 17:28:28', '0000-00-00 00:00:00'),
(27, 'http://www.nstu.edu.bd/index.php/history/57-notice/result/74-construction-process?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 17:28:31', '0000-00-00 00:00:00'),
(28, 'http://www.nstu.edu.bd/index.php/site-map/sitemap?id=83', '', '', '', 1, 0, '2012-10-01 17:29:04', '0000-00-00 00:00:00'),
(29, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=158:admission-notice-from-waiting-list-2&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 17:35:10', '0000-00-00 00:00:00'),
(30, 'http://www.nstu.edu.bd/index.php/beauty', '', '', '', 2, 0, '2012-10-01 17:54:32', '0000-00-00 00:00:00'),
(31, 'http://www.nstu.edu.bd/index.php/academic/departments?id=80', '', '', '', 1, 0, '2012-10-01 18:02:41', '0000-00-00 00:00:00'),
(32, 'http://nstu.edu.bd/index.php/site-map/sitemap/54-notice', '', '', '', 1, 0, '2012-10-01 18:29:03', '0000-00-00 00:00:00'),
(33, 'http://www.nstu.edu.bd/index.php/academic/departments?id=84', '', '', '', 2, 0, '2012-10-01 18:30:26', '0000-00-00 00:00:00'),
(34, 'http://www.nstu.edu.bd/index.php/site-map/sitemap', '', '', '', 2, 0, '2012-10-01 18:40:11', '0000-00-00 00:00:00'),
(35, 'http://www.nstu.edu.bd/index.php/activities/cultural', '', '', '', 1, 0, '2012-10-01 18:40:15', '0000-00-00 00:00:00'),
(36, 'http://www.nstu.edu.bd/cste/index2.php?option=com_content&do_pdf=1&id=56', '', '', '', 1, 0, '2012-10-01 18:40:31', '0000-00-00 00:00:00'),
(37, 'http://www.nstu.edu.bd/index.php/site-map/sitemap?id=86', '', '', '', 1, 0, '2012-10-01 18:53:24', '0000-00-00 00:00:00'),
(38, 'http://www.nstu.edu.bd/cste/index2.php?option=com_content&task=view&id=34&pop=1&page=0&Itemid=86', '', '', '', 1, 0, '2012-10-01 18:53:27', '0000-00-00 00:00:00'),
(39, 'http://nstu.edu.bd/index.php/facilities/57-notice/result/', '', '', '', 1, 0, '2012-10-01 18:54:00', '0000-00-00 00:00:00'),
(40, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=130:appointment-notice-of-microbiology-department&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 19:13:05', '0000-00-00 00:00:00'),
(41, 'http://www.nstu.edu.bd/index.php?option=com_content&view=category&id=3:notice&Itemid=16&layout=default', '', '', '', 1, 0, '2012-10-01 19:21:38', '0000-00-00 00:00:00'),
(42, 'http://nstu.edu.bd/index.php?option=com_content&view=article&id=142:vice-chancellor-inaugurates-long-awaited-generator-for-nstu&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 19:38:00', '0000-00-00 00:00:00'),
(43, 'http://www.nstu.edu.bd/whole-view-of-site/contact-us', '', '', '', 1, 0, '2012-10-01 19:45:09', '0000-00-00 00:00:00'),
(44, 'http://nstu.edu.bd/index.php/notice/result', '', '', '', 1, 0, '2012-10-01 19:57:24', '0000-00-00 00:00:00'),
(45, 'http://nstu.edu.bd/index.php/admission/admission-test-notice-2012-2013?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 19:57:26', '0000-00-00 00:00:00'),
(46, 'http://nstu.edu.bd/index.php/beauty', '', '', '', 1, 0, '2012-10-01 19:57:27', '0000-00-00 00:00:00'),
(47, 'http://nstu.edu.bd/index.php/mission', '', '', '', 1, 0, '2012-10-01 19:57:33', '0000-00-00 00:00:00'),
(48, 'http://nstu.edu.bd/index.php/site-map/sitemap', '', '', '', 1, 0, '2012-10-01 19:57:41', '0000-00-00 00:00:00'),
(49, 'http://nstu.edu.bd/index.php/activities/cultural', '', '', '', 1, 0, '2012-10-01 19:57:43', '0000-00-00 00:00:00'),
(50, 'http://nstu.edu.bd/index.php/academic/academic', '', '', '', 1, 0, '2012-10-01 19:57:46', '0000-00-00 00:00:00'),
(51, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=54:mehedi-mahmudul-hasan&catid=12:faculty-members&Itemid=41', '', '', '', 1, 0, '2012-10-01 20:09:14', '0000-00-00 00:00:00'),
(52, 'http://nstu.edu.bd/index.php?option=com_content&view=article&catid=12:faculty-members&id=54:mehedi-mahmudul-hasan&Itemid=41', '', '', '', 1, 0, '2012-10-01 20:09:14', '0000-00-00 00:00:00'),
(53, 'http://www.nstu.edu.bd/cste', '', '', '', 1, 0, '2012-10-01 20:32:28', '0000-00-00 00:00:00'),
(54, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=109:victory-day-observed-at-nstu&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 20:34:45', '0000-00-00 00:00:00'),
(55, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=45:academic-report-for-6th-regent-board&Itemid=19', '', '', '', 1, 0, '2012-10-01 20:34:48', '0000-00-00 00:00:00'),
(56, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=71:indipendence-day-observed-in-nstu&Itemid=19', '', '', '', 1, 0, '2012-10-01 20:35:01', '0000-00-00 00:00:00'),
(57, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=84:milad-mahfil&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 20:35:10', '0000-00-00 00:00:00'),
(58, 'http://www.nstu.edu.bd/index.php?option=com_content&view=article&id=90:vacation-announced&catid=4:news&Itemid=49', '', '', '', 1, 0, '2012-10-01 20:35:11', '0000-00-00 00:00:00'),
(59, 'http://www.nstu.edu.bd/index.php/academic/departments?id=77', '', '', '', 1, 0, '2012-10-01 20:53:41', '0000-00-00 00:00:00'),
(60, 'http://www.nstu.edu.bd/cste/index2.php?id=22&option=com_content&task=emailform', '', '', '', 1, 0, '2012-10-01 21:00:58', '0000-00-00 00:00:00'),
(61, 'http://www.nstu.edu.bdhttp//www.nstu.edu.bd/index.php', '', 'http://www.nstu.edu.bd/index.php', '', 1, 0, '2012-10-01 21:08:42', '0000-00-00 00:00:00'),
(62, 'http://nstu.edu.bd/library/list/category_list.php?step=2&par=Fisheries', '', 'http://nstu.edu.bd/library/list/category_list.php?step=2&par=Fisheries', '', 1, 0, '2012-10-01 21:13:58', '0000-00-00 00:00:00'),
(63, 'http://www.nstu.edu.bd/index.php/administrative/32-about-nstu/84-environmental-science-and-hazard-studies?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 21:26:20', '0000-00-00 00:00:00'),
(64, 'http://nstu.edu.bd/index.php/admission/admission-test-notice-2012-2013', '', 'http://m.facebook.com/l.php?u=http%3A%2F%2Fnstu.edu.bd%2Findex.php%2Fadmission%2Fadmission-test-notice-2012-2013&h=bAQFfb8VN&enc=AZOWuqZWOWSzbzSIvFJTk', '', 1, 0, '2012-10-01 21:39:18', '0000-00-00 00:00:00'),
(65, 'http://www.nstu.edu.bd/index.php?Itemid=49&catid=4:news&id=93:registras-speech-in-national-aids-and-std-program&option=com_content&view=article', '', '', '', 1, 0, '2012-10-01 21:51:21', '0000-00-00 00:00:00'),
(66, 'http://www.nstu.edu.bd/index.php/academic/departments?id=83', '', '', '', 1, 0, '2012-10-01 21:52:21', '0000-00-00 00:00:00'),
(67, 'http://www.nstu.edu.bd/cste/index.php?Itemid=99999999&id=22&option=com_content&task=view', '', '', '', 1, 0, '2012-10-01 22:44:23', '0000-00-00 00:00:00'),
(68, 'http://www.nstu.edu.bd/index.php/academic/35-academic/81-microbiology?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 23:12:26', '0000-00-00 00:00:00'),
(69, 'http://www.nstu.edu.bd/index.php/site-map/sitemap?id=82', '', '', '', 1, 0, '2012-10-01 23:12:30', '0000-00-00 00:00:00'),
(70, 'http://nstu.edu.bd/index.php/about-nstu/history/57-notice/result/74-construction-process', '', '', '', 1, 0, '2012-10-01 23:12:45', '0000-00-00 00:00:00'),
(71, 'http://nstu.edu.bd/index.php/notice/result?tmpl=component&print=1&page=', '', '', '', 1, 0, '2012-10-01 23:12:55', '0000-00-00 00:00:00'),
(72, 'http://nstu.edu.bd/index.php/photo-galary/beauty-of-nstu/54-notice', '', '', '', 1, 0, '2012-10-01 23:12:58', '0000-00-00 00:00:00'),
(73, 'http://www.nstu.edu.bd/index.php?option=com_content&view=category&id=3&Itemid=16', '', '', '', 1, 0, '2012-10-01 23:30:51', '0000-00-00 00:00:00'),
(74, 'http://www.nstu.edu.bd/cste/index.php?option=com_content&task=view&id=24&Itemid=59', '', '', '', 1, 0, '2012-10-01 23:46:22', '0000-00-00 00:00:00'),
(75, 'http://www.nstu.edu.bd/index.php/site-map/sitemap/35-academic/79-applied-chemistry-chemical-engineering', '', '', '', 1, 0, '2012-10-01 23:46:23', '0000-00-00 00:00:00'),
(76, 'http://www.nstu.edu.bd/index.php?Itemid=40&catid=11:faculty-members&id=104:biswa-nath-das&option=com_content&view=article', '', '', '', 1, 0, '2012-10-01 23:50:16', '0000-00-00 00:00:00'),
(77, 'http://www.nstu.edu.bd/index.php/academic/departments/index.php?option=com_content&view=article&id=76', '', '', '', 1, 0, '2012-10-02 00:11:03', '0000-00-00 00:00:00'),
(78, 'http://www.nstu.edu.bd/index.php/activities/nstu-osn/54-notice', '', '', '', 1, 0, '2012-10-02 00:26:37', '0000-00-00 00:00:00'),
(79, 'http://www.nstu.edu.bd/cste/index.php?Itemid=86&id=27&option=com_content&sectionid=7&task=category', '', '', '', 1, 0, '2012-10-02 00:42:27', '0000-00-00 00:00:00'),
(80, 'http://www.nstu.edu.bd/cste/index.php?option=com_content&task=view&id=34&Itemid=86', '', '', '', 1, 0, '2012-10-02 00:48:20', '0000-00-00 00:00:00'),
(81, 'http://www.nstu.edu.bd/newsite/', '', '', '', 12, 0, '2012-10-02 00:51:27', '0000-00-00 00:00:00'),
(82, 'http://www.nstu.edu.bd/newsite/administrator/index.php', '', 'http://www.nstu.edu.bd/newsite/administrator/index.php?option=com_installer&view=manage', '', 1, 0, '2012-10-02 00:52:55', '0000-00-00 00:00:00'),
(83, 'http://www.nstu.edu.bd/index.php/academic/departments?id=81', '', '', '', 0, 0, '2012-10-02 01:19:40', '0000-00-00 00:00:00'),
(84, 'http://www.nstu.edu.bd/ne', '', '', '', 1, 0, '2012-10-02 01:39:30', '0000-00-00 00:00:00'),
(85, 'http://www.nstu.edu.bd/fsfsdgfg', '', '', '', 1, 0, '2012-10-02 01:45:00', '0000-00-00 00:00:00'),
(86, 'http://www.nstu.edu.bd/newsite', '', 'http://www.facebook.com/groups/csteall/permalink/10151182367026904/?ref=notif&notif_t=like', '', 1, 0, '2012-10-02 01:45:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_schemas`
--

CREATE TABLE IF NOT EXISTS `qy1d9_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_schemas`
--

INSERT INTO `qy1d9_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.7'),
(10004, '1.9.0');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_session`
--

CREATE TABLE IF NOT EXISTS `qy1d9_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_session`
--

INSERT INTO `qy1d9_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('0ec43ff71c066ab323442b240d8a9b53', 1, 1, '1355980494', '__default|a:5:{s:22:"session.client.browser";s:65:"Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/20100101 Firefox/12.0";s:15:"session.counter";i:1;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";N;s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"9fc98c35714694a19eb906a96c629a30";}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_template_styles`
--

CREATE TABLE IF NOT EXISTS `qy1d9_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `qy1d9_template_styles`
--

INSERT INTO `qy1d9_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'jsn_epic_free', 0, '1', 'JSN_Epic_FREE - Default', '{"logoPath":"images\\/logo.png","logoLink":"","logoSlogan":"","enableColoredLogo":"0","templateWidth":"wide","narrowWidth":"960","wideWidth":"1150","floatWidth":"90","promoLeftWidth":"23","promoRightWidth":"23","leftWidth":"23","rightWidth":"23","innerleftWidth":"28","innerrightWidth":"28","showFrontpage":"1","equalHeight":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_updates`
--

CREATE TABLE IF NOT EXISTS `qy1d9_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=141 ;

--
-- Dumping data for table `qy1d9_updates`
--

INSERT INTO `qy1d9_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(2, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(3, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(4, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(5, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(6, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(7, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(8, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(9, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(10, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(11, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(12, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(13, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(14, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(15, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(16, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(17, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(18, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(19, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(20, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(21, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(22, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(23, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(24, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(25, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(26, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(27, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(28, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(29, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(30, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(31, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(32, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(33, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(34, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(35, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(36, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(37, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(38, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(39, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(40, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(41, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(42, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(43, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(44, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(45, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(46, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(47, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(48, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(49, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(50, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(51, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(52, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(53, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(54, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(55, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(56, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(57, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.6.2', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(58, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.6.2', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(59, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(60, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(61, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(62, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(63, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(64, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(65, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(66, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(67, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(68, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(69, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(70, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(71, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(72, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(73, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(74, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(75, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(76, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(77, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(78, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(79, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(80, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(81, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(82, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(83, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(84, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(85, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(86, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(87, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(88, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(89, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(90, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(91, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(92, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(93, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(94, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(95, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(96, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(97, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(98, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(99, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(100, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(101, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(102, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(103, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(104, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(105, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(106, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(107, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(108, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(109, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(110, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(111, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(112, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(113, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(114, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(115, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(116, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(117, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(118, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(119, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(120, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(121, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(122, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(123, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(124, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(125, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(126, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(127, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(128, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(129, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(130, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(131, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(132, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(133, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(134, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(135, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(136, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(137, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(138, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(139, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(140, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_update_categories`
--

CREATE TABLE IF NOT EXISTS `qy1d9_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_update_sites`
--

CREATE TABLE IF NOT EXISTS `qy1d9_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `qy1d9_update_sites`
--

INSERT INTO `qy1d9_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1349103815),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1349103815),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1349103815),
(4, 'Foxcontact update site', 'extension', 'http://www.fox.ra.it/phocadownload/foxcontact.xml', 1, 1355979631);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `qy1d9_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `qy1d9_update_sites_extensions`
--

INSERT INTO `qy1d9_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10004);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_usergroups`
--

CREATE TABLE IF NOT EXISTS `qy1d9_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `qy1d9_usergroups`
--

INSERT INTO `qy1d9_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_users`
--

CREATE TABLE IF NOT EXISTS `qy1d9_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=324 ;

--
-- Dumping data for table `qy1d9_users`
--

INSERT INTO `qy1d9_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(323, 'Super User', 'admin', 'Mashpy@TechnologyBasic.com', 'e10adc3949ba59abbe56e057f20f883e', 'deprecated', 0, 1, '2012-09-27 10:52:07', '2012-12-20 05:01:00', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_user_notes`
--

CREATE TABLE IF NOT EXISTS `qy1d9_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_user_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_user_profiles`
--

CREATE TABLE IF NOT EXISTS `qy1d9_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `qy1d9_user_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `qy1d9_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qy1d9_user_usergroup_map`
--

INSERT INTO `qy1d9_user_usergroup_map` (`user_id`, `group_id`) VALUES
(323, 8),
(324, 2),
(325, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_viewlevels`
--

CREATE TABLE IF NOT EXISTS `qy1d9_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qy1d9_viewlevels`
--

INSERT INTO `qy1d9_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `qy1d9_weblinks`
--

CREATE TABLE IF NOT EXISTS `qy1d9_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `qy1d9_weblinks`
--

