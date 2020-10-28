-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-09-11 11:13:07','2020-09-11 11:13:07','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://aquapro.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://aquapro.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','AquaPro','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Soluciones arquitectura','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=41&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','aquapro','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','aquapro','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','41','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1615374761','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:9:{i:1603856518;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1603862715;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603883592;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603883597;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603883598;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603884017;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603884022;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604142793;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','hOoZMjqi/pA~69]&Hvx9(_dy-[k5;| k2TM+#sPX)D,p?L]UOqS?V@TcNIIX`|Fa','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','QZvZO3ziDE#J@,vMew.>HWcLuG5fG1`0tja/5U|AlcR!)(?ZDDt|DAg+C<[iyKD*','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599866140;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (143,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (146,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (147,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (169,'WPLANG','es_MX','yes');
INSERT INTO `wp_options` VALUES (170,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (180,'current_theme','AquaPro','yes');
INSERT INTO `wp_options` VALUES (181,'theme_mods_aquapro','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (182,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (199,'_transient_health-check-site-status-result','{\"good\":10,\"recommended\":9,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (226,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (396,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (555,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1602480398;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (556,'secret_key',')4-YmjS73M@ p2+I`#UYBpWhpE|A`k .EW{^-a!i-bPCkkkqah)*U]HxhB<<]?Jg','no');
INSERT INTO `wp_options` VALUES (587,'acf_version','5.9.1','yes');
INSERT INTO `wp_options` VALUES (671,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603855152;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (672,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603855155;s:7:\"checked\";a:1:{s:7:\"aquapro\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (686,'_site_transient_timeout_browser_a1123060a8cc6821e13d16ffa39d5d5a','1604108873','no');
INSERT INTO `wp_options` VALUES (687,'_site_transient_browser_a1123060a8cc6821e13d16ffa39d5d5a','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"82.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (695,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1604427690','no');
INSERT INTO `wp_options` VALUES (696,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (705,'_site_transient_timeout_theme_roots','1603856954','no');
INSERT INTO `wp_options` VALUES (706,'_site_transient_theme_roots','a:1:{s:7:\"aquapro\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (707,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603855156;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";s:5:\"1.0.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.2\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";}s:8:\"response\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/acf-leaflet-map-field\";s:4:\"slug\";s:21:\"acf-leaflet-map-field\";s:6:\"plugin\";s:43:\"acf-leaflet-map-field/acf-leaflet-field.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/acf-leaflet-map-field/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-leaflet-map-field.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/acf-leaflet-map-field/assets/icon-256x256.jpg?rev=1904210\";s:2:\"1x\";s:74:\"https://ps.w.org/acf-leaflet-map-field/assets/icon-256x256.jpg?rev=1904210\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/acf-leaflet-map-field/assets/banner-772x250.jpg?rev=1904210\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (87,24,'_wp_attached_file','2020/09/nosotros.jpg');
INSERT INTO `wp_postmeta` VALUES (88,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:20:\"2020/09/nosotros.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"nosotros-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"nosotros-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"nosotros-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"nosotros-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"nosotros-350x640.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"nosotros-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"nosotros-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (92,1,'_edit_lock','1600858218:1');
INSERT INTO `wp_postmeta` VALUES (132,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (133,32,'_edit_lock','1603502806:1');
INSERT INTO `wp_postmeta` VALUES (134,32,'_wp_page_template','page-no-sidebar.php');
INSERT INTO `wp_postmeta` VALUES (135,32,'_thumbnail_id','24');
INSERT INTO `wp_postmeta` VALUES (136,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (137,34,'_edit_lock','1602552795:1');
INSERT INTO `wp_postmeta` VALUES (138,34,'_wp_page_template','page-no-sidebar.php');
INSERT INTO `wp_postmeta` VALUES (178,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (179,41,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (180,41,'_edit_lock','1603241043:1');
INSERT INTO `wp_postmeta` VALUES (181,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (182,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (183,44,'_menu_item_object_id','41');
INSERT INTO `wp_postmeta` VALUES (184,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (185,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (186,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (187,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (188,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (190,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (191,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (192,45,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (193,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (194,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (195,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (196,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (197,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (199,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (200,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (201,46,'_menu_item_object_id','32');
INSERT INTO `wp_postmeta` VALUES (202,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (203,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (204,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (205,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (206,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (208,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,47,'_wp_page_template','page-galeria.php');
INSERT INTO `wp_postmeta` VALUES (210,47,'_edit_lock','1603507996:1');
INSERT INTO `wp_postmeta` VALUES (211,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (212,49,'_wp_page_template','page-galeria.php');
INSERT INTO `wp_postmeta` VALUES (213,49,'_edit_lock','1602171504:1');
INSERT INTO `wp_postmeta` VALUES (214,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (215,51,'_wp_page_template','page-no-sidebar.php');
INSERT INTO `wp_postmeta` VALUES (216,51,'_edit_lock','1603503768:1');
INSERT INTO `wp_postmeta` VALUES (226,54,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (227,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (228,54,'_menu_item_object_id','49');
INSERT INTO `wp_postmeta` VALUES (229,54,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (230,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (231,54,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (232,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (233,54,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (235,55,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (236,55,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (237,55,'_menu_item_object_id','47');
INSERT INTO `wp_postmeta` VALUES (238,55,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (239,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (240,55,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (241,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (242,55,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (247,60,'_wp_attached_file','2020/10/clase3.jpg');
INSERT INTO `wp_postmeta` VALUES (248,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:760;s:4:\"file\";s:18:\"2020/10/clase3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase3-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase3-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase3-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase3-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase3-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase3-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (251,62,'_wp_attached_file','2020/10/clase5.jpg');
INSERT INTO `wp_postmeta` VALUES (252,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:18:\"2020/10/clase5.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase5-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase5-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase5-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase5-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase5-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (253,63,'_wp_attached_file','2020/10/clase6.jpg');
INSERT INTO `wp_postmeta` VALUES (254,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:18:\"2020/10/clase6.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase6-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase6-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase6-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase6-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase6-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (257,67,'_wp_attached_file','2020/10/cross-fit-1126999_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (258,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1283;s:4:\"file\";s:34:\"2020/10/cross-fit-1126999_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"cross-fit-1126999_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"cross-fit-1126999_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:34:\"cross-fit-1126999_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (259,68,'_wp_attached_file','2020/10/fitness-375472_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (260,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:31:\"2020/10/fitness-375472_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"fitness-375472_1920-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"fitness-375472_1920-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"fitness-375472_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (261,69,'_wp_attached_file','2020/10/fitness-1677212_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (262,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2020/10/fitness-1677212_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"fitness-1677212_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"fitness-1677212_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:32:\"fitness-1677212_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"48\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (263,70,'_wp_attached_file','2020/10/fitness-3767884_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (264,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:32:\"2020/10/fitness-3767884_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"fitness-3767884_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"fitness-3767884_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:32:\"fitness-3767884_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5500\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (265,71,'_wp_attached_file','2020/10/gym-455164_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (266,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1327;s:4:\"file\";s:27:\"2020/10/gym-455164_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"gym-455164_1920-1024x708.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:708;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"gym-455164_1920-1536x1062.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1062;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:27:\"gym-455164_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (267,72,'_wp_attached_file','2020/10/home-fitness-equipment-1840858_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (268,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:47:\"2020/10/home-fitness-equipment-1840858_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"home-fitness-equipment-1840858_1920-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"home-fitness-equipment-1840858_1920-1536x1020.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:47:\"home-fitness-equipment-1840858_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"31\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (269,73,'_wp_attached_file','2020/10/kettle-bell-592905_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (270,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:35:\"2020/10/kettle-bell-592905_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"kettle-bell-592905_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:37:\"kettle-bell-592905_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:35:\"kettle-bell-592905_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (271,74,'_wp_attached_file','2020/10/kettlebells-1677217_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (272,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:36:\"2020/10/kettlebells-1677217_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"kettlebells-1677217_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"kettlebells-1677217_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:36:\"kettlebells-1677217_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"40\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (273,75,'_wp_attached_file','2020/10/sports-1962574_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (274,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:31:\"2020/10/sports-1962574_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sports-1962574_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"sports-1962574_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"sports-1962574_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D610\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"560\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (275,76,'_wp_attached_file','2020/10/weight-lifting-1284616_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (276,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:39:\"2020/10/weight-lifting-1284616_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"weight-lifting-1284616_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"weight-lifting-1284616_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:39:\"weight-lifting-1284616_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (277,77,'_wp_attached_file','2020/10/weights-652486_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (278,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:31:\"2020/10/weights-652486_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-652486_1920-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"weights-652486_1920-1536x1026.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-652486_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (279,78,'_wp_attached_file','2020/10/weights-652488_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (280,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:31:\"2020/10/weights-652488_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-652488_1920-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"weights-652488_1920-1536x1023.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1023;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-652488_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (281,79,'_wp_attached_file','2020/10/weights-817635_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (282,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1184;s:4:\"file\";s:31:\"2020/10/weights-817635_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"weights-817635_1920-1024x631.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:631;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-768x474.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"weights-817635_1920-1536x947.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:947;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:31:\"weights-817635_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (283,80,'_wp_attached_file','2020/10/yoga-1994667_1920.jpg');
INSERT INTO `wp_postmeta` VALUES (284,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1281;s:4:\"file\";s:29:\"2020/10/yoga-1994667_1920.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"yoga-1994667_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"yoga-1994667_1920-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:29:\"yoga-1994667_1920-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"62\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (285,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (286,1,'_wp_trash_meta_time','1602275718');
INSERT INTO `wp_postmeta` VALUES (287,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (288,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (289,87,'_wp_attached_file','2020/10/blog1.jpg');
INSERT INTO `wp_postmeta` VALUES (290,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:17:\"2020/10/blog1.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"blog1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"blog1-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:17:\"blog1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:17:\"blog1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"blog1-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (291,88,'_wp_attached_file','2020/10/blog2.jpg');
INSERT INTO `wp_postmeta` VALUES (292,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:17:\"2020/10/blog2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"blog2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"blog2-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:17:\"blog2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:17:\"blog2-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"blog2-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (293,89,'_wp_attached_file','2020/10/blog3.jpg');
INSERT INTO `wp_postmeta` VALUES (294,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:17:\"2020/10/blog3.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"blog3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"blog3-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:17:\"blog3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:17:\"blog3-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"blog3-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (295,90,'_wp_attached_file','2020/10/blog4.jpg');
INSERT INTO `wp_postmeta` VALUES (296,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:17:\"2020/10/blog4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog4-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"blog4-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"blog4-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:17:\"blog4-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:17:\"blog4-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"blog4-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (297,91,'_form','<label> Tu Nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label>Tu teléfono:\n[tel tel-547]\n </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Tu Mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]');
INSERT INTO `wp_postmeta` VALUES (298,91,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"AquaPro \"[your-subject]\"\";s:6:\"sender\";s:33:\"AquaPro <wordpress@aquapro.local>\";s:9:\"recipient\";s:24:\"dev-email@flywheel.local\";s:4:\"body\";s:243:\"De: [your-name] <[your-email]>\nAsunto: Contacto desde página web.\n\nSu telefono es: [tel-547]\nEmail: [your-email]\n\nMensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en AquaPro (http://giseaprototype.local)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (299,91,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"AquaPro \"[your-subject]\"\";s:6:\"sender\";s:33:\"AquaPro <wordpress@aquapro.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:132:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en AquaPro (http://aquapro.local)\";s:18:\"additional_headers\";s:34:\"Reply-To: dev-email@flywheel.local\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (300,91,'_messages','a:22:{s:12:\"mail_sent_ok\";s:51:\"Gracias por tu mensaje. El mensaje ha sido enviado.\";s:12:\"mail_sent_ng\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:16:\"validation_error\";s:70:\"Uno o más campos tienen un error. Por favor revíselo y reinténtelo.\";s:4:\"spam\";s:77:\"Hubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\";s:12:\"accept_terms\";s:68:\"Debe aceptar los términos y condiciones antes de enviar su mensaje.\";s:16:\"invalid_required\";s:24:\"Este campo es requerido.\";s:16:\"invalid_too_long\";s:32:\"El texto del campo es muy largo.\";s:17:\"invalid_too_short\";s:32:\"El texto del campo es muy corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:36:\"La fecha es anterior a la permitida.\";s:13:\"date_too_late\";s:37:\"La fecha es posterior a la permitida.\";s:13:\"upload_failed\";s:50:\"Sucedió un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:45:\"No se le permite subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:25:\"El archivo es muy pesado.\";s:23:\"upload_failed_php_error\";s:38:\"Ocurrió un error al subir el archivo.\";s:14:\"invalid_number\";s:36:\"El formato del número es inválido.\";s:16:\"number_too_small\";s:41:\"El número es menor al mínimo permitido.\";s:16:\"number_too_large\";s:41:\"El número es mayor al máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:35:\"La respuesta al quiz es incorrecta.\";s:13:\"invalid_email\";s:45:\"La dirección de email ingresada es invalida.\";s:11:\"invalid_url\";s:20:\"La URL es inválida.\";s:11:\"invalid_tel\";s:37:\"El número de teléfono es inválido.\";}');
INSERT INTO `wp_postmeta` VALUES (301,91,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (302,91,'_locale','es_MX');
INSERT INTO `wp_postmeta` VALUES (303,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,94,'_edit_lock','1602552603:1');
INSERT INTO `wp_postmeta` VALUES (305,34,'contacto','a:4:{s:7:\"address\";s:41:\"Paseo del Pozo, Jiutepec, Morelos, Mexico\";s:3:\"lat\";s:7:\"18.8785\";s:3:\"lng\";s:8:\"-99.1863\";s:4:\"zoom\";s:2:\"18\";}');
INSERT INTO `wp_postmeta` VALUES (306,34,'_contacto','field_5f85035699615');
INSERT INTO `wp_postmeta` VALUES (307,97,'contacto','a:4:{s:7:\"address\";s:41:\"Paseo del Pozo, Jiutepec, Morelos, Mexico\";s:3:\"lat\";s:7:\"18.8785\";s:3:\"lng\";s:8:\"-99.1863\";s:4:\"zoom\";s:2:\"18\";}');
INSERT INTO `wp_postmeta` VALUES (308,97,'_contacto','field_5f85035699615');
INSERT INTO `wp_postmeta` VALUES (309,98,'contacto','a:4:{s:7:\"address\";s:41:\"Paseo del Pozo, Jiutepec, Morelos, Mexico\";s:3:\"lat\";s:7:\"18.8785\";s:3:\"lng\";s:8:\"-99.1863\";s:4:\"zoom\";s:2:\"18\";}');
INSERT INTO `wp_postmeta` VALUES (310,98,'_contacto','field_5f85035699615');
INSERT INTO `wp_postmeta` VALUES (311,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (312,99,'_edit_lock','1603240802:1');
INSERT INTO `wp_postmeta` VALUES (313,104,'_wp_attached_file','2020/10/hero-index.jpg');
INSERT INTO `wp_postmeta` VALUES (314,104,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1596;s:6:\"height\";i:922;s:4:\"file\";s:22:\"2020/10/hero-index.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hero-index-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"hero-index-1024x592.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:592;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hero-index-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"hero-index-768x444.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"hero-index-1536x887.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:887;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"hero-index-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"hero-index-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"hero-index-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"hero-index-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:22:\"hero-index-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (315,41,'imagen_hero','104');
INSERT INTO `wp_postmeta` VALUES (316,41,'_imagen_hero','field_5f8797159fc8f');
INSERT INTO `wp_postmeta` VALUES (317,41,'encabezado_hero','Encabezado');
INSERT INTO `wp_postmeta` VALUES (318,41,'_encabezado_hero','field_5f87977ce7764');
INSERT INTO `wp_postmeta` VALUES (319,41,'contenido_hero','Este es el contenido del encabezado');
INSERT INTO `wp_postmeta` VALUES (320,41,'_contenido_hero','field_5f8797a7e11d0');
INSERT INTO `wp_postmeta` VALUES (321,105,'imagen_hero','104');
INSERT INTO `wp_postmeta` VALUES (322,105,'_imagen_hero','field_5f8797159fc8f');
INSERT INTO `wp_postmeta` VALUES (323,105,'encabezado_hero','Encabezado');
INSERT INTO `wp_postmeta` VALUES (324,105,'_encabezado_hero','field_5f87977ce7764');
INSERT INTO `wp_postmeta` VALUES (325,105,'contenido_hero','Este es el contenido del encabezado');
INSERT INTO `wp_postmeta` VALUES (326,105,'_contenido_hero','field_5f8797a7e11d0');
INSERT INTO `wp_postmeta` VALUES (327,41,'encabezado_bienvenida','Bienvenido a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (328,41,'_encabezado_bienvenida','field_5f8e8a5a7b21a');
INSERT INTO `wp_postmeta` VALUES (329,41,'texto_bienvenida','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (330,41,'_texto_bienvenida','field_5f8e8bab3c2ff');
INSERT INTO `wp_postmeta` VALUES (331,105,'encabezado_bienvenida','');
INSERT INTO `wp_postmeta` VALUES (332,105,'_encabezado_bienvenida','field_5f8e8a5a7b21a');
INSERT INTO `wp_postmeta` VALUES (333,105,'texto_bienvenida','');
INSERT INTO `wp_postmeta` VALUES (334,105,'_texto_bienvenida','field_5f8e8bab3c2ff');
INSERT INTO `wp_postmeta` VALUES (335,110,'imagen_hero','104');
INSERT INTO `wp_postmeta` VALUES (336,110,'_imagen_hero','field_5f8797159fc8f');
INSERT INTO `wp_postmeta` VALUES (337,110,'encabezado_hero','Encabezado');
INSERT INTO `wp_postmeta` VALUES (338,110,'_encabezado_hero','field_5f87977ce7764');
INSERT INTO `wp_postmeta` VALUES (339,110,'contenido_hero','Este es el contenido del encabezado');
INSERT INTO `wp_postmeta` VALUES (340,110,'_contenido_hero','field_5f8797a7e11d0');
INSERT INTO `wp_postmeta` VALUES (341,110,'encabezado_bienvenida','Bienvenido a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (342,110,'_encabezado_bienvenida','field_5f8e8a5a7b21a');
INSERT INTO `wp_postmeta` VALUES (343,110,'texto_bienvenida','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (344,110,'_texto_bienvenida','field_5f8e8bab3c2ff');
INSERT INTO `wp_postmeta` VALUES (345,125,'_wp_attached_file','2020/10/area-aparatos.jpg');
INSERT INTO `wp_postmeta` VALUES (346,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:699;s:4:\"file\";s:25:\"2020/10/area-aparatos.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"area-aparatos-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"area-aparatos-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"area-aparatos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"area-aparatos-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x699.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:25:\"area-aparatos-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:25:\"area-aparatos-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:25:\"area-aparatos-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (347,126,'_wp_attached_file','2020/10/area-cardio.jpg');
INSERT INTO `wp_postmeta` VALUES (348,126,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:23:\"2020/10/area-cardio.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"area-cardio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"area-cardio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"area-cardio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"area-cardio-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"area-cardio-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:23:\"area-cardio-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (349,127,'_wp_attached_file','2020/10/area-pesas.jpg');
INSERT INTO `wp_postmeta` VALUES (350,127,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:731;s:4:\"file\";s:22:\"2020/10/area-pesas.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"area-pesas-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"area-pesas-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"area-pesas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"area-pesas-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:22:\"area-pesas-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:22:\"area-pesas-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:22:\"area-pesas-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:22:\"area-pesas-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:22:\"area-pesas-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (351,128,'_wp_attached_file','2020/10/area-yoga.jpg');
INSERT INTO `wp_postmeta` VALUES (352,128,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:21:\"2020/10/area-yoga.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"area-yoga-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"area-yoga-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"area-yoga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"area-yoga-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"area-yoga-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:21:\"area-yoga-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:21:\"area-yoga-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (353,41,'area_1_imagen','128');
INSERT INTO `wp_postmeta` VALUES (354,41,'_area_1_imagen','field_5f8f7cddfde74');
INSERT INTO `wp_postmeta` VALUES (355,41,'area_1_texto','Area de Yoga');
INSERT INTO `wp_postmeta` VALUES (356,41,'_area_1_texto','field_5f8f7d00fde75');
INSERT INTO `wp_postmeta` VALUES (357,41,'area_1','');
INSERT INTO `wp_postmeta` VALUES (358,41,'_area_1','field_5f8f7cb2fde73');
INSERT INTO `wp_postmeta` VALUES (359,41,'area_2_imagen','127');
INSERT INTO `wp_postmeta` VALUES (360,41,'_area_2_imagen','field_5f8f7d23a7795');
INSERT INTO `wp_postmeta` VALUES (361,41,'area_2_texto','Area de pesas');
INSERT INTO `wp_postmeta` VALUES (362,41,'_area_2_texto','field_5f8f7d23a7796');
INSERT INTO `wp_postmeta` VALUES (363,41,'area_2','');
INSERT INTO `wp_postmeta` VALUES (364,41,'_area_2','field_5f8f7f346c107');
INSERT INTO `wp_postmeta` VALUES (365,41,'area_3_imagen','126');
INSERT INTO `wp_postmeta` VALUES (366,41,'_area_3_imagen','field_5f8f7d28a7798');
INSERT INTO `wp_postmeta` VALUES (367,41,'area_3_texto','Area de Spining');
INSERT INTO `wp_postmeta` VALUES (368,41,'_area_3_texto','field_5f8f7d28a7799');
INSERT INTO `wp_postmeta` VALUES (369,41,'area_3','');
INSERT INTO `wp_postmeta` VALUES (370,41,'_area_3','field_5f8f7f336c104');
INSERT INTO `wp_postmeta` VALUES (371,41,'area_4_imagen','125');
INSERT INTO `wp_postmeta` VALUES (372,41,'_area_4_imagen','field_5f8f7d2ca779b');
INSERT INTO `wp_postmeta` VALUES (373,41,'area_4_texto','Area de Aparatos');
INSERT INTO `wp_postmeta` VALUES (374,41,'_area_4_texto','field_5f8f7d2ca779c');
INSERT INTO `wp_postmeta` VALUES (375,41,'area_4','');
INSERT INTO `wp_postmeta` VALUES (376,41,'_area_4','field_5f8f7f516c10a');
INSERT INTO `wp_postmeta` VALUES (377,129,'imagen_hero','104');
INSERT INTO `wp_postmeta` VALUES (378,129,'_imagen_hero','field_5f8797159fc8f');
INSERT INTO `wp_postmeta` VALUES (379,129,'encabezado_hero','Encabezado');
INSERT INTO `wp_postmeta` VALUES (380,129,'_encabezado_hero','field_5f87977ce7764');
INSERT INTO `wp_postmeta` VALUES (381,129,'contenido_hero','Este es el contenido del encabezado');
INSERT INTO `wp_postmeta` VALUES (382,129,'_contenido_hero','field_5f8797a7e11d0');
INSERT INTO `wp_postmeta` VALUES (383,129,'encabezado_bienvenida','Bienvenido a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (384,129,'_encabezado_bienvenida','field_5f8e8a5a7b21a');
INSERT INTO `wp_postmeta` VALUES (385,129,'texto_bienvenida','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (386,129,'_texto_bienvenida','field_5f8e8bab3c2ff');
INSERT INTO `wp_postmeta` VALUES (387,129,'area_1_imagen','128');
INSERT INTO `wp_postmeta` VALUES (388,129,'_area_1_imagen','field_5f8f7cddfde74');
INSERT INTO `wp_postmeta` VALUES (389,129,'area_1_texto','Area de Yoga');
INSERT INTO `wp_postmeta` VALUES (390,129,'_area_1_texto','field_5f8f7d00fde75');
INSERT INTO `wp_postmeta` VALUES (391,129,'area_1','');
INSERT INTO `wp_postmeta` VALUES (392,129,'_area_1','field_5f8f7cb2fde73');
INSERT INTO `wp_postmeta` VALUES (393,129,'area_2_imagen','127');
INSERT INTO `wp_postmeta` VALUES (394,129,'_area_2_imagen','field_5f8f7d23a7795');
INSERT INTO `wp_postmeta` VALUES (395,129,'area_2_texto','Area de pesas');
INSERT INTO `wp_postmeta` VALUES (396,129,'_area_2_texto','field_5f8f7d23a7796');
INSERT INTO `wp_postmeta` VALUES (397,129,'area_2','');
INSERT INTO `wp_postmeta` VALUES (398,129,'_area_2','field_5f8f7d23a7794');
INSERT INTO `wp_postmeta` VALUES (399,129,'area_3_imagen','126');
INSERT INTO `wp_postmeta` VALUES (400,129,'_area_3_imagen','field_5f8f7d28a7798');
INSERT INTO `wp_postmeta` VALUES (401,129,'area_3_texto','Area de Spining');
INSERT INTO `wp_postmeta` VALUES (402,129,'_area_3_texto','field_5f8f7d28a7799');
INSERT INTO `wp_postmeta` VALUES (403,129,'area_3','');
INSERT INTO `wp_postmeta` VALUES (404,129,'_area_3','field_5f8f7d28a7797');
INSERT INTO `wp_postmeta` VALUES (405,129,'area_4_imagen','125');
INSERT INTO `wp_postmeta` VALUES (406,129,'_area_4_imagen','field_5f8f7d2ca779b');
INSERT INTO `wp_postmeta` VALUES (407,129,'area_4_texto','Area de Aparatos');
INSERT INTO `wp_postmeta` VALUES (408,129,'_area_4_texto','field_5f8f7d2ca779c');
INSERT INTO `wp_postmeta` VALUES (409,129,'area_4','');
INSERT INTO `wp_postmeta` VALUES (410,129,'_area_4','field_5f8f7d2ca779a');
INSERT INTO `wp_postmeta` VALUES (411,41,'area_1_area_imagen','128');
INSERT INTO `wp_postmeta` VALUES (412,41,'_area_1_area_imagen','field_5f8f7cddfde74');
INSERT INTO `wp_postmeta` VALUES (413,41,'area_1_area_texto','Area de Yoga');
INSERT INTO `wp_postmeta` VALUES (414,41,'_area_1_area_texto','field_5f8f7d00fde75');
INSERT INTO `wp_postmeta` VALUES (415,41,'area_2_area_imagen','127');
INSERT INTO `wp_postmeta` VALUES (416,41,'_area_2_area_imagen','field_5f8f7f346c108');
INSERT INTO `wp_postmeta` VALUES (417,41,'area_2_area_texto','Area de Pesas');
INSERT INTO `wp_postmeta` VALUES (418,41,'_area_2_area_texto','field_5f8f7f346c109');
INSERT INTO `wp_postmeta` VALUES (419,41,'area_3_area_imagen','126');
INSERT INTO `wp_postmeta` VALUES (420,41,'_area_3_area_imagen','field_5f8f7f336c105');
INSERT INTO `wp_postmeta` VALUES (421,41,'area_3_area_texto','Area de Spinning');
INSERT INTO `wp_postmeta` VALUES (422,41,'_area_3_area_texto','field_5f8f7f336c106');
INSERT INTO `wp_postmeta` VALUES (423,41,'area_4_area_imagen','125');
INSERT INTO `wp_postmeta` VALUES (424,41,'_area_4_area_imagen','field_5f8f7f516c10b');
INSERT INTO `wp_postmeta` VALUES (425,41,'area_4_area_texto','Area de Aparatos');
INSERT INTO `wp_postmeta` VALUES (426,41,'_area_4_area_texto','field_5f8f7f516c10c');
INSERT INTO `wp_postmeta` VALUES (427,139,'imagen_hero','104');
INSERT INTO `wp_postmeta` VALUES (428,139,'_imagen_hero','field_5f8797159fc8f');
INSERT INTO `wp_postmeta` VALUES (429,139,'encabezado_hero','Encabezado');
INSERT INTO `wp_postmeta` VALUES (430,139,'_encabezado_hero','field_5f87977ce7764');
INSERT INTO `wp_postmeta` VALUES (431,139,'contenido_hero','Este es el contenido del encabezado');
INSERT INTO `wp_postmeta` VALUES (432,139,'_contenido_hero','field_5f8797a7e11d0');
INSERT INTO `wp_postmeta` VALUES (433,139,'encabezado_bienvenida','Bienvenido a nuestro sitio web');
INSERT INTO `wp_postmeta` VALUES (434,139,'_encabezado_bienvenida','field_5f8e8a5a7b21a');
INSERT INTO `wp_postmeta` VALUES (435,139,'texto_bienvenida','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `wp_postmeta` VALUES (436,139,'_texto_bienvenida','field_5f8e8bab3c2ff');
INSERT INTO `wp_postmeta` VALUES (437,139,'area_1_imagen','128');
INSERT INTO `wp_postmeta` VALUES (438,139,'_area_1_imagen','field_5f8f7cddfde74');
INSERT INTO `wp_postmeta` VALUES (439,139,'area_1_texto','Area de Yoga');
INSERT INTO `wp_postmeta` VALUES (440,139,'_area_1_texto','field_5f8f7d00fde75');
INSERT INTO `wp_postmeta` VALUES (441,139,'area_1','');
INSERT INTO `wp_postmeta` VALUES (442,139,'_area_1','field_5f8f7cb2fde73');
INSERT INTO `wp_postmeta` VALUES (443,139,'area_2_imagen','127');
INSERT INTO `wp_postmeta` VALUES (444,139,'_area_2_imagen','field_5f8f7d23a7795');
INSERT INTO `wp_postmeta` VALUES (445,139,'area_2_texto','Area de pesas');
INSERT INTO `wp_postmeta` VALUES (446,139,'_area_2_texto','field_5f8f7d23a7796');
INSERT INTO `wp_postmeta` VALUES (447,139,'area_2','');
INSERT INTO `wp_postmeta` VALUES (448,139,'_area_2','field_5f8f7f346c107');
INSERT INTO `wp_postmeta` VALUES (449,139,'area_3_imagen','126');
INSERT INTO `wp_postmeta` VALUES (450,139,'_area_3_imagen','field_5f8f7d28a7798');
INSERT INTO `wp_postmeta` VALUES (451,139,'area_3_texto','Area de Spining');
INSERT INTO `wp_postmeta` VALUES (452,139,'_area_3_texto','field_5f8f7d28a7799');
INSERT INTO `wp_postmeta` VALUES (453,139,'area_3','');
INSERT INTO `wp_postmeta` VALUES (454,139,'_area_3','field_5f8f7f336c104');
INSERT INTO `wp_postmeta` VALUES (455,139,'area_4_imagen','125');
INSERT INTO `wp_postmeta` VALUES (456,139,'_area_4_imagen','field_5f8f7d2ca779b');
INSERT INTO `wp_postmeta` VALUES (457,139,'area_4_texto','Area de Aparatos');
INSERT INTO `wp_postmeta` VALUES (458,139,'_area_4_texto','field_5f8f7d2ca779c');
INSERT INTO `wp_postmeta` VALUES (459,139,'area_4','');
INSERT INTO `wp_postmeta` VALUES (460,139,'_area_4','field_5f8f7f516c10a');
INSERT INTO `wp_postmeta` VALUES (461,139,'area_1_area_imagen','128');
INSERT INTO `wp_postmeta` VALUES (462,139,'_area_1_area_imagen','field_5f8f7cddfde74');
INSERT INTO `wp_postmeta` VALUES (463,139,'area_1_area_texto','Area de Yoga');
INSERT INTO `wp_postmeta` VALUES (464,139,'_area_1_area_texto','field_5f8f7d00fde75');
INSERT INTO `wp_postmeta` VALUES (465,139,'area_2_area_imagen','127');
INSERT INTO `wp_postmeta` VALUES (466,139,'_area_2_area_imagen','field_5f8f7f346c108');
INSERT INTO `wp_postmeta` VALUES (467,139,'area_2_area_texto','Area de Pesas');
INSERT INTO `wp_postmeta` VALUES (468,139,'_area_2_area_texto','field_5f8f7f346c109');
INSERT INTO `wp_postmeta` VALUES (469,139,'area_3_area_imagen','126');
INSERT INTO `wp_postmeta` VALUES (470,139,'_area_3_area_imagen','field_5f8f7f336c105');
INSERT INTO `wp_postmeta` VALUES (471,139,'area_3_area_texto','Area de Spinning');
INSERT INTO `wp_postmeta` VALUES (472,139,'_area_3_area_texto','field_5f8f7f336c106');
INSERT INTO `wp_postmeta` VALUES (473,139,'area_4_area_imagen','125');
INSERT INTO `wp_postmeta` VALUES (474,139,'_area_4_area_imagen','field_5f8f7f516c10b');
INSERT INTO `wp_postmeta` VALUES (475,139,'area_4_area_texto','Area de Aparatos');
INSERT INTO `wp_postmeta` VALUES (476,139,'_area_4_area_texto','field_5f8f7f516c10c');
INSERT INTO `wp_postmeta` VALUES (477,143,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (478,143,'_edit_lock','1603506711:1');
INSERT INTO `wp_postmeta` VALUES (479,143,'_wp_page_template','page-galeria.php');
INSERT INTO `wp_postmeta` VALUES (480,145,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (481,145,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (482,145,'_menu_item_object_id','143');
INSERT INTO `wp_postmeta` VALUES (483,145,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (484,145,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (485,145,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (486,145,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (487,145,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-09-11 11:13:07','2020-09-11 11:13:07','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-10-09 20:35:18','2020-10-09 20:35:18','',0,'http://aquapro.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (24,1,'2020-09-22 01:26:16','2020-09-22 01:26:16','','nosotros','','inherit','open','closed','','nosotros-2','','','2020-09-22 01:26:16','2020-09-22 01:26:16','',0,'http://aquapro.local/wp-content/uploads/2020/09/nosotros.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-09-24 17:30:06','2020-09-24 17:30:06','','Nosotros','','publish','closed','closed','','nosotros','','','2020-10-24 01:28:08','2020-10-24 01:28:08','',0,'http://aquapro.local/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-09-24 17:30:06','2020-09-24 17:30:06','','Nosotros','','inherit','closed','closed','','32-revision-v1','','','2020-09-24 17:30:06','2020-09-24 17:30:06','',32,'http://aquapro.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-09-24 17:30:40','2020-09-24 17:30:40','<div id=\"mapa\"></div>\r\n[contact-form-7 id=\"91\" title=\"Formulario de contacto 1\"]','Contacto','','publish','closed','closed','','contacto','','','2020-10-13 01:35:14','2020-10-13 01:35:14','',0,'http://aquapro.local/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-09-24 17:30:40','2020-09-24 17:30:40','','Contacto','','inherit','closed','closed','','34-revision-v1','','','2020-09-24 17:30:40','2020-09-24 17:30:40','',34,'http://aquapro.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-09-24 17:40:40','2020-09-24 17:40:40','','Inicio','','publish','closed','closed','','inicio','','','2020-10-21 00:43:46','2020-10-21 00:43:46','',0,'http://aquapro.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-09-24 17:40:40','2020-09-24 17:40:40','','INICIO','','inherit','closed','closed','','41-revision-v1','','','2020-09-24 17:40:40','2020-09-24 17:40:40','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-09-24 18:03:26','2020-09-24 18:03:26','','Inicio','','inherit','closed','closed','','41-revision-v1','','','2020-09-24 18:03:26','2020-09-24 18:03:26','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-09-24 18:04:31','2020-09-24 18:04:31',' ','','','publish','closed','closed','','44','','','2020-10-24 01:48:46','2020-10-24 01:48:46','',0,'http://aquapro.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-09-24 18:04:32','2020-09-24 18:04:32',' ','','','publish','closed','closed','','45','','','2020-10-24 01:48:47','2020-10-24 01:48:47','',0,'http://aquapro.local/?p=45',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-09-24 18:04:32','2020-09-24 18:04:32',' ','','','publish','closed','closed','','46','','','2020-10-24 01:48:46','2020-10-24 01:48:46','',0,'http://aquapro.local/?p=46',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-09-24 18:26:24','2020-09-24 18:26:24','[gallery link=\"file\" ids=\"67,68,69,70,71,72,73,74,75,76,77,78,79,80\"]\r\n<p style=\"padding-left: 40px;\"></p>','Albercas','','publish','closed','closed','','albercas','','','2020-10-08 14:50:55','2020-10-08 14:50:55','',0,'http://aquapro.local/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-09-24 18:26:24','2020-09-24 18:26:24','','Albercas','','inherit','closed','closed','','47-revision-v1','','','2020-09-24 18:26:24','2020-09-24 18:26:24','',47,'http://aquapro.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-09-24 18:26:45','2020-09-24 18:26:45','[gallery link=\"file\" ids=\"80,79,78,77,76,71,72,73,74,75,70,69,68,67\"]','Procesos','','publish','closed','closed','','procesos','','','2020-10-08 14:51:36','2020-10-08 14:51:36','',0,'http://aquapro.local/?page_id=49',0,'page','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-09-24 18:26:45','2020-09-24 18:26:45','','Procesos','','inherit','closed','closed','','49-revision-v1','','','2020-09-24 18:26:45','2020-09-24 18:26:45','',49,'http://aquapro.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-09-24 18:27:03','2020-09-24 18:27:03','[gallery link=\"none\" ids=\"80,75,76,77,78,79,74,73,72,71,70,69,68,67\"]','Blog','','publish','closed','closed','','blog','','','2020-10-24 01:41:55','2020-10-24 01:41:55','',0,'http://aquapro.local/?page_id=51',0,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-09-24 18:27:03','2020-09-24 18:27:03','','Blog','','inherit','closed','closed','','51-revision-v1','','','2020-09-24 18:27:03','2020-09-24 18:27:03','',51,'http://aquapro.local/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-09-24 18:28:45','2020-09-24 18:28:45',' ','','','publish','closed','closed','','54','','','2020-10-24 01:48:47','2020-10-24 01:48:47','',0,'http://aquapro.local/?p=54',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-09-24 18:28:44','2020-09-24 18:28:44',' ','','','publish','closed','closed','','55','','','2020-10-24 01:48:47','2020-10-24 01:48:47','',0,'http://aquapro.local/?p=55',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-10-05 21:04:35','2020-10-05 21:04:35','','clase3','','inherit','open','closed','','clase3','','','2020-10-05 21:04:35','2020-10-05 21:04:35','',34,'http://aquapro.local/wp-content/uploads/2020/10/clase3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-10-05 21:04:42','2020-10-05 21:04:42','','clase5','','inherit','open','closed','','clase5','','','2020-10-05 21:04:42','2020-10-05 21:04:42','',34,'http://aquapro.local/wp-content/uploads/2020/10/clase5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-10-05 21:04:45','2020-10-05 21:04:45','','clase6','','inherit','open','closed','','clase6','','','2020-10-05 21:04:45','2020-10-05 21:04:45','',34,'http://aquapro.local/wp-content/uploads/2020/10/clase6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-10-07 04:10:41','2020-10-07 04:10:41','sthbstbdtbsbsb','Albercas','','inherit','closed','closed','','47-revision-v1','','','2020-10-07 04:10:41','2020-10-07 04:10:41','',47,'http://aquapro.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-10-07 04:11:26','2020-10-07 04:11:26','','Albercas','','inherit','closed','closed','','47-revision-v1','','','2020-10-07 04:11:26','2020-10-07 04:11:26','',47,'http://aquapro.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-10-07 04:18:55','2020-10-07 04:18:55','<p style=\"padding-left: 40px;\">tdtbdbfyybfyn</p>','Albercas','','inherit','closed','closed','','47-revision-v1','','','2020-10-07 04:18:55','2020-10-07 04:18:55','',47,'http://aquapro.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-10-07 22:55:32','2020-10-07 22:55:32','','cross-fit-1126999_1920','','inherit','open','closed','','cross-fit-1126999_1920','','','2020-10-07 22:55:32','2020-10-07 22:55:32','',47,'http://aquapro.local/wp-content/uploads/2020/10/cross-fit-1126999_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-10-07 22:55:40','2020-10-07 22:55:40','','fitness-375472_1920','','inherit','open','closed','','fitness-375472_1920','','','2020-10-07 22:55:40','2020-10-07 22:55:40','',47,'http://aquapro.local/wp-content/uploads/2020/10/fitness-375472_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-10-07 22:55:46','2020-10-07 22:55:46','','fitness-1677212_1920','','inherit','open','closed','','fitness-1677212_1920','','','2020-10-07 22:55:46','2020-10-07 22:55:46','',47,'http://aquapro.local/wp-content/uploads/2020/10/fitness-1677212_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-10-07 22:55:52','2020-10-07 22:55:52','','fitness-3767884_1920','','inherit','open','closed','','fitness-3767884_1920','','','2020-10-07 22:55:52','2020-10-07 22:55:52','',47,'http://aquapro.local/wp-content/uploads/2020/10/fitness-3767884_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-10-07 22:55:58','2020-10-07 22:55:58','','gym-455164_1920','','inherit','open','closed','','gym-455164_1920','','','2020-10-07 22:55:58','2020-10-07 22:55:58','',47,'http://aquapro.local/wp-content/uploads/2020/10/gym-455164_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-10-07 22:56:04','2020-10-07 22:56:04','','home-fitness-equipment-1840858_1920','','inherit','open','closed','','home-fitness-equipment-1840858_1920','','','2020-10-07 22:56:04','2020-10-07 22:56:04','',47,'http://aquapro.local/wp-content/uploads/2020/10/home-fitness-equipment-1840858_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-10-07 22:56:10','2020-10-07 22:56:10','','kettle-bell-592905_1920','','inherit','open','closed','','kettle-bell-592905_1920','','','2020-10-07 22:56:10','2020-10-07 22:56:10','',47,'http://aquapro.local/wp-content/uploads/2020/10/kettle-bell-592905_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-10-07 22:56:16','2020-10-07 22:56:16','','kettlebells-1677217_1920','','inherit','open','closed','','kettlebells-1677217_1920','','','2020-10-07 22:56:16','2020-10-07 22:56:16','',47,'http://aquapro.local/wp-content/uploads/2020/10/kettlebells-1677217_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-10-07 22:56:22','2020-10-07 22:56:22','','sports-1962574_1920','','inherit','open','closed','','sports-1962574_1920','','','2020-10-07 22:56:22','2020-10-07 22:56:22','',47,'http://aquapro.local/wp-content/uploads/2020/10/sports-1962574_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-10-07 22:56:28','2020-10-07 22:56:28','','weight-lifting-1284616_1920','','inherit','open','closed','','weight-lifting-1284616_1920','','','2020-10-07 22:56:28','2020-10-07 22:56:28','',47,'http://aquapro.local/wp-content/uploads/2020/10/weight-lifting-1284616_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-10-07 22:56:34','2020-10-07 22:56:34','','weights-652486_1920','','inherit','open','closed','','weights-652486_1920','','','2020-10-07 22:56:34','2020-10-07 22:56:34','',47,'http://aquapro.local/wp-content/uploads/2020/10/weights-652486_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-10-07 22:56:41','2020-10-07 22:56:41','','weights-652488_1920','','inherit','open','closed','','weights-652488_1920','','','2020-10-07 22:56:41','2020-10-07 22:56:41','',47,'http://aquapro.local/wp-content/uploads/2020/10/weights-652488_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-10-07 22:56:47','2020-10-07 22:56:47','','weights-817635_1920','','inherit','open','closed','','weights-817635_1920','','','2020-10-07 22:56:47','2020-10-07 22:56:47','',47,'http://aquapro.local/wp-content/uploads/2020/10/weights-817635_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-10-07 22:56:53','2020-10-07 22:56:53','','yoga-1994667_1920','','inherit','open','closed','','yoga-1994667_1920','','','2020-10-07 22:56:53','2020-10-07 22:56:53','',47,'http://aquapro.local/wp-content/uploads/2020/10/yoga-1994667_1920.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-10-07 22:57:48','2020-10-07 22:57:48','[gallery link=\"file\" ids=\"67,68,69,70,71,72,73,74,75,76,77,78,79,80\"]\n<p style=\"padding-left: 40px;\"></p>','Albercas','','inherit','closed','closed','','47-autosave-v1','','','2020-10-07 22:57:48','2020-10-07 22:57:48','',47,'http://aquapro.local/47-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-10-07 22:57:56','2020-10-07 22:57:56','[gallery link=\"file\" ids=\"67,68,69,70,71,72,73,74,75,76,77,78,79,80\"]\r\n<p style=\"padding-left: 40px;\"></p>','Albercas','','inherit','closed','closed','','47-revision-v1','','','2020-10-07 22:57:56','2020-10-07 22:57:56','',47,'http://aquapro.local/47-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-10-07 23:14:46','2020-10-07 23:14:46','[gallery link=\"file\" ids=\"80,79,78,77,76,71,72,73,74,75,70,69,68,67\"]','Procesos','','inherit','closed','closed','','49-autosave-v1','','','2020-10-07 23:14:46','2020-10-07 23:14:46','',49,'http://aquapro.local/49-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-10-07 23:14:49','2020-10-07 23:14:49','[gallery link=\"file\" ids=\"80,79,78,77,76,71,72,73,74,75,70,69,68,67\"]','Procesos','','inherit','closed','closed','','49-revision-v1','','','2020-10-07 23:14:49','2020-10-07 23:14:49','',49,'http://aquapro.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-10-09 20:35:18','2020-10-09 20:35:18','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-10-09 20:35:18','2020-10-09 20:35:18','',1,'http://aquapro.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-10-09 20:36:02','2020-10-09 20:36:02','','blog1','','inherit','open','closed','','blog1','','','2020-10-09 20:36:02','2020-10-09 20:36:02','',0,'http://aquapro.local/wp-content/uploads/2020/10/blog1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-10-09 20:36:07','2020-10-09 20:36:07','','blog2','','inherit','open','closed','','blog2','','','2020-10-09 20:36:07','2020-10-09 20:36:07','',0,'http://aquapro.local/wp-content/uploads/2020/10/blog2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-10-09 20:36:12','2020-10-09 20:36:12','','blog3','','inherit','open','closed','','blog3','','','2020-10-09 20:36:12','2020-10-09 20:36:12','',0,'http://aquapro.local/wp-content/uploads/2020/10/blog3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-10-09 20:36:17','2020-10-09 20:36:17','','blog4','','inherit','open','closed','','blog4','','','2020-10-09 20:36:17','2020-10-09 20:36:17','',0,'http://aquapro.local/wp-content/uploads/2020/10/blog4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-10-12 05:26:37','2020-10-12 05:26:37','<label> Tu Nombre (requerido)\r\n    [text* your-name] </label>\r\n\r\n<label> Tu correo electrónico (requerido)\r\n    [email* your-email] </label>\r\n\r\n<label>Tu teléfono:\r\n[tel tel-547]\r\n </label>\r\n\r\n<label> Asunto\r\n    [text your-subject] </label>\r\n\r\n<label> Tu Mensaje\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\nAquaPro \"[your-subject]\"\nAquaPro <wordpress@aquapro.local>\ndev-email@flywheel.local\nDe: [your-name] <[your-email]>\r\nAsunto: Contacto desde página web.\r\n\r\nSu telefono es: [tel-547]\r\nEmail: [your-email]\r\n\r\nMensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en AquaPro (http://giseaprototype.local)\nReply-To: [your-email]\n\n\n\n\nAquaPro \"[your-subject]\"\nAquaPro <wordpress@aquapro.local>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en AquaPro (http://aquapro.local)\nReply-To: dev-email@flywheel.local\n\n\n\nGracias por tu mensaje. El mensaje ha sido enviado.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nUno o más campos tienen un error. Por favor revíselo y reinténtelo.\nHubo un error al intentar enviar su mensaje. Por favor inténtelo más tarde.\nDebe aceptar los términos y condiciones antes de enviar su mensaje.\nEste campo es requerido.\nEl texto del campo es muy largo.\nEl texto del campo es muy corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la permitida.\nLa fecha es posterior a la permitida.\nSucedió un error desconocido al subir el archivo.\nNo se le permite subir archivos de este tipo.\nEl archivo es muy pesado.\nOcurrió un error al subir el archivo.\nEl formato del número es inválido.\nEl número es menor al mínimo permitido.\nEl número es mayor al máximo permitido.\nLa respuesta al quiz es incorrecta.\nLa dirección de email ingresada es invalida.\nLa URL es inválida.\nEl número de teléfono es inválido.','Formulario de contacto 1','','publish','closed','closed','','formulario-de-contacto-1','','','2020-10-12 05:29:36','2020-10-12 05:29:36','',0,'http://aquapro.local/?post_type=wpcf7_contact_form&#038;p=91',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-10-12 05:27:19','2020-10-12 05:27:19','[contact-form-7 id=\"91\" title=\"Formulario de contacto 1\"]','Contacto','','inherit','closed','closed','','34-revision-v1','','','2020-10-12 05:27:19','2020-10-12 05:27:19','',34,'http://aquapro.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-10-13 01:30:54','2020-10-13 01:30:54','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"34\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contacto','contacto','publish','closed','closed','','group_5f85032159156','','','2020-10-13 01:32:20','2020-10-13 01:32:20','',0,'http://aquapro.local/?post_type=acf-field-group&#038;p=94',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-10-13 01:31:49','2020-10-13 01:31:49','a:9:{s:4:\"type\";s:17:\"leaflet_map_field\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"lat\";i:0;s:3:\"lng\";i:0;s:4:\"zoom\";i:14;s:6:\"height\";i:450;}','Contacto','contacto','publish','closed','closed','','field_5f85035699615','','','2020-10-13 01:31:49','2020-10-13 01:31:49','',94,'http://aquapro.local/?post_type=acf-field&p=95',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-10-13 01:33:29','2020-10-13 01:33:29','[contact-form-7 id=\"91\" title=\"Formulario de contacto 1\"]','Contacto','','inherit','closed','closed','','34-revision-v1','','','2020-10-13 01:33:29','2020-10-13 01:33:29','',34,'http://aquapro.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-10-13 01:34:29','2020-10-13 01:34:29','<div id=\"mapa\"></div>\r\n[contact-form-7 id=\"91\" title=\"Formulario de contacto 1\"]','Contacto','','inherit','closed','closed','','34-revision-v1','','','2020-10-13 01:34:29','2020-10-13 01:34:29','',34,'http://aquapro.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-10-15 00:23:48','2020-10-15 00:23:48','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"41\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Inicio','inicio','publish','closed','closed','','group_5f87967553a64','','','2020-10-21 00:22:54','2020-10-21 00:22:54','',0,'http://aquapro.local/?post_type=acf-field-group&#038;p=99',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-10-15 00:25:20','2020-10-15 00:25:20','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Hero','hero','publish','closed','closed','','field_5f8796ccb4a03','','','2020-10-15 00:25:20','2020-10-15 00:25:20','',99,'http://aquapro.local/?post_type=acf-field&p=100',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-10-15 00:27:21','2020-10-15 00:27:21','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen hero','imagen_hero','publish','closed','closed','','field_5f8797159fc8f','','','2020-10-15 00:27:21','2020-10-15 00:27:21','',99,'http://aquapro.local/?post_type=acf-field&p=101',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-10-15 00:28:07','2020-10-15 00:28:07','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado Hero','encabezado_hero','publish','closed','closed','','field_5f87977ce7764','','','2020-10-15 00:28:07','2020-10-15 00:28:07','',99,'http://aquapro.local/?post_type=acf-field&p=102',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-10-15 00:28:41','2020-10-15 00:28:41','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Contenido Hero','contenido_hero','publish','closed','closed','','field_5f8797a7e11d0','','','2020-10-15 00:28:41','2020-10-15 00:28:41','',99,'http://aquapro.local/?post_type=acf-field&p=103',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-10-15 00:34:48','2020-10-15 00:34:48','','hero-index','','inherit','open','closed','','hero-index','','','2020-10-15 00:34:48','2020-10-15 00:34:48','',41,'http://aquapro.local/wp-content/uploads/2020/10/hero-index.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-10-15 00:36:32','2020-10-15 00:36:32','','Inicio','','inherit','closed','closed','','41-revision-v1','','','2020-10-15 00:36:32','2020-10-15 00:36:32','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-10-20 06:57:22','2020-10-20 06:57:22','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Bienvenida','bienvenida','publish','closed','closed','','field_5f8e8a32b20d1','','','2020-10-20 06:57:22','2020-10-20 06:57:22','',99,'http://aquapro.local/?post_type=acf-field&p=107',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-10-20 06:58:46','2020-10-20 06:58:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Encabezado bienvenida','encabezado_bienvenida','publish','closed','closed','','field_5f8e8a5a7b21a','','','2020-10-20 06:58:46','2020-10-20 06:58:46','',99,'http://aquapro.local/?post_type=acf-field&p=108',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-10-20 07:03:27','2020-10-20 07:03:27','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Texto bienvenida','texto_bienvenida','publish','closed','closed','','field_5f8e8bab3c2ff','','','2020-10-20 07:03:27','2020-10-20 07:03:27','',99,'http://aquapro.local/?post_type=acf-field&p=109',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-10-20 07:11:03','2020-10-20 07:11:03','','Inicio','','inherit','closed','closed','','41-revision-v1','','','2020-10-20 07:11:03','2020-10-20 07:11:03','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-10-21 00:10:05','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2020-10-21 00:10:05','0000-00-00 00:00:00','',0,'http://aquapro.local/?p=111',0,'post','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-10-21 00:11:06','2020-10-21 00:11:06','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Area','area','publish','closed','closed','','field_5f8f7c874c7db','','','2020-10-21 00:11:22','2020-10-21 00:11:22','',99,'http://aquapro.local/?post_type=acf-field&#038;p=112',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2020-10-21 00:13:15','2020-10-21 00:13:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"Agrega una imágen y un titulo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 1','area_1','publish','closed','closed','','field_5f8f7cb2fde73','','','2020-10-21 00:13:15','2020-10-21 00:13:15','',99,'http://aquapro.local/?post_type=acf-field&p=113',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2020-10-21 00:13:16','2020-10-21 00:13:16','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_5f8f7cddfde74','','','2020-10-21 00:21:34','2020-10-21 00:21:34','',113,'http://aquapro.local/?post_type=acf-field&#038;p=114',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2020-10-21 00:13:16','2020-10-21 00:13:16','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_5f8f7d00fde75','','','2020-10-21 00:21:34','2020-10-21 00:21:34','',113,'http://aquapro.local/?post_type=acf-field&#038;p=115',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2020-10-21 00:15:50','2020-10-21 00:15:50','','area-aparatos','','inherit','open','closed','','area-aparatos','','','2020-10-21 00:15:50','2020-10-21 00:15:50','',41,'http://aquapro.local/wp-content/uploads/2020/10/area-aparatos.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (126,1,'2020-10-21 00:16:08','2020-10-21 00:16:08','','area-cardio','','inherit','open','closed','','area-cardio','','','2020-10-21 00:16:08','2020-10-21 00:16:08','',41,'http://aquapro.local/wp-content/uploads/2020/10/area-cardio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (127,1,'2020-10-21 00:16:12','2020-10-21 00:16:12','','area-pesas','','inherit','open','closed','','area-pesas','','','2020-10-21 00:16:12','2020-10-21 00:16:12','',41,'http://aquapro.local/wp-content/uploads/2020/10/area-pesas.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (128,1,'2020-10-21 00:16:17','2020-10-21 00:16:17','','area-yoga','','inherit','open','closed','','area-yoga','','','2020-10-21 00:16:17','2020-10-21 00:16:17','',41,'http://aquapro.local/wp-content/uploads/2020/10/area-yoga.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (129,1,'2020-10-21 00:17:43','2020-10-21 00:17:43','','Inicio','','inherit','closed','closed','','41-revision-v1','','','2020-10-21 00:17:43','2020-10-21 00:17:43','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2020-10-21 00:22:52','2020-10-21 00:22:52','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"Agrega una imágen y un titulo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 2','area_2','publish','closed','closed','','field_5f8f7f346c107','','','2020-10-21 00:22:52','2020-10-21 00:22:52','',99,'http://aquapro.local/?post_type=acf-field&p=130',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2020-10-21 00:22:52','2020-10-21 00:22:52','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_5f8f7f346c108','','','2020-10-21 00:22:52','2020-10-21 00:22:52','',130,'http://aquapro.local/?post_type=acf-field&p=131',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2020-10-21 00:22:52','2020-10-21 00:22:52','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_5f8f7f346c109','','','2020-10-21 00:22:52','2020-10-21 00:22:52','',130,'http://aquapro.local/?post_type=acf-field&p=132',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"Agrega una imágen y un titulo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 3','area_3','publish','closed','closed','','field_5f8f7f336c104','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',99,'http://aquapro.local/?post_type=acf-field&p=133',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_5f8f7f336c105','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',133,'http://aquapro.local/?post_type=acf-field&p=134',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_5f8f7f336c106','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',133,'http://aquapro.local/?post_type=acf-field&p=135',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:30:\"Agrega una imágen y un titulo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Area 4','area_4','publish','closed','closed','','field_5f8f7f516c10a','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',99,'http://aquapro.local/?post_type=acf-field&p=136',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagen','area_imagen','publish','closed','closed','','field_5f8f7f516c10b','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',136,'http://aquapro.local/?post_type=acf-field&p=137',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2020-10-21 00:22:53','2020-10-21 00:22:53','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Texto','area_texto','publish','closed','closed','','field_5f8f7f516c10c','','','2020-10-21 00:22:53','2020-10-21 00:22:53','',136,'http://aquapro.local/?post_type=acf-field&p=138',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2020-10-21 00:43:46','2020-10-21 00:43:46','','Inicio','','inherit','closed','closed','','41-revision-v1','','','2020-10-21 00:43:46','2020-10-21 00:43:46','',41,'http://aquapro.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2020-10-24 01:41:25','2020-10-24 01:41:25','','Blog','','inherit','closed','closed','','51-autosave-v1','','','2020-10-24 01:41:25','2020-10-24 01:41:25','',51,'http://aquapro.local/51-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2020-10-24 01:38:36','2020-10-24 01:38:36','[gallery link=\"file\" ids=\"67,80,75,76,77,78,79,74,73,72,71,70,69,68\"]','Blog','','inherit','closed','closed','','51-revision-v1','','','2020-10-24 01:38:36','2020-10-24 01:38:36','',51,'http://aquapro.local/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2020-10-24 01:41:55','2020-10-24 01:41:55','[gallery link=\"none\" ids=\"80,75,76,77,78,79,74,73,72,71,70,69,68,67\"]','Blog','','inherit','closed','closed','','51-revision-v1','','','2020-10-24 01:41:55','2020-10-24 01:41:55','',51,'http://aquapro.local/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2020-10-24 01:47:14','2020-10-24 01:47:14','[gallery link=\"file\" ids=\"80,76,77,78,79,75,74,73,72,71,70,89,90\"]','A&E','','publish','closed','closed','','ae','','','2020-10-24 02:34:07','2020-10-24 02:34:07','',0,'http://aquapro.local/?page_id=143',0,'page','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2020-10-24 01:47:14','2020-10-24 01:47:14','[gallery link=\"file\" ids=\"80,76,77,78,79,75,74,73,72,71,70,89,90\"]','A&E','','inherit','closed','closed','','143-revision-v1','','','2020-10-24 01:47:14','2020-10-24 01:47:14','',143,'http://aquapro.local/143-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2020-10-24 01:48:47','2020-10-24 01:48:47',' ','','','publish','closed','closed','','145','','','2020-10-24 01:48:47','2020-10-24 01:48:47','',0,'http://aquapro.local/?p=145',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2020-10-24 02:32:48','2020-10-24 02:32:48','[gallery link=\"file\" ids=\"80,76,77,78,79,75,74,73,72,71,70,89,90\"]\r\n\r\n[gallery link=\"file\" ids=\"90,89,87,80,88,77,78,79,76,75,70,72,73,74\"]','A&E','','inherit','closed','closed','','143-autosave-v1','','','2020-10-24 02:32:48','2020-10-24 02:32:48','',143,'http://aquapro.local/143-autosave-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
INSERT INTO `wp_term_relationships` VALUES (45,2,0);
INSERT INTO `wp_term_relationships` VALUES (46,2,0);
INSERT INTO `wp_term_relationships` VALUES (54,2,0);
INSERT INTO `wp_term_relationships` VALUES (55,2,0);
INSERT INTO `wp_term_relationships` VALUES (145,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','AquaPro');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"370fab045d408edfd81164418daf567ded6e0cb4cc22e578cadcd379dd3f1373\";a:4:{s:10:\"expiration\";i:1603674152;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1603501352;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','111');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse&hidetb=1&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1603503597');
INSERT INTO `wp_usermeta` VALUES (23,1,'meta-box-order_page','a:3:{s:4:\"side\";s:36:\"pageparentdiv,submitdiv,postimagediv\";s:6:\"normal\";s:45:\"postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'screen_layout_page','2');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_page','a:2:{i:0;s:7:\"slugdiv\";i:1;s:11:\"commentsdiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_page','a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_post','a:2:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_post','a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'AquaPro','$P$Bsz.nSATvzBm5t8cwFEfY.dMfp7K7R1','aquapro','dev-email@flywheel.local','http://aquapro.local','2020-09-11 11:13:04','',0,'AquaPro');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 21:24:14
