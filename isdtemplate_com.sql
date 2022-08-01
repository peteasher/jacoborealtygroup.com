-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 06:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jacoborealtygroup.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_aios_leads`
--

CREATE TABLE `wp_aios_leads` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-23 00:29:02', '2021-04-23 00:29:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/isd-projects/jacoborealtygroup.com', 'yes'),
(2, 'home', 'http://localhost/isd-projects/jacoborealtygroup.com', 'yes'),
(3, 'blogname', 'jacoborealtygroup.com', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'peter.cenir@august99.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"cycloneslider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"cycloneslider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"cycloneslider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cycloneslider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"cycloneslider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"cycloneslider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"cycloneslider/([^/]+)/embed/?$\";s:46:\"index.php?cycloneslider=$matches[1]&embed=true\";s:34:\"cycloneslider/([^/]+)/trackback/?$\";s:40:\"index.php?cycloneslider=$matches[1]&tb=1\";s:42:\"cycloneslider/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?cycloneslider=$matches[1]&paged=$matches[2]\";s:49:\"cycloneslider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?cycloneslider=$matches[1]&cpage=$matches[2]\";s:38:\"cycloneslider/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?cycloneslider=$matches[1]&page=$matches[2]\";s:30:\"cycloneslider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cycloneslider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cycloneslider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cycloneslider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cycloneslider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cycloneslider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:32:\"aios-initial-setup/asis_main.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"cyclone-slider/cyclone-slider.php\";i:3;s:53:\"widget-importer-exporter/widget-importer-exporter.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'aios-starter-theme', 'yes'),
(41, 'stylesheet', 'jacoborealtygroup.com', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '400', 'yes'),
(60, 'medium_size_h', '400', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1638843960', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"primary-sidebar\";a:0:{}s:13:\"mobile-header\";a:1:{i:0;s:20:\"aios-mobile-header-2\";}s:23:\"aios-inner-pages-banner\";a:1:{i:0;s:13:\"custom_html-2\";}s:17:\"my-custom-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:12:\"hp-slideshow\";a:1:{i:0;s:23:\"cyclone-slider-widget-2\";}s:10:\"hp-welcome\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:8:{i:1638769939;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638793743;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1638793744;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1638836943;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638836951;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638836955;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639182543;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:219:\"[aios_custom_banner]\r\n<div class=\"ip-banner\" data-type=\"[post_type]\" data-id=\"[post_id]\">\r\n    <canvas width=\"1600\" height=\"350\" style=\"background-image: url([banner_image])\"></canvas>\r\n    </div>\r\n[/aios_custom_banner]\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619139262;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:23:\"aios-inner-pages-banner\";a:0:{}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7.4-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.4-rollback-0.zip\";}s:7:\"current\";s:5:\"5.7.4\";s:7:\"version\";s:5:\"5.7.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.7\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1638768153;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'aios_initial_setup_modules', 'a:1:{s:14:\"classic-editor\";s:3:\"yes\";}', 'yes'),
(151, 'aios-modules-classic-editor-install', 'installed', 'yes'),
(152, 'classic-editor-replace', 'classic', 'yes'),
(153, 'classic-editor-allow-users', 'disallow', 'yes'),
(154, 'aios_leads_version', '1.0.4', 'yes'),
(155, 'widget_aios_post_information_by_category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_idx_platinum_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'widget_idx_broker_featured_property_js', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(158, 'widget_ihf_featured_properties', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(159, 'widget_ihf_js_featured_properties', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(160, 'widget_aios-mobile-header', 'a:2:{i:2;a:33:{s:8:\"logo_url\";s:154:\"http://localhost/isd-projects/jacoborealtygroup.com/wp-content/plugins/aios-initial-setup/app/widgets/mobile-header/views/frontend/header3a/images/icon-logo.png\";s:13:\"logo_url_hide\";i:0;s:5:\"email\";s:22:\"support@agentimage.com\";s:10:\"email_hide\";i:0;s:12:\"country_code\";s:1:\"1\";s:17:\"country_code_show\";i:0;s:5:\"phone\";s:12:\"310.595.9033\";s:10:\"phone_hide\";i:0;s:13:\"country_code2\";s:1:\"1\";s:18:\"country_code_show2\";i:0;s:6:\"phone2\";s:0:\"\";s:5:\"theme\";s:8:\"header3a\";s:7:\"menu_id\";s:1:\"2\";s:8:\"behavior\";s:6:\"bottom\";s:10:\"breakpoint\";s:3:\"992\";s:16:\"use_custom_color\";i:0;s:10:\"background\";s:7:\"#FFFFFF\";s:10:\"icon_color\";s:7:\"#000000\";s:17:\"parent_background\";s:7:\"#FFFFFF\";s:23:\"parent_background_hover\";s:7:\"#3c3c3c\";s:13:\"parent_border\";s:7:\"#f7f7f7\";s:17:\"parent_text_color\";s:7:\"#858585\";s:23:\"parent_text_color_hover\";s:7:\"#FFFFFF\";s:18:\"submenu_background\";s:7:\"#232323\";s:24:\"submenu_background_hover\";s:7:\"#3c3c3c\";s:14:\"submenu_border\";s:7:\"#f7f7f7\";s:18:\"submenu_text_color\";s:7:\"#FFFFFF\";s:24:\"submenu_text_color_hover\";s:7:\"#FFFFFF\";s:21:\"subsubmenu_background\";s:7:\"#232323\";s:27:\"subsubmenu_background_hover\";s:7:\"#3c3c3c\";s:17:\"subsubmenu_border\";s:7:\"#f7f7f7\";s:21:\"subsubmenu_text_color\";s:7:\"#FFFFFF\";s:27:\"subsubmenu_text_color_hover\";s:7:\"#FFFFFF\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_testimonial_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'widget_aios_rss', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, '_transient_asis_initial_setup_advanced_setting_modules', '1', 'yes'),
(166, 'widget_cyclone-slider-widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:9:\"slideshow\";s:12:\"hp-slideshow\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'current_theme', 'jacoborealtygroup.com', 'yes'),
(173, 'theme_mods_jacoborealtygroup.com', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(174, 'theme_switched', '', 'yes'),
(175, 'ai_starter_theme_force_sidebar_visibility', '', 'yes'),
(183, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"5\",\"critical\":\"2\"}', 'yes'),
(245, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.3.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1624259005;s:7:\"version\";s:5:\"5.3.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(257, 'aios_cf7_formdata_compatibilty_wpcf7_version', '5.3.2', 'yes'),
(258, 'asis_contact_form_7_formdata_compatibilty_file_path', 'C:/xampp/htdocs/isd-projects/jacoborealtygroup.com/wp-content\\aios-initial-setup-cf7-formdata-compatibility\\scripts.js', 'yes'),
(275, 'aios-generate-pages', 'a:6:{s:21:\"what-is-my-home-worth\";s:21:\"what-is-my-home-worth\";s:18:\"find-my-dream-home\";s:18:\"find-my-dream-home\";s:16:\"help-me-relocate\";s:16:\"help-me-relocate\";s:10:\"contact-us\";s:7:\"contact\";s:7:\"sitemap\";s:7:\"sitemap\";s:8:\"404-page\";s:9:\"not-found\";}', 'yes'),
(276, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(333, 'aios-enqueue-cdn', 'a:7:{s:5:\"slick\";s:1:\"1\";s:3:\"aos\";s:1:\"1\";s:10:\"expiration\";s:3:\"999\";s:8:\"splitNav\";s:1:\"1\";s:18:\"sidebar_navigation\";s:1:\"1\";s:7:\"animate\";s:1:\"1\";s:11:\"elementpeek\";s:1:\"1\";}', 'yes'),
(378, 'secret_key', 'CB3].w4Qjq[TDf{YZwcO&Sceaf.sn*:p.L=FNAa:bfpQl1fFg_H+puS xZ,oRhwC', 'no'),
(432, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638768155;s:7:\"checked\";a:5:{s:18:\"aios-starter-theme\";s:5:\"2.0.4\";s:15:\"jacoborealtygroup.com\";s:5:\"1.6.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(433, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638768154;s:7:\"checked\";a:6:{s:32:\"aios-initial-setup/asis_main.php\";s:5:\"5.7.6\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.3.2\";s:33:\"cyclone-slider/cyclone-slider.php\";s:5:\"3.2.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:53:\"widget-importer-exporter/widget-importer-exporter.php\";s:3:\"1.6\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"cyclone-slider/cyclone-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/cyclone-slider\";s:4:\"slug\";s:14:\"cyclone-slider\";s:6:\"plugin\";s:33:\"cyclone-slider/cyclone-slider.php\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/cyclone-slider/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/cyclone-slider.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-256x256.png?rev=1635519\";s:2:\"1x\";s:67:\"https://ps.w.org/cyclone-slider/assets/icon-128x128.png?rev=1635519\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/cyclone-slider/assets/banner-772x250.jpg?rev=1635519\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:53:\"widget-importer-exporter/widget-importer-exporter.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/widget-importer-exporter\";s:4:\"slug\";s:24:\"widget-importer-exporter\";s:6:\"plugin\";s:53:\"widget-importer-exporter/widget-importer-exporter.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/widget-importer-exporter/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/widget-importer-exporter.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/widget-importer-exporter/assets/icon-256x256.jpg?rev=990577\";s:2:\"1x\";s:76:\"https://ps.w.org/widget-importer-exporter/assets/icon-128x128.jpg?rev=990577\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/widget-importer-exporter/assets/banner-1544x500.jpg?rev=775677\";s:2:\"1x\";s:78:\"https://ps.w.org/widget-importer-exporter/assets/banner-772x250.jpg?rev=741218\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}}}', 'no'),
(434, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1639185581', 'no'),
(435, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(439, '_transient_timeout_jsondata_ai_detail', '1638845475', 'no'),
(440, '_transient_jsondata_ai_detail', 'a:13:{s:2:\"id\";s:10:\"agentimage\";s:9:\"sub-title\";s:26:\"Real Estate Website Design\";s:4:\"logo\";a:4:{s:5:\"large\";s:59:\"https://resources.agentimage.com/images/agentimage-logo.png\";s:6:\"medium\";s:66:\"https://resources.agentimage.com/images/agentimage-logo-medium.png\";s:5:\"small\";s:65:\"https://resources.agentimage.com/images/agentimage-logo-small.png\";s:9:\"thumbnail\";s:69:\"https://resources.agentimage.com/images/agentimage-logo-thumbnail.png\";}s:9:\"bootstrap\";a:2:{s:9:\"normalize\";s:70:\"https://resources.agentimage.com/libraries/css/bootstrap-normalize.css\";s:4:\"grid\";s:65:\"https://resources.agentimage.com/libraries/css/bootstrap-grid.css\";}s:7:\"favicon\";a:8:{s:4:\"html\";s:0:\"\";s:11:\"apple-touch\";s:68:\"https://resources.agentimage.com/images/favicon/apple-touch-icon.png\";s:10:\"favicon-32\";s:65:\"https://resources.agentimage.com/images/favicon/favicon-32x32.png\";s:10:\"favicon-16\";s:65:\"https://resources.agentimage.com/images/favicon/favicon-16x16.png\";s:8:\"manifest\";s:61:\"https://resources.agentimage.com/images/favicon/manifest.json\";s:3:\"svg\";s:69:\"https://resources.agentimage.com/images/favicon/safari-pinned-tab.svg\";s:9:\"svg-color\";s:6:\"5bbad5\";s:11:\"theme-color\";s:6:\"009bbb\";}s:7:\"address\";a:1:{s:13:\"international\";s:54:\"1700 E. Walnut Avenue, Suite 400, El Segundo, CA 90245\";}s:13:\"email-address\";a:4:{s:5:\"sales\";s:19:\"info@agentimage.com\";s:7:\"support\";s:22:\"support@agentimage.com\";s:8:\"business\";s:23:\"business@agentimage.com\";s:9:\"marketing\";s:24:\"marketing@agentimage.com\";}s:5:\"phone\";a:4:{s:5:\"sales\";s:14:\"1.800.979.5799\";s:7:\"support\";s:14:\"1.877.317.4111\";s:13:\"international\";s:14:\"1.310.595.9033\";s:3:\"fax\";s:14:\"1.310.301.4449\";}s:12:\"social-media\";a:8:{s:8:\"facebook\";s:36:\"https://www.facebook.com/AgentImage/\";s:7:\"twitter\";s:31:\"https://twitter.com/agentimage/\";s:11:\"google-plus\";s:36:\"https://plus.google.com/+agentimage/\";s:8:\"linkedin\";s:45:\"https://www.linkedin.com/company/agent-image/\";s:9:\"pinterest\";s:37:\"https://www.pinterest.com/agentimage/\";s:9:\"instagram\";s:37:\"https://www.instagram.com/agentimage/\";s:4:\"yelp\";s:47:\"https://www.yelp.com/biz/agent-image-el-segundo\";s:7:\"youtube\";s:56:\"https://www.youtube.com/channel/UCGGJsDKGIv4aMpgfXk8oetw\";}s:15:\"welcome-message\";a:1:{s:4:\"html\";s:310:\"Need help with your website?Let us do the SEO, PPC, Blogging, Content Development, and Social Media work you need to succeed! Also you can view our custom solutions our standalone products like press release creation and distribution, video SEO, online reviews management and web directory submission services.\";}s:15:\"success-journal\";a:3:{s:5:\"title\";s:40:\"Watch The Latest Video from Agent Image!\";s:9:\"sub-title\";s:44:\"3 Things To Do After You Launch Your Website\";s:8:\"video-id\";s:11:\"C_cWTNg5F_8\";}s:16:\"feed_image_regex\";s:32:\"https:\\/\\/cdn\\.agentimage\\.com\\/\";s:8:\"feed_uri\";s:37:\"https://www.agentimage.com/blog/feed/\";}', 'no'),
(441, '_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff', '1639189562', 'no'),
(442, '_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(448, '_site_transient_timeout_theme_roots', '1638769954', 'no'),
(449, '_site_transient_theme_roots', 'a:5:{s:18:\"aios-starter-theme\";s:7:\"/themes\";s:15:\"jacoborealtygroup.com\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(450, '_transient_timeout_auth_uniqid_849a29fa41e5d9872a84919d', '1638804160', 'no'),
(451, '_transient_auth_uniqid_849a29fa41e5d9872a84919d', '849a29fa41e5d9872a84919d6f1de951cba14bf308b8f9afe0a03d94f3be3fb7ff0e40aea358e151805b44b3b0a13ca003a6bbc1910e7b069e1855ad2ee39238ba94f173a205d52438ee7690', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(11, 7, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(12, 7, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(13, 7, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(14, 7, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(15, 7, '_additional_settings', NULL),
(16, 7, '_locale', 'en_US'),
(17, 8, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(18, 8, '_mail', 'a:8:{s:7:\"subject\";s:44:\"Seller Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1377:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">PERSONAL INFORMATION</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[city]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Approximate Date of Move:</strong></td>\n		<td>[datemove]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">PROPERTY INFORMATION</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Bedrooms:</strong></td>\n		<td>[beds]</td>\n	</tr>\n	<tr>\n		<td><strong>Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(19, 8, '_form', '<div class=\"aidefcf-title\">\n	<span>Selling your home?</span>\n	We’re here to help you price it right – get a comparative market analysis today.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text city placeholder \"City\"] [text state placeholder \"State\"] [text zip placeholder \"Zip\"]</div>\n		[text datemove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Home specifications</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select beds \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(20, 9, '_wp_page_template', 'default'),
(21, 10, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(22, 10, '_mail', 'a:8:{s:7:\"subject\";s:43:\"Buyer Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1611:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">CONTACT INFORMATION</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[city]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">I AM LOOKING FOR THIS TYPE OF PROPERTY</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Date of Move:</strong></td>\n		<td>[datemove]</td>\n	</tr>\n	<tr>\n		<td><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">DESIRED HOME</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Min. Bedrooms:</strong></td>\n		<td>[beds]</td>\n	</tr>\n	<tr>\n		<td><strong>Min. Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(23, 10, '_form', '<div class=\"aidefcf-title\">\n	<span>Are you ready to find your dream home?</span>\n	Tell us what you’re looking for! Get the latest listings delivered straight to your inbox.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text city placeholder \"City\"] [text state placeholder \"State\"] [text  zip placeholder \"Zip\"]</div>\n		[text datemove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n		<span>Desired Home</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select beds \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(24, 11, '_wp_page_template', 'default'),
(25, 12, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(26, 12, '_mail', 'a:8:{s:7:\"subject\";s:48:\"Relocation Inquiry from your Agent Image website\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:1399:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td colspan=\"2\" style=\"font-size: 16px; font-weight: 700;\">PERSONAL INFORMATION </td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Name:</strong></td>\n		<td>[your-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Address:</strong></td>\n		<td>[youraddress]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>City:</strong></td>\n		<td>[preferredcity]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>State:</strong></td>\n		<td>[state]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Zip:</strong></td>\n		<td>[zip]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Approximate Date of Move:</strong></td>\n		<td>[ApproximateDateofMove]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Preferred Method of Contact:</strong></td>\n		<td>[PreferredMethodofContact]</td>\n	</tr>\n	<tr>\n		<td colspan=\"2\" style=\"padding-top: 20px; font-size: 16px; font-weight: 700;\">DESIRED HOME</td>\n	</tr>\n	<tr>\n		<td><strong>Type of Property:</strong></td>\n		<td>[typeofproperty]</td>\n	</tr>\n	<tr>\n		<td><strong>Bedrooms:</strong></td>\n		<td>[minbedrooms]</td>\n	</tr>\n	<tr>\n		<td><strong>Baths:</strong></td>\n		<td>[baths]</td>\n	</tr>\n	<tr>\n		<td><strong>Approximate Sq. Ft.:</strong></td>\n		<td>[sqft]</td>\n	</tr>\n	<tr>\n		<td><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(27, 12, '_form', '<div class=\"aidefcf-title\">\n	<span>Want a smooth, stress-free move?</span>\n	Of course you do! Find out how we can help you today.\n</div>\n\n<div class=\"ai-default-cf7wrap\">\n	<div class=\"aidefcf-left\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Contact Information</span>\n			Required fields are marked  *\n		</div>\n\n		[text* your-name placeholder \"Name *\"]\n		[email* your-email placeholder \"Email *\"]\n		[tel* Phone placeholder \"Phone *\"]\n		[text youraddress placeholder \"Address\"]\n		<div class=\"aidefcf-cl3\">[text preferredcity placeholder \"City\"] [text state placeholder \"State\"] [text zip placeholder \"Zip\"]</div>\n		[text ApproximateDateofMove placeholder \"Approximate Date of Move\"]\n		<div class=\"wpcf7-form-control-wrap\">[select PreferredMethodofContact \"Preferred Method of Contact\" \"Phone\" \"Email\" \"Phone or Email\"]</div>\n	</div>\n\n	<div class=\"aidefcf-right\">\n		<div class=\"aidefcf-subtitle\">\n			<span>Desired Home</span>\n		</div>\n\n		[select typeofproperty \"Property Type\" \"Single Family Home\" \"Condominium / Townhouse\" \"Income Property\"]\n		<div class=\"aidefcf-cl2\">[select minbedrooms \"Bedrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"] [select baths \"Bathrooms\" \"1\" \"2\" \"3\" \"4\" \"5+\"]</div>\n		[text sqft placeholder \"Square Footage\"]\n		[textarea comments placeholder \"Additional Comments\"]\n		[submit \"Submit\"]\n	</div>\n</div>'),
(28, 13, '_wp_page_template', 'default'),
(29, 14, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(30, 14, '_mail', 'a:8:{s:7:\"subject\";s:37:\"Inquiry from your Agent Image website\";s:6:\"sender\";s:30:\"[fname] [lname] <[your-email]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:512:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td width=\"200\"><strong>First Name:</strong></td>\n		<td>[fname]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Last Name:</strong></td>\n		<td>[lname]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Email Address:</strong></td>\n		<td>[your-email]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone Number:</strong></td>\n		<td>[Phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Additional Comments:</strong></td>\n		<td>[comments]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(31, 14, '_form', '<div class=\"ai-default-cf7wrap ai-contact-wrap\">\n	Required fields are marked  *\n	[text* fname placeholder \"First Name *\"]\n	[text* lname placeholder \"Last Name *\"]\n	<div class=\"aidefcf-cl2\">[email* your-email placeholder \"Email Address *\"] [tel* Phone placeholder \"Phone Number *\"]</div>\n	[textarea comments placeholder \"Additional Comments\"]\n	[submit \"Send\"]\n</div>'),
(32, 15, '_wp_page_template', 'default'),
(33, 16, '_wp_page_template', 'default'),
(34, 17, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";}'),
(35, 17, '_mail', 'a:8:{s:7:\"subject\";s:46:\"404 Page Inquiry from your Agent Image website\";s:6:\"sender\";s:42:\"[first-name] [last-name] <[email-address]>\";s:9:\"recipient\";s:24:\"peter.cenir@august99.com\";s:4:\"body\";s:478:\"<table width=\"600\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n	<tr>\n		<td width=\"200\"><strong>First Name:</td>\n		<td>[first-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Last Name:</td>\n		<td>[last-name]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Email Address:</td>\n		<td>[email-address]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Phone Number:</td>\n		<td>[phone]</td>\n	</tr>\n	<tr>\n		<td width=\"200\"><strong>Additional Comments:</td>\n		<td>[message]</td>\n	</tr>\n</table>\";s:18:\"additional_headers\";s:25:\"Reply-To: [email-address]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(36, 17, '_form', '<div class=\"error-form-wrapper\">\n	<h4>Need Assistance?</h4>\n	<div class=\"error-forms\">\n\n		<div class=\"error-col\">\n			<div class=\"error-row\">\n				<p>[text* first-name placeholder \"First Name *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[text* last-name placeholder \"Last Name *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[email* email-address placeholder \"Email Address *\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[text phone placeholder \"Phone Number\"]</p>\n			</div>\n		</div>\n		<div class=\"error-col\">\n			<div class=\"error-row\">\n				<p>[textarea message placeholder \"Your Message\"]</p>\n			</div>\n			<div class=\"error-row\">\n				<p>[submit \"Send\"]</p>\n			</div>\n		</div>\n	</div>\n</div>'),
(37, 23, '_menu_item_type', 'custom'),
(38, 23, '_menu_item_menu_item_parent', '0'),
(39, 23, '_menu_item_object_id', '23'),
(40, 23, '_menu_item_object', 'custom'),
(41, 23, '_menu_item_target', ''),
(42, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 23, '_menu_item_xfn', ''),
(44, 23, '_menu_item_url', 'http://localhost/isd-projects/jacoborealtygroup.com/'),
(46, 24, '_menu_item_type', 'post_type'),
(47, 24, '_menu_item_menu_item_parent', '0'),
(48, 24, '_menu_item_object_id', '18'),
(49, 24, '_menu_item_object', 'page'),
(50, 24, '_menu_item_target', ''),
(51, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 24, '_menu_item_xfn', ''),
(53, 24, '_menu_item_url', ''),
(55, 25, '_menu_item_type', 'post_type'),
(56, 25, '_menu_item_menu_item_parent', '0'),
(57, 25, '_menu_item_object_id', '15'),
(58, 25, '_menu_item_object', 'page'),
(59, 25, '_menu_item_target', ''),
(60, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 25, '_menu_item_xfn', ''),
(62, 25, '_menu_item_url', ''),
(64, 26, '_menu_item_type', 'post_type'),
(65, 26, '_menu_item_menu_item_parent', '0'),
(66, 26, '_menu_item_object_id', '21'),
(67, 26, '_menu_item_object', 'page'),
(68, 26, '_menu_item_target', ''),
(69, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 26, '_menu_item_xfn', ''),
(71, 26, '_menu_item_url', ''),
(73, 27, '_menu_item_type', 'post_type'),
(74, 27, '_menu_item_menu_item_parent', '0'),
(75, 27, '_menu_item_object_id', '22'),
(76, 27, '_menu_item_object', 'page'),
(77, 27, '_menu_item_target', ''),
(78, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 27, '_menu_item_xfn', ''),
(80, 27, '_menu_item_url', ''),
(82, 28, '_menu_item_type', 'post_type'),
(83, 28, '_menu_item_menu_item_parent', '0'),
(84, 28, '_menu_item_object_id', '20'),
(85, 28, '_menu_item_object', 'page'),
(86, 28, '_menu_item_target', ''),
(87, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 28, '_menu_item_xfn', ''),
(89, 28, '_menu_item_url', ''),
(91, 29, '_menu_item_type', 'post_type'),
(92, 29, '_menu_item_menu_item_parent', '26'),
(93, 29, '_menu_item_object_id', '2'),
(94, 29, '_menu_item_object', 'page'),
(95, 29, '_menu_item_target', ''),
(96, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 29, '_menu_item_xfn', ''),
(98, 29, '_menu_item_url', ''),
(100, 30, '_menu_item_type', 'post_type'),
(101, 30, '_menu_item_menu_item_parent', '26'),
(102, 30, '_menu_item_object_id', '2'),
(103, 30, '_menu_item_object', 'page'),
(104, 30, '_menu_item_target', ''),
(105, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 30, '_menu_item_xfn', ''),
(107, 30, '_menu_item_url', ''),
(109, 32, '_wp_attached_file', '2021/10/slide3.jpg'),
(110, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:752;s:4:\"file\";s:18:\"2021/10/slide3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 31, '_edit_last', '1'),
(112, 31, '_cycloneslider_metas', 'a:1:{i:0;a:28:{s:2:\"id\";i:32;s:4:\"type\";s:5:\"image\";s:6:\"hidden\";i:0;s:4:\"link\";s:0:\"\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:11:\"link_target\";s:5:\"_self\";s:7:\"img_alt\";s:0:\"\";s:9:\"img_title\";s:0:\"\";s:20:\"enable_slide_effects\";i:0;s:2:\"fx\";s:7:\"default\";s:5:\"speed\";s:0:\"\";s:7:\"timeout\";s:0:\"\";s:10:\"tile_count\";s:0:\"\";s:10:\"tile_delay\";s:3:\"100\";s:13:\"tile_vertical\";s:4:\"true\";s:11:\"video_thumb\";s:0:\"\";s:9:\"video_url\";s:0:\"\";s:5:\"video\";s:0:\"\";s:6:\"custom\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:15:\"youtube_related\";s:5:\"false\";s:9:\"vimeo_url\";s:0:\"\";s:11:\"testimonial\";s:0:\"\";s:18:\"testimonial_author\";s:0:\"\";s:16:\"testimonial_link\";s:0:\"\";s:23:\"testimonial_link_target\";s:5:\"_self\";s:15:\"testimonial_img\";i:32;}}'),
(113, 31, '_cycloneslider_settings', 'a:15:{s:8:\"template\";s:10:\"responsive\";s:2:\"fx\";s:4:\"fade\";s:7:\"timeout\";i:4000;s:5:\"speed\";i:1000;s:5:\"width\";i:1600;s:6:\"height\";i:800;s:11:\"hover_pause\";s:5:\"false\";s:14:\"show_prev_next\";i:0;s:8:\"show_nav\";i:0;s:10:\"tile_count\";i:7;s:10:\"tile_delay\";i:100;s:13:\"tile_vertical\";s:4:\"true\";s:6:\"random\";i:0;s:6:\"resize\";i:0;s:16:\"width_management\";s:4:\"full\";}'),
(114, 31, '_edit_lock', '1634796964:1'),
(115, 33, '_form', '<div class=\"form-md pad-left\">\n    <label for=\"c-name\"></label>\n    [text* fname id:c-name placeholder \"Name\"]\n</div>\n\n<div class=\"form-md pad-right\">\n    <label for=\"c-email\"></label>\n    [email* email id:c-email placeholder \"Email\"]\n</div>\n\n<div class=\"form-lg\">\n    <label for=\"c-message\"></label>\n    [textarea message id:c-message placeholder \"Message\"]\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:form-btn-primary \"Contact Us\"]\n</div>'),
(116, 33, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(117, 33, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(118, 33, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(119, 33, '_additional_settings', ''),
(120, 33, '_locale', 'en_US'),
(123, 33, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(124, 34, '_form', '<div class=\"form-md pad-left\">\n    <label for=\"c-name\"></label>\n    [text* fname id:c-name placeholder \"First Name\"]\n</div>\n\n<div class=\"form-md pad-right\">\n    <label for=\"c-surname\"></label>\n    [text* surname id:c-surname placeholder \"Last Name\"]\n</div>\n\n<div class=\"form-md middle-pad-left\">\n    <label for=\"c-email\"></label>\n    [email* email id:c-email placeholder \"Email\"]\n</div>\n\n<div class=\"form-md middle-pad-right\">\n    <label for=\"c-phone\"></label>\n    [tel* phone id:c-phone placeholder \"Phone Number\"]\n</div>\n\n<div class=\"form-lg\">\n    <label for=\"c-message\"></label>\n    [textarea message id:c-message placeholder \"Message\"]\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:site-btn-primary \"Submit\"]\n</div>'),
(125, 34, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(126, 34, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(127, 34, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(128, 34, '_additional_settings', ''),
(129, 34, '_locale', 'en_US'),
(130, 34, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(131, 35, '_form', '<div class=\"form-md pad-left\">\n    <label for=\"c-name\"></label>\n    [text* fname id:c-name placeholder \"Name\"]\n</div>\n\n<div class=\"form-md pad-middle\">\n    <label for=\"c-email\"></label>\n    [email* email id:c-email placeholder \"Email\"]\n</div>\n\n<div class=\"form-md pad-right\">\n    <label for=\"c-phone\"></label>\n    [tel* phone id:c-phone placeholder \"Phone\"]\n</div>\n\n<div class=\"form-lg\">\n    <label for=\"c-message\"></label>\n    [textarea message id:c-message placeholder \"Message\"]\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:site-btn-primary \"Contact Us\"]\n</div>'),
(132, 35, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(133, 35, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(134, 35, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(135, 35, '_additional_settings', ''),
(136, 35, '_locale', 'en_US'),
(137, 35, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(138, 36, '_form', '<div class=\"form-md pad-top\">\n    <label for=\"c-name\"></label>\n    [text* fname id:c-name placeholder \"Name\"]\n</div>\n\n<div class=\"form-md pad-left\">\n    <label for=\"c-phone\"></label>\n    [tel* phone id:c-phone placeholder \"Phone\"]\n</div>\n\n<div class=\"form-md pad-right\">\n    <label for=\"c-email\"></label>\n    [email* email id:c-email placeholder \"Email\"]\n</div>\n\n<div class=\"form-md pad-middle\">\n    [select* menu-676 \"Location\" \"Location\" \"Location\" \"Location\"]\n</div>\n\n<div class=\"form-md pad-middle\">\n    <label for=\"c-general\"></label>\n    [text* general id:c-general placeholder \"General Inquiry\"]\n</div>\n\n<div class=\"form-lg\">\n    <label for=\"c-message\"></label>\n    [textarea message id:c-message placeholder \"Message\"]\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:site-btn-primary \"Submit\"]\n</div>'),
(139, 36, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(140, 36, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(141, 36, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(142, 36, '_additional_settings', ''),
(143, 36, '_locale', 'en_US'),
(145, 36, '_config_errors', 'a:2:{s:9:\"form.body\";a:1:{i:0;a:2:{s:4:\"code\";i:105;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:72:\"https://contactform7.com/configuration-errors/multiple-controls-in-label\";}}}s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(146, 37, '_form', '<div class=\"c-iam\">\n    <label>I Am:</label>\n    <span class=\"iam\"\n        ><span class=\"iam\" id=\"iam\"\n            ><span class=\"list-item first\"\n                ><label\n                    ><input type=\"radio\" name=\"iam\" value=\"Buyer\" /><span\n                        class=\"list-item-label\"\n                        >Buying</span\n                    ></label\n                ></span\n            ><span class=\"list-item\"\n                ><label\n                    ><input type=\"radio\" name=\"iam\" value=\"Selling\" /><span\n                        class=\"list-item-label\"\n                        >Selling</span\n                    ></label\n                ></span\n            ><span class=\"list-item last\"\n                ><label\n                    ><input type=\"radio\" name=\"iam\" value=\"An Agent\" /><span\n                        class=\"list-item-label\"\n                        >An Agent</span\n                    ></label\n                ></span\n            ></span\n        ></span\n    >\n</div>\n<div class=\"c-flex\">\n    <div class=\"c-fname\">\n        <label for=\"firstname\">First Name*</label>\n        <span class=\"first-name\"\n            >\n         [text* fname id:firstname]     \n</span>\n    </div>\n    <div class=\"c-lname\">\n        <label for=\"lastname\">Last Name*</label>\n        <span class=\"last-name\"\n            >\n         [text* lastname id:lastname]\n</span>\n    </div>\n</div>\n<div class=\"c-flex\">\n    <div class=\"c-email\">\n        <label for=\"email\">Email Address*</label>\n        <span class=\"your-email\"\n            >\n        [email* email id:email]\n</span>\n    </div>\n    <div class=\"c-phone\">\n        <label for=\"phone\">Phone Number</label>\n        <span class=\"phonenumber\"\n            >\n        [tel* phone id:phone]\n</span>\n    </div>\n</div>\n<div class=\"c-message\">\n    <label for=\"message\">Message</label>\n    <span class=\"your-message\">\n        [textarea message id:message]\n    </span>\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:site-btn-primary \"connect\"]\n</div>'),
(147, 37, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(148, 37, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(149, 37, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(150, 37, '_additional_settings', ''),
(151, 37, '_locale', 'en_US'),
(154, 37, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(155, 38, '_form', '<div class=\"cform-row\">\n    <div class=\"cform-field\">\n        <label for=\"c-email\">Email Address*</label>\n        [email* email id:c-email placeholder]\n    </div>\n    <div class=\"cform-field\">\n        <label for=\"c-subj\">Subject*</label>\n        [text* subject id:c-subj placeholder]\n    </div>\n    <div class=\"cform-field\">\n        <label for=\"c-phone\">Phone*</label>\n        <div class=\"cform-group\">\n            <div class=\"cform-field\">\n                <label class=\"hidden\" for=\"c-phone1\">#</label>\n                [tel* phone1 id:c-phone1 placeholder \"(###)\"]\n            </div>\n            <div class=\"cform-field\">\n                <label class=\"hidden\" for=\"c-phone2\">#</label>\n                [tel* phone2 id:c-phone2 placeholder \"###\"]\n            </div>\n            <div class=\"cform-field\">\n                <label class=\"hidden\" for=\"c-phone3\">#</label>\n                [tel* phone3 id:c-phone3 placeholder \"###\"]\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"cform-row-full\">\n    <div class=\"cform-field\">\n        <label for=\"c-message\">Message</label>\n        [textarea message id:c-message placeholder]\n    </div>\n</div>\n<div class=\"form-btn-wrapper\">\n    [submit class:site-btn-primary \"Send Message +\"]\n</div>');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(156, 38, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(157, 38, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <peter.cenir@august99.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(158, 38, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(159, 38, '_additional_settings', ''),
(160, 38, '_locale', 'en_US'),
(161, 38, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-23 00:29:02', '2021-04-23 00:29:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-23 00:29:02', '2021-04-23 00:29:02', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-23 00:29:02', '2021-04-23 00:29:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/isd-projects/jacoborealtygroup.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-23 00:29:02', '2021-04-23 00:29:02', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-23 00:29:02', '2021-04-23 00:29:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/isd-projects/jacoborealtygroup.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-23 00:29:02', '2021-04-23 00:29:02', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?page_id=3', 0, 'page', '', 0),
(7, 1, '2021-06-21 07:03:24', '2021-06-21 07:03:24', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-06-21 07:03:24', '2021-06-21 07:03:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=7', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2021-09-27 07:43:20', '2021-09-27 07:43:20', 'Auto Generated by Initial Setup', 'What is My Home Worth? (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'what-is-my-home-worth-auto-generated-by-aios-initial-setup', '', '', '2021-09-27 07:43:20', '2021-09-27 07:43:20', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2021-09-27 07:43:20', '2021-09-27 07:43:20', '<div class=\"aidefcf-wrapper aidefcf-wrapper-what-is-my-home-worth?-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"8\" title=\"What is My Home Worth? (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'What is My Home Worth?', '', 'publish', 'closed', 'closed', '', 'what-is-my-home-worth', '', '', '2021-09-27 07:43:20', '2021-09-27 07:43:20', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/what-is-my-home-worth/', 0, 'page', '', 0),
(10, 1, '2021-09-27 07:43:20', '2021-09-27 07:43:20', 'Auto Generated by Initial Setup', 'Find My Dream Home! (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'find-my-dream-home-auto-generated-by-aios-initial-setup', '', '', '2021-09-27 07:43:20', '2021-09-27 07:43:20', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=10', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2021-09-27 07:43:20', '2021-09-27 07:43:20', '<div class=\"aidefcf-wrapper aidefcf-wrapper-find-my-dream-home!-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"10\" title=\"Find My Dream Home! (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Find My Dream Home!', '', 'publish', 'closed', 'closed', '', 'find-my-dream-home', '', '', '2021-09-27 07:43:20', '2021-09-27 07:43:20', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/find-my-dream-home/', 0, 'page', '', 0),
(12, 1, '2021-09-27 07:43:21', '2021-09-27 07:43:21', 'Auto Generated by Initial Setup', 'Help Me Relocate! (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'help-me-relocate-auto-generated-by-aios-initial-setup', '', '', '2021-09-27 07:43:21', '2021-09-27 07:43:21', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=12', 0, 'wpcf7_contact_form', '', 0),
(13, 1, '2021-09-27 07:43:21', '2021-09-27 07:43:21', '<div class=\"aidefcf-wrapper aidefcf-wrapper-help-me-relocate!-(auto-generated-by-aios-initial-setup)\"><p></p> [contact-form-7 id=\"12\" title=\"Help Me Relocate! (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Help Me Relocate!', '', 'publish', 'closed', 'closed', '', 'help-me-relocate', '', '', '2021-09-27 07:43:21', '2021-09-27 07:43:21', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/help-me-relocate/', 0, 'page', '', 0),
(14, 1, '2021-09-27 07:43:21', '2021-09-27 07:43:21', 'Auto Generated by Initial Setup', 'Contact Us (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', 'contact-us-auto-generated-by-aios-initial-setup', '', '', '2021-09-27 07:43:21', '2021-09-27 07:43:21', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=14', 0, 'wpcf7_contact_form', '', 0),
(15, 1, '2021-09-27 07:43:21', '2021-09-27 07:43:21', '<div class=\"aidefcf-wrapper aidefcf-wrapper-contact-us-(auto-generated-by-aios-initial-setup)\"><p><div class=\"ai-default-cf7wrap\">\n<div class=\"aidefcf-title\"><span>We would love to hear from you!</span>Send us a message and we’ll get right back in touch.</div>\n<div class=\"ai-contact-wrap\"><span class=\"content-title\">AgentImage</span><br><span class=\"context-mob\"><em class=\"ai-font-phone\"></em>[ai_phone href=\"877.317.4111\"]877.317.4111[/ai_phone]</span><br><span class=\"context-email\"><em class=\"ai-font-envelope\"></em>[mail_to email=\"support@agentimage.com\"]support@agentimage.com[/mail_to]</span></div>\n</div></p> [contact-form-7 id=\"14\" title=\"Contact Us (Auto-generated by AIOS Initial Setup)\" html_class=\"use-floating-validation-tip\"]</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-09-27 07:43:21', '2021-09-27 07:43:21', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/contact-us/', 0, 'page', '', 0),
(16, 1, '2021-09-27 07:43:21', '2021-09-27 07:43:21', '[sitemap]', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2021-09-27 07:43:21', '2021-09-27 07:43:21', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/sitemap/', 0, 'page', '', 0),
(17, 1, '2021-09-27 07:43:22', '2021-09-27 07:43:22', 'Auto Generated by Initial Setup', '404 Page Form (Auto-generated by AIOS Initial Setup)', '', 'publish', 'closed', 'closed', '', '404-page-form-auto-generated-by-aios-initial-setup', '', '', '2021-09-27 07:43:22', '2021-09-27 07:43:22', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=17', 0, 'wpcf7_contact_form', '', 0),
(18, 1, '2021-09-27 07:44:24', '2021-09-27 07:44:24', '<strong>Thank you for visiting jacoborealtygroup.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\n  From here, feel free to go back to our <a href=\"http://localhost/isd-projects/jacoborealtygroup.com\"><strong>Homepage</strong></a>.\n', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-09-27 07:44:24', '2021-09-27 07:44:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/about/', 0, 'page', '', 0),
(19, 1, '2021-09-27 07:44:24', '2021-09-27 07:44:24', '<strong>Thank you for visiting jacoborealtygroup.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\n  From here, feel free to go back to our <a href=\"http://localhost/isd-projects/jacoborealtygroup.com\"><strong>Homepage</strong></a>.\n', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2021-09-27 07:44:24', '2021-09-27 07:44:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/testimonials/', 0, 'page', '', 0),
(20, 1, '2021-09-27 07:44:24', '2021-09-27 07:44:24', '<strong>Thank you for visiting jacoborealtygroup.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\n  From here, feel free to go back to our <a href=\"http://localhost/isd-projects/jacoborealtygroup.com\"><strong>Homepage</strong></a>.\n', 'Featured Properties', '', 'publish', 'closed', 'closed', '', 'featured-properties', '', '', '2021-09-27 07:44:24', '2021-09-27 07:44:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/featured-properties/', 0, 'page', '', 0),
(21, 1, '2021-09-27 07:44:24', '2021-09-27 07:44:24', '<strong>Thank you for visiting jacoborealtygroup.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\n  From here, feel free to go back to our <a href=\"http://localhost/isd-projects/jacoborealtygroup.com\"><strong>Homepage</strong></a>.\n', 'Featured Areas', '', 'publish', 'closed', 'closed', '', 'featured-areas', '', '', '2021-09-27 07:44:24', '2021-09-27 07:44:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/featured-areas/', 0, 'page', '', 0),
(22, 1, '2021-09-27 07:44:24', '2021-09-27 07:44:24', '<strong>Thank you for visiting jacoborealtygroup.com!</strong>\nWe have scheduled an update for this section of the website, and invite you to come back at a later date to view our new content.\n\n  From here, feel free to go back to our <a href=\"http://localhost/isd-projects/jacoborealtygroup.com\"><strong>Homepage</strong></a>.\n', 'Featured Communities', '', 'publish', 'closed', 'closed', '', 'featured-communities', '', '', '2021-09-27 07:44:24', '2021-09-27 07:44:24', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/featured-communities/', 0, 'page', '', 0),
(23, 1, '2021-09-27 07:45:40', '2021-09-27 07:45:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-27 07:45:40', '2021-09-27 07:45:40', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2021-09-27 07:45:42', '2021-09-27 07:45:42', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2021-09-27 07:45:42', '2021-09-27 07:45:42', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=25', 8, 'nav_menu_item', '', 0),
(26, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2021-09-27 07:45:41', '2021-09-27 07:45:41', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2021-09-27 07:45:41', '2021-09-27 07:45:41', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2021-10-21 06:18:23', '2021-10-21 06:18:23', '', 'Hp Slideshow', '', 'publish', 'closed', 'closed', '', 'hp-slideshow', '', '', '2021-10-21 06:18:23', '2021-10-21 06:18:23', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=cycloneslider&#038;p=31', 0, 'cycloneslider', '', 0),
(32, 1, '2021-10-21 06:17:53', '2021-10-21 06:17:53', '', 'slide3', '', 'inherit', 'closed', 'closed', '', 'slide3-2', '', '', '2021-10-21 06:17:53', '2021-10-21 06:17:53', '', 31, 'http://localhost/isd-projects/jacoborealtygroup.com/wp-content/uploads/2021/10/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2021-10-27 02:33:34', '2021-10-27 02:33:34', '<div class=\"form-md pad-left\">\r\n    <label for=\"c-name\"></label>\r\n    [text* fname id:c-name placeholder \"Name\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-right\">\r\n    <label for=\"c-email\"></label>\r\n    [email* email id:c-email placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"form-lg\">\r\n    <label for=\"c-message\"></label>\r\n    [textarea message id:c-message placeholder \"Message\"]\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:form-btn-primary \"Contact Us\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 1', '', 'publish', 'closed', 'closed', '', 'hp-template-form-1', '', '', '2021-10-27 02:36:04', '2021-10-27 02:36:04', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&#038;p=33', 0, 'wpcf7_contact_form', '', 0),
(34, 1, '2021-10-27 02:46:54', '2021-10-27 02:46:54', '<div class=\"form-md pad-left\">\r\n    <label for=\"c-name\"></label>\r\n    [text* fname id:c-name placeholder \"First Name\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-right\">\r\n    <label for=\"c-surname\"></label>\r\n    [text* surname id:c-surname placeholder \"Last Name\"]\r\n</div>\r\n\r\n<div class=\"form-md middle-pad-left\">\r\n    <label for=\"c-email\"></label>\r\n    [email* email id:c-email placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"form-md middle-pad-right\">\r\n    <label for=\"c-phone\"></label>\r\n    [tel* phone id:c-phone placeholder \"Phone Number\"]\r\n</div>\r\n\r\n<div class=\"form-lg\">\r\n    <label for=\"c-message\"></label>\r\n    [textarea message id:c-message placeholder \"Message\"]\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:site-btn-primary \"Submit\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 2', '', 'publish', 'closed', 'closed', '', 'hp-template-form-2', '', '', '2021-10-27 02:46:54', '2021-10-27 02:46:54', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=34', 0, 'wpcf7_contact_form', '', 0),
(35, 1, '2021-10-27 03:13:19', '2021-10-27 03:13:19', '<div class=\"form-md pad-left\">\r\n    <label for=\"c-name\"></label>\r\n    [text* fname id:c-name placeholder \"Name\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-middle\">\r\n    <label for=\"c-email\"></label>\r\n    [email* email id:c-email placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-right\">\r\n    <label for=\"c-phone\"></label>\r\n    [tel* phone id:c-phone placeholder \"Phone\"]\r\n</div>\r\n\r\n<div class=\"form-lg\">\r\n    <label for=\"c-message\"></label>\r\n    [textarea message id:c-message placeholder \"Message\"]\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:site-btn-primary \"Contact Us\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 3', '', 'publish', 'closed', 'closed', '', 'hp-template-form-3', '', '', '2021-10-27 03:13:19', '2021-10-27 03:13:19', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=35', 0, 'wpcf7_contact_form', '', 0),
(36, 1, '2021-10-27 03:25:25', '2021-10-27 03:25:25', '<div class=\"form-md pad-top\">\r\n    <label for=\"c-name\"></label>\r\n    [text* fname id:c-name placeholder \"Name\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-left\">\r\n    <label for=\"c-phone\"></label>\r\n    [tel* phone id:c-phone placeholder \"Phone\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-right\">\r\n    <label for=\"c-email\"></label>\r\n    [email* email id:c-email placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-middle\">\r\n    [select* menu-676 \"Location\" \"Location\" \"Location\" \"Location\"]\r\n</div>\r\n\r\n<div class=\"form-md pad-middle\">\r\n    <label for=\"c-general\"></label>\r\n    [text* general id:c-general placeholder \"General Inquiry\"]\r\n</div>\r\n\r\n<div class=\"form-lg\">\r\n    <label for=\"c-message\"></label>\r\n    [textarea message id:c-message placeholder \"Message\"]\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:site-btn-primary \"Submit\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 4', '', 'publish', 'closed', 'closed', '', 'hp-template-form-4', '', '', '2021-10-27 03:27:02', '2021-10-27 03:27:02', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&#038;p=36', 0, 'wpcf7_contact_form', '', 0),
(37, 1, '2021-10-27 05:08:36', '2021-10-27 05:08:36', '<div class=\"c-iam\">\r\n    <label>I Am:</label>\r\n    <span class=\"iam\"\r\n        ><span class=\"iam\" id=\"iam\"\r\n            ><span class=\"list-item first\"\r\n                ><label\r\n                    ><input type=\"radio\" name=\"iam\" value=\"Buyer\" /><span\r\n                        class=\"list-item-label\"\r\n                        >Buying</span\r\n                    ></label\r\n                ></span\r\n            ><span class=\"list-item\"\r\n                ><label\r\n                    ><input type=\"radio\" name=\"iam\" value=\"Selling\" /><span\r\n                        class=\"list-item-label\"\r\n                        >Selling</span\r\n                    ></label\r\n                ></span\r\n            ><span class=\"list-item last\"\r\n                ><label\r\n                    ><input type=\"radio\" name=\"iam\" value=\"An Agent\" /><span\r\n                        class=\"list-item-label\"\r\n                        >An Agent</span\r\n                    ></label\r\n                ></span\r\n            ></span\r\n        ></span\r\n    >\r\n</div>\r\n<div class=\"c-flex\">\r\n    <div class=\"c-fname\">\r\n        <label for=\"firstname\">First Name*</label>\r\n        <span class=\"first-name\"\r\n            >\r\n         [text* fname id:firstname]     \r\n</span>\r\n    </div>\r\n    <div class=\"c-lname\">\r\n        <label for=\"lastname\">Last Name*</label>\r\n        <span class=\"last-name\"\r\n            >\r\n         [text* lastname id:lastname]\r\n</span>\r\n    </div>\r\n</div>\r\n<div class=\"c-flex\">\r\n    <div class=\"c-email\">\r\n        <label for=\"email\">Email Address*</label>\r\n        <span class=\"your-email\"\r\n            >\r\n        [email* email id:email]\r\n</span>\r\n    </div>\r\n    <div class=\"c-phone\">\r\n        <label for=\"phone\">Phone Number</label>\r\n        <span class=\"phonenumber\"\r\n            >\r\n        [tel* phone id:phone]\r\n</span>\r\n    </div>\r\n</div>\r\n<div class=\"c-message\">\r\n    <label for=\"message\">Message</label>\r\n    <span class=\"your-message\">\r\n        [textarea message id:message]\r\n    </span>\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:site-btn-primary \"connect\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 5', '', 'publish', 'closed', 'closed', '', 'hp-template-form-5', '', '', '2021-10-27 05:23:00', '2021-10-27 05:23:00', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&#038;p=37', 0, 'wpcf7_contact_form', '', 0),
(38, 1, '2021-10-27 05:27:13', '2021-10-27 05:27:13', '<div class=\"cform-row\">\r\n    <div class=\"cform-field\">\r\n        <label for=\"c-email\">Email Address*</label>\r\n        [email* email id:c-email placeholder]\r\n    </div>\r\n    <div class=\"cform-field\">\r\n        <label for=\"c-subj\">Subject*</label>\r\n        [text* subject id:c-subj placeholder]\r\n    </div>\r\n    <div class=\"cform-field\">\r\n        <label for=\"c-phone\">Phone*</label>\r\n        <div class=\"cform-group\">\r\n            <div class=\"cform-field\">\r\n                <label class=\"hidden\" for=\"c-phone1\">#</label>\r\n                [tel* phone1 id:c-phone1 placeholder \"(###)\"]\r\n            </div>\r\n            <div class=\"cform-field\">\r\n                <label class=\"hidden\" for=\"c-phone2\">#</label>\r\n                [tel* phone2 id:c-phone2 placeholder \"###\"]\r\n            </div>\r\n            <div class=\"cform-field\">\r\n                <label class=\"hidden\" for=\"c-phone3\">#</label>\r\n                [tel* phone3 id:c-phone3 placeholder \"###\"]\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"cform-row-full\">\r\n    <div class=\"cform-field\">\r\n        <label for=\"c-message\">Message</label>\r\n        [textarea message id:c-message placeholder]\r\n    </div>\r\n</div>\r\n<div class=\"form-btn-wrapper\">\r\n    [submit class:site-btn-primary \"Send Message +\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <peter.cenir@august99.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'hp template form 6', '', 'publish', 'closed', 'closed', '', 'hp-template-form-6', '', '', '2021-10-27 05:27:13', '2021-10-27 05:27:13', '', 0, 'http://localhost/isd-projects/jacoborealtygroup.com/?post_type=wpcf7_contact_form&p=38', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'primary menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'agentimage'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1cbaa970ada8bf337050a73b65c2d6d4e54b5feda1f496d58f3167f444c11dfd\";a:4:{s:10:\"expiration\";i:1638757555;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638584755;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1634797099');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'agentimage', '$P$BDK9SX6EFu5jo0CPD4nxMXl6UQ2WjT.', 'agentimage', 'peter.cenir@august99.com', 'http://localhost/isd-projects/jacoborealtygroup.com', '2021-04-23 00:29:01', '', 0, 'agentimage');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aios_leads`
--
ALTER TABLE `wp_aios_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_aios_leads`
--
ALTER TABLE `wp_aios_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
