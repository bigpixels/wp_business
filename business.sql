-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 11 2020 г., 00:58
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `business`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://business', 'yes'),
(2, 'home', 'http://business', 'yes'),
(3, 'blogname', 'Business', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gamer21centuries@gmail.com', 'yes'),
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
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=40&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:41:\"navz-photo-gallery/navz-photo-gallery.php\";i:3;s:37:\"post-types-order/post-types-order.php\";i:4;s:23:\"rustolat/rus-to-lat.php\";i:5;s:27:\"svg-support/svg-support.php\";i:6;s:39:\"wp-magnific-popup/wp_magnific_popup.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '2', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:88:\"E:\\OSPanel\\domains\\business/wp-content/plugins/navz-photo-gallery/navz-photo-gallery.php\";i:1;s:62:\"E:\\OSPanel\\domains\\business/wp-content/themes/custom/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'custom', 'yes'),
(41, 'stylesheet', 'custom', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:39:\"svg-vector-icon-plugin/wp-svg-icons.php\";s:22:\"uninstall_wp_svg_icons\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '40', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'ru_RU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1578693309;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1578718509;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578745006;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578761846;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578761922;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(125, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"gamer21centuries@gmail.com\";s:7:\"version\";s:6:\"4.9.13\";s:9:\"timestamp\";i:1576947329;}', 'no'),
(144, 'show_comments_cookies_opt_in', '1', 'yes'),
(145, 'admin_email_lifespan', '1592565033', 'yes'),
(146, 'db_upgraded', '', 'yes'),
(150, 'recovery_keys', 'a:0:{}', 'yes'),
(151, 'can_compress_scripts', '1', 'no'),
(154, 'recently_activated', 'a:5:{s:39:\"wp-add-mime-types/wp-add-mime-types.php\";i:1577730758;s:51:\"disable-real-mime-check/disable-real-mime-check.php\";i:1577730742;s:35:\"taxonomy-images/taxonomy-images.php\";i:1577726495;s:39:\"svg-vector-icon-plugin/wp-svg-icons.php\";i:1577723806;s:27:\"page-title-splitter/pts.php\";i:1577555475;}', 'yes'),
(157, 'wpmp_image_settings', 'a:4:{s:5:\"class\";s:6:\"mpopup\";s:12:\"vertical_fit\";i:1;s:12:\"zoom_enabled\";i:0;s:10:\"disable_on\";i:400;}', 'yes'),
(158, 'wpmp_gallery_settings', 'a:2:{s:5:\"class\";s:13:\"popup-gallery\";s:10:\"disable_on\";i:400;}', 'yes'),
(159, 'wpmp_iframe_settings', 'a:3:{s:5:\"class\";s:13:\"mpopup_iframe\";s:5:\"width\";i:900;s:10:\"disable_on\";i:400;}', 'yes'),
(160, 'wpmp_div_settings', 'a:2:{s:5:\"class\";s:10:\"mpopup_div\";s:10:\"disable_on\";i:400;}', 'yes'),
(161, 'acf_version', '5.8.7', 'yes'),
(168, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576948035;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(169, 'current_theme', 'Custom', 'yes'),
(170, 'theme_mods_twentytwenty', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576948053;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(173, 'theme_mods_custom', 'a:9:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:7:\"phone-1\";s:13:\"987-9976-9999\";s:7:\"phone-2\";s:0:\"\";s:7:\"phone-3\";s:0:\"\";s:7:\"phone-4\";s:0:\"\";s:4:\"mail\";s:21:\"info@businessface.com\";s:8:\"social-3\";s:1:\"#\";}', 'yes'),
(216, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(235, 'recovery_mode_email_last_sent', '1577307137', 'yes'),
(275, 'new_admin_email', 'gamer21centuries@gmail.com', 'yes'),
(346, '_transient_health-check-site-status-result', '{\"good\":\"15\",\"recommended\":\"2\",\"critical\":\"0\"}', 'yes'),
(347, 'wp_admin_color_schemes', 'a:8:{s:5:\"fresh\";O:8:\"stdClass\":4:{s:4:\"name\";s:23:\"По умолчанию\";s:3:\"url\";b:0;s:6:\"colors\";a:4:{i:0;s:4:\"#222\";i:1;s:4:\"#333\";i:2;s:7:\"#0073aa\";i:3;s:7:\"#00a0d2\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#a0a5aa\";s:5:\"focus\";s:7:\"#00a0d2\";s:7:\"current\";s:4:\"#fff\";}}s:5:\"light\";O:8:\"stdClass\":4:{s:4:\"name\";s:14:\"Светлая\";s:3:\"url\";s:56:\"http://business/wp-admin/css/colors/light/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#e5e5e5\";i:1;s:4:\"#999\";i:2;s:7:\"#d64e07\";i:3;s:7:\"#04a4cc\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:4:\"#999\";s:5:\"focus\";s:4:\"#ccc\";s:7:\"current\";s:4:\"#ccc\";}}s:4:\"blue\";O:8:\"stdClass\":4:{s:4:\"name\";s:10:\"Синяя\";s:3:\"url\";s:55:\"http://business/wp-admin/css/colors/blue/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#096484\";i:1;s:7:\"#4796b3\";i:2;s:7:\"#52accc\";i:3;s:7:\"#74B6CE\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#e5f8ff\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}s:8:\"midnight\";O:8:\"stdClass\":4:{s:4:\"name\";s:14:\"Полночь\";s:3:\"url\";s:59:\"http://business/wp-admin/css/colors/midnight/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#25282b\";i:1;s:7:\"#363b3f\";i:2;s:7:\"#69a8bb\";i:3;s:7:\"#e14d43\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#f1f2f3\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}s:7:\"sunrise\";O:8:\"stdClass\":4:{s:4:\"name\";s:14:\"Рассвет\";s:3:\"url\";s:58:\"http://business/wp-admin/css/colors/sunrise/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#b43c38\";i:1;s:7:\"#cf4944\";i:2;s:7:\"#dd823b\";i:3;s:7:\"#ccaf0b\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#f3f1f1\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}s:9:\"ectoplasm\";O:8:\"stdClass\":4:{s:4:\"name\";s:20:\"Эктоплазма\";s:3:\"url\";s:60:\"http://business/wp-admin/css/colors/ectoplasm/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#413256\";i:1;s:7:\"#523f6d\";i:2;s:7:\"#a3b745\";i:3;s:7:\"#d46f15\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#ece6f6\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}s:5:\"ocean\";O:8:\"stdClass\":4:{s:4:\"name\";s:10:\"Океан\";s:3:\"url\";s:56:\"http://business/wp-admin/css/colors/ocean/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#627c83\";i:1;s:7:\"#738e96\";i:2;s:7:\"#9ebaa0\";i:3;s:7:\"#aa9d88\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#f2fcff\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}s:6:\"coffee\";O:8:\"stdClass\":4:{s:4:\"name\";s:8:\"Кофе\";s:3:\"url\";s:57:\"http://business/wp-admin/css/colors/coffee/colors.min.css\";s:6:\"colors\";a:4:{i:0;s:7:\"#46403c\";i:1;s:7:\"#59524c\";i:2;s:7:\"#c7a589\";i:3;s:7:\"#9ea476\";}s:11:\"icon_colors\";a:3:{s:4:\"base\";s:7:\"#f3f2f1\";s:5:\"focus\";s:4:\"#fff\";s:7:\"current\";s:4:\"#fff\";}}}', 'yes'),
(473, 'category_children', 'a:0:{}', 'yes'),
(534, 'taxonomy_image_plugin_settings', 'a:1:{s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}}', 'yes'),
(539, 'taxonomy_image_plugin', 'a:0:{}', 'yes'),
(548, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(549, 'bodhi_svgs_settings', 'a:3:{s:8:\"restrict\";s:2:\"on\";s:13:\"advanced_mode\";s:2:\"on\";s:10:\"css_target\";s:0:\"\";}', 'yes'),
(560, 'wp_add_mime_types_array', 'a:1:{s:16:\"mime_type_values\";s:17:\"a:1:{i:0;s:0:\"\";}\";}', 'yes'),
(688, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1578692191;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(689, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1578692194;s:7:\"checked\";a:7:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:5:\"1.6.5\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.4.2\";s:23:\"rustolat/rus-to-lat.php\";s:3:\"0.3\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.15\";s:39:\"wp-magnific-popup/wp_magnific_popup.php\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/navz-photo-gallery\";s:4:\"slug\";s:18:\"navz-photo-gallery\";s:6:\"plugin\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/navz-photo-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.4.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.4.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"rustolat/rus-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/rustolat\";s:4:\"slug\";s:8:\"rustolat\";s:6:\"plugin\";s:23:\"rustolat/rus-to-lat.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/rustolat/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/rustolat.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:52:\"https://s.w.org/plugins/geopattern-icon/rustolat.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-magnific-popup/wp_magnific_popup.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wp-magnific-popup\";s:4:\"slug\";s:17:\"wp-magnific-popup\";s:6:\"plugin\";s:39:\"wp-magnific-popup/wp_magnific_popup.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-magnific-popup/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-magnific-popup.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-magnific-popup/assets/icon-256x256.png?rev=1454716\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-magnific-popup/assets/icon-128x128.png?rev=1454716\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(690, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1578692194;s:7:\"checked\";a:1:{s:6:\"custom\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(692, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:3:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(693, 'CPT_configured', 'TRUE', 'yes'),
(723, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1578826175', 'no'),
(724, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(744, '_site_transient_timeout_browser_237aa6249591b6a7ad6962bc73492c77', '1578848797', 'no'),
(745, '_site_transient_browser_237aa6249591b6a7ad6962bc73492c77', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"79.0.3945.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(790, '_site_transient_timeout_theme_roots', '1578693993', 'no'),
(791, '_site_transient_theme_roots', 'a:1:{s:6:\"custom\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(16, 10, '_edit_last', '1'),
(17, 10, '_edit_lock', '1577472371:1'),
(18, 10, '_wp_page_template', 'contacts.php'),
(19, 12, '_edit_last', '1'),
(20, 12, '_wp_page_template', 'default'),
(21, 12, '_edit_lock', '1577017981:1'),
(22, 16, '_edit_last', '1'),
(23, 16, '_wp_page_template', 'default'),
(24, 16, '_edit_lock', '1577018257:1'),
(25, 18, '_edit_last', '1'),
(26, 18, '_edit_lock', '1577018073:1'),
(27, 18, '_wp_page_template', 'default'),
(28, 21, '_edit_last', '1'),
(29, 21, '_wp_page_template', 'default'),
(30, 21, '_edit_lock', '1577018187:1'),
(31, 23, '_edit_last', '1'),
(32, 23, '_wp_page_template', 'default'),
(33, 23, '_edit_lock', '1577307681:1'),
(43, 27, '_menu_item_type', 'post_type'),
(44, 27, '_menu_item_menu_item_parent', '0'),
(45, 27, '_menu_item_object_id', '16'),
(46, 27, '_menu_item_object', 'page'),
(47, 27, '_menu_item_target', ''),
(48, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 27, '_menu_item_xfn', ''),
(50, 27, '_menu_item_url', ''),
(52, 28, '_menu_item_type', 'post_type'),
(53, 28, '_menu_item_menu_item_parent', '0'),
(54, 28, '_menu_item_object_id', '10'),
(55, 28, '_menu_item_object', 'page'),
(56, 28, '_menu_item_target', ''),
(57, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 28, '_menu_item_xfn', ''),
(59, 28, '_menu_item_url', ''),
(61, 29, '_menu_item_type', 'post_type'),
(62, 29, '_menu_item_menu_item_parent', '0'),
(63, 29, '_menu_item_object_id', '21'),
(64, 29, '_menu_item_object', 'page'),
(65, 29, '_menu_item_target', ''),
(66, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 29, '_menu_item_xfn', ''),
(68, 29, '_menu_item_url', ''),
(70, 30, '_menu_item_type', 'post_type'),
(71, 30, '_menu_item_menu_item_parent', '0'),
(72, 30, '_menu_item_object_id', '23'),
(73, 30, '_menu_item_object', 'page'),
(74, 30, '_menu_item_target', ''),
(75, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 30, '_menu_item_xfn', ''),
(77, 30, '_menu_item_url', ''),
(79, 31, '_menu_item_type', 'post_type'),
(80, 31, '_menu_item_menu_item_parent', '0'),
(81, 31, '_menu_item_object_id', '18'),
(82, 31, '_menu_item_object', 'page'),
(83, 31, '_menu_item_target', ''),
(84, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 31, '_menu_item_xfn', ''),
(86, 31, '_menu_item_url', ''),
(88, 32, '_menu_item_type', 'post_type'),
(89, 32, '_menu_item_menu_item_parent', '0'),
(90, 32, '_menu_item_object_id', '12'),
(91, 32, '_menu_item_object', 'page'),
(92, 32, '_menu_item_target', ''),
(93, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 32, '_menu_item_xfn', ''),
(95, 32, '_menu_item_url', ''),
(140, 40, '_edit_last', '1'),
(141, 40, '_edit_lock', '1578485614:1'),
(142, 40, '_wp_page_template', 'index.php'),
(143, 42, '_menu_item_type', 'post_type'),
(144, 42, '_menu_item_menu_item_parent', '0'),
(145, 42, '_menu_item_object_id', '40'),
(146, 42, '_menu_item_object', 'page'),
(147, 42, '_menu_item_target', ''),
(148, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 42, '_menu_item_xfn', ''),
(150, 42, '_menu_item_url', ''),
(163, 48, '_edit_last', '1'),
(164, 48, '_edit_lock', '1578601461:1'),
(165, 40, 'title-banner', 'Заголовок'),
(166, 40, '_title-banner', 'field_5e010b759acd2'),
(167, 41, 'title-banner', 'Заголовок'),
(168, 41, '_title-banner', 'field_5e010b759acd2'),
(169, 40, 'boost-up-title', 'Заголовок'),
(170, 40, '_boost-up-title', 'field_5e010b759acd2'),
(171, 40, 'boost-up-img', ''),
(172, 40, '_boost-up-img', 'field_5e012de4bc7e7'),
(173, 40, 'boost-up-subtitle', 'Подзаголовок'),
(174, 40, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(175, 52, 'title-banner', 'Заголовок'),
(176, 52, '_title-banner', 'field_5e010b759acd2'),
(177, 52, 'boost-up-title', 'Заголовок'),
(178, 52, '_boost-up-title', 'field_5e010b759acd2'),
(179, 52, 'boost-up-img', ''),
(180, 52, '_boost-up-img', 'field_5e012de4bc7e7'),
(181, 52, 'boost-up-subtitle', 'Подзаголовок'),
(182, 52, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(183, 53, 'title-banner', 'Заголовок'),
(184, 53, '_title-banner', 'field_5e010b759acd2'),
(185, 53, 'boost-up-title', ''),
(186, 53, '_boost-up-title', 'field_5e010b759acd2'),
(187, 53, 'boost-up-img', ''),
(188, 53, '_boost-up-img', 'field_5e012de4bc7e7'),
(189, 53, 'boost-up-subtitle', 'Подзаголовок'),
(190, 53, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(191, 54, 'title-banner', 'Заголовок'),
(192, 54, '_title-banner', 'field_5e010b759acd2'),
(193, 54, 'boost-up-title', 'Заголовок'),
(194, 54, '_boost-up-title', 'field_5e010b759acd2'),
(195, 54, 'boost-up-img', ''),
(196, 54, '_boost-up-img', 'field_5e012de4bc7e7'),
(197, 54, 'boost-up-subtitle', 'Подзаголовок'),
(198, 54, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(199, 40, 'boost-up_wp-title', ''),
(200, 40, '_boost-up_wp-title', 'field_5e010b759acd2'),
(201, 40, 'boost-up_wp-img', '74'),
(202, 40, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(203, 40, 'boost-up_wp-subtitle', ''),
(204, 40, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(205, 54, 'boost-up_wp-title', 'Заголовок'),
(206, 54, '_boost-up_wp-title', 'field_5e010b759acd2'),
(207, 54, 'boost-up_wp-img', ''),
(208, 54, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(209, 54, 'boost-up_wp-subtitle', ''),
(210, 54, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(211, 55, 'title-banner', 'Заголовок'),
(212, 55, '_title-banner', 'field_5e010b759acd2'),
(213, 55, 'boost-up-title', 'Заголовок'),
(214, 55, '_boost-up-title', 'field_5e010b759acd2'),
(215, 55, 'boost-up-img', ''),
(216, 55, '_boost-up-img', 'field_5e012de4bc7e7'),
(217, 55, 'boost-up-subtitle', 'Подзаголовок'),
(218, 55, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(219, 55, 'boost-up_wp-title', 'Заголовок'),
(220, 55, '_boost-up_wp-title', 'field_5e010b759acd2'),
(221, 55, 'boost-up_wp-img', ''),
(222, 55, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(223, 55, 'boost-up_wp-subtitle', 'Подзаголовок'),
(224, 55, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(225, 40, 'prymary-button_wp-but', 'Отправить'),
(226, 40, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(227, 58, 'title-banner', 'Заголовок'),
(228, 58, '_title-banner', 'field_5e010b759acd2'),
(229, 58, 'boost-up-title', 'Заголовок'),
(230, 58, '_boost-up-title', 'field_5e010b759acd2'),
(231, 58, 'boost-up-img', ''),
(232, 58, '_boost-up-img', 'field_5e012de4bc7e7'),
(233, 58, 'boost-up-subtitle', 'Подзаголовок'),
(234, 58, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(235, 58, 'boost-up_wp-title', 'Заголовок'),
(236, 58, '_boost-up_wp-title', 'field_5e010b759acd2'),
(237, 58, 'boost-up_wp-img', ''),
(238, 58, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(239, 58, 'boost-up_wp-subtitle', 'Подзаголовок'),
(240, 58, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(241, 58, 'prymary-button_wp-but', 'Отправить'),
(242, 58, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(243, 40, 'primary-button_wp-but', ''),
(244, 40, '_primary-button_wp-but', 'field_5e0906de56268'),
(245, 59, 'title-banner', 'Заголовок'),
(246, 59, '_title-banner', 'field_5e010b759acd2'),
(247, 59, 'boost-up-title', 'Заголовок'),
(248, 59, '_boost-up-title', 'field_5e010b759acd2'),
(249, 59, 'boost-up-img', ''),
(250, 59, '_boost-up-img', 'field_5e012de4bc7e7'),
(251, 59, 'boost-up-subtitle', 'Подзаголовок'),
(252, 59, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(253, 59, 'boost-up_wp-title', 'Заголовок'),
(254, 59, '_boost-up_wp-title', 'field_5e010b759acd2'),
(255, 59, 'boost-up_wp-img', ''),
(256, 59, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(257, 59, 'boost-up_wp-subtitle', 'Подзаголовок'),
(258, 59, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(259, 59, 'prymary-button_wp-but', 'Отправить'),
(260, 59, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(261, 59, 'primary-button_wp-but', 'Отправить'),
(262, 59, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(263, 60, '_wp_attached_file', '2019/12/photo_2019-11-21_12-24-37.jpg'),
(264, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:755;s:4:\"file\";s:37:\"2019/12/photo_2019-11-21_12-24-37.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"photo_2019-11-21_12-24-37-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"photo_2019-11-21_12-24-37-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 61, 'title-banner', 'Заголовок'),
(266, 61, '_title-banner', 'field_5e010b759acd2'),
(267, 61, 'boost-up-title', 'Заголовок'),
(268, 61, '_boost-up-title', 'field_5e010b759acd2'),
(269, 61, 'boost-up-img', ''),
(270, 61, '_boost-up-img', 'field_5e012de4bc7e7'),
(271, 61, 'boost-up-subtitle', 'Подзаголовок'),
(272, 61, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(273, 61, 'boost-up_wp-title', 'Заголовок'),
(274, 61, '_boost-up_wp-title', 'field_5e010b759acd2'),
(275, 61, 'boost-up_wp-img', '60'),
(276, 61, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(277, 61, 'boost-up_wp-subtitle', 'Подзаголовок'),
(278, 61, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(279, 61, 'prymary-button_wp-but', 'Отправить'),
(280, 61, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(281, 61, 'primary-button_wp-but', 'Отправить'),
(282, 61, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(317, 65, '_wp_trash_meta_status', 'publish'),
(318, 65, '_wp_trash_meta_time', '1577430810'),
(319, 66, '_wp_trash_meta_status', 'publish'),
(320, 66, '_wp_trash_meta_time', '1577430939'),
(321, 67, '_wp_trash_meta_status', 'publish'),
(322, 67, '_wp_trash_meta_time', '1577430956'),
(323, 68, '_wp_trash_meta_status', 'publish'),
(324, 68, '_wp_trash_meta_time', '1577431589'),
(325, 69, '_wp_trash_meta_status', 'publish'),
(326, 69, '_wp_trash_meta_time', '1577431618'),
(327, 70, '_wp_trash_meta_status', 'publish'),
(328, 70, '_wp_trash_meta_time', '1577432162'),
(329, 71, '_edit_lock', '1577433393:1'),
(330, 71, '_wp_trash_meta_status', 'publish'),
(331, 71, '_wp_trash_meta_time', '1577433422'),
(332, 72, '_wp_trash_meta_status', 'publish'),
(333, 72, '_wp_trash_meta_time', '1577437427'),
(334, 73, '_wp_trash_meta_status', 'publish'),
(335, 73, '_wp_trash_meta_time', '1577437801'),
(336, 74, '_wp_attached_file', '2019/12/notebook.png'),
(337, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:648;s:6:\"height\";i:344;s:4:\"file\";s:20:\"2019/12/notebook.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x159.png\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 75, 'title-banner', 'Заголовок'),
(339, 75, '_title-banner', 'field_5e010b759acd2'),
(340, 75, 'boost-up-title', 'Заголовок'),
(341, 75, '_boost-up-title', 'field_5e010b759acd2'),
(342, 75, 'boost-up-img', ''),
(343, 75, '_boost-up-img', 'field_5e012de4bc7e7'),
(344, 75, 'boost-up-subtitle', 'Подзаголовок'),
(345, 75, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(346, 75, 'boost-up_wp-title', 'Заголовок'),
(347, 75, '_boost-up_wp-title', 'field_5e010b759acd2'),
(348, 75, 'boost-up_wp-img', '74'),
(349, 75, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(350, 75, 'boost-up_wp-subtitle', 'Подзаголовок'),
(351, 75, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(352, 75, 'prymary-button_wp-but', 'Отправить'),
(353, 75, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(354, 75, 'primary-button_wp-but', 'Отправить'),
(355, 75, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(364, 82, '_edit_last', '1'),
(365, 82, '_edit_lock', '1577550919:1'),
(368, 86, '_wp_attached_file', '2019/12/user4.png'),
(369, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:121;s:4:\"file\";s:17:\"2019/12/user4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 82, '_thumbnail_id', '86'),
(372, 87, '_edit_last', '1'),
(373, 87, '_edit_lock', '1577474084:1'),
(374, 88, '_wp_attached_file', '2019/12/user3.png'),
(375, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:121;s:4:\"file\";s:17:\"2019/12/user3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 87, '_thumbnail_id', '88'),
(379, 90, '_edit_last', '1'),
(380, 90, '_edit_lock', '1577551465:1'),
(381, 91, '_wp_attached_file', '2019/12/user2.png'),
(382, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:121;s:4:\"file\";s:17:\"2019/12/user2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 90, '_thumbnail_id', '91'),
(385, 93, '_edit_last', '1'),
(386, 93, '_edit_lock', '1577731861:1'),
(387, 94, '_wp_attached_file', '2019/12/user1.png'),
(388, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:121;s:4:\"file\";s:17:\"2019/12/user1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 93, '_thumbnail_id', '94'),
(394, 93, '_pt_splitter_output', '[[13,false,false]]'),
(400, 40, 'our-services_wp-title', ''),
(401, 40, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(402, 103, 'title-banner', 'Заголовок'),
(403, 103, '_title-banner', 'field_5e010b759acd2'),
(404, 103, 'boost-up-title', 'Заголовок'),
(405, 103, '_boost-up-title', 'field_5e010b759acd2'),
(406, 103, 'boost-up-img', ''),
(407, 103, '_boost-up-img', 'field_5e012de4bc7e7'),
(408, 103, 'boost-up-subtitle', 'Подзаголовок'),
(409, 103, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(410, 103, 'boost-up_wp-title', 'Заголовок'),
(411, 103, '_boost-up_wp-title', 'field_5e010b759acd2'),
(412, 103, 'boost-up_wp-img', '74'),
(413, 103, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(414, 103, 'boost-up_wp-subtitle', 'Подзаголовок'),
(415, 103, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(416, 103, 'prymary-button_wp-but', 'Отправить'),
(417, 103, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(418, 103, 'primary-button_wp-but', 'Отправить'),
(419, 103, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(420, 103, 'our-services_wp-title', 'Заголовок'),
(421, 103, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(422, 40, 'our-services_wp-subtitle', ''),
(423, 40, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(424, 105, 'title-banner', 'Заголовок'),
(425, 105, '_title-banner', 'field_5e010b759acd2'),
(426, 105, 'boost-up-title', 'Заголовок'),
(427, 105, '_boost-up-title', 'field_5e010b759acd2'),
(428, 105, 'boost-up-img', ''),
(429, 105, '_boost-up-img', 'field_5e012de4bc7e7'),
(430, 105, 'boost-up-subtitle', 'Подзаголовок'),
(431, 105, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(432, 105, 'boost-up_wp-title', 'Заголовок'),
(433, 105, '_boost-up_wp-title', 'field_5e010b759acd2'),
(434, 105, 'boost-up_wp-img', '74'),
(435, 105, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(436, 105, 'boost-up_wp-subtitle', ''),
(437, 105, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(438, 105, 'prymary-button_wp-but', 'Отправить'),
(439, 105, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(440, 105, 'primary-button_wp-but', ''),
(441, 105, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(442, 105, 'our-services_wp-title', ''),
(443, 105, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(444, 105, 'our-services_wp-subtitle', ''),
(445, 105, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(446, 106, 'title-banner', 'Заголовок'),
(447, 106, '_title-banner', 'field_5e010b759acd2'),
(448, 106, 'boost-up-title', 'Заголовок'),
(449, 106, '_boost-up-title', 'field_5e010b759acd2'),
(450, 106, 'boost-up-img', ''),
(451, 106, '_boost-up-img', 'field_5e012de4bc7e7'),
(452, 106, 'boost-up-subtitle', 'Подзаголовок'),
(453, 106, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(454, 106, 'boost-up_wp-title', ''),
(455, 106, '_boost-up_wp-title', 'field_5e010b759acd2'),
(456, 106, 'boost-up_wp-img', '74'),
(457, 106, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(458, 106, 'boost-up_wp-subtitle', ''),
(459, 106, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(460, 106, 'prymary-button_wp-but', 'Отправить'),
(461, 106, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(462, 106, 'primary-button_wp-but', ''),
(463, 106, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(464, 106, 'our-services_wp-title', ''),
(465, 106, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(466, 106, 'our-services_wp-subtitle', ''),
(467, 106, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(468, 107, 'title-banner', 'Заголовок'),
(469, 107, '_title-banner', 'field_5e010b759acd2'),
(470, 107, 'boost-up-title', 'Заголовок'),
(471, 107, '_boost-up-title', 'field_5e010b759acd2'),
(472, 107, 'boost-up-img', ''),
(473, 107, '_boost-up-img', 'field_5e012de4bc7e7'),
(474, 107, 'boost-up-subtitle', 'Подзаголовок'),
(475, 107, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(476, 107, 'boost-up_wp-title', ''),
(477, 107, '_boost-up_wp-title', 'field_5e010b759acd2'),
(478, 107, 'boost-up_wp-img', '74'),
(479, 107, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(480, 107, 'boost-up_wp-subtitle', ''),
(481, 107, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(482, 107, 'prymary-button_wp-but', 'Отправить'),
(483, 107, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(484, 107, 'primary-button_wp-but', ''),
(485, 107, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(486, 107, 'our-services_wp-title', 'dfdffdf'),
(487, 107, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(488, 107, 'our-services_wp-subtitle', 'dfdf'),
(489, 107, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(502, 109, 'title-banner', 'Заголовок'),
(503, 109, '_title-banner', 'field_5e010b759acd2'),
(504, 109, 'boost-up-title', 'Заголовок'),
(505, 109, '_boost-up-title', 'field_5e010b759acd2'),
(506, 109, 'boost-up-img', ''),
(507, 109, '_boost-up-img', 'field_5e012de4bc7e7'),
(508, 109, 'boost-up-subtitle', 'Подзаголовок'),
(509, 109, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(510, 109, 'boost-up_wp-title', ''),
(511, 109, '_boost-up_wp-title', 'field_5e010b759acd2'),
(512, 109, 'boost-up_wp-img', '74'),
(513, 109, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(514, 109, 'boost-up_wp-subtitle', ''),
(515, 109, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(516, 109, 'prymary-button_wp-but', 'Отправить'),
(517, 109, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(518, 109, 'primary-button_wp-but', ''),
(519, 109, '_primary-button_wp-but', 'field_5e03ce0a2098e'),
(520, 109, 'our-services_wp-title', ''),
(521, 109, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(522, 109, 'our-services_wp-subtitle', ''),
(523, 109, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(524, 112, '_edit_last', '1'),
(525, 112, '_edit_lock', '1577885896:1'),
(528, 115, '_wp_trash_meta_status', 'publish'),
(529, 115, '_wp_trash_meta_time', '1577636533'),
(530, 116, '_wp_trash_meta_status', 'publish'),
(531, 116, '_wp_trash_meta_time', '1577636577'),
(532, 117, '_wp_trash_meta_status', 'publish'),
(533, 117, '_wp_trash_meta_time', '1577636712'),
(534, 118, '_wp_trash_meta_status', 'publish'),
(535, 118, '_wp_trash_meta_time', '1577637238'),
(536, 119, '_wp_trash_meta_status', 'publish'),
(537, 119, '_wp_trash_meta_time', '1577637263'),
(538, 120, '_wp_trash_meta_status', 'publish'),
(539, 120, '_wp_trash_meta_time', '1577638317'),
(540, 121, '_wp_trash_meta_status', 'publish'),
(541, 121, '_wp_trash_meta_time', '1577638340'),
(542, 122, '_wp_trash_meta_status', 'publish'),
(543, 122, '_wp_trash_meta_time', '1577638517'),
(544, 123, '_wp_trash_meta_status', 'publish'),
(545, 123, '_wp_trash_meta_time', '1577638587'),
(546, 124, '_edit_last', '1'),
(547, 124, '_edit_lock', '1577640856:1'),
(548, 124, '_wp_trash_meta_status', 'publish'),
(549, 124, '_wp_trash_meta_time', '1577641004'),
(550, 124, '_wp_desired_post_slug', 'group_5e08e3db1d7ed'),
(551, 125, '_wp_trash_meta_status', 'publish'),
(552, 125, '_wp_trash_meta_time', '1577641005'),
(553, 125, '_wp_desired_post_slug', 'field_5e08e41f06f8b'),
(558, 112, 'inline_featured_image', '0'),
(576, 148, '_wp_attached_file', '2019/12/clock-regular-blue.svg'),
(577, 112, '_thumbnail_id', '148'),
(579, 149, 'inline_featured_image', '0'),
(580, 149, '_edit_last', '1'),
(581, 149, '_edit_lock', '1577878690:1'),
(582, 150, '_wp_attached_file', '2020/01/graduation-cap-solid-blue.svg'),
(583, 149, '_thumbnail_id', '150'),
(585, 152, '_wp_attached_file', '2020/01/chart-pie-solid-blue.svg'),
(586, 153, 'inline_featured_image', '0'),
(587, 153, '_edit_last', '1'),
(588, 153, '_edit_lock', '1577881744:1'),
(589, 153, '_thumbnail_id', '152'),
(591, 155, 'inline_featured_image', '0'),
(592, 155, '_edit_last', '1'),
(593, 155, '_edit_lock', '1577886067:1'),
(594, 156, '_wp_attached_file', '2020/01/cog-solid-blue.svg'),
(595, 155, '_thumbnail_id', '156'),
(606, 161, 'inline_featured_image', '0'),
(607, 161, '_edit_last', '1'),
(608, 161, '_edit_lock', '1577984686:1'),
(612, 164, '_wp_attached_file', '2020/01/rocket-solid-blue-1.svg'),
(613, 161, '_thumbnail_id', '164'),
(615, 165, 'inline_featured_image', '0'),
(616, 165, '_edit_last', '1'),
(617, 165, '_edit_lock', '1577907536:1'),
(620, 168, '_wp_attached_file', '2020/01/dollar-sign-solid-blue.svg'),
(621, 165, '_thumbnail_id', '168'),
(627, 171, '_edit_last', '1'),
(628, 171, '_edit_lock', '1577986363:1'),
(629, 171, '_wp_trash_meta_status', 'publish'),
(630, 171, '_wp_trash_meta_time', '1577986511'),
(631, 171, '_wp_desired_post_slug', 'group_5e0e297dc7199'),
(632, 172, '_wp_trash_meta_status', 'publish'),
(633, 172, '_wp_trash_meta_time', '1577986511'),
(634, 172, '_wp_desired_post_slug', 'field_5e0e29bed41c3'),
(635, 40, 'about-us_wp-img', '178'),
(636, 40, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(637, 40, 'about-us_wp-title', ''),
(638, 40, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(639, 40, 'about-us_wp-subtitle', ''),
(640, 40, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(641, 40, 'choos-price_wp-title', ''),
(642, 40, '_choos-price_wp-title', 'field_5e08ec5306579'),
(643, 40, 'choos-price_wp-subtitle', ''),
(644, 40, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(645, 40, 'how-it-works_wp-title', ''),
(646, 40, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(647, 40, 'how-it-works_wp-subtitle', ''),
(648, 40, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(649, 40, 'happy-clients_wp-title', ''),
(650, 40, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(651, 40, 'happy-clients_wp-subtitle', ''),
(652, 40, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(653, 40, 'news-letter_wp-title', ''),
(654, 40, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(655, 40, 'news-letter_wp-subtitle', ''),
(656, 40, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(657, 174, 'title-banner', 'Заголовок'),
(658, 174, '_title-banner', 'field_5e010b759acd2'),
(659, 174, 'boost-up-title', 'Заголовок'),
(660, 174, '_boost-up-title', 'field_5e010b759acd2'),
(661, 174, 'boost-up-img', ''),
(662, 174, '_boost-up-img', 'field_5e012de4bc7e7'),
(663, 174, 'boost-up-subtitle', 'Подзаголовок'),
(664, 174, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(665, 174, 'boost-up_wp-title', ''),
(666, 174, '_boost-up_wp-title', 'field_5e010b759acd2'),
(667, 174, 'boost-up_wp-img', '74'),
(668, 174, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(669, 174, 'boost-up_wp-subtitle', ''),
(670, 174, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(671, 174, 'prymary-button_wp-but', 'Отправить'),
(672, 174, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(673, 174, 'primary-button_wp-but', ''),
(674, 174, '_primary-button_wp-but', 'field_5e0906de56268'),
(675, 174, 'our-services_wp-title', ''),
(676, 174, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(677, 174, 'our-services_wp-subtitle', ''),
(678, 174, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(679, 174, 'about-us_wp-img', '60'),
(680, 174, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(681, 174, 'about-us_wp-title', ''),
(682, 174, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(683, 174, 'about-us_wp-subtitle', ''),
(684, 174, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(685, 174, 'choos-price_wp-title', ''),
(686, 174, '_choos-price_wp-title', 'field_5e08ec5306579'),
(687, 174, 'choos-price_wp-subtitle', ''),
(688, 174, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(689, 174, 'how-it-works_wp-title', ''),
(690, 174, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(691, 174, 'how-it-works_wp-subtitle', ''),
(692, 174, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(693, 174, 'happy-clients_wp-title', ''),
(694, 174, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(695, 174, 'happy-clients_wp-subtitle', ''),
(696, 174, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(697, 174, 'news-letter_wp-title', ''),
(698, 174, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(699, 174, 'news-letter_wp-subtitle', ''),
(700, 174, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(701, 40, 'inline_featured_image', '0'),
(702, 175, '_wp_attached_file', '2020/01/layer-27.png'),
(703, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:623;s:4:\"file\";s:20:\"2020/01/layer-27.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"layer-27-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"layer-27-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"layer-27-768x563.png\";s:5:\"width\";i:768;s:6:\"height\";i:563;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 176, 'title-banner', 'Заголовок'),
(705, 176, '_title-banner', 'field_5e010b759acd2'),
(706, 176, 'boost-up-title', 'Заголовок'),
(707, 176, '_boost-up-title', 'field_5e010b759acd2'),
(708, 176, 'boost-up-img', ''),
(709, 176, '_boost-up-img', 'field_5e012de4bc7e7'),
(710, 176, 'boost-up-subtitle', 'Подзаголовок'),
(711, 176, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(712, 176, 'boost-up_wp-title', ''),
(713, 176, '_boost-up_wp-title', 'field_5e010b759acd2'),
(714, 176, 'boost-up_wp-img', '74'),
(715, 176, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(716, 176, 'boost-up_wp-subtitle', ''),
(717, 176, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(718, 176, 'prymary-button_wp-but', 'Отправить'),
(719, 176, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(720, 176, 'primary-button_wp-but', ''),
(721, 176, '_primary-button_wp-but', 'field_5e0906de56268'),
(722, 176, 'our-services_wp-title', ''),
(723, 176, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(724, 176, 'our-services_wp-subtitle', ''),
(725, 176, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(726, 176, 'about-us_wp-img', '175'),
(727, 176, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(728, 176, 'about-us_wp-title', ''),
(729, 176, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(730, 176, 'about-us_wp-subtitle', ''),
(731, 176, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(732, 176, 'choos-price_wp-title', ''),
(733, 176, '_choos-price_wp-title', 'field_5e08ec5306579'),
(734, 176, 'choos-price_wp-subtitle', ''),
(735, 176, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(736, 176, 'how-it-works_wp-title', ''),
(737, 176, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(738, 176, 'how-it-works_wp-subtitle', ''),
(739, 176, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(740, 176, 'happy-clients_wp-title', ''),
(741, 176, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(742, 176, 'happy-clients_wp-subtitle', ''),
(743, 176, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(744, 176, 'news-letter_wp-title', ''),
(745, 176, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(746, 176, 'news-letter_wp-subtitle', ''),
(747, 176, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(748, 177, 'title-banner', 'Заголовок'),
(749, 177, '_title-banner', 'field_5e010b759acd2'),
(750, 177, 'boost-up-title', 'Заголовок'),
(751, 177, '_boost-up-title', 'field_5e010b759acd2'),
(752, 177, 'boost-up-img', ''),
(753, 177, '_boost-up-img', 'field_5e012de4bc7e7'),
(754, 177, 'boost-up-subtitle', 'Подзаголовок'),
(755, 177, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(756, 177, 'boost-up_wp-title', ''),
(757, 177, '_boost-up_wp-title', 'field_5e010b759acd2'),
(758, 177, 'boost-up_wp-img', '74'),
(759, 177, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(760, 177, 'boost-up_wp-subtitle', ''),
(761, 177, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(762, 177, 'prymary-button_wp-but', 'Отправить'),
(763, 177, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(764, 177, 'primary-button_wp-but', ''),
(765, 177, '_primary-button_wp-but', 'field_5e0906de56268'),
(766, 177, 'our-services_wp-title', ''),
(767, 177, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(768, 177, 'our-services_wp-subtitle', ''),
(769, 177, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(770, 177, 'about-us_wp-img', '175'),
(771, 177, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(772, 177, 'about-us_wp-title', ''),
(773, 177, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(774, 177, 'about-us_wp-subtitle', ''),
(775, 177, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(776, 177, 'choos-price_wp-title', ''),
(777, 177, '_choos-price_wp-title', 'field_5e08ec5306579'),
(778, 177, 'choos-price_wp-subtitle', ''),
(779, 177, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(780, 177, 'how-it-works_wp-title', ''),
(781, 177, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(782, 177, 'how-it-works_wp-subtitle', ''),
(783, 177, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(784, 177, 'happy-clients_wp-title', ''),
(785, 177, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(786, 177, 'happy-clients_wp-subtitle', ''),
(787, 177, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(788, 177, 'news-letter_wp-title', ''),
(789, 177, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(790, 177, 'news-letter_wp-subtitle', ''),
(791, 177, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(792, 178, '_wp_attached_file', '2020/01/builders.jpg'),
(793, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:755;s:4:\"file\";s:20:\"2020/01/builders.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"builders-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"builders-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(794, 179, 'title-banner', 'Заголовок'),
(795, 179, '_title-banner', 'field_5e010b759acd2'),
(796, 179, 'boost-up-title', 'Заголовок'),
(797, 179, '_boost-up-title', 'field_5e010b759acd2'),
(798, 179, 'boost-up-img', ''),
(799, 179, '_boost-up-img', 'field_5e012de4bc7e7'),
(800, 179, 'boost-up-subtitle', 'Подзаголовок'),
(801, 179, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(802, 179, 'boost-up_wp-title', ''),
(803, 179, '_boost-up_wp-title', 'field_5e010b759acd2'),
(804, 179, 'boost-up_wp-img', '74'),
(805, 179, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(806, 179, 'boost-up_wp-subtitle', ''),
(807, 179, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(808, 179, 'prymary-button_wp-but', 'Отправить'),
(809, 179, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(810, 179, 'primary-button_wp-but', ''),
(811, 179, '_primary-button_wp-but', 'field_5e0906de56268'),
(812, 179, 'our-services_wp-title', ''),
(813, 179, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(814, 179, 'our-services_wp-subtitle', ''),
(815, 179, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(816, 179, 'about-us_wp-img', '178'),
(817, 179, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(818, 179, 'about-us_wp-title', ''),
(819, 179, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(820, 179, 'about-us_wp-subtitle', ''),
(821, 179, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(822, 179, 'choos-price_wp-title', ''),
(823, 179, '_choos-price_wp-title', 'field_5e08ec5306579'),
(824, 179, 'choos-price_wp-subtitle', ''),
(825, 179, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(826, 179, 'how-it-works_wp-title', ''),
(827, 179, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(828, 179, 'how-it-works_wp-subtitle', ''),
(829, 179, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(830, 179, 'happy-clients_wp-title', ''),
(831, 179, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(832, 179, 'happy-clients_wp-subtitle', ''),
(833, 179, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(834, 179, 'news-letter_wp-title', ''),
(835, 179, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(836, 179, 'news-letter_wp-subtitle', ''),
(837, 179, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(838, 180, 'inline_featured_image', '0'),
(839, 180, '_edit_last', '1'),
(840, 180, '_edit_lock', '1578003625:1'),
(844, 183, 'inline_featured_image', '0'),
(845, 183, '_edit_last', '1'),
(846, 183, '_edit_lock', '1578003643:1'),
(855, 190, 'inline_featured_image', '0'),
(856, 190, '_edit_last', '1'),
(857, 190, '_edit_lock', '1578486169:1'),
(861, 190, '_wp_old_date', '2020-01-02'),
(865, 194, '_wp_attached_file', '2020/01/thumbs-up-regular-blue.svg'),
(868, 196, '_wp_attached_file', '2020/01/headphones-solid-blue.svg'),
(869, 197, '_wp_attached_file', '2020/01/unlock-solid-blue.svg'),
(870, 198, '_wp_attached_file', '2020/01/cloud-upload-alt-solid-blue.svg'),
(875, 180, '_thumbnail_id', '196'),
(877, 183, '_thumbnail_id', '197'),
(879, 190, '_thumbnail_id', '198'),
(881, 200, 'inline_featured_image', '0'),
(882, 201, '_wp_attached_file', '2020/01/arrow.png'),
(883, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:27;s:4:\"file\";s:17:\"2020/01/arrow.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(884, 40, 'how-it-works_wp-arrow', '203'),
(885, 40, '_how-it-works_wp-arrow', 'field_5e120ef19776f'),
(886, 202, 'title-banner', 'Заголовок'),
(887, 202, '_title-banner', 'field_5e010b759acd2'),
(888, 202, 'boost-up-title', 'Заголовок'),
(889, 202, '_boost-up-title', 'field_5e010b759acd2'),
(890, 202, 'boost-up-img', ''),
(891, 202, '_boost-up-img', 'field_5e012de4bc7e7'),
(892, 202, 'boost-up-subtitle', 'Подзаголовок'),
(893, 202, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(894, 202, 'boost-up_wp-title', ''),
(895, 202, '_boost-up_wp-title', 'field_5e010b759acd2'),
(896, 202, 'boost-up_wp-img', '74'),
(897, 202, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(898, 202, 'boost-up_wp-subtitle', ''),
(899, 202, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(900, 202, 'prymary-button_wp-but', 'Отправить'),
(901, 202, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(902, 202, 'primary-button_wp-but', ''),
(903, 202, '_primary-button_wp-but', 'field_5e0906de56268'),
(904, 202, 'our-services_wp-title', ''),
(905, 202, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(906, 202, 'our-services_wp-subtitle', ''),
(907, 202, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(908, 202, 'about-us_wp-img', '178'),
(909, 202, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(910, 202, 'about-us_wp-title', ''),
(911, 202, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(912, 202, 'about-us_wp-subtitle', ''),
(913, 202, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(914, 202, 'choos-price_wp-title', ''),
(915, 202, '_choos-price_wp-title', 'field_5e08ec5306579'),
(916, 202, 'choos-price_wp-subtitle', ''),
(917, 202, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(918, 202, 'how-it-works_wp-title', ''),
(919, 202, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(920, 202, 'how-it-works_wp-subtitle', ''),
(921, 202, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(922, 202, 'happy-clients_wp-title', ''),
(923, 202, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(924, 202, 'happy-clients_wp-subtitle', ''),
(925, 202, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(926, 202, 'news-letter_wp-title', ''),
(927, 202, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(928, 202, 'news-letter_wp-subtitle', ''),
(929, 202, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(930, 202, 'how-it-works_wp-arrow', '201'),
(931, 202, '_how-it-works_wp-arrow', 'field_5e120ef19776f'),
(932, 203, '_wp_attached_file', '2020/01/logo.png'),
(933, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:48;s:4:\"file\";s:16:\"2020/01/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(934, 204, 'title-banner', 'Заголовок'),
(935, 204, '_title-banner', 'field_5e010b759acd2'),
(936, 204, 'boost-up-title', 'Заголовок'),
(937, 204, '_boost-up-title', 'field_5e010b759acd2'),
(938, 204, 'boost-up-img', ''),
(939, 204, '_boost-up-img', 'field_5e012de4bc7e7'),
(940, 204, 'boost-up-subtitle', 'Подзаголовок'),
(941, 204, '_boost-up-subtitle', 'field_5e012fb8e9ba0'),
(942, 204, 'boost-up_wp-title', ''),
(943, 204, '_boost-up_wp-title', 'field_5e010b759acd2'),
(944, 204, 'boost-up_wp-img', '74'),
(945, 204, '_boost-up_wp-img', 'field_5e012de4bc7e7'),
(946, 204, 'boost-up_wp-subtitle', ''),
(947, 204, '_boost-up_wp-subtitle', 'field_5e012fb8e9ba0'),
(948, 204, 'prymary-button_wp-but', 'Отправить'),
(949, 204, '_prymary-button_wp-but', 'field_5e03ce0a2098e'),
(950, 204, 'primary-button_wp-but', ''),
(951, 204, '_primary-button_wp-but', 'field_5e0906de56268'),
(952, 204, 'our-services_wp-title', ''),
(953, 204, '_our-services_wp-title', 'field_5e07a3e1ac30d'),
(954, 204, 'our-services_wp-subtitle', ''),
(955, 204, '_our-services_wp-subtitle', 'field_5e07a6fbd1ecb'),
(956, 204, 'about-us_wp-img', '178'),
(957, 204, '_about-us_wp-img', 'field_5e0e29dbe209a'),
(958, 204, 'about-us_wp-title', ''),
(959, 204, '_about-us_wp-title', 'field_5e08e4d2702a4'),
(960, 204, 'about-us_wp-subtitle', ''),
(961, 204, '_about-us_wp-subtitle', 'field_5e08eb21702a5'),
(962, 204, 'choos-price_wp-title', ''),
(963, 204, '_choos-price_wp-title', 'field_5e08ec5306579'),
(964, 204, 'choos-price_wp-subtitle', ''),
(965, 204, '_choos-price_wp-subtitle', 'field_5e08ee8ce4b61'),
(966, 204, 'how-it-works_wp-title', ''),
(967, 204, '_how-it-works_wp-title', 'field_5e08eebbe4b62'),
(968, 204, 'how-it-works_wp-subtitle', ''),
(969, 204, '_how-it-works_wp-subtitle', 'field_5e08f34020bd9'),
(970, 204, 'happy-clients_wp-title', ''),
(971, 204, '_happy-clients_wp-title', 'field_5e08f64f28b1d'),
(972, 204, 'happy-clients_wp-subtitle', ''),
(973, 204, '_happy-clients_wp-subtitle', 'field_5e08fe43a7af0'),
(974, 204, 'news-letter_wp-title', ''),
(975, 204, '_news-letter_wp-title', 'field_5e0903b6a7af1'),
(976, 204, 'news-letter_wp-subtitle', ''),
(977, 204, '_news-letter_wp-subtitle', 'field_5e0905c5335e5'),
(978, 204, 'how-it-works_wp-arrow', '203'),
(979, 204, '_how-it-works_wp-arrow', 'field_5e120ef19776f'),
(983, 205, 'inline_featured_image', '0'),
(984, 205, '_edit_last', '1'),
(985, 205, '_edit_lock', '1578486333:1'),
(987, 205, '_thumbnail_id', '194');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(10, 1, '2019-12-22 15:29:54', '2019-12-22 12:29:54', 'Привет!', 'Contac us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-12-27 18:49:33', '2019-12-27 16:49:33', '', 0, 'http://business/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-12-22 15:29:54', '2019-12-22 12:29:54', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-22 15:29:54', '2019-12-22 12:29:54', '', 10, 'http://business/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-12-22 15:31:15', '2019-12-22 12:31:15', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2019-12-22 15:31:15', '2019-12-22 12:31:15', '', 0, 'http://business/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-12-22 15:31:15', '2019-12-22 12:31:15', '', 'Service', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-12-22 15:31:15', '2019-12-22 12:31:15', '', 12, 'http://business/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-22 15:34:41', '2019-12-22 12:34:41', '', 'Contac us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-22 15:34:41', '2019-12-22 12:34:41', '', 10, 'http://business/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-12-22 15:36:05', '2019-12-22 12:36:05', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-12-22 15:39:57', '2019-12-22 12:39:57', '', 0, 'http://business/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-12-22 15:36:05', '2019-12-22 12:36:05', '', 'About US', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-22 15:36:05', '2019-12-22 12:36:05', '', 16, 'http://business/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-12-22 15:36:45', '2019-12-22 12:36:45', '', 'Pricing Table', '', 'publish', 'closed', 'closed', '', 'pricing-table', '', '', '2019-12-22 15:36:45', '2019-12-22 12:36:45', '', 0, 'http://business/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-12-22 15:36:45', '2019-12-22 12:36:45', '', 'Pricing Table', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-22 15:36:45', '2019-12-22 12:36:45', '', 18, 'http://business/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-12-22 15:38:26', '2019-12-22 12:38:26', '', 'Happy Clients', '', 'publish', 'closed', 'closed', '', 'happy-clients', '', '', '2019-12-22 15:38:32', '2019-12-22 12:38:32', '', 0, 'http://business/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-12-22 15:38:26', '2019-12-22 12:38:26', '', 'Happy Clients', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-12-22 15:38:26', '2019-12-22 12:38:26', '', 21, 'http://business/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-12-22 15:39:37', '2019-12-22 12:39:37', '', 'How it work', '', 'publish', 'closed', 'closed', '', 'how-it-work', '', '', '2019-12-22 15:39:37', '2019-12-22 12:39:37', '', 0, 'http://business/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-12-22 15:39:37', '2019-12-22 12:39:37', '', 'How it work', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-12-22 15:39:37', '2019-12-22 12:39:37', '', 23, 'http://business/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-12-22 15:39:57', '2019-12-22 12:39:57', '', 'About us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-22 15:39:57', '2019-12-22 12:39:57', '', 16, 'http://business/16-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-12-22 17:04:10', '2019-12-22 14:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2019-12-23 20:13:13', '2019-12-23 17:13:13', '', 0, 'http://business/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2019-12-22 17:04:10', '2019-12-22 14:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-12-23 20:13:13', '2019-12-23 17:13:13', '', 0, 'http://business/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2019-12-22 17:04:10', '2019-12-22 14:04:10', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-12-23 20:13:14', '2019-12-23 17:13:14', '', 0, 'http://business/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2019-12-22 17:04:11', '2019-12-22 14:04:11', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-12-23 20:13:14', '2019-12-23 17:13:14', '', 0, 'http://business/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2019-12-22 17:04:11', '2019-12-22 14:04:11', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-12-23 20:13:14', '2019-12-23 17:13:14', '', 0, 'http://business/?p=31', 6, 'nav_menu_item', '', 0),
(32, 1, '2019-12-22 17:04:11', '2019-12-22 14:04:11', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-12-23 20:13:14', '2019-12-23 17:13:14', '', 0, 'http://business/?p=32', 7, 'nav_menu_item', '', 0),
(40, 1, '2019-12-23 20:10:03', '2019-12-23 17:10:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-01-05 19:15:39', '2020-01-05 17:15:39', '', 0, 'http://business/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-12-23 20:09:59', '2019-12-23 17:09:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-23 20:09:59', '2019-12-23 17:09:59', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-12-23 20:13:13', '2019-12-23 17:13:13', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2019-12-23 20:13:13', '2019-12-23 17:13:13', '', 0, 'http://business/?p=42', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-12-23 21:46:59', '2019-12-23 18:46:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"40\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5e010b6051323', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 0, 'http://business/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2019-12-23 21:46:59', '2019-12-23 18:46:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:18:\"Заголовок\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"boost up\"', 'boost-up_wp-title', 'publish', 'closed', 'closed', '', 'field_5e010b759acd2', '', '', '2020-01-02 20:09:22', '2020-01-02 18:09:22', '', 48, 'http://business/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2019-12-23 23:13:57', '2019-12-23 21:13:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:1200;s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:2;s:10:\"mime_types\";s:0:\"\";}', 'Картинка в секции \"boost up\"', 'boost-up_wp-img', 'publish', 'closed', 'closed', '', 'field_5e012de4bc7e7', '', '', '2020-01-02 20:09:22', '2020-01-02 18:09:22', '', 48, 'http://business/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2019-12-23 23:21:39', '2019-12-23 21:21:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"boost up\"', 'boost-up_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e012fb8e9ba0', '', '', '2020-01-02 20:09:22', '2020-01-02 18:09:22', '', 48, 'http://business/?post_type=acf-field&#038;p=51', 2, 'acf-field', '', 0),
(52, 1, '2019-12-24 09:25:06', '2019-12-24 07:25:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-24 09:25:06', '2019-12-24 07:25:06', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-12-24 09:38:17', '2019-12-24 07:38:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-24 09:38:17', '2019-12-24 07:38:17', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-12-24 09:39:36', '2019-12-24 07:39:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-24 09:39:36', '2019-12-24 07:39:36', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-12-25 22:25:38', '2019-12-25 20:25:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-25 22:25:38', '2019-12-25 20:25:38', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-12-25 23:02:06', '2019-12-25 21:02:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кнопка в секции \"boost up\"', 'boost-up_wp-but', 'publish', 'closed', 'closed', '', 'field_5e03ce0a2098e', '', '', '2020-01-09 13:39:41', '2020-01-09 11:39:41', '', 48, 'http://business/?post_type=acf-field&#038;p=57', 3, 'acf-field', '', 0),
(58, 1, '2019-12-25 23:04:12', '2019-12-25 21:04:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-25 23:04:12', '2019-12-25 21:04:12', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-12-26 09:15:23', '2019-12-26 07:15:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-26 09:15:23', '2019-12-26 07:15:23', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2019-12-26 09:23:30', '2019-12-26 07:23:30', '', 'photo_2019-11-21_12-24-37', '', 'inherit', 'open', 'closed', '', 'photo_2019-11-21_12-24-37', '', '', '2019-12-26 09:23:30', '2019-12-26 07:23:30', '', 40, 'http://business/wp-content/uploads/2019/12/photo_2019-11-21_12-24-37.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-12-26 09:23:56', '2019-12-26 07:23:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-26 09:23:56', '2019-12-26 07:23:56', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-12-27 09:13:24', '2019-12-27 07:13:24', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:13:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eb553ade-2d3f-4c36-878a-13ae0f240069', '', '', '2019-12-27 09:13:24', '2019-12-27 07:13:24', '', 0, 'http://business/eb553ade-2d3f-4c36-878a-13ae0f240069/', 0, 'customize_changeset', '', 0),
(66, 1, '2019-12-27 09:15:39', '2019-12-27 07:15:39', '{\n    \"custom::phone-1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:15:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a19f71bd-f69b-4cda-915f-0db2f38277fb', '', '', '2019-12-27 09:15:39', '2019-12-27 07:15:39', '', 0, 'http://business/a19f71bd-f69b-4cda-915f-0db2f38277fb/', 0, 'customize_changeset', '', 0),
(67, 1, '2019-12-27 09:15:56', '2019-12-27 07:15:56', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:15:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '43f1e0f3-7da9-44f2-a218-0cb597466d26', '', '', '2019-12-27 09:15:56', '2019-12-27 07:15:56', '', 0, 'http://business/43f1e0f3-7da9-44f2-a218-0cb597466d26/', 0, 'customize_changeset', '', 0),
(68, 1, '2019-12-27 09:26:28', '2019-12-27 07:26:28', '{\n    \"custom::phone-2\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:26:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ea50ca9e-fbaa-4545-ad44-51afb6280c78', '', '', '2019-12-27 09:26:28', '2019-12-27 07:26:28', '', 0, 'http://business/ea50ca9e-fbaa-4545-ad44-51afb6280c78/', 0, 'customize_changeset', '', 0),
(69, 1, '2019-12-27 09:26:58', '2019-12-27 07:26:58', '{\n    \"custom::phone-2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:26:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18e5cf3d-b1ad-4c96-b0ab-c2efdd4a98b1', '', '', '2019-12-27 09:26:58', '2019-12-27 07:26:58', '', 0, 'http://business/18e5cf3d-b1ad-4c96-b0ab-c2efdd4a98b1/', 0, 'customize_changeset', '', 0),
(70, 1, '2019-12-27 09:36:02', '2019-12-27 07:36:02', '{\n    \"custom::phone-2\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:36:02\"\n    },\n    \"custom::phone-3\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:36:02\"\n    },\n    \"custom::phone-4\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:36:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b686638f-dc88-4261-8a80-25191db6e521', '', '', '2019-12-27 09:36:02', '2019-12-27 07:36:02', '', 0, 'http://business/b686638f-dc88-4261-8a80-25191db6e521/', 0, 'customize_changeset', '', 0),
(71, 1, '2019-12-27 09:57:01', '2019-12-27 07:57:01', '{\n    \"custom::mail\": {\n        \"value\": \"info@businessface.com\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 07:52:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e4076d8-32f0-44dc-ae41-3d4bb8abe68a', '', '', '2019-12-27 09:57:01', '2019-12-27 07:57:01', '', 0, 'http://business/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2019-12-27 11:03:46', '2019-12-27 09:03:46', '{\n    \"custom::social-3\": {\n        \"value\": \"https://twitter.com/?lang=ru\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 09:03:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e77363a3-2793-48e8-8156-57cb75a804e0', '', '', '2019-12-27 11:03:46', '2019-12-27 09:03:46', '', 0, 'http://business/e77363a3-2793-48e8-8156-57cb75a804e0/', 0, 'customize_changeset', '', 0),
(73, 1, '2019-12-27 11:10:01', '2019-12-27 09:10:01', '{\n    \"custom::social-3\": {\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-27 09:10:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0aa432ac-5ce9-4e32-a689-a9e8aa379470', '', '', '2019-12-27 11:10:01', '2019-12-27 09:10:01', '', 0, 'http://business/0aa432ac-5ce9-4e32-a689-a9e8aa379470/', 0, 'customize_changeset', '', 0),
(74, 1, '2019-12-27 11:23:08', '2019-12-27 09:23:08', '', 'notebook', '', 'inherit', 'open', 'closed', '', 'notebook', '', '', '2019-12-27 11:23:08', '2019-12-27 09:23:08', '', 40, 'http://business/wp-content/uploads/2019/12/notebook.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2019-12-27 11:23:31', '2019-12-27 09:23:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-27 11:23:31', '2019-12-27 09:23:31', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-12-27 18:49:33', '2019-12-27 16:49:33', 'Привет!', 'Contac us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-27 18:49:33', '2019-12-27 16:49:33', '', 10, 'http://business/10-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-12-27 20:19:50', '2019-12-27 18:19:50', 'Привет!', 'Contac us', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2019-12-27 20:19:50', '2019-12-27 18:19:50', '', 10, 'http://business/10-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2019-12-27 21:00:33', '2019-12-27 19:00:33', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'publish', 'open', 'open', '', 'darwin-michle-project-manager', '', '', '2019-12-27 21:22:28', '2019-12-27 19:22:28', '', 0, 'http://business/?p=82', 13, 'post', '', 0),
(83, 1, '2019-12-27 21:00:30', '2019-12-27 19:00:30', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-12-27 21:00:30', '2019-12-27 19:00:30', '', 82, 'http://business/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-12-27 21:04:36', '2019-12-27 19:04:36', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '82-autosave-v1', '', '', '2019-12-27 21:04:36', '2019-12-27 19:04:36', '', 82, 'http://business/82-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2019-12-27 21:05:35', '2019-12-27 19:05:35', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-12-27 21:05:35', '2019-12-27 19:05:35', '', 82, 'http://business/82-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-12-27 21:09:45', '2019-12-27 19:09:45', '', 'user4', '', 'inherit', 'open', 'closed', '', 'user4', '', '', '2019-12-27 21:09:45', '2019-12-27 19:09:45', '', 82, 'http://business/wp-content/uploads/2019/12/user4.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2019-12-27 21:16:52', '2019-12-27 19:16:52', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'MADAM ELISABATH, CREATIVE DIRECTOR', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'publish', 'open', 'open', '', 'madam-elisabath-creative-director', '', '', '2019-12-27 21:17:04', '2019-12-27 19:17:04', '', 0, 'http://business/?p=87', 12, 'post', '', 0),
(88, 1, '2019-12-27 21:16:46', '2019-12-27 19:16:46', '', 'user3', '', 'inherit', 'open', 'closed', '', 'user3', '', '', '2019-12-27 21:16:46', '2019-12-27 19:16:46', '', 87, 'http://business/wp-content/uploads/2019/12/user3.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2019-12-27 21:16:52', '2019-12-27 19:16:52', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'MADAM ELISABATH, CREATIVE DIRECTOR', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2019-12-27 21:16:52', '2019-12-27 19:16:52', '', 87, 'http://business/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-12-27 21:18:18', '2019-12-27 19:18:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'CLIPS ARTER, LIPSUM DIRECTOR', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'publish', 'open', 'open', '', 'clips-arter-lipsum-director', '', '', '2019-12-27 21:18:18', '2019-12-27 19:18:18', '', 0, 'http://business/?p=90', 11, 'post', '', 0),
(91, 1, '2019-12-27 21:18:06', '2019-12-27 19:18:06', '', 'user2', '', 'inherit', 'open', 'closed', '', 'user2', '', '', '2019-12-27 21:18:06', '2019-12-27 19:18:06', '', 90, 'http://business/wp-content/uploads/2019/12/user2.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2019-12-27 21:18:18', '2019-12-27 19:18:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'CLIPS ARTER, LIPSUM DIRECTOR', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2019-12-27 21:18:18', '2019-12-27 19:18:18', '', 90, 'http://business/90-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-12-27 21:21:13', '2019-12-27 19:21:13', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'ZAM CRISTAFR, MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'publish', 'open', 'open', '', 'zam-cristafr-manager', '', '', '2019-12-28 20:15:24', '2019-12-28 18:15:24', '', 0, 'http://business/?p=93', 10, 'post', '', 0),
(94, 1, '2019-12-27 21:20:21', '2019-12-27 19:20:21', '', 'user1', '', 'inherit', 'open', 'closed', '', 'user1', '', '', '2019-12-27 21:20:21', '2019-12-27 19:20:21', '', 93, 'http://business/wp-content/uploads/2019/12/user1.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2019-12-27 21:21:13', '2019-12-27 19:21:13', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'ZAM CRISTAFR, MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-12-27 21:21:13', '2019-12-27 19:21:13', '', 93, 'http://business/93-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-12-27 21:22:07', '2019-12-27 19:22:07', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-12-27 21:22:07', '2019-12-27 19:22:07', '', 82, 'http://business/82-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2019-12-27 21:22:28', '2019-12-27 19:22:28', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'DARWIN MICHLE, PROJECT MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-12-27 21:22:28', '2019-12-27 19:22:28', '', 82, 'http://business/82-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-12-28 20:13:02', '2019-12-28 18:13:02', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'ZAM CRISTAFR, MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type.', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-12-28 20:13:02', '2019-12-28 18:13:02', '', 93, 'http://business/93-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(100, 1, '2019-12-28 20:14:07', '2019-12-28 18:14:07', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'ZAM CRISTAFR, MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took.', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-12-28 20:14:07', '2019-12-28 18:14:07', '', 93, 'http://business/93-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-12-28 20:15:24', '2019-12-28 18:15:24', '<span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i><span class=\"desc\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book.</span> <i class=\"fas fa-quote-left happy-clients__quote\" aria-hidden=\"true\"></i>', 'ZAM CRISTAFR, MANAGER', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrystandard dummy text ever since the 1500s, wen an unknown printer took a galley of type and scrambled to make a type specimen book. ', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-12-28 20:15:24', '2019-12-28 18:15:24', '', 93, 'http://business/93-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-12-28 20:56:55', '2019-12-28 18:56:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"our services\"', 'our-services_wp-title', 'publish', 'closed', 'closed', '', 'field_5e07a3e1ac30d', '', '', '2020-01-02 20:09:23', '2020-01-02 18:09:23', '', 48, 'http://business/?post_type=acf-field&#038;p=102', 4, 'acf-field', '', 0),
(103, 1, '2019-12-28 21:02:44', '2019-12-28 19:02:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-28 21:02:44', '2019-12-28 19:02:44', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-12-28 21:06:24', '2019-12-28 19:06:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"our services\"', 'our-services_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e07a6fbd1ecb', '', '', '2020-01-02 20:09:23', '2020-01-02 18:09:23', '', 48, 'http://business/?post_type=acf-field&#038;p=104', 5, 'acf-field', '', 0),
(105, 1, '2019-12-28 21:29:09', '2019-12-28 19:29:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-28 21:29:09', '2019-12-28 19:29:09', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-12-28 21:29:38', '2019-12-28 19:29:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-28 21:29:38', '2019-12-28 19:29:38', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-12-29 09:40:53', '2019-12-29 07:40:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-29 09:40:53', '2019-12-29 07:40:53', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-12-29 09:41:30', '2019-12-29 07:41:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-12-29 09:41:30', '2019-12-29 07:41:30', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-12-29 09:46:12', '2019-12-29 07:46:12', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'Font-Awesome Icons', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'publish', 'open', 'open', '', 'font-awesome-icons', '', '', '2019-12-31 18:14:13', '2019-12-31 16:14:13', '', 0, 'http://business/?p=112', 9, 'post', '', 0),
(113, 1, '2019-12-29 09:46:12', '2019-12-29 07:46:12', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'Font-Awesome Icons', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-12-29 09:46:12', '2019-12-29 07:46:12', '', 112, 'http://business/112-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-12-29 18:22:12', '2019-12-29 16:22:12', '{\n    \"custom::phone-2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:22:12\"\n    },\n    \"custom::phone-3\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:22:12\"\n    },\n    \"custom::phone-4\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:22:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4abdd1c7-49d6-4674-a7bf-3ceb93c1259b', '', '', '2019-12-29 18:22:12', '2019-12-29 16:22:12', '', 0, 'http://business/4abdd1c7-49d6-4674-a7bf-3ceb93c1259b/', 0, 'customize_changeset', '', 0),
(116, 1, '2019-12-29 18:22:56', '2019-12-29 16:22:56', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:22:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80171e1c-98cb-4454-84a3-2887dd5821e5', '', '', '2019-12-29 18:22:56', '2019-12-29 16:22:56', '', 0, 'http://business/80171e1c-98cb-4454-84a3-2887dd5821e5/', 0, 'customize_changeset', '', 0),
(117, 1, '2019-12-29 18:25:11', '2019-12-29 16:25:11', '{\n    \"custom::phone-2\": {\n        \"value\": \"9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:25:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6037dee3-f666-4734-90a2-922b79c1777a', '', '', '2019-12-29 18:25:11', '2019-12-29 16:25:11', '', 0, 'http://business/6037dee3-f666-4734-90a2-922b79c1777a/', 0, 'customize_changeset', '', 0),
(118, 1, '2019-12-29 18:33:57', '2019-12-29 16:33:57', '{\n    \"custom::phone-1\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:33:57\"\n    },\n    \"custom::phone-2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:33:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '967f6a95-0b05-4db9-ae03-4d0dbac6703d', '', '', '2019-12-29 18:33:57', '2019-12-29 16:33:57', '', 0, 'http://business/967f6a95-0b05-4db9-ae03-4d0dbac6703d/', 0, 'customize_changeset', '', 0),
(119, 1, '2019-12-29 18:34:23', '2019-12-29 16:34:23', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-999 \",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:34:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23f4dc49-234f-44b9-80cc-66f11ccaa15f', '', '', '2019-12-29 18:34:23', '2019-12-29 16:34:23', '', 0, 'http://business/23f4dc49-234f-44b9-80cc-66f11ccaa15f/', 0, 'customize_changeset', '', 0),
(120, 1, '2019-12-29 18:51:57', '2019-12-29 16:51:57', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-999\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:51:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f65eee7e-e08b-4fb8-bfda-e1e66689d8fa', '', '', '2019-12-29 18:51:57', '2019-12-29 16:51:57', '', 0, 'http://business/f65eee7e-e08b-4fb8-bfda-e1e66689d8fa/', 0, 'customize_changeset', '', 0),
(121, 1, '2019-12-29 18:52:20', '2019-12-29 16:52:20', '{\n    \"custom::phone-1\": {\n        \"value\": \"987-9976-9999\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:52:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05529889-a4dc-41f2-a9ba-feab5e84b6a9', '', '', '2019-12-29 18:52:20', '2019-12-29 16:52:20', '', 0, 'http://business/05529889-a4dc-41f2-a9ba-feab5e84b6a9/', 0, 'customize_changeset', '', 0),
(122, 1, '2019-12-29 18:55:16', '2019-12-29 16:55:16', '{\n    \"custom::phone-2\": {\n        \"value\": \"987-9976-9999\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:55:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07f67d10-5e9c-463a-88ef-baa3fe511781', '', '', '2019-12-29 18:55:16', '2019-12-29 16:55:16', '', 0, 'http://business/07f67d10-5e9c-463a-88ef-baa3fe511781/', 0, 'customize_changeset', '', 0),
(123, 1, '2019-12-29 18:56:26', '2019-12-29 16:56:26', '{\n    \"custom::phone-2\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-29 16:56:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c03edbca-8235-4a97-8333-d37a580118fe', '', '', '2019-12-29 18:56:26', '2019-12-29 16:56:26', '', 0, 'http://business/c03edbca-8235-4a97-8333-d37a580118fe/', 0, 'customize_changeset', '', 0),
(124, 1, '2019-12-29 19:36:36', '2019-12-29 17:36:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Заголовок в секции \"о нас\"', 'zagolovok-v-sekcii-o-nas', 'trash', 'closed', 'closed', '', 'group_5e08e3db1d7ed__trashed', '', '', '2019-12-29 19:36:44', '2019-12-29 17:36:44', '', 0, 'http://business/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2019-12-29 19:36:36', '2019-12-29 17:36:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_5e08e41f06f8b__trashed', '', '', '2019-12-29 19:36:45', '2019-12-29 17:36:45', '', 124, 'http://business/?post_type=acf-field&#038;p=125', 0, 'acf-field', '', 0),
(126, 1, '2019-12-29 20:11:17', '2019-12-29 18:11:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"about us\"', 'about-us_wp-title', 'publish', 'closed', 'closed', '', 'field_5e08e4d2702a4', '', '', '2020-01-02 20:09:23', '2020-01-02 18:09:23', '', 48, 'http://business/?post_type=acf-field&#038;p=126', 7, 'acf-field', '', 0),
(127, 1, '2019-12-29 20:11:17', '2019-12-29 18:11:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"about us\"', 'about-us_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e08eb21702a5', '', '', '2020-01-02 20:09:23', '2020-01-02 18:09:23', '', 48, 'http://business/?post_type=acf-field&#038;p=127', 8, 'acf-field', '', 0),
(128, 1, '2019-12-29 20:11:17', '2019-12-29 18:11:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кнопка в секции \"about us\"', 'primary-button_wp-but', 'publish', 'closed', 'closed', '', 'field_5e08ebcd702a6', '', '', '2020-01-09 13:39:41', '2020-01-09 11:39:41', '', 48, 'http://business/?post_type=acf-field&#038;p=128', 9, 'acf-field', '', 0),
(129, 1, '2019-12-29 20:20:33', '2019-12-29 18:20:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"choos your price\"', 'choos-price_wp-title', 'publish', 'closed', 'closed', '', 'field_5e08ec5306579', '', '', '2020-01-02 20:09:23', '2020-01-02 18:09:23', '', 48, 'http://business/?post_type=acf-field&#038;p=129', 10, 'acf-field', '', 0),
(131, 1, '2019-12-29 20:25:16', '2019-12-29 18:25:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"choos your price\"', 'choos-price_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e08ee8ce4b61', '', '', '2020-01-09 22:26:41', '2020-01-09 20:26:41', '', 48, 'http://business/?post_type=acf-field&#038;p=131', 11, 'acf-field', '', 0),
(132, 1, '2019-12-29 20:25:16', '2019-12-29 18:25:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"how it works\"', 'how-it-works_wp-title', 'publish', 'closed', 'closed', '', 'field_5e08eebbe4b62', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&#038;p=132', 20, 'acf-field', '', 0),
(133, 1, '2019-12-29 20:48:23', '2019-12-29 18:48:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"how it works\"', 'how-it-works_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e08f34020bd9', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=133', 21, 'acf-field', '', 0),
(134, 1, '2019-12-29 21:02:05', '2019-12-29 19:02:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"happy clients\"', 'happy-clients_wp-title', 'publish', 'closed', 'closed', '', 'field_5e08f64f28b1d', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=134', 23, 'acf-field', '', 0),
(135, 1, '2019-12-29 21:54:05', '2019-12-29 19:54:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"happy clients\"', 'happy-clients_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e08fe43a7af0', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=135', 24, 'acf-field', '', 0),
(136, 1, '2019-12-29 21:54:05', '2019-12-29 19:54:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок в секции \"newsletter\"', 'news-letter_wp-title', 'publish', 'closed', 'closed', '', 'field_5e0903b6a7af1', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=136', 25, 'acf-field', '', 0),
(137, 1, '2019-12-29 22:00:44', '2019-12-29 20:00:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок в секции \"newsletter\"', 'news-letter_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e0905c5335e5', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=137', 26, 'acf-field', '', 0),
(139, 1, '2019-12-29 22:06:25', '2019-12-29 20:06:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кнопка в секции \"newsletter\"', 'primary-button_wp-but', 'publish', 'closed', 'closed', '', 'field_5e0906de56268', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=139', 27, 'acf-field', '', 0),
(148, 1, '2019-12-31 18:13:55', '2019-12-31 16:13:55', '', 'clock-regular-blue', '', 'inherit', 'open', 'closed', '', 'clock-regular-blue', '', '', '2019-12-31 18:13:55', '2019-12-31 16:13:55', '', 112, 'http://business/wp-content/uploads/2019/12/clock-regular-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(149, 1, '2020-01-01 13:40:31', '2020-01-01 11:40:31', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy.', 'Working Contact form', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un\r\ncover many web sites still in their infancy.', 'publish', 'open', 'open', '', 'working-contact-form', '', '', '2020-01-01 13:40:31', '2020-01-01 11:40:31', '', 0, 'http://business/?p=149', 8, 'post', '', 0),
(150, 1, '2020-01-01 13:40:20', '2020-01-01 11:40:20', '', 'graduation-cap-solid-blue', '', 'inherit', 'open', 'closed', '', 'graduation-cap-solid-blue', '', '', '2020-01-01 13:40:20', '2020-01-01 11:40:20', '', 149, 'http://business/wp-content/uploads/2020/01/graduation-cap-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(151, 1, '2020-01-01 13:40:31', '2020-01-01 11:40:31', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un cover many web sites still in their infancy.', 'Working Contact form', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will un\r\ncover many web sites still in their infancy.', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2020-01-01 13:40:31', '2020-01-01 11:40:31', '', 149, 'http://business/149-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2020-01-01 14:25:01', '2020-01-01 12:25:01', '', 'chart-pie-solid-blue', '', 'inherit', 'open', 'closed', '', 'chart-pie-solid-blue', '', '', '2020-01-01 14:25:01', '2020-01-01 12:25:01', '', 0, 'http://business/wp-content/uploads/2020/01/chart-pie-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(153, 1, '2020-01-01 14:31:23', '2020-01-01 12:31:23', 'Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Friendly Code', 'Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'publish', 'open', 'open', '', 'friendly-code', '', '', '2020-01-01 14:31:23', '2020-01-01 12:31:23', '', 0, 'http://business/?p=153', 7, 'post', '', 0),
(154, 1, '2020-01-01 14:31:23', '2020-01-01 12:31:23', 'Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Friendly Code', 'Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2020-01-01 14:31:23', '2020-01-01 12:31:23', '', 153, 'http://business/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2020-01-01 15:38:08', '2020-01-01 13:38:08', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'Fully Responsive Design', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'publish', 'open', 'open', '', 'fully-responsive-design', '', '', '2020-01-01 15:43:20', '2020-01-01 13:43:20', '', 0, 'http://business/?p=155', 6, 'post', '', 0),
(156, 1, '2020-01-01 15:37:23', '2020-01-01 13:37:23', '', 'cog-solid-blue', '', 'inherit', 'open', 'closed', '', 'cog-solid-blue', '', '', '2020-01-01 15:37:23', '2020-01-01 13:37:23', '', 155, 'http://business/wp-content/uploads/2020/01/cog-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(157, 1, '2020-01-01 15:38:08', '2020-01-01 13:38:08', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'Fully Responsive Design', 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2020-01-01 15:38:08', '2020-01-01 13:38:08', '', 155, 'http://business/155-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2020-01-01 18:06:22', '2020-01-01 16:06:22', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything.', 'Retina Ready icons here', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable.', 'publish', 'open', 'open', '', 'retina-ready-icons-here', '', '', '2020-01-02 19:07:07', '2020-01-02 17:07:07', '', 0, 'http://business/?p=161', 5, 'post', '', 0),
(163, 1, '2020-01-01 18:06:22', '2020-01-01 16:06:22', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything.', 'Retina Ready icons here', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\r\nor randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2020-01-01 18:06:22', '2020-01-01 16:06:22', '', 161, 'http://business/161-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2020-01-01 18:17:07', '2020-01-01 16:17:07', '', 'rocket-solid-blue', '', 'inherit', 'open', 'closed', '', 'rocket-solid-blue-2', '', '', '2020-01-01 18:17:07', '2020-01-01 16:17:07', '', 0, 'http://business/wp-content/uploads/2020/01/rocket-solid-blue-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(165, 1, '2020-01-01 21:35:48', '2020-01-01 19:35:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'Flat trendy landing page Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since \r\nthe 1500s, when an unknown printer.', 'publish', 'open', 'open', '', 'flat-trendy-landing-page-design', '', '', '2020-01-01 21:41:16', '2020-01-01 19:41:16', '', 0, 'http://business/?p=165', 4, 'post', '', 0),
(166, 1, '2020-01-01 21:35:48', '2020-01-01 19:35:48', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.', 'Flat trendy landing page Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since \r\nthe 1500s, when an unknown printer.', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2020-01-01 21:35:48', '2020-01-01 19:35:48', '', 165, 'http://business/165-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2020-01-01 21:41:05', '2020-01-01 19:41:05', '', 'dollar-sign-solid-blue', '', 'inherit', 'open', 'closed', '', 'dollar-sign-solid-blue', '', '', '2020-01-01 21:41:05', '2020-01-01 19:41:05', '', 165, 'http://business/wp-content/uploads/2020/01/dollar-sign-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(170, 1, '2020-01-02 19:07:07', '2020-01-02 17:07:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything.', 'Retina Ready icons here', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour or randomised words which don\'t look even slightly believable.', 'inherit', 'closed', 'closed', '', '161-revision-v1', '', '', '2020-01-02 19:07:07', '2020-01-02 17:07:07', '', 161, 'http://business/161-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2020-01-02 19:35:03', '2020-01-02 17:35:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"40\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Фоновая картинка в секции \"about us\"', 'fonovaya-kartinka-v-sekcii-about-us', 'trash', 'closed', 'closed', '', 'group_5e0e297dc7199__trashed', '', '', '2020-01-02 19:35:11', '2020-01-02 17:35:11', '', 0, 'http://business/?post_type=acf-field-group&#038;p=171', 0, 'acf-field-group', '', 0),
(172, 1, '2020-01-02 19:35:04', '2020-01-02 17:35:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_5e0e29bed41c3__trashed', '', '', '2020-01-02 19:35:12', '2020-01-02 17:35:12', '', 171, 'http://business/?post_type=acf-field&#038;p=172', 0, 'acf-field', '', 0),
(173, 1, '2020-01-02 20:09:23', '2020-01-02 18:09:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фоновое изображение в секции \"about us\"', 'about-us_wp-img', 'publish', 'closed', 'closed', '', 'field_5e0e29dbe209a', '', '', '2020-01-02 21:03:50', '2020-01-02 19:03:50', '', 48, 'http://business/?post_type=acf-field&#038;p=173', 6, 'acf-field', '', 0),
(174, 1, '2020-01-02 20:23:35', '2020-01-02 18:23:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-02 20:23:35', '2020-01-02 18:23:35', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2020-01-02 20:24:21', '2020-01-02 18:24:21', '', 'layer-27', '', 'inherit', 'open', 'closed', '', 'layer-27', '', '', '2020-01-02 20:24:21', '2020-01-02 18:24:21', '', 40, 'http://business/wp-content/uploads/2020/01/layer-27.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2020-01-02 20:24:33', '2020-01-02 18:24:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-02 20:24:33', '2020-01-02 18:24:33', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2020-01-02 20:51:21', '2020-01-02 18:51:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-02 20:51:21', '2020-01-02 18:51:21', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2020-01-02 21:13:04', '2020-01-02 19:13:04', '', 'builders', '', 'inherit', 'open', 'closed', '', 'builders', '', '', '2020-01-02 21:13:04', '2020-01-02 19:13:04', '', 40, 'http://business/wp-content/uploads/2020/01/builders.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(179, 1, '2020-01-02 21:13:13', '2020-01-02 19:13:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-02 21:13:13', '2020-01-02 19:13:13', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2020-01-02 21:36:23', '2020-01-02 19:36:23', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'Step 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'publish', 'open', 'open', '', 'step-1', '', '', '2020-01-03 00:22:47', '2020-01-02 22:22:47', '', 0, 'http://business/?p=180', 0, 'post', '', 0),
(182, 1, '2020-01-02 21:36:23', '2020-01-02 19:36:23', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'Step 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2020-01-02 21:36:23', '2020-01-02 19:36:23', '', 180, 'http://business/180-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2020-01-02 23:46:54', '2020-01-02 21:46:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been..', 'publish', 'open', 'open', '', 'step-2', '', '', '2020-01-03 00:23:03', '2020-01-02 22:23:03', '', 0, 'http://business/?p=183', 1, 'post', '', 0),
(185, 1, '2020-01-02 23:46:54', '2020-01-02 21:46:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been..', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2020-01-02 23:46:54', '2020-01-02 21:46:54', '', 183, 'http://business/183-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2020-01-02 23:49:25', '2020-01-02 21:49:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'Step 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2020-01-02 23:49:25', '2020-01-02 21:49:25', '', 180, 'http://business/180-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2020-01-02 23:49:37', '2020-01-02 21:49:37', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been..', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2020-01-02 23:49:37', '2020-01-02 21:49:37', '', 183, 'http://business/183-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2020-01-02 23:49:46', '2020-01-02 21:49:46', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been..', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2020-01-02 23:49:46', '2020-01-02 21:49:46', '', 183, 'http://business/183-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2020-01-02 23:49:56', '2020-01-02 21:49:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'Step 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2020-01-02 23:49:56', '2020-01-02 21:49:56', '', 180, 'http://business/180-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2020-01-03 00:04:04', '2020-01-02 22:04:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'publish', 'open', 'open', '', 'step-3', '', '', '2020-01-03 00:23:22', '2020-01-02 22:23:22', '', 0, 'http://business/?p=190', 2, 'post', '', 0),
(192, 1, '2020-01-03 00:04:04', '2020-01-02 22:04:04', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.', 'inherit', 'closed', 'closed', '', '190-revision-v1', '', '', '2020-01-03 00:04:04', '2020-01-02 22:04:04', '', 190, 'http://business/190-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2020-01-03 00:12:44', '2020-01-02 22:12:44', '', 'thumbs-up-regular-blue', '', 'inherit', 'open', 'closed', '', 'thumbs-up-regular-blue', '', '', '2020-01-03 00:12:44', '2020-01-02 22:12:44', '', 0, 'http://business/wp-content/uploads/2020/01/thumbs-up-regular-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(196, 1, '2020-01-03 00:20:03', '2020-01-02 22:20:03', '', 'headphones-solid-blue', '', 'inherit', 'open', 'closed', '', 'headphones-solid-blue', '', '', '2020-01-03 00:20:03', '2020-01-02 22:20:03', '', 180, 'http://business/wp-content/uploads/2020/01/headphones-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(197, 1, '2020-01-03 00:20:32', '2020-01-02 22:20:32', '', 'unlock-solid-blue', '', 'inherit', 'open', 'closed', '', 'unlock-solid-blue', '', '', '2020-01-03 00:20:32', '2020-01-02 22:20:32', '', 183, 'http://business/wp-content/uploads/2020/01/unlock-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(198, 1, '2020-01-03 00:21:21', '2020-01-02 22:21:21', '', 'cloud-upload-alt-solid-blue', '', 'inherit', 'open', 'closed', '', 'cloud-upload-alt-solid-blue', '', '', '2020-01-03 00:21:21', '2020-01-02 22:21:21', '', 190, 'http://business/wp-content/uploads/2020/01/cloud-upload-alt-solid-blue.svg', 0, 'attachment', 'image/svg+xml', 0),
(200, 1, '2020-01-05 19:06:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-05 19:06:38', '0000-00-00 00:00:00', '', 0, 'http://business/?p=200', 0, 'post', '', 0),
(201, 1, '2020-01-05 19:14:39', '2020-01-05 17:14:39', '', 'arrow', '', 'inherit', 'open', 'closed', '', 'arrow', '', '', '2020-01-05 19:14:39', '2020-01-05 17:14:39', '', 40, 'http://business/wp-content/uploads/2020/01/arrow.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2020-01-05 19:14:55', '2020-01-05 17:14:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-05 19:14:55', '2020-01-05 17:14:55', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2020-01-05 19:15:32', '2020-01-05 17:15:32', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-01-05 19:15:32', '2020-01-05 17:15:32', '', 40, 'http://business/wp-content/uploads/2020/01/logo.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2020-01-05 19:15:39', '2020-01-05 17:15:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-05 19:15:39', '2020-01-05 17:15:39', '', 40, 'http://business/40-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2020-01-08 14:23:51', '2020-01-08 12:23:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 4', 'Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'publish', 'open', 'open', '', 'step-4', '', '', '2020-01-08 14:25:32', '2020-01-08 12:25:32', '', 0, 'http://business/?p=205', 3, 'post', '', 0),
(206, 1, '2020-01-08 14:23:51', '2020-01-08 12:23:51', '', 'Step 4', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2020-01-08 14:23:51', '2020-01-08 12:23:51', '', 205, 'http://business/205-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2020-01-08 14:25:32', '2020-01-08 12:25:32', 'Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'Step 4', 'Lorem Ipsum has been. Lorem Ipsum is simply dummy text of the printing and typesetting ind ustry. Lorem Ipsum has been.', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2020-01-08 14:25:32', '2020-01-08 12:25:32', '', 205, 'http://business/205-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2020-01-09 13:39:41', '2020-01-09 11:39:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кнопка в секции \"how it works\"', 'how-it-works_wp-but', 'publish', 'closed', 'closed', '', 'field_5e15cc6263ad7', '', '', '2020-01-09 22:26:43', '2020-01-09 20:26:43', '', 48, 'http://business/?post_type=acf-field&#038;p=208', 22, 'acf-field', '', 0),
(209, 1, '2020-01-09 13:39:41', '2020-01-09 11:39:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'План в секции \"choos your price\"', 'choos-price-name-top_wp-title', 'publish', 'closed', 'closed', '', 'field_5e170ac763ad8', '', '', '2020-01-09 22:26:41', '2020-01-09 20:26:41', '', 48, 'http://business/?post_type=acf-field&#038;p=209', 12, 'acf-field', '', 0),
(210, 1, '2020-01-09 13:39:42', '2020-01-09 11:39:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Валюта в секции \"choos your price\"', 'choos-price-currency_wp-title', 'publish', 'closed', 'closed', '', 'field_5e170e7963ad9', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&#038;p=210', 13, 'acf-field', '', 0),
(211, 1, '2020-01-09 13:39:42', '2020-01-09 11:39:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Цена в секции \"choos your price\"', 'choos-price-cost_wp-title', 'publish', 'closed', 'closed', '', 'field_5e170f2163ada', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&#038;p=211', 14, 'acf-field', '', 0),
(212, 1, '2020-01-09 22:26:42', '2020-01-09 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Период в секции \"choos your price\"', 'choos-price-period_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e17110d3d9d4', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&p=212', 15, 'acf-field', '', 0),
(213, 1, '2020-01-09 22:26:42', '2020-01-09 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Количество аккаунтов в секции \"choos your price\"', 'choos-price-account_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e17843c3d9d5', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&p=213', 16, 'acf-field', '', 0),
(214, 1, '2020-01-09 22:26:42', '2020-01-09 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Количество часов в секции \"choos your price\"', 'choos-price-support_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e17879a3d9d6', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&p=214', 17, 'acf-field', '', 0),
(215, 1, '2020-01-09 22:26:42', '2020-01-09 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кастомные сервисы в секции \"choos your price\"', 'choos-price-custom-services_wp-subtitle', 'publish', 'closed', 'closed', '', 'field_5e1788a93d9d7', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&p=215', 18, 'acf-field', '', 0),
(216, 1, '2020-01-09 22:26:42', '2020-01-09 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Кнопка в секции \"choos your price\"', 'choos-price_wp-but', 'publish', 'closed', 'closed', '', 'field_5e178b773d9d8', '', '', '2020-01-09 22:26:42', '2020-01-09 20:26:42', '', 48, 'http://business/?post_type=acf-field&p=216', 19, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'main', 'main', 0),
(3, 'Отзывы', 'comments', 0),
(4, 'Как это работает?', 'how-it-works', 0),
(5, 'Наши сервисы', 'our-services', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(42, 2, 0),
(82, 3, 0),
(87, 3, 0),
(90, 3, 0),
(93, 3, 0),
(112, 5, 0),
(149, 5, 0),
(153, 5, 0),
(155, 5, 0),
(161, 5, 0),
(165, 5, 0),
(180, 4, 0),
(183, 4, 0),
(190, 4, 0),
(205, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 4),
(5, 5, 'category', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4088b805d6637af59d12a29b67ca1e9e6721fff745620fa459bf02c0c66008f6\";a:4:{s:10:\"expiration\";i:1579447943;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578238343;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '200'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'wp_user-settings', 'editor=tinymce&mfold=o&libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1577907672'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bx3Lda5CwQYGYItc1AS2CCGxv0lEC71', 'admin', 'gamer21centuries@gmail.com', '', '2019-12-21 16:55:05', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
