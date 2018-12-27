-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2018 at 07:36 AM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.2.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khoruougiasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-15 02:43:05', '2018-12-15 02:43:05', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://khoruougiasi.com', 'yes'),
(2, 'home', 'http://khoruougiasi.com', 'yes'),
(3, 'blogname', 'Kho rượu giá sỉ', 'yes'),
(4, 'blogdescription', 'Chất lượng trong tầm tay', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'trandinhdat.hp@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:27:"woocommerce/woocommerce.php";i:2;s:24:"wordpress-seo/wp-seo.php";i:3;s:19:"wp-smtp/wp-smtp.php";i:4;s:31:"wp-statistics/wp-statistics.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ecommerce-gem', 'yes'),
(41, 'stylesheet', 'ecommerce-gem', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', 'quote', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:9:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:115:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:93:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:17:"Bài viết mới";s:6:"number";i:9;s:9:"show_date";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:32:"woocommerce_product_categories-2";i:2;s:14:"recent-posts-2";}s:12:"shop-sidebar";a:0:{}s:18:"advertisement-area";a:0:{}s:21:"home-page-widget-area";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:15:{i:1545913498;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1545914592;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1545915794;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1545921792;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1545943498;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1545955200;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965074;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965098;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965108;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965112;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965117;a:1:{s:28:"wp_statistics_add_visit_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545965169;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545975898;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1546300800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1544842608;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(129, 'auto_core_update_failed', 'a:6:{s:9:"attempted";s:5:"4.9.9";s:7:"current";s:5:"4.9.8";s:10:"error_code";s:23:"mkdir_failed_ziparchive";s:10:"error_data";N;s:9:"timestamp";i:1544841866;s:5:"retry";b:0;}', 'no'),
(130, 'auto_core_update_notified', 'a:4:{s:4:"type";s:4:"fail";s:5:"email";s:24:"trandinhdat.hp@gmail.com";s:7:"version";s:5:"4.9.9";s:9:"timestamp";i:1544841866;}', 'no'),
(134, 'can_compress_scripts', '0', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'woocommerce_store_address', '', 'yes'),
(154, 'woocommerce_store_address_2', '', 'yes'),
(155, 'woocommerce_store_city', '', 'yes'),
(156, 'woocommerce_default_country', 'GB', 'yes'),
(157, 'woocommerce_store_postcode', '', 'yes'),
(158, 'woocommerce_allowed_countries', 'all', 'yes'),
(159, 'woocommerce_all_except_countries', '', 'yes'),
(160, 'woocommerce_specific_allowed_countries', '', 'yes'),
(161, 'woocommerce_ship_to_countries', '', 'yes'),
(162, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(163, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(164, 'woocommerce_calc_taxes', 'no', 'yes'),
(165, 'woocommerce_enable_coupons', 'yes', 'yes'),
(166, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(167, 'woocommerce_currency', 'GBP', 'yes'),
(168, 'woocommerce_currency_pos', 'left', 'yes'),
(169, 'woocommerce_price_thousand_sep', ',', 'yes'),
(170, 'woocommerce_price_decimal_sep', '.', 'yes'),
(171, 'woocommerce_price_num_decimals', '2', 'yes'),
(172, 'woocommerce_shop_page_id', '', 'yes'),
(173, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(174, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(175, 'woocommerce_placeholder_image', '', 'yes'),
(176, 'woocommerce_weight_unit', 'kg', 'yes'),
(177, 'woocommerce_dimension_unit', 'cm', 'yes'),
(178, 'woocommerce_enable_reviews', 'yes', 'yes'),
(179, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(180, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(181, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(182, 'woocommerce_review_rating_required', 'yes', 'no'),
(183, 'woocommerce_manage_stock', 'yes', 'yes'),
(184, 'woocommerce_hold_stock_minutes', '60', 'no'),
(185, 'woocommerce_notify_low_stock', 'yes', 'no'),
(186, 'woocommerce_notify_no_stock', 'yes', 'no'),
(187, 'woocommerce_stock_email_recipient', 'trandinhdat.hp@gmail.com', 'no'),
(188, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(189, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(190, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(191, 'woocommerce_stock_format', '', 'yes'),
(192, 'woocommerce_file_download_method', 'force', 'no'),
(193, 'woocommerce_downloads_require_login', 'no', 'no'),
(194, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(195, 'woocommerce_prices_include_tax', 'no', 'yes'),
(196, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(197, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(198, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(199, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(200, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(201, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(202, 'woocommerce_price_display_suffix', '', 'yes'),
(203, 'woocommerce_tax_total_display', 'itemized', 'no'),
(204, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(205, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(206, 'woocommerce_ship_to_destination', 'billing', 'no'),
(207, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(208, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(209, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(210, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(211, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(212, 'woocommerce_registration_generate_username', 'yes', 'no'),
(213, 'woocommerce_registration_generate_password', 'yes', 'no'),
(214, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(215, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(216, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(217, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(218, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(219, 'woocommerce_trash_pending_orders', '', 'no'),
(220, 'woocommerce_trash_failed_orders', '', 'no'),
(221, 'woocommerce_trash_cancelled_orders', '', 'no'),
(222, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(223, 'woocommerce_email_from_name', 'Kho rượu giá sỉ', 'no'),
(224, 'woocommerce_email_from_address', 'trandinhdat.hp@gmail.com', 'no'),
(225, 'woocommerce_email_header_image', '', 'no'),
(226, 'woocommerce_email_footer_text', '{site_title}<br/>Powered by <a href="https://woocommerce.com/">WooCommerce</a>', 'no'),
(227, 'woocommerce_email_base_color', '#96588a', 'no'),
(228, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(229, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(230, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(231, 'woocommerce_cart_page_id', '', 'yes'),
(232, 'woocommerce_checkout_page_id', '', 'yes'),
(233, 'woocommerce_myaccount_page_id', '', 'yes'),
(234, 'woocommerce_terms_page_id', '', 'no'),
(235, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(236, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(237, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(238, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(239, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(240, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(241, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(242, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(243, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(244, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(245, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(246, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(247, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(248, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(249, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(250, 'woocommerce_api_enabled', 'no', 'yes'),
(251, 'woocommerce_single_image_width', '600', 'yes'),
(252, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(253, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(254, 'woocommerce_demo_store', 'no', 'no'),
(255, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(256, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(257, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(258, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(260, 'default_product_cat', '15', 'yes'),
(263, 'woocommerce_version', '3.5.2', 'yes'),
(264, 'woocommerce_db_version', '3.5.2', 'yes'),
(265, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:"install";i:1;s:20:"no_secure_connection";}', 'yes'),
(266, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(267, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(268, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(269, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(270, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(271, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:"title";s:23:"Danh mục sản phẩm";s:7:"orderby";s:5:"order";s:8:"dropdown";i:0;s:5:"count";i:1;s:12:"hierarchical";i:0;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(272, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(273, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(287, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(289, 'wp_smtp_options', 'a:9:{s:4:"from";s:0:"";s:8:"fromname";s:0:"";s:4:"host";s:0:"";s:10:"smtpsecure";s:0:"";s:4:"port";s:0:"";s:8:"smtpauth";s:3:"yes";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"deactivate";s:0:"";}', 'yes'),
(290, 'wp_statistics_plugin_version', '12.5.4', 'yes'),
(291, 'wp_statistics_db_version', '12.5.4', 'yes'),
(292, 'wp_statistics', 'a:26:{s:18:"pending_db_updates";a:2:{s:13:"date_ip_agent";b:0;s:11:"unique_date";b:0;}s:16:"search_converted";i:1;s:9:"robotlist";s:1715:"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl";s:13:"anonymize_ips";b:0;s:5:"geoip";b:0;s:10:"useronline";b:1;s:6:"visits";b:1;s:8:"visitors";b:1;s:5:"pages";b:1;s:12:"check_online";s:2:"30";s:8:"menu_bar";b:0;s:11:"coefficient";s:1:"1";s:12:"stats_report";b:0;s:11:"time_report";s:5:"daily";s:11:"send_report";s:4:"mail";s:14:"content_report";s:0:"";s:12:"update_geoip";b:1;s:8:"store_ua";b:0;s:21:"exclude_administrator";b:1;s:18:"disable_se_clearch";b:1;s:16:"disable_se_qwant";b:1;s:16:"disable_se_baidu";b:1;s:14:"disable_se_ask";b:1;s:8:"map_type";s:6:"jqvmap";s:18:"force_robot_update";b:1;s:17:"show_welcome_page";b:1;}', 'yes'),
(293, 'widget_wp_statistics_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(294, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"9.2.1";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1544841912;}', 'yes'),
(295, 'wpseo_titles', 'a:92:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:23:"is-media-purge-relevant";b:0;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:13:"title-product";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:16:"metadesc-product";s:0:"";s:15:"noindex-product";b:0;s:16:"showdate-product";b:0;s:26:"display-metabox-pt-product";b:1;s:26:"post_types-product-maintax";i:0;s:23:"title-ptarchive-product";s:51:"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%";s:26:"metadesc-ptarchive-product";s:0:"";s:25:"bctitle-ptarchive-product";s:0:"";s:25:"noindex-ptarchive-product";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:21:"title-tax-product_cat";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_cat";s:0:"";s:31:"display-metabox-tax-product_cat";b:1;s:23:"noindex-tax-product_cat";b:0;s:29:"taxonomy-product_cat-ptparent";i:0;s:21:"title-tax-product_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-product_tag";s:0:"";s:31:"display-metabox-tax-product_tag";b:1;s:23:"noindex-tax-product_tag";b:0;s:29:"taxonomy-product_tag-ptparent";i:0;s:32:"title-tax-product_shipping_class";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:35:"metadesc-tax-product_shipping_class";s:0:"";s:42:"display-metabox-tax-product_shipping_class";b:1;s:34:"noindex-tax-product_shipping_class";b:0;s:40:"taxonomy-product_shipping_class-ptparent";i:0;}', 'yes'),
(296, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(297, 'wpseo_flush_rewrite', '1', 'yes'),
(298, '_transient_timeout_wpseo_link_table_inaccessible', '1576377912', 'no'),
(299, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(300, '_transient_timeout_wpseo_meta_table_inaccessible', '1576377912', 'no'),
(301, '_transient_wpseo_meta_table_inaccessible', '0', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(304, 'rewrite_rules', 'a:157:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(310, '_transient_product_query-transient-version', '1545672196', 'yes'),
(324, 'new_admin_email', 'trandinhdat.hp@gmail.com', 'yes'),
(353, 'product_cat_children', 'a:5:{i:16;a:1:{i:0;i:17;}i:18;a:1:{i:0;i:19;}i:20;a:1:{i:0;i:21;}i:22;a:1:{i:0;i:23;}i:24;a:1:{i:0;i:25;}}', 'yes'),
(355, '_transient_product-transient-version', '1545672196', 'yes'),
(358, 'current_theme', 'eCommerce Gem', 'yes'),
(359, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1545671377;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:32:"woocommerce_product_categories-2";i:2;s:14:"recent-posts-2";}}}}', 'yes'),
(360, 'theme_switched', '', 'yes'),
(361, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(377, 'category_children', 'a:0:{}', 'yes'),
(1865, '_transient_timeout_external_ip_address_113.161.86.42', '1545895735', 'no'),
(1866, '_transient_external_ip_address_113.161.86.42', '112.213.88.139', 'no'),
(1930, '_transient_timeout_external_ip_address_174.77.111.201', '1545940889', 'no'),
(1931, '_transient_external_ip_address_174.77.111.201', '112.213.88.139', 'no'),
(1936, '_transient_timeout_external_ip_address_47.59.33.160', '1545941312', 'no'),
(1937, '_transient_external_ip_address_47.59.33.160', '112.213.88.139', 'no'),
(1941, '_transient_timeout_external_ip_address_66.111.55.90', '1545941725', 'no'),
(1942, '_transient_external_ip_address_66.111.55.90', '112.213.88.139', 'no'),
(1946, '_transient_timeout_external_ip_address_67.215.237.2', '1545943118', 'no'),
(1947, '_transient_external_ip_address_67.215.237.2', '112.213.88.139', 'no'),
(1960, '_transient_timeout_external_ip_address_62.210.83.78', '1545965191', 'no'),
(1961, '_transient_external_ip_address_62.210.83.78', '112.213.88.139', 'no'),
(1979, '_transient_timeout_external_ip_address_46.4.33.48', '1545975874', 'no'),
(1980, '_transient_external_ip_address_46.4.33.48', '112.213.88.139', 'no'),
(1988, '_transient_timeout_external_ip_address_188.120.249.106', '1545984938', 'no'),
(1989, '_transient_external_ip_address_188.120.249.106', '112.213.88.139', 'no'),
(1993, '_transient_timeout_external_ip_address_185.112.249.214', '1545985280', 'no'),
(1994, '_transient_external_ip_address_185.112.249.214', '112.213.88.139', 'no'),
(2053, '_transient_timeout_external_ip_address_94.23.2.209', '1546024823', 'no'),
(2054, '_transient_external_ip_address_94.23.2.209', '112.213.88.139', 'no'),
(2060, '_transient_timeout_external_ip_address_46.148.20.14', '1546041729', 'no'),
(2061, '_transient_external_ip_address_46.148.20.14', '112.213.88.139', 'no'),
(2078, '_transient_timeout_external_ip_address_112.213.88.139', '1546053408', 'no'),
(2079, '_transient_external_ip_address_112.213.88.139', '112.213.88.139', 'no'),
(2133, '_transient_timeout_external_ip_address_12.202.180.128', '1546103157', 'no'),
(2134, '_transient_external_ip_address_12.202.180.128', '112.213.88.139', 'no'),
(2222, '_transient_timeout_external_ip_address_206.180.165.147', '1546155039', 'no'),
(2223, '_transient_external_ip_address_206.180.165.147', '112.213.88.139', 'no'),
(2229, '_transient_timeout_external_ip_address_216.144.229.121', '1546157397', 'no'),
(2230, '_transient_external_ip_address_216.144.229.121', '112.213.88.139', 'no'),
(2234, '_transient_timeout_external_ip_address_77.72.83.157', '1546157770', 'no'),
(2235, '_transient_external_ip_address_77.72.83.157', '112.213.88.139', 'no'),
(2238, '_transient_timeout_external_ip_address_85.203.13.58', '1546158282', 'no'),
(2239, '_transient_external_ip_address_85.203.13.58', '112.213.88.139', 'no'),
(2243, '_transient_timeout_external_ip_address_86.126.231.199', '1546159348', 'no'),
(2244, '_transient_external_ip_address_86.126.231.199', '112.213.88.139', 'no'),
(2249, '_transient_timeout_external_ip_address_187.76.82.90', '1546161614', 'no'),
(2250, '_transient_external_ip_address_187.76.82.90', '112.213.88.139', 'no'),
(2269, '_transient_timeout_external_ip_address_34.247.64.152', '1546182302', 'no'),
(2270, '_transient_external_ip_address_34.247.64.152', '112.213.88.139', 'no'),
(2282, '_transient_timeout_external_ip_address_176.9.23.3', '1546183444', 'no'),
(2283, '_transient_external_ip_address_176.9.23.3', '112.213.88.139', 'no'),
(2324, '_transient_timeout_external_ip_address_94.23.18.194', '1546201320', 'no'),
(2325, '_transient_external_ip_address_94.23.18.194', '112.213.88.139', 'no'),
(2361, '_transient_timeout_external_ip_address_103.87.58.72', '1546236133', 'no'),
(2362, '_transient_external_ip_address_103.87.58.72', '112.213.88.139', 'no'),
(2376, '_transient_timeout_external_ip_address_198.252.101.83', '1546245521', 'no'),
(2377, '_transient_external_ip_address_198.252.101.83', '112.213.88.139', 'no'),
(2381, '_transient_timeout_external_ip_address_95.216.64.168', '1546245523', 'no'),
(2382, '_transient_external_ip_address_95.216.64.168', '112.213.88.139', 'no'),
(2383, '_transient_timeout_external_ip_address_75.119.200.139', '1546245525', 'no'),
(2384, '_transient_external_ip_address_75.119.200.139', '112.213.88.139', 'no'),
(2385, '_transient_timeout_external_ip_address_51.255.86.4', '1546245526', 'no'),
(2386, '_transient_external_ip_address_51.255.86.4', '112.213.88.139', 'no'),
(2387, '_transient_timeout_external_ip_address_173.201.180.158', '1546245528', 'no'),
(2388, '_transient_external_ip_address_173.201.180.158', '112.213.88.139', 'no'),
(2394, '_transient_timeout_external_ip_address_194.58.100.175', '1546253861', 'no'),
(2395, '_transient_external_ip_address_194.58.100.175', '112.213.88.139', 'no'),
(2399, '_transient_timeout_external_ip_address_173.236.224.13', '1546253863', 'no'),
(2400, '_transient_external_ip_address_173.236.224.13', '112.213.88.139', 'no'),
(2401, '_transient_timeout_external_ip_address_195.234.4.60', '1546253865', 'no'),
(2402, '_transient_external_ip_address_195.234.4.60', '112.213.88.139', 'no'),
(2403, '_transient_timeout_external_ip_address_112.78.203.35', '1546253867', 'no'),
(2404, '_transient_external_ip_address_112.78.203.35', '112.213.88.139', 'no'),
(2408, '_transient_timeout_external_ip_address_45.119.81.5', '1546256993', 'no'),
(2409, '_transient_external_ip_address_45.119.81.5', '112.213.88.139', 'no'),
(2413, '_transient_timeout_external_ip_address_192.163.216.197', '1546257007', 'no'),
(2414, '_transient_external_ip_address_192.163.216.197', '112.213.88.139', 'no'),
(2422, '_transient_timeout_external_ip_address_116.102.182.83', '1546270085', 'no'),
(2423, '_transient_external_ip_address_116.102.182.83', '112.213.88.139', 'no'),
(2444, '_site_transient_timeout_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', '1546275522', 'no'),
(2445, '_site_transient_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"71.0.3578.98";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(2484, 'theme_mods_ecommerce-gem', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:3:"top";i:38;s:7:"primary";i:38;s:6:"social";i:38;}s:18:"custom_css_post_id";i:-1;s:13:"theme_options";a:16:{s:15:"show_top_header";b:1;s:9:"top_phone";s:27:"0907.094.652 - 07.6568.9879";s:9:"top_email";s:26:"nancy.nguyen1511@gmail.com";s:13:"top_left_type";s:10:"store-info";s:11:"top_address";s:32:"313 Nguyễn Duy Trinh, Quận 2";s:17:"show_social_icons";b:1;s:13:"show_wishlist";b:1;s:13:"global_layout";s:12:"left-sidebar";s:14:"excerpt_length";i:30;s:13:"primary_color";s:7:"#f9c85b";s:11:"shop_layout";s:12:"left-sidebar";s:16:"show_detail_icon";b:1;s:19:"enable_gallery_zoom";b:1;s:14:"copyright_text";s:17:"Copyright @ 2018.";s:13:"slider_status";b:1;s:13:"slider_page_1";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1545671699;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:32:"woocommerce_product_categories-2";i:2;s:14:"recent-posts-2";}s:12:"shop-sidebar";a:0:{}s:18:"advertisement-area";a:0:{}s:21:"home-page-widget-area";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(2485, 'widget_ecommerce-gem-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2486, 'widget_ecommerce-gem-latest-news', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2487, 'widget_ecommerce-gem-cta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2488, 'widget_ecommerce-gem-advertisement', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2489, 'widget_ecommerce-gem-features', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2490, 'widget_ecommerce-gem-newsletter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2491, 'widget_ecommerce-gem-contact', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2492, 'widget_ecommerce-gem-latest-products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2493, 'widget_ecommerce-gem-featured-categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2497, '_transient_shipping-transient-version', '1545671405', 'yes'),
(2504, 'theme_mods_restaurant-and-cafe', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1545671774;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:3:{i:0;s:8:"search-2";i:1;s:32:"woocommerce_product_categories-2";i:2;s:14:"recent-posts-2";}s:17:"footer-widget-one";a:0:{}s:17:"footer-widget-two";a:0:{}s:19:"footer-widget-three";a:0:{}s:12:"shop-sidebar";a:0:{}}}}', 'yes'),
(2505, 'widget_restaurant_and_cafe_featured_post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2506, 'widget_restaurant_and_cafe_recent_post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2507, 'widget_restaurant_and_cafe_social_links', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2508, 'widget_restaurant_and_cafe_popular_post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(2533, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(2536, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(2537, '_transient_timeout_wc_term_counts', '1548264271', 'no'),
(2538, '_transient_wc_term_counts', 'a:12:{i:15;s:1:"2";i:22;s:0:"";i:19;s:0:"";i:17;s:0:"";i:26;s:0:"";i:23;s:0:"";i:24;s:0:"";i:25;s:0:"";i:21;s:0:"";i:16;s:0:"";i:20;s:0:"";i:18;s:0:"";}', 'no'),
(2542, '_transient_timeout_wc_shipping_method_count_1_1545671405', '1548264332', 'no'),
(2543, '_transient_wc_shipping_method_count_1_1545671405', '0', 'no'),
(2547, 'woocommerce_shop_page_display', '', 'yes'),
(2571, '_transient_timeout_external_ip_address_12.202.180.102', '1546302243', 'no'),
(2572, '_transient_external_ip_address_12.202.180.102', '112.213.88.139', 'no'),
(2588, '_transient_timeout_external_ip_address_103.59.156.16', '1546316127', 'no'),
(2589, '_transient_external_ip_address_103.59.156.16', '112.213.88.139', 'no'),
(2593, '_transient_timeout_external_ip_address_113.185.14.71', '1546320164', 'no'),
(2594, '_transient_external_ip_address_113.185.14.71', '112.213.88.139', 'no'),
(2599, '_transient_timeout_external_ip_address_136.0.99.59', '1546321462', 'no'),
(2600, '_transient_external_ip_address_136.0.99.59', '112.213.88.139', 'no'),
(2604, '_transient_timeout_external_ip_address_104.194.24.245', '1546322222', 'no'),
(2605, '_transient_external_ip_address_104.194.24.245', '112.213.88.139', 'no'),
(2610, '_transient_timeout_external_ip_address_67.215.241.73', '1546323226', 'no'),
(2611, '_transient_external_ip_address_67.215.241.73', '112.213.88.139', 'no'),
(2625, '_transient_timeout_external_ip_address_212.51.39.190', '1546340559', 'no'),
(2626, '_transient_external_ip_address_212.51.39.190', '112.213.88.139', 'no'),
(2630, '_transient_timeout_external_ip_address_78.58.156.118', '1546340752', 'no'),
(2631, '_transient_external_ip_address_78.58.156.118', '112.213.88.139', 'no'),
(2633, '_transient_timeout_external_ip_address_201.86.64.136', '1546341087', 'no'),
(2634, '_transient_external_ip_address_201.86.64.136', '112.213.88.139', 'no'),
(2638, '_transient_timeout_external_ip_address_92.181.34.137', '1546341632', 'no'),
(2639, '_transient_external_ip_address_92.181.34.137', '112.213.88.139', 'no'),
(2643, '_transient_timeout_external_ip_address_173.254.195.34', '1546342003', 'no'),
(2644, '_transient_external_ip_address_173.254.195.34', '112.213.88.139', 'no'),
(2648, '_transient_timeout_external_ip_address_179.235.114.220', '1546342215', 'no'),
(2649, '_transient_external_ip_address_179.235.114.220', '112.213.88.139', 'no'),
(2651, '_transient_timeout_external_ip_address_212.96.82.28', '1546342789', 'no'),
(2652, '_transient_external_ip_address_212.96.82.28', '112.213.88.139', 'no'),
(2656, '_transient_timeout_external_ip_address_188.92.191.158', '1546342928', 'no'),
(2657, '_transient_external_ip_address_188.92.191.158', '112.213.88.139', 'no'),
(2659, '_transient_timeout_external_ip_address_87.179.190.59', '1546343359', 'no'),
(2660, '_transient_external_ip_address_87.179.190.59', '112.213.88.139', 'no'),
(2665, '_transient_timeout_external_ip_address_203.205.33.95', '1546346818', 'no'),
(2666, '_transient_external_ip_address_203.205.33.95', '112.213.88.139', 'no'),
(2670, '_transient_timeout_external_ip_address_113.161.34.230', '1546347614', 'no'),
(2671, '_transient_external_ip_address_113.161.34.230', '112.213.88.139', 'no'),
(2675, '_transient_timeout_wc_related_5', '1545896109', 'no'),
(2676, '_transient_wc_related_5', 'a:1:{s:49:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=5";a:1:{i:0;s:2:"12";}}', 'no'),
(2733, '_transient_timeout_external_ip_address_113.185.26.121', '1546404625', 'no'),
(2734, '_transient_external_ip_address_113.185.26.121', '112.213.88.139', 'no'),
(2739, '_transient_timeout_external_ip_address_116.110.2.167', '1546411946', 'no'),
(2740, '_transient_external_ip_address_116.110.2.167', '112.213.88.139', 'no'),
(2744, '_transient_timeout_external_ip_address_113.176.99.221', '1546412030', 'no'),
(2745, '_transient_external_ip_address_113.176.99.221', '112.213.88.139', 'no'),
(2749, '_transient_timeout_external_ip_address_27.72.173.136', '1546414068', 'no'),
(2750, '_transient_external_ip_address_27.72.173.136', '112.213.88.139', 'no'),
(2759, '_transient_timeout_external_ip_address_52.114.14.102', '1546414530', 'no'),
(2760, '_transient_external_ip_address_52.114.14.102', '112.213.88.139', 'no'),
(2761, '_site_transient_timeout_browser_d9d2d358e775828ebfa1e674abcfe19d', '1546414555', 'no'),
(2762, '_site_transient_browser_d9d2d358e775828ebfa1e674abcfe19d', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"70.0.3538.102";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(2763, '_transient_timeout_wc_report_sales_by_date', '1545923803', 'no'),
(2764, '_transient_wc_report_sales_by_date', 'a:16:{s:32:"589bba28b62c6ff5db478cb62ea175f5";a:0:{}s:32:"ce17eeb31bb1b60c7e764a9c4cbcb0d4";a:0:{}s:32:"5c0b28d93a8dfa21bbed73a18cc6c7e5";a:0:{}s:32:"888bbedae268cce3b5a0f4b13f54f189";N;s:32:"1e3d54147acb604645f7cd433d1c37db";a:0:{}s:32:"9ddc2c80d51416b392053de03a8e1de6";a:0:{}s:32:"a9b21534b1016d613da31825f8490a8f";a:0:{}s:32:"f8c22a55fdd07fbc89ada858ef9ec833";a:0:{}s:32:"6ba7021abf2912d64288159c4a2f8b71";a:0:{}s:32:"000c870adcc49d63beeed412ccffd3c3";a:0:{}s:32:"3e5a054a13c51f7b6016d3d87665d687";a:0:{}s:32:"b7eadf42cafbdc1920a489e76e3e04a1";N;s:32:"b34d1af4329f55cfd2c77c71f831a591";a:0:{}s:32:"3b0b54c742ff2230c0ac2ce4bbc40944";a:0:{}s:32:"37d19e705bd787829a3bcb5592875021";a:0:{}s:32:"c08c7c31d568b40db20ae8fa70ef071a";a:0:{}}', 'no'),
(2765, '_transient_timeout_wc_admin_report', '1545896155', 'no'),
(2766, '_transient_wc_admin_report', 'a:1:{s:32:"20573ac3a031b15150abdb9f38b465cd";a:0:{}}', 'no'),
(2767, '_transient_timeout_wc_low_stock_count', '1548401755', 'no'),
(2768, '_transient_wc_low_stock_count', '0', 'no'),
(2769, '_transient_timeout_wc_outofstock_count', '1548401755', 'no'),
(2770, '_transient_wc_outofstock_count', '0', 'no'),
(2772, '_transient_timeout_wpseo-statistics-totals', '1545896159', 'no'),
(2773, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:"scores";a:1:{i:0;a:4:{s:8:"seo_rank";s:2:"na";s:5:"label";s:48:"Posts <strong>without</strong> a focus keyphrase";s:5:"count";s:1:"1";s:4:"link";s:100:"http://khoruougiasi.com/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na";}}s:8:"division";a:5:{s:3:"bad";i:0;s:2:"ok";i:0;s:4:"good";i:0;s:2:"na";i:1;s:7:"noindex";i:0;}}}', 'no'),
(2815, '_transient_timeout_external_ip_address_171.226.173.229', '1546442187', 'no'),
(2816, '_transient_external_ip_address_171.226.173.229', '112.213.88.139', 'no'),
(2856, '_transient_timeout_external_ip_address_52.114.6.38', '1546480366', 'no'),
(2857, '_transient_external_ip_address_52.114.6.38', '112.213.88.139', 'no'),
(2858, '_transient_timeout_external_ip_address_125.212.177.180', '1546480374', 'no'),
(2859, '_transient_external_ip_address_125.212.177.180', '112.213.88.139', 'no'),
(2866, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.0.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.0.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.2";s:7:"version";s:5:"5.0.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.2";s:7:"version";s:5:"5.0.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.0.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.0.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.2";s:7:"version";s:5:"5.0.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.9-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.9-partial-8.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-rollback-8.zip";}s:7:"current";s:5:"4.9.9";s:7:"version";s:5:"4.9.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"4.9.8";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1545878632;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(2867, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1545878634;s:7:"checked";a:4:{s:13:"ecommerce-gem";s:5:"2.1.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.9";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"ecommerce-gem";s:8:"language";s:2:"vi";s:7:"version";s:5:"2.1.0";s:7:"updated";s:19:"2018-10-23 04:59:12";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/ecommerce-gem/2.1.0/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(2868, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1545878635;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"4.0.8";s:9:"hello.php";s:3:"1.7";s:37:"nivo-slider-lite/nivo-slider-lite.php";s:5:"2.2.0";s:27:"woocommerce/woocommerce.php";s:5:"3.5.2";s:19:"wp-smtp/wp-smtp.php";s:6:"1.1.10";s:31:"wp-statistics/wp-statistics.php";s:6:"12.5.4";s:24:"wordpress-seo/wp-seo.php";s:5:"9.2.1";}s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.5.3";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.5.3.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:31:"wp-statistics/wp-statistics.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wp-statistics";s:4:"slug";s:13:"wp-statistics";s:6:"plugin";s:31:"wp-statistics/wp-statistics.php";s:11:"new_version";s:6:"12.5.7";s:3:"url";s:44:"https://wordpress.org/plugins/wp-statistics/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-statistics.12.5.7.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wp-statistics/assets/icon-256x256.png?rev=1673578";s:2:"1x";s:58:"https://ps.w.org/wp-statistics/assets/icon.svg?rev=1860682";s:3:"svg";s:58:"https://ps.w.org/wp-statistics/assets/icon.svg?rev=1860682";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/wp-statistics/assets/banner-772x250.png?rev=1673578";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"9.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.9.3.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:2:"vi";s:7:"version";s:5:"3.4.7";s:7:"updated";s:19:"2018-07-30 15:27:20";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/woocommerce/3.4.7/vi.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:2:"vi";s:7:"version";s:5:"9.2.1";s:7:"updated";s:19:"2018-11-13 08:11:37";s:7:"package";s:77:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/9.2.1/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:3:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:37:"nivo-slider-lite/nivo-slider-lite.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/nivo-slider-lite";s:4:"slug";s:16:"nivo-slider-lite";s:6:"plugin";s:37:"nivo-slider-lite/nivo-slider-lite.php";s:11:"new_version";s:5:"2.2.0";s:3:"url";s:47:"https://wordpress.org/plugins/nivo-slider-lite/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/nivo-slider-lite.zip";s:5:"icons";a:1:{s:2:"1x";s:69:"https://ps.w.org/nivo-slider-lite/assets/icon-128x128.png?rev=1539146";}s:7:"banners";a:2:{s:2:"2x";s:72:"https://ps.w.org/nivo-slider-lite/assets/banner-1544x500.png?rev=1539146";s:2:"1x";s:71:"https://ps.w.org/nivo-slider-lite/assets/banner-772x250.png?rev=1539146";}s:11:"banners_rtl";a:0:{}}s:19:"wp-smtp/wp-smtp.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/wp-smtp";s:4:"slug";s:7:"wp-smtp";s:6:"plugin";s:19:"wp-smtp/wp-smtp.php";s:11:"new_version";s:6:"1.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/wp-smtp/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-smtp.1.1.10.zip";s:5:"icons";a:1:{s:7:"default";s:51:"https://s.w.org/plugins/geopattern-icon/wp-smtp.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(2883, '_transient_timeout_external_ip_address_34.235.48.77', '1546511410', 'no'),
(2884, '_transient_external_ip_address_34.235.48.77', '112.213.88.139', 'no'),
(2886, '_transient_timeout_wps_excluded_hostname_to_ip_cache', '1545906971', 'no'),
(2887, '_transient_wps_excluded_hostname_to_ip_cache', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wc_review_count', '0'),
(4, 5, '_wc_rating_count', 'a:0:{}'),
(5, 5, '_wc_average_rating', '0'),
(6, 5, '_edit_last', '1'),
(7, 5, '_edit_lock', '1544843138:1'),
(8, 5, '_sku', ''),
(9, 5, '_regular_price', ''),
(10, 5, '_sale_price', ''),
(11, 5, '_sale_price_dates_from', ''),
(12, 5, '_sale_price_dates_to', ''),
(13, 5, 'total_sales', '0'),
(14, 5, '_tax_status', 'taxable'),
(15, 5, '_tax_class', ''),
(16, 5, '_manage_stock', 'no'),
(17, 5, '_backorders', 'no'),
(18, 5, '_low_stock_amount', ''),
(19, 5, '_sold_individually', 'no'),
(20, 5, '_weight', ''),
(21, 5, '_length', ''),
(22, 5, '_width', ''),
(23, 5, '_height', ''),
(24, 5, '_upsell_ids', 'a:0:{}'),
(25, 5, '_crosssell_ids', 'a:0:{}'),
(26, 5, '_purchase_note', ''),
(27, 5, '_default_attributes', 'a:0:{}'),
(28, 5, '_virtual', 'no'),
(29, 5, '_downloadable', 'no'),
(30, 5, '_product_image_gallery', ''),
(31, 5, '_download_limit', '-1'),
(32, 5, '_download_expiry', '-1'),
(33, 5, '_stock', NULL),
(34, 5, '_stock_status', 'instock'),
(35, 5, '_product_version', '3.5.2'),
(36, 5, '_price', ''),
(37, 5, '_yoast_wpseo_primary_product_cat', '15'),
(38, 5, '_yoast_wpseo_content_score', '60'),
(39, 7, '_edit_lock', '1545671570:1'),
(40, 7, '_wp_trash_meta_status', 'publish'),
(41, 7, '_wp_trash_meta_time', '1545671571'),
(42, 8, '_wp_trash_meta_status', 'publish'),
(43, 8, '_wp_trash_meta_time', '1545671605'),
(44, 9, '_wp_trash_meta_status', 'publish'),
(45, 9, '_wp_trash_meta_time', '1545671853'),
(46, 10, '_edit_lock', '1545671918:1'),
(47, 10, '_wp_trash_meta_status', 'publish'),
(48, 10, '_wp_trash_meta_time', '1545671932'),
(49, 11, '_wp_trash_meta_status', 'publish'),
(50, 11, '_wp_trash_meta_time', '1545671970'),
(51, 12, '_wc_review_count', '0'),
(52, 12, '_wc_rating_count', 'a:0:{}'),
(53, 12, '_wc_average_rating', '0'),
(54, 12, '_edit_last', '1'),
(55, 12, '_sku', ''),
(56, 12, '_regular_price', '1'),
(57, 12, '_sale_price', ''),
(58, 12, '_sale_price_dates_from', ''),
(59, 12, '_sale_price_dates_to', ''),
(60, 12, 'total_sales', '0'),
(61, 12, '_tax_status', 'taxable'),
(62, 12, '_tax_class', ''),
(63, 12, '_manage_stock', 'no'),
(64, 12, '_backorders', 'no'),
(65, 12, '_low_stock_amount', ''),
(66, 12, '_sold_individually', 'no'),
(67, 12, '_weight', ''),
(68, 12, '_length', ''),
(69, 12, '_width', ''),
(70, 12, '_height', ''),
(71, 12, '_upsell_ids', 'a:0:{}'),
(72, 12, '_crosssell_ids', 'a:0:{}'),
(73, 12, '_purchase_note', ''),
(74, 12, '_default_attributes', 'a:0:{}'),
(75, 12, '_virtual', 'no'),
(76, 12, '_downloadable', 'no'),
(77, 12, '_product_image_gallery', ''),
(78, 12, '_download_limit', '-1'),
(79, 12, '_download_expiry', '-1'),
(80, 12, '_stock', NULL),
(81, 12, '_stock_status', 'instock'),
(82, 12, '_product_version', '3.5.2'),
(83, 12, '_price', '1'),
(84, 12, '_yoast_wpseo_primary_product_cat', '15'),
(85, 12, '_yoast_wpseo_content_score', '60'),
(86, 12, '_edit_lock', '1545672196:1'),
(87, 14, '_edit_lock', '1545672228:1'),
(88, 14, '_wp_trash_meta_status', 'publish'),
(89, 14, '_wp_trash_meta_time', '1545672246'),
(90, 15, '_wp_trash_meta_status', 'publish'),
(91, 15, '_wp_trash_meta_time', '1545672288'),
(92, 16, '_wp_trash_meta_status', 'publish'),
(93, 16, '_wp_trash_meta_time', '1545672301'),
(94, 17, '_edit_lock', '1545672381:1'),
(95, 18, '_menu_item_type', 'custom'),
(96, 18, '_menu_item_menu_item_parent', '0'),
(97, 18, '_menu_item_object_id', '18'),
(98, 18, '_menu_item_object', 'custom'),
(99, 18, '_menu_item_target', ''),
(100, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 18, '_menu_item_xfn', ''),
(102, 18, '_menu_item_url', 'http://khoruougiasi.com'),
(103, 19, '_menu_item_type', 'taxonomy'),
(104, 19, '_menu_item_menu_item_parent', '0'),
(105, 19, '_menu_item_object_id', '34'),
(106, 19, '_menu_item_object', 'category'),
(107, 19, '_menu_item_target', ''),
(108, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 19, '_menu_item_xfn', ''),
(110, 19, '_menu_item_url', ''),
(111, 17, '_wp_trash_meta_status', 'publish'),
(112, 17, '_wp_trash_meta_time', '1545672391'),
(113, 20, '_edit_lock', '1545672564:1'),
(114, 20, '_wp_trash_meta_status', 'publish'),
(115, 20, '_wp_trash_meta_time', '1545672600'),
(116, 3, '_edit_lock', '1545811046:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-15 02:43:05', '2018-12-15 02:43:05', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-12-15 02:43:05', '2018-12-15 02:43:05', '', 0, 'http://khoruougiasi.com/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-15 02:43:05', '2018-12-15 02:43:05', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://khoruougiasi.com/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-12-15 02:43:05', '2018-12-15 02:43:05', '', 0, 'http://khoruougiasi.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-15 02:43:05', '2018-12-15 02:43:05', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://khoruougiasi.com.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2018-12-15 02:43:05', '2018-12-15 02:43:05', '', 0, 'http://khoruougiasi.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-12-15 09:56:11', '2018-12-15 02:56:11', 'demo1', 'demo1', '', 'publish', 'open', 'closed', '', 'demo1', '', '', '2018-12-15 10:05:38', '2018-12-15 03:05:38', '', 0, 'http://khoruougiasi.com/?post_type=product&#038;p=5', 0, 'product', '', 0),
(6, 1, '2018-12-24 23:58:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-24 23:58:43', '0000-00-00 00:00:00', '', 0, 'http://khoruougiasi.com/?p=6', 0, 'post', '', 0),
(7, 1, '2018-12-25 00:12:51', '2018-12-24 17:12:51', '{\n    "ecommerce-gem::theme_options[show_top_header]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:11:50"\n    },\n    "ecommerce-gem::theme_options[top_phone]": {\n        "value": "0765689879",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:11:50"\n    },\n    "ecommerce-gem::theme_options[top_email]": {\n        "value": "nancy.nguyen1511@gmail.com",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:11:50"\n    },\n    "ecommerce-gem::theme_options[top_left_type]": {\n        "value": "store-info",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:12:50"\n    },\n    "ecommerce-gem::theme_options[top_address]": {\n        "value": "313 Nguy\\u1ec5n Duy Trinh, Qu\\u1eadn 2",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:12:50"\n    },\n    "ecommerce-gem::theme_options[show_social_icons]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:12:50"\n    },\n    "ecommerce-gem::theme_options[show_wishlist]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:12:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2e37d0e-7d44-463e-ad16-18af6b32c2d1', '', '', '2018-12-25 00:12:51', '2018-12-24 17:12:51', '', 0, 'http://khoruougiasi.com/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-12-25 00:13:25', '2018-12-24 17:13:25', '{\n    "ecommerce-gem::theme_options[global_layout]": {\n        "value": "left-sidebar",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:13:25"\n    },\n    "ecommerce-gem::theme_options[excerpt_length]": {\n        "value": "30",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:13:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0684d575-fa12-41a0-bbda-7cc6eb54d0a0', '', '', '2018-12-25 00:13:25', '2018-12-24 17:13:25', '', 0, 'http://khoruougiasi.com/0684d575-fa12-41a0-bbda-7cc6eb54d0a0/', 0, 'customize_changeset', '', 0),
(9, 1, '2018-12-25 00:17:33', '2018-12-24 17:17:33', '{\n    "ecommerce-gem::theme_options[primary_color]": {\n        "value": "#f9c85b",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:17:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '663bffdd-9ace-4c2e-8e6b-c24009690f44', '', '', '2018-12-25 00:17:33', '2018-12-24 17:17:33', '', 0, 'http://khoruougiasi.com/663bffdd-9ace-4c2e-8e6b-c24009690f44/', 0, 'customize_changeset', '', 0),
(10, 1, '2018-12-25 00:18:51', '2018-12-24 17:18:51', '{\n    "ecommerce-gem::theme_options[top_phone]": {\n        "value": "0907.094.652 - 07.6568.9879",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:18:38"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1f5ed0ad-1ac0-485c-997a-f897131a4517', '', '', '2018-12-25 00:18:51', '2018-12-24 17:18:51', '', 0, 'http://khoruougiasi.com/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2018-12-25 00:19:30', '2018-12-24 17:19:30', '{\n    "ecommerce-gem::theme_options[shop_layout]": {\n        "value": "left-sidebar",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:19:30"\n    },\n    "ecommerce-gem::theme_options[show_detail_icon]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:19:30"\n    },\n    "ecommerce-gem::theme_options[enable_gallery_zoom]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:19:30"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2c768f41-5639-4114-a49d-009071fe6757', '', '', '2018-12-25 00:19:30', '2018-12-24 17:19:30', '', 0, 'http://khoruougiasi.com/2c768f41-5639-4114-a49d-009071fe6757/', 0, 'customize_changeset', '', 0),
(12, 1, '2018-12-25 00:20:17', '2018-12-24 17:20:17', 'abc\r\n\r\n&nbsp;', 'demo2', '', 'publish', 'open', 'closed', '', 'demo1-2', '', '', '2018-12-25 00:23:16', '2018-12-24 17:23:16', '', 0, 'http://khoruougiasi.com/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2018-12-25 00:23:06', '2018-12-24 17:23:06', 'abc\n\n&nbsp;', 'demo2', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2018-12-25 00:23:06', '2018-12-24 17:23:06', '', 12, 'http://khoruougiasi.com/12-autosave-v1/', 0, 'revision', '', 0),
(14, 1, '2018-12-25 00:24:06', '2018-12-24 17:24:06', '{\n    "ecommerce-gem::theme_options[copyright_text]": {\n        "value": "Copyright @ 2018.",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:24:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3fb6cde-8349-405b-8481-6756a466ed50', '', '', '2018-12-25 00:24:06', '2018-12-24 17:24:06', '', 0, 'http://khoruougiasi.com/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2018-12-25 00:24:48', '2018-12-24 17:24:48', '{\n    "ecommerce-gem::theme_options[slider_status]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:24:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b95d1d6c-db4b-418b-9ab7-a5f8cd01b991', '', '', '2018-12-25 00:24:48', '2018-12-24 17:24:48', '', 0, 'http://khoruougiasi.com/b95d1d6c-db4b-418b-9ab7-a5f8cd01b991/', 0, 'customize_changeset', '', 0),
(16, 1, '2018-12-25 00:25:01', '2018-12-24 17:25:01', '{\n    "ecommerce-gem::theme_options[slider_page_1]": {\n        "value": "2",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:25:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9c2f8b5-73ef-4718-8275-5ac6136a56a6', '', '', '2018-12-25 00:25:01', '2018-12-24 17:25:01', '', 0, 'http://khoruougiasi.com/e9c2f8b5-73ef-4718-8275-5ac6136a56a6/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-12-25 00:26:31', '2018-12-24 17:26:31', '{\n    "ecommerce-gem::nav_menu_locations[top]": {\n        "value": -5424731290823567000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:09"\n    },\n    "ecommerce-gem::nav_menu_locations[primary]": {\n        "value": -5424731290823567000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:09"\n    },\n    "ecommerce-gem::nav_menu_locations[social]": {\n        "value": -5424731290823567000,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:09"\n    },\n    "nav_menu[-5424731290823567000]": {\n        "value": {\n            "name": "menu top",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:09"\n    },\n    "nav_menu_item[-6778118688513112000]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Trang ch\\u1ee7",\n            "url": "http://khoruougiasi.com",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Trang ch\\u1ee7",\n            "nav_menu_term_id": -5424731290823567000,\n            "_invalid": false,\n            "type_label": "Link t\\u00f9y ch\\u1ecdn"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:09"\n    },\n    "nav_menu_item[-2791173528293974000]": {\n        "value": {\n            "object_id": 34,\n            "object": "category",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "taxonomy",\n            "title": "Tin t\\u1ee9c",\n            "url": "http://khoruougiasi.com/category/tin-tuc/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Tin t\\u1ee9c",\n            "nav_menu_term_id": -5424731290823567000,\n            "_invalid": false,\n            "type_label": "Chuy\\u00ean m\\u1ee5c"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:26:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '65d58b17-0f12-4947-b401-fb8c295c6773', '', '', '2018-12-25 00:26:31', '2018-12-24 17:26:31', '', 0, 'http://khoruougiasi.com/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2018-12-25 00:26:31', '2018-12-24 17:26:31', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-12-25 00:26:31', '2018-12-24 17:26:31', '', 0, 'http://khoruougiasi.com/trang-chu/', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-12-25 00:26:31', '2018-12-24 17:26:31', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-12-25 00:26:31', '2018-12-24 17:26:31', '', 0, 'http://khoruougiasi.com/19/', 2, 'nav_menu_item', '', 0),
(20, 1, '2018-12-25 00:30:00', '2018-12-24 17:30:00', '{\n    "woocommerce_shop_page_display": {\n        "value": "",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-12-24 17:29:24"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '359ebe6b-8b90-4a61-bd5b-31e5e4b38206', '', '', '2018-12-25 00:30:00', '2018-12-24 17:30:00', '', 0, 'http://khoruougiasi.com/?p=20', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_exclusions`
--

CREATE TABLE `wp_statistics_exclusions` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_historical`
--

CREATE TABLE `wp_statistics_historical` (
  `ID` bigint(20) NOT NULL,
  `category` varchar(25) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_pages`
--

CREATE TABLE `wp_statistics_pages` (
  `uri` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_pages`
--

INSERT INTO `wp_statistics_pages` (`uri`, `date`, `count`, `id`) VALUES
('/chao-moi-nguoi/', '2018-12-17', 1, 1),
('/product/demo1/', '2018-12-15', 1, 5),
('/product/demo1/', '2018-12-25', 1, 5),
('/product/demo1/', '2018-12-26', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_search`
--

CREATE TABLE `wp_statistics_search` (
  `ID` bigint(20) NOT NULL,
  `last_counter` date NOT NULL,
  `engine` varchar(64) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_useronline`
--

CREATE TABLE `wp_statistics_useronline` (
  `ID` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visit`
--

CREATE TABLE `wp_statistics_visit` (
  `ID` int(11) NOT NULL,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visit`
--

INSERT INTO `wp_statistics_visit` (`ID`, `last_visit`, `last_counter`, `visit`) VALUES
(1, '2018-12-15 02:45:09', '2018-12-15', 12),
(2, '2018-12-16 05:34:13', '2018-12-16', 32),
(15, '2018-12-17 09:06:09', '2018-12-17', 174),
(42, '2018-12-18 04:15:05', '2018-12-18', 61),
(203, '2018-12-19 01:16:06', '2018-12-19', 20),
(262, '2018-12-20 09:42:51', '2018-12-20', 20),
(279, '2018-12-21 09:46:32', '2018-12-21', 14),
(292, '2018-12-22 07:02:09', '2018-12-22', 22),
(302, '2018-12-23 09:56:00', '2018-12-23', 44),
(317, '2018-12-24 09:37:52', '2018-12-24', 35),
(344, '2018-12-25 01:23:46', '2018-12-25', 24),
(368, '2018-12-26 03:49:46', '2018-12-26', 21),
(391, '2018-12-27 08:52:54', '2018-12-27', 5),
(407, '0000-00-00 00:00:00', '2018-12-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visitor`
--

CREATE TABLE `wp_statistics_visitor` (
  `ID` int(11) NOT NULL,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visitor`
--

INSERT INTO `wp_statistics_visitor` (`ID`, `last_counter`, `referred`, `agent`, `platform`, `version`, `UAString`, `ip`, `location`, `hits`, `honeypot`) VALUES
(1, '2018-12-15', 'http://khoruougiasi.com/wp-admin/plugins.php?plugin_status=all&paged=1&s', 'Chrome', 'Windows', '6.1', NULL, '116.102.182.83', '000', NULL, NULL),
(2, '2018-12-15', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '116.102.182.83', '000', 1, 0),
(3, '2018-12-15', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '66.232.32.101', '000', 1, 0),
(4, '2018-12-15', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '27.72.173.136', '000', 1, 0),
(5, '2018-12-15', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.2', '', '211.176.125.70', '000', 1, 0),
(6, '2018-12-15', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '123.31.30.209', '000', 2, 0),
(7, '2018-12-15', 'http://khoruougiasi.com', 'Unknown', 'Linux', 'Unknown', '', '34.240.173.5', '000', 1, 0),
(8, '2018-12-15', 'http://khoruougiasi.com', 'Chrome', 'iOS', '10.2.1', '', '113.185.14.241', '000', 4, 0),
(9, '2018-12-16', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '5.1', '', '103.59.156.16', '000', 1, 0),
(10, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'Windows', '10.0', '', '138.68.254.101', '000', 1, 0),
(11, '2018-12-16', 'http://khoruougiasi.com', 'Chrome', 'Windows', '5.1', '', '184.75.221.171', '000', 1, 0),
(12, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'Windows', '10.0', '', '83.43.116.177', '000', 1, 0),
(13, '2018-12-16', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '134.249.49.211', '000', 1, 0),
(14, '2018-12-16', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '65.154.226.109', '000', 1, 0),
(15, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'Linux', 'Unknown', '', '46.148.120.56', '000', 1, 0),
(16, '2018-12-16', 'http://khoruougiasi.com/wp-content/uploads/2018/12/tbl_status.php', 'Opera', 'Windows', '6.1', '', '94.23.27.208', '000', 6, 0),
(17, '2018-12-16', 'http://khoruougiasi.com/wp-content/themes/pridmag/tbl_status.php?a=F5d4JH6m1', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 15, 0),
(18, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '216.55.182.90', '000', 1, 0),
(19, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'OS X', '10.7', '', '206.225.80.193', '000', 2, 0),
(20, '2018-12-16', 'http://khoruougiasi.com', 'Firefox', 'OS X', '10.12', '', '209.126.119.176', '000', 1, 0),
(21, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '134.249.49.211', '000', 1, 0),
(22, '2018-12-17', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '70.42.131.170', '000', 2, 0),
(23, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '64.74.215.1', '000', 1, 0),
(24, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '118.69.65.212', '000', 6, 0),
(25, '2018-12-17', 'http://khoruougiasi.com/wp-content/uploads/2018/12/tbl_status.php', 'Opera', 'Windows', '6.1', '', '185.56.80.138', '000', 4, 0),
(26, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '54.39.100.61', '000', 1, 0),
(27, '2018-12-17', 'http://khoruougiasi.com', 'Firefox', 'Linux', 'Unknown', '', '46.161.63.76', '000', 1, 0),
(28, '2018-12-17', 'http://khoruougiasi.com/wp-content/uploads/2018/12/tbl_status.php', 'Opera', 'Windows', '6.1', '', '94.23.27.208', '000', 6, 0),
(29, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.132.163.94', '000', 1, 0),
(30, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '81.196.243.187', '000', 1, 0),
(31, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '24.20.91.233', '000', 1, 0),
(32, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '172.5.53.104', '000', 1, 0),
(33, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '31.135.161.18', '000', 1, 0),
(34, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '81.180.125.197', '000', 1, 0),
(35, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '189.110.142.11', '000', 1, 0),
(36, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '200.49.75.101', '000', 1, 0),
(37, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '201.77.125.4', '000', 1, 0),
(38, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '72.11.150.81', '000', 1, 0),
(39, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '151.16.238.253', '000', 1, 0),
(40, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '138.185.190.44', '000', 1, 0),
(41, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '89.24.35.103', '000', 2, 0),
(42, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.157.45.208', '000', 1, 0),
(43, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '189.39.130.137', '000', 1, 0),
(44, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '96.44.134.98', '000', 1, 0),
(45, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '105.105.218.154', '000', 1, 0),
(46, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.131.22.54', '000', 1, 0),
(47, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '187.123.84.66', '000', 1, 0),
(48, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '138.36.5.179', '000', 1, 0),
(49, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '206.132.109.76', '000', 1, 0),
(50, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '183.88.50.28', '000', 1, 0),
(51, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '72.219.78.53', '000', 1, 0),
(52, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.220.173.178', '000', 1, 0),
(53, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '142.0.25.99', '000', 1, 0),
(54, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '171.241.151.188', '000', 1, 0),
(55, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.190.232.46', '000', 1, 0),
(56, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '201.252.64.84', '000', 1, 0),
(57, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '186.244.103.167', '000', 1, 0),
(58, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '110.137.224.208', '000', 1, 0),
(59, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '179.184.163.119', '000', 1, 0),
(60, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '184.183.83.253', '000', 1, 0),
(61, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '179.97.26.98', '000', 1, 0),
(62, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '196.62.172.125', '000', 1, 0),
(63, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '181.88.178.113', '000', 1, 0),
(64, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.161.130.205', '000', 1, 0),
(65, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '206.201.1.24', '000', 1, 0),
(66, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '167.249.181.16', '000', 1, 0),
(67, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '187.182.37.91', '000', 1, 0),
(68, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '191.187.84.11', '000', 1, 0),
(69, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '91.90.246.38', '000', 1, 0),
(70, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '174.77.111.207', '000', 1, 0),
(71, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '189.10.128.2', '000', 1, 0),
(72, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '186.208.219.21', '000', 1, 0),
(73, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '167.249.70.124', '000', 1, 0),
(74, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '124.29.215.215', '000', 1, 0),
(75, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '200.239.69.110', '000', 1, 0),
(76, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '171.76.75.238', '000', 1, 0),
(77, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '109.93.55.171', '000', 1, 0),
(78, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '170.210.232.25', '000', 1, 0),
(79, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '202.154.42.133', '000', 1, 0),
(80, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '159.148.3.185', '000', 1, 0),
(81, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '36.67.219.130', '000', 1, 0),
(82, '2018-12-17', 'http://khoruougiasi.com/wp-content/uploads/2018/12/tbl_status.php?ddd=F5d4JH6m1', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 22, 0),
(83, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.139.179.190', '000', 1, 0),
(84, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '117.197.126.194', '000', 1, 0),
(85, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '123.25.83.22', '000', 1, 0),
(86, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '194.225.232.174', '000', 1, 0),
(87, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.161.129.233', '000', 1, 0),
(88, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '178.220.35.147', '000', 1, 0),
(89, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.161.138.12', '000', 1, 0),
(90, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '168.227.169.130', '000', 2, 0),
(91, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '72.221.164.50', '000', 1, 0),
(92, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '180.245.255.156', '000', 1, 0),
(93, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '196.64.81.159', '000', 1, 0),
(94, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '124.107.181.160', '000', 1, 0),
(95, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '66.212.16.27', '000', 1, 0),
(96, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.86.111.191', '000', 1, 0),
(97, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '203.110.84.26', '000', 1, 0),
(98, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '197.113.80.118', '000', 1, 0),
(99, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '187.23.132.122', '000', 1, 0),
(100, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '115.84.82.172', '000', 1, 0),
(101, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '123.19.174.76', '000', 1, 0),
(102, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '188.186.84.218', '000', 1, 0),
(103, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '179.192.91.83', '000', 1, 0),
(104, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '122.168.20.233', '000', 1, 0),
(105, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.163.172.196', '000', 1, 0),
(106, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '103.109.109.153', '000', 1, 0),
(107, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '88.118.209.207', '000', 2, 0),
(108, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '186.249.95.203', '000', 1, 0),
(109, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '42.104.78.245', '000', 1, 0),
(110, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '180.249.231.94', '000', 1, 0),
(111, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '119.160.136.23', '000', 1, 0),
(112, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '24.130.102.67', '000', 1, 0),
(113, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '177.128.124.67', '000', 1, 0),
(114, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '123.201.54.20', '000', 1, 0),
(115, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '41.237.107.109', '000', 1, 0),
(116, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '39.41.148.206', '000', 1, 0),
(117, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '113.21.229.182', '000', 1, 0),
(118, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '36.72.66.170', '000', 1, 0),
(119, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '116.118.107.36', '000', 1, 0),
(120, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '31.5.62.23', '000', 1, 0),
(121, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '105.105.223.190', '000', 2, 0),
(122, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '187.107.212.157', '000', 1, 0),
(123, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '193.95.61.163', '000', 1, 0),
(124, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '196.190.127.61', '000', 1, 0),
(125, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '41.32.82.241', '000', 1, 0),
(126, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '109.189.235.152', '000', 1, 0),
(127, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '163.53.75.219', '000', 1, 0),
(128, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.207.184.68', '000', 1, 0),
(129, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '197.234.247.30', '000', 1, 0),
(130, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.207.182.232', '000', 1, 0),
(131, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '41.33.175.242', '000', 1, 0),
(132, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.150.162.252', '000', 1, 0),
(133, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.146.116.192', '000', 1, 0),
(134, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '110.137.229.164', '000', 1, 0),
(135, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.164.62.160', '000', 1, 0),
(136, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '123.20.171.232', '000', 1, 0),
(137, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '183.81.75.47', '000', 1, 0),
(138, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '45.112.146.2', '000', 1, 0),
(139, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '36.67.211.23', '000', 1, 0),
(140, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '180.253.164.3', '000', 1, 0),
(141, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.149.48.98', '000', 1, 0),
(142, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '14.172.184.196', '000', 1, 0),
(143, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '125.214.48.119', '000', 1, 0),
(144, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '117.6.11.53', '000', 1, 0),
(145, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '14.177.64.151', '000', 1, 0),
(146, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '103.89.42.176', '000', 1, 0),
(147, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.0', '', '159.65.24.22', '000', 6, 0),
(148, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '42.113.252.71', '000', 1, 0),
(149, '2018-12-17', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '49.36.1.138', '000', 1, 0),
(150, '2018-12-17', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '144.168.162.250', '000', 1, 0),
(151, '2018-12-18', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '5.0', '', '167.114.216.151', '000', 1, 0),
(152, '2018-12-18', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.0', '', '167.114.216.151', '000', 1, 0),
(153, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.0', '', '167.114.55.123', '000', 1, 0),
(154, '2018-12-18', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '27.72.173.136', '000', 1, 0),
(155, '2018-12-18', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '130.193.36.94', '000', 2, 0),
(156, '2018-12-18', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '122.176.158.215', '000', 1, 0),
(157, '2018-12-18', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '13.92.226.151', '000', 1, 0),
(158, '2018-12-18', 'http://khoruougiasi.com/wp-content/themes/pridmag/tbl_status.php?s=F5d4JH6m1', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 26, 0),
(159, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.44.75.224', '000', 2, 0),
(160, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.45.176.85', '000', 1, 0),
(161, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '83.218.118.38', '000', 1, 0),
(162, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.26.136.237', '000', 1, 0),
(163, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '79.7.74.149', '000', 1, 0),
(164, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '178.122.56.243', '000', 1, 0),
(165, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '213.99.52.114', '000', 1, 0),
(166, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '5.58.244.224', '000', 1, 0),
(167, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '81.162.255.66', '000', 1, 0),
(168, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '79.106.108.153', '000', 1, 0),
(169, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '94.224.128.26', '000', 1, 0),
(170, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '62.152.5.208', '000', 1, 0),
(171, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '178.124.178.205', '000', 1, 0),
(172, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '5.152.146.255', '000', 1, 0),
(173, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.212.143.72', '000', 1, 0),
(174, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.215.173.63', '000', 1, 0),
(175, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '213.238.240.70', '000', 1, 0),
(176, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '185.191.65.37', '000', 1, 0),
(177, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '88.28.214.137', '000', 1, 0),
(178, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '87.220.6.130', '000', 1, 0),
(179, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '185.150.94.152', '000', 1, 0),
(180, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '62.133.141.171', '000', 1, 0),
(181, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '37.215.227.225', '000', 1, 0),
(182, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '91.158.25.142', '000', 1, 0),
(183, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '83.103.193.225', '000', 1, 0),
(184, '2018-12-18', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '77.184.218.108', '000', 1, 0),
(185, '2018-12-19', 'http://khoruougiasi.com/plugins/content/minify.php?s=7rSfFCvGTTu1E1ZEf6KLxic6V', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 11, 0),
(186, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '179.125.233.45', '000', 1, 0),
(187, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '89.28.73.238', '000', 1, 0),
(188, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '185.38.176.184', '000', 1, 0),
(189, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '94.64.32.167', '000', 1, 0),
(190, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '86.57.249.91', '000', 1, 0),
(191, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '159.255.49.115', '000', 1, 0),
(192, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '181.1.34.153', '000', 1, 0),
(193, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '187.22.134.122', '000', 1, 0),
(194, '2018-12-19', 'http://khoruougiasi.com', 'Opera', 'Windows', '6.1', '', '98.161.151.173', '000', 1, 0),
(195, '2018-12-20', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '192.157.220.153', '000', 1, 0),
(196, '2018-12-20', 'http://khoruougiasi.com', 'Opera', 'Windows', '5.1', '', '158.69.2.15', '000', 1, 0),
(197, '2018-12-20', 'http://khoruougiasi.com/wp-content/uploads/2018/12/tbl_status.php', 'Opera', 'Windows', '6.1', '', '185.56.80.138', '000', 4, 0),
(198, '2018-12-20', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '167.114.112.175', '000', 1, 0),
(199, '2018-12-20', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '167.114.216.151', '000', 1, 0),
(200, '2018-12-20', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '70.42.131.170', '000', 1, 0),
(201, '2018-12-20', 'http://khoruougiasi.com/wp-content/themes/prmag/tbl_status.php?a=F5d4JH6m1', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 11, 0),
(202, '2018-12-21', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '174.77.111.201', '000', 1, 0),
(203, '2018-12-21', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '47.59.33.160', '000', 1, 0),
(204, '2018-12-21', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '66.111.55.90', '000', 1, 0),
(205, '2018-12-21', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '67.215.237.2', '000', 1, 0),
(206, '2018-12-21', 'http://khoruougiasi.com', 'Firefox', 'OS X', '10.13', '', '62.210.83.78', '000', 1, 0),
(207, '2018-12-21', 'http://khoruougiasi.com', 'Unknown', 'Windows', '5.1', '', '46.4.33.48', '000', 1, 0),
(208, '2018-12-21', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.3', '', '54.39.100.61', '000', 1, 0),
(209, '2018-12-21', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '188.120.249.106', '000', 1, 0),
(210, '2018-12-21', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '185.112.249.214', '000', 1, 0),
(211, '2018-12-21', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '6.1', '', '70.42.131.170', '000', 1, 0),
(212, '2018-12-21', 'http://khoruougiasi.com/wp-xml.php', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 4, 0),
(213, '2018-12-22', 'http://khoruougiasi.com/wp-content/themes/pridmag/clear.php?a=2a2325d0dc3141a808ab74670ac8c6f7', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 16, 0),
(214, '2018-12-22', 'http://khoruougiasi.com', 'Firefox', 'Linux', 'Unknown', '', '46.148.20.14', '000', 1, 0),
(215, '2018-12-22', 'http://khoruougiasi.com', 'Opera', 'Windows', '10.0', '', '94.23.2.209', '000', 5, 0),
(216, '2018-12-23', 'http://khoruougiasi.com', 'Opera', 'Windows', '10.0', '', '12.202.180.128', '000', 15, 0),
(217, '2018-12-23', 'http://khoruougiasi.com/wp-content/themes/twentyfifteen/tbl_status.php?a=F5d4JH6m1', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 19, 0),
(218, '2018-12-23', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '206.180.165.147', '000', 1, 0),
(219, '2018-12-23', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '216.144.229.121', '000', 1, 0),
(220, '2018-12-23', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '77.72.83.157', '000', 5, 0),
(221, '2018-12-23', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '85.203.13.58', '000', 1, 0),
(222, '2018-12-23', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '86.126.231.199', '000', 1, 0),
(223, '2018-12-23', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '187.76.82.90', '000', 1, 0),
(224, '2018-12-24', 'http://khoruougiasi.com/wp-content/plugins/apikey/minify.php?a=7rSfFCvGTTu1E1ZEf6KLxic6V', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 3, 0),
(225, '2018-12-24', 'http://khoruougiasi.com', 'Opera', 'Windows', '10.0', '', '12.202.180.128', '000', 12, 0),
(226, '2018-12-24', 'http://khoruougiasi.com/administrator/index.php', 'Opera', 'Windows', '10.0', '', '94.23.18.194', '000', 4, 0),
(227, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Linux', 'Unknown', '', '46.148.20.14', '000', 1, 0),
(228, '2018-12-24', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '5.1', '', '103.87.58.72', '000', 1, 0),
(229, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '198.252.101.83', '000', 1, 0),
(230, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '95.216.64.168', '000', 1, 0),
(231, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '75.119.200.139', '000', 1, 0),
(232, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '51.255.86.4', '000', 1, 0),
(233, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '173.201.180.158', '000', 1, 0),
(234, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '194.58.100.175', '000', 1, 0),
(235, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '173.236.224.13', '000', 1, 0),
(236, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '195.234.4.60', '000', 1, 0),
(237, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '112.78.203.35', '000', 1, 0),
(238, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '45.119.81.5', '000', 1, 0),
(239, '2018-12-24', 'http://khoruougiasi.com', 'Firefox', 'Windows', '6.1', '', '192.163.216.197', '000', 1, 0),
(240, '2018-12-24', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '116.102.182.83', '000', 1, 0),
(241, '2018-12-24', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '116.102.182.83', '000', 2, 0),
(242, '2018-12-25', 'http://khoruougiasi.com', 'Chrome', 'Windows', '6.1', '', '116.102.182.83', '000', 2, 0),
(243, '2018-12-25', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '5.1', '', '103.59.156.16', '000', 1, 0),
(244, '2018-12-25', 'http://khoruougiasi.com', 'Chrome', 'iOS', '10.2.1', '', '113.185.14.71', '000', 4, 0),
(245, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '136.0.99.59', '000', 1, 0),
(246, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '104.194.24.245', '000', 1, 0),
(247, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '67.215.241.73', '000', 1, 0),
(248, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '212.51.39.190', '000', 1, 0),
(249, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '78.58.156.118', '000', 1, 0),
(250, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '201.86.64.136', '000', 1, 0),
(251, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '92.181.34.137', '000', 1, 0),
(252, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '173.254.195.34', '000', 1, 0),
(253, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '179.235.114.220', '000', 1, 0),
(254, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '212.96.82.28', '000', 1, 0),
(255, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '188.92.191.158', '000', 1, 0),
(256, '2018-12-25', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '87.179.190.59', '000', 1, 0),
(257, '2018-12-25', 'http://khoruougiasi.com', 'Chrome', 'iOS', '10.2.1', '', '203.205.33.95', '000', 1, 0),
(258, '2018-12-25', 'http://khoruougiasi.com', 'Chrome', 'iOS', '10.2.1', '', '113.161.34.230', '000', 4, 0),
(259, '2018-12-26', 'http://khoruougiasi.com', 'Internet Explorer', 'Windows', '5.1', '', '103.59.156.16', '000', 1, 0),
(260, '2018-12-26', 'http://khoruougiasi.com/clearwp.php?a=2a2325d0dc3141a808ab74670ac8c6f7', 'Internet Explorer', 'Windows', '5.1', '', '176.9.23.3', '000', 8, 0),
(261, '2018-12-26', 'http://khoruougiasi.com', 'Chrome', 'iOS', '10.2.1', '', '113.185.26.121', '000', 1, 0),
(262, '2018-12-26', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '116.110.2.167', '000', 2, 0),
(263, '2018-12-26', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '113.176.99.221', '000', 1, 0),
(264, '2018-12-26', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '113.176.99.221', '000', 4, 0),
(265, '2018-12-26', 'http://khoruougiasi.com', 'Yandex Browser', 'Windows', '10.0', '', '27.72.173.136', '000', 4, 0),
(266, '2018-12-27', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '27.72.173.136', '000', 2, 0),
(267, '2018-12-27', 'http://khoruougiasi.com', 'Chrome', 'Windows', '10.0', '', '125.212.177.180', '000', 1, 0),
(268, '2018-12-27', 'http://khoruougiasi.com', 'Unknown', 'Unknown', 'Unknown', '', '34.235.48.77', '000', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 18, 'order', '0'),
(4, 19, 'order', '0'),
(5, 20, 'order', '0'),
(6, 21, 'order', '0'),
(7, 22, 'order', '0'),
(8, 23, 'order', '0'),
(9, 24, 'order', '0'),
(10, 25, 'order', '0'),
(11, 26, 'order', '0'),
(12, 15, 'product_count_product_cat', '2'),
(13, 27, 'product_count_product_tag', '1'),
(14, 28, 'product_count_product_tag', '1'),
(15, 29, 'product_count_product_tag', '1'),
(16, 30, 'product_count_product_tag', '1'),
(17, 31, 'product_count_product_tag', '1'),
(18, 32, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Rượu mạnh', 'ruou-manh', 0),
(17, 'Chivas', 'chivas', 0),
(18, 'Rượu vang', 'ruou-vang', 0),
(19, 'Chile', 'chile', 0),
(20, 'Rượu pha chế', 'ruou-pha-che', 0),
(21, 'Rum', 'rum', 0),
(22, 'Bia nhập khẩu', 'bia-nhap-khau', 0),
(23, 'Heneken', 'heneken', 0),
(24, 'Hộp quà rượu', 'hop-qua-ruou', 0),
(25, 'HQ 2018', 'hq-2018', 0),
(26, 'Hampers', 'hampers', 0),
(27, 'Rượu mạnh', 'ruou-manh', 0),
(28, 'Rượu vang', 'ruou-vang', 0),
(29, 'Rượu pha chế', 'ruou-pha-che', 0),
(30, 'Bia nhập khẩu', 'bia-nhap-khau', 0),
(31, 'Hộp quà rượu', 'hop-qua-ruou', 0),
(32, 'Hampers', 'hampers', 0),
(33, 'Khuyến mãi', 'khuyen-mai', 0),
(34, 'Tin tức', 'tin-tuc', 0),
(35, 'Chia sẻ', 'chia-se', 0),
(36, 'post-format-quote', 'post-format-quote', 0),
(37, 'menu khoruougiasi', 'menu-khoruougiasi', 0),
(38, 'menu top', 'menu-top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(5, 15, 0),
(5, 27, 0),
(5, 28, 0),
(5, 29, 0),
(5, 30, 0),
(5, 31, 0),
(5, 32, 0),
(6, 36, 0),
(12, 2, 0),
(12, 15, 0),
(18, 38, 0),
(19, 38, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 2),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 2),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'product_cat', '', 18, 0),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 20, 0),
(22, 22, 'product_cat', '', 0, 0),
(23, 23, 'product_cat', '', 22, 0),
(24, 24, 'product_cat', '', 0, 0),
(25, 25, 'product_cat', '', 24, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'category', '', 0, 0),
(34, 34, 'category', '', 0, 0),
(35, 35, 'category', '', 0, 0),
(36, 36, 'post_format', '', 0, 0),
(37, 37, 'nav_menu', '', 0, 0),
(38, 38, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Kho rượu giá sỉ'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '6'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"171.226.173.0";}'),
(19, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:"message";s:572:"<p>You\'re using WordPress in Vietnamese. While Yoast SEO has been translated to Vietnamese for 97%, it\'s not been shipped with the plugin yet. You can help! Register at <a href="https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/">Translating WordPress</a> to help complete the translation to Vietnamese!</p><p><a href="https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/">Register now &raquo;</a></p><a class="button" href="/wp-admin/admin.php?page=wpseo_dashboard&#038;remove_i18n_promo=1">Please don\'t show me this notification anymore</a>";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:31:"i18nModuleTranslationAssistance";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:20:"wpseo_manage_options";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}i:1;a:2:{s:7:"message";s:429:"Yoast SEO and WooCommerce can work together a lot better by adding a helper plugin. Please install Yoast WooCommerce SEO to make your life better. <a href="https://yoa.st/1o0?php_version=7.2.13&platform=wordpress&platform_version=4.9.8&software=free&software_version=9.2.1&role=administrator&days_active=12" aria-label="More information about Yoast WooCommerce SEO" target="_blank" rel="noopener noreferrer">More information</a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:44:"wpseo-suggested-plugin-yoast-woocommerce-seo";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";a:1:{i:0;s:15:"install_plugins";}s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}i:2;a:2:{s:7:"message";s:166:"Don\'t miss your crawl errors: <a href="http://khoruougiasi.com/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:9:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(20, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(21, 1, 'wc_last_active', '1545782400'),
(22, 1, 'wp_statistics', 'a:2:{s:10:"editor_set";s:6:"12.5.4";s:13:"dashboard_set";s:6:"12.5.4";}'),
(23, 1, 'metaboxhidden_post', 'a:1:{i:0;s:29:"wp_statistics_editor_meta_box";}'),
(24, 1, 'metaboxhidden_page', 'a:1:{i:0;s:29:"wp_statistics_editor_meta_box";}'),
(25, 1, '_yoast_wpseo_profile_updated', '1545837584'),
(28, 1, 'metaboxhidden_dashboard', 'a:12:{i:0;s:29:"wp-statistics-browsers-widget";i:1;s:30:"wp-statistics-countries-widget";i:2;s:28:"wp-statistics-hitsmap-widget";i:3;s:25:"wp-statistics-hits-widget";i:4;s:26:"wp-statistics-pages-widget";i:5;s:27:"wp-statistics-recent-widget";i:6;s:30:"wp-statistics-referring-widget";i:7;s:27:"wp-statistics-search-widget";i:8;s:28:"wp-statistics-summary-widget";i:9;s:26:"wp-statistics-words-widget";i:10;s:33:"wp-statistics-top-visitors-widget";i:11;s:37:"wp-statistics-searched-phrases-widget";}'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(31, 1, 'wp_user-settings', 'libraryContent=browse'),
(32, 1, 'wp_user-settings-time', '1545672191'),
(33, 1, 'wpseo_title', ''),
(34, 1, 'wpseo_metadesc', ''),
(35, 1, 'wpseo_noindex_author', ''),
(36, 1, 'wpseo_content_analysis_disable', ''),
(37, 1, 'wpseo_keyword_analysis_disable', ''),
(38, 1, 'billing_first_name', ''),
(39, 1, 'billing_last_name', ''),
(40, 1, 'billing_company', ''),
(41, 1, 'billing_address_1', ''),
(42, 1, 'billing_address_2', ''),
(43, 1, 'billing_city', ''),
(44, 1, 'billing_postcode', ''),
(45, 1, 'billing_country', ''),
(46, 1, 'billing_state', ''),
(47, 1, 'billing_phone', ''),
(48, 1, 'billing_email', 'trandinhdat.hp@gmail.com'),
(49, 1, 'shipping_first_name', ''),
(50, 1, 'shipping_last_name', ''),
(51, 1, 'shipping_company', ''),
(52, 1, 'shipping_address_1', ''),
(53, 1, 'shipping_address_2', ''),
(54, 1, 'shipping_city', ''),
(55, 1, 'shipping_postcode', ''),
(56, 1, 'shipping_country', ''),
(57, 1, 'shipping_state', ''),
(58, 1, 'googleplus', ''),
(59, 1, 'twitter', ''),
(60, 1, 'facebook', ''),
(61, 1, 'last_update', '1545837584'),
(62, 1, 'session_tokens', 'a:2:{s:64:"f729707afa8d9aaf05beb15c26112ab68deca37c6a3be19b02dbadee55fefb2a";a:4:{s:10:"expiration";i:1545982554;s:2:"ip";s:13:"27.72.173.136";s:2:"ua";s:143:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 YaBrowser/18.11.1.721 Yowser/2.5 Safari/537.36";s:5:"login";i:1545809754;}s:64:"2d259f7c1bb111097a2f88b87716073bb76b71c48805dc523368f4e64a269119";a:4:{s:10:"expiration";i:1546010202;s:2:"ip";s:15:"171.226.173.229";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1545837402;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Sales.winemart', '$P$B.zwad2LFeRHVCJEXdeRkT0kSrkqfZ1', 'sales-winemart', 'trandinhdat.hp@gmail.com', '', '2018-12-15 02:43:05', '', 0, 'Kho rượu giá sỉ');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(10, '1', 'a:1:{s:8:"customer";s:738:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2018-12-26T15:19:44+00:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"GB";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"GB";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:24:"trandinhdat.hp@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1546010395);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(4, 0, 0),
(5, 0, 0),
(12, 0, 0);

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `reason` (`reason`);

--
-- Indexes for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `page_id` (`page_id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `wp_statistics_pages`
--
ALTER TABLE `wp_statistics_pages`
  ADD UNIQUE KEY `date_2` (`date`,`uri`),
  ADD KEY `url` (`uri`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`),
  ADD KEY `uri` (`uri`,`count`,`id`);

--
-- Indexes for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `last_counter` (`last_counter`),
  ADD KEY `engine` (`engine`),
  ADD KEY `host` (`host`);

--
-- Indexes for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_date` (`last_counter`);

--
-- Indexes for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  ADD KEY `agent` (`agent`),
  ADD KEY `platform` (`platform`),
  ADD KEY `version` (`version`),
  ADD KEY `location` (`location`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2892;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;
--
-- AUTO_INCREMENT for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
