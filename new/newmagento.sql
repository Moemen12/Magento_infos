-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 01, 2023 at 01:04 PM
-- Server version: 5.7.34
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newmagento`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) UNSIGNED NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 1, '2023-06-13 14:28:45', 'Magento Open Source June release brings important accessibility and security updates', 'We are excited to announce great new accessibility updates in PWA Studio, along with multiple security updates in our June release. PWA Studio can now address the needs of people with all types, degrees, and combinations of disability. These guidelines make Web content more usable for individuals with changing abilities due to aging and often improve usability for users in general. We also have new security patches for all versions still under support or extended support. ', 'https://business.adobe.com/blog/the-latest/three-rules-of-b2b-commerce-using-adobe-commerce', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_passwords`
--

CREATE TABLE `admin_passwords` (
  `password_id` int(10) UNSIGNED NOT NULL COMMENT 'Password Id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Deprecated',
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Last Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

--
-- Dumping data for table `admin_passwords`
--

INSERT INTO `admin_passwords` (`password_id`, `user_id`, `password_hash`, `expires`, `last_updated`) VALUES
(1, 1, 'a3ad101739a4d163b94ec3dbef0a7a230b1089e105221de3da3151d17e06a090:QBG2rbJ8zfi2k4ahgjvfPJcrTFefD7oS:1', 0, 1685952991),
(2, 1, 'a3ad101739a4d163b94ec3dbef0a7a230b1089e105221de3da3151d17e06a090:QBG2rbJ8zfi2k4ahgjvfPJcrTFefD7oS:1', 0, 1690357473);

-- --------------------------------------------------------

--
-- Table structure for table `admin_system_messages`
--

CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates',
  `refresh_token` text COMMENT 'Email connector refresh token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`, `interface_locale`, `failures_num`, `first_failure`, `lock_expires`, `refresh_token`) VALUES
(1, 'Moemen', 'Moemen', 'moemensaadeh5@gmail.com', 'Moemen', 'a3ad101739a4d163b94ec3dbef0a7a230b1089e105221de3da3151d17e06a090:QBG2rbJ8zfi2k4ahgjvfPJcrTFefD7oS:1', '2023-06-05 08:16:31', '2023-08-01 09:17:05', '2023-08-01 09:17:05', 142, 0, 1, '{\"configState\":{\"mpbannerslider_module\":\"0\",\"mpbannerslider_general\":\"0\",\"mpbannerslider_mpbannerslider_design\":\"1\",\"blog_general\":\"1\",\"blog_module\":\"0\",\"blog_product_post\":\"1\",\"blog_sidebar\":\"1\",\"blog_monthly_archive\":\"1\",\"blog_comment\":\"0\",\"blog_seo\":\"0\",\"blog_share\":\"0\",\"mpquickflushcache_general\":\"0\",\"web_unsecure\":\"1\",\"web_secure\":\"1\",\"web_url\":\"0\",\"web_seo\":\"0\",\"web_default\":\"0\",\"web_cookie\":\"0\",\"web_session\":\"0\",\"web_browser_capabilities\":\"0\",\"catalog_fields_masks\":\"0\",\"catalog_frontend\":\"1\",\"catalog_review\":\"0\",\"catalog_productalert\":\"0\",\"catalog_productalert_cron\":\"0\",\"catalog_search\":\"0\",\"catalog_navigation\":\"0\",\"admin_security\":\"1\",\"admin_emails\":\"0\",\"admin_startup\":\"0\",\"admin_url\":\"0\",\"admin_dashboard\":\"0\",\"admin_captcha\":\"0\",\"catalog_layered_navigation\":\"0\",\"catalog_price\":\"0\",\"system_upload_configuration\":\"1\",\"system_full_page_cache\":\"1\",\"system_media_storage_configuration\":\"1\",\"system_backup\":\"1\",\"system_adminnotification\":\"1\",\"system_currency\":\"1\",\"system_smtp\":\"1\",\"general_country\":\"1\",\"sales_email_general\":\"1\",\"sales_email_order\":\"0\",\"sales_email_invoice\":\"0\",\"sales_email_invoice_comment\":\"0\",\"sales_email_shipment\":\"0\",\"sales_email_creditmemo\":\"0\",\"sales_email_order_comment\":\"0\",\"sales_email_shipment_comment\":\"0\",\"sales_email_creditmemo_comment\":\"0\",\"customer_create_account\":\"1\",\"customer_password\":\"0\",\"general_region\":\"1\",\"general_locale\":\"1\",\"general_store_information\":\"1\",\"general_single_store_mode\":\"0\",\"catalog_placeholder\":\"0\",\"catalog_recently_products\":\"0\",\"catalog_product_video\":\"0\",\"catalog_seo\":\"0\",\"catalog_downloadable\":\"1\",\"catalog_custom_options\":\"1\",\"wishlist_general\":\"1\",\"wishlist_email\":\"1\",\"wishlist_wishlist_link\":\"1\",\"carriers_flatrate\":\"0\",\"carriers_freeshipping\":\"0\",\"carriers_tablerate\":\"1\",\"shipping_origin\":\"1\",\"shipping_shipping_policy\":\"0\",\"carriers_ups\":\"0\",\"carriers_usps\":\"0\",\"carriers_fedex\":\"0\",\"carriers_dhl\":\"0\",\"carriers_temando\":\"0\",\"checkout_options\":\"1\",\"checkout_cart\":\"1\",\"checkout_sidebar\":\"1\",\"checkout_cart_link\":\"1\",\"checkout_payment_failed\":\"1\",\"tax_vertex_settings\":\"0\",\"tax_classes\":\"0\",\"tax_calculation\":\"0\",\"tax_weee\":\"0\",\"sales_general\":\"1\",\"sales_totals_sort\":\"1\",\"sales_reorder\":\"0\",\"trans_email_ident_general\":\"0\",\"trans_email_ident_sales\":\"0\",\"trans_email_ident_support\":\"0\",\"trans_email_ident_custom1\":\"0\",\"trans_email_ident_custom2\":\"0\",\"contact_contact\":\"1\",\"contact_email\":\"1\",\"reports_dashboard\":\"0\",\"reports_options\":\"1\",\"newrelicreporting_general\":\"1\",\"sitemap_category\":\"0\",\"sitemap_product\":\"0\",\"sitemap_page\":\"0\",\"sitemap_generate\":\"0\",\"sitemap_limit\":\"0\",\"sitemap_search_engines\":\"0\",\"rss_config\":\"0\",\"rss_wishlist\":\"0\",\"rss_catalog\":\"0\",\"msp_securitysuite_recaptcha_general\":\"0\",\"msp_securitysuite_recaptcha_backend\":\"0\",\"msp_securitysuite_recaptcha_frontend\":\"1\",\"tax_cart_display\":\"1\",\"tax_sales_display\":\"0\",\"sales_pdf_invoice\":\"1\",\"sales_pdf_shipment\":\"1\",\"sales_pdf_creditmemo\":\"1\",\"payment_us_purchaseorder\":\"0\",\"payment_us_checkmo\":\"0\",\"payment_us_other_payment_methods\":\"1\",\"payment_us_klarna_section\":\"0\",\"payment_us_free\":\"0\",\"payment_us_cashondelivery\":\"1\",\"payment_us_account\":\"1\",\"payment_us_recommended_solutions\":\"1\",\"payment_us_other_paypal_payment_solutions\":\"0\",\"payment_us_paypal_group_all_in_one\":\"1\",\"payment_us_paypal_payment_gateways\":\"1\",\"payment_us_amazon_payment\":\"0\",\"payment_us_banktransfer\":\"0\",\"payment_us_authorizenet_acceptjs\":\"0\",\"payment_us_authorizenet_directpost\":\"0\",\"dev_template\":\"1\",\"dev_restrict\":\"0\",\"dev_debug\":\"1\",\"dev_translate_inline\":\"0\",\"dev_js\":\"0\",\"dev_css\":\"0\",\"sales_dashboard\":\"0\",\"dev_front_end_development_workflow\":\"0\",\"dev_image\":\"0\",\"dev_static\":\"0\",\"dev_grid\":\"0\"}}', 'WnhFP8iLofcrqLKesyDsEf61fJUXhCkZ', '2023-07-26 07:44:33', 'en_US', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_session`
--

CREATE TABLE `admin_user_session` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

INSERT INTO `admin_user_session` (`id`, `session_id`, `user_id`, `status`, `created_at`, `updated_at`, `ip`) VALUES
(1, 'ebgh7hmfhemnfeuhr0cil875he', 1, 1, '2023-06-05 08:34:47', '2023-06-05 08:57:23', '::1'),
(2, 'kkl4jpj526tvpk436asm0qa7hr', 1, 1, '2023-06-05 09:15:23', '2023-06-05 09:16:32', '::1'),
(3, 'ccpdi00ejs9vkopvemvpqt8de6', 1, 1, '2023-06-05 10:10:08', '2023-06-05 10:11:47', '::1'),
(4, '051v81kcsk9i6lj52ah82ah149', 1, 1, '2023-06-05 11:12:00', '2023-06-05 11:12:29', '::1'),
(5, 'iceuaq0s3glpfge1toc5i3mknc', 1, 1, '2023-06-05 12:56:14', '2023-06-05 13:17:13', '::1'),
(6, '57qrnqaoeltodls8ks255ad4hp', 1, 1, '2023-06-05 13:34:03', '2023-06-05 13:45:35', '::1'),
(7, 'd2tdfu092houn57oursuffgkaa', 1, 1, '2023-06-05 15:31:47', '2023-06-05 15:34:14', '::1'),
(8, 'e5icvb3nm3skd1hnjmiipeh9en', 1, 1, '2023-06-05 16:32:32', '2023-06-05 16:34:41', '::1'),
(9, 'js783qrddp18ns7amm4impdca5', 1, 1, '2023-06-05 16:57:16', '2023-06-05 16:57:50', '::1'),
(10, 'foku9skinb51vt1llp8ql4bve4', 1, 1, '2023-06-06 04:32:48', '2023-06-06 04:39:31', '::1'),
(11, '5tpsgpl1e0v76h0fjpq7n8tofm', 1, 1, '2023-06-06 05:23:13', '2023-06-06 05:23:43', '::1'),
(12, '0pjge1h2j7jnrpgatt8f3ukg1h', 1, 1, '2023-06-06 05:44:57', '2023-06-06 05:44:57', '::1'),
(13, 'nh8qc1d2l4037vcha7vh58t35e', 1, 1, '2023-06-06 06:08:31', '2023-06-06 06:18:24', '::1'),
(14, 'c9m1tskb9na56vcc3vt7irjph3', 1, 1, '2023-06-06 06:59:35', '2023-06-06 06:59:35', '::1'),
(15, 'n3oe76j03meqsj8bsbi3rdt0jq', 1, 1, '2023-06-06 07:18:29', '2023-06-06 07:20:41', '::1'),
(16, 'k7g2vnhrds0sg1l3ai06naavhv', 1, 1, '2023-06-06 11:52:00', '2023-06-06 11:52:00', '::1'),
(17, 'og2vjrrlcuvv3r4ior98o940sl', 1, 1, '2023-06-06 13:55:30', '2023-06-06 13:56:05', '::1'),
(18, 'ijp85vbapeg39ltgg41oivkt0d', 1, 1, '2023-06-06 15:39:55', '2023-06-06 16:01:12', '::1'),
(19, 'kai2oobm6lvjv58fpqajqilm5o', 1, 1, '2023-06-06 17:59:58', '2023-06-06 18:00:26', '::1'),
(20, '9euonhvsi4ebkb432hfg5le82b', 1, 1, '2023-06-07 05:52:18', '2023-06-07 05:52:18', '::1'),
(21, 'hbe1u2r4tfvbqotlg5uj9pgkfr', 1, 1, '2023-06-07 06:19:55', '2023-06-07 06:24:57', '::1'),
(22, 'co6v5ju7pl1dn02fg0oi86dlv9', 1, 1, '2023-06-07 09:50:11', '2023-06-07 09:58:51', '::1'),
(23, 'm54j7vju10u382fb3fq4cu5t2j', 1, 1, '2023-06-08 11:49:22', '2023-06-08 11:49:22', '::1'),
(24, 'btcepvmtvd3khmsv12qid1bvr1', 1, 1, '2023-06-09 06:38:31', '2023-06-09 06:39:57', '::1'),
(25, 'i8vg1jj86sjd2sa89bjn30r8j3', 1, 1, '2023-06-09 07:24:32', '2023-06-09 07:33:15', '::1'),
(26, 'mqipm2nkrn4u0130vhvanm0f1t', 1, 1, '2023-06-09 07:56:36', '2023-06-09 09:09:35', '::1'),
(27, '3jtvmr8hjmfvd3t2mm0i3vqq7h', 1, 1, '2023-06-09 11:41:30', '2023-06-09 12:01:30', '::1'),
(28, '9lpcka2rhefhp82guekt1um0nh', 1, 1, '2023-06-09 12:55:10', '2023-06-09 13:38:24', '::1'),
(29, 'gp1ocfffgoijnr6t5j4qgivt96', 1, 1, '2023-06-09 14:06:43', '2023-06-09 14:07:17', '::1'),
(30, 'v7e8j3voiavu7bh0p2s64qcev2', 1, 1, '2023-06-09 18:00:30', '2023-06-09 18:05:50', '::1'),
(31, 'tc8hltq359lmctf366gdf2s2kl', 1, 1, '2023-06-09 18:21:18', '2023-06-09 19:05:28', '::1'),
(32, '09d1upj9629kt0nc8tvpa6ldoh', 1, 1, '2023-06-09 19:20:43', '2023-06-09 19:24:49', '::1'),
(33, 'jip8j7i19klogbh91faedjja73', 1, 1, '2023-06-09 21:30:29', '2023-06-09 21:38:36', '::1'),
(34, 'a63tlbh9vc16i9ms488l8kgq7b', 1, 1, '2023-06-10 07:10:52', '2023-06-10 07:39:27', '::1'),
(35, 'j5ahmpn0mntnco00pegcv33pvm', 1, 1, '2023-06-10 09:12:41', '2023-06-10 09:50:27', '::1'),
(36, 'q3ukb61096gm0j551408bglqau', 1, 1, '2023-06-10 10:09:11', '2023-06-10 10:37:31', '::1'),
(37, '96g3on8gpl6hdvfsmpfram4aae', 1, 1, '2023-06-10 19:32:44', '2023-06-10 19:32:44', '::1'),
(38, 'v9ack3918tjrfdscgsd6rrplqa', 1, 1, '2023-06-10 19:51:48', '2023-06-10 19:54:23', '::1'),
(39, '9dl4oo84298310218tjss2kmj6', 1, 1, '2023-06-10 20:15:11', '2023-06-10 21:30:22', '::1'),
(40, 'm4lkn2rcu1l3uaueivb516r2t8', 1, 1, '2023-06-11 06:08:16', '2023-06-11 06:57:07', '::1'),
(41, 'cuucl8rpmm3tiq8edgmpimnc8l', 1, 1, '2023-06-11 08:42:06', '2023-06-11 08:45:29', '::1'),
(42, 'uubqpd6pn3jj838thahh886u6b', 1, 1, '2023-06-11 09:11:31', '2023-06-11 09:17:37', '::1'),
(43, 'g0s5jjfoun2mq45k1um2las3pb', 1, 1, '2023-06-12 05:42:31', '2023-06-12 05:43:45', '::1'),
(44, 'd7cmqt2kqiogebrbaa011f7o2s', 1, 1, '2023-06-12 06:01:25', '2023-06-12 06:01:25', '::1'),
(45, '3mbogce93flfg1l936ada6lbp4', 1, 1, '2023-06-12 07:35:45', '2023-06-12 07:35:45', '::1'),
(46, 'g11ks2dg3cld22rljh4no2qc2l', 1, 1, '2023-06-12 09:54:28', '2023-06-12 09:56:25', '::1'),
(47, '4mkro1t41m7g5ktpkjomc54i20', 1, 1, '2023-06-12 13:03:03', '2023-06-12 13:15:18', '::1'),
(48, '00afeo1232ejns2fkcq9svfgv3', 1, 1, '2023-06-12 18:30:55', '2023-06-12 18:45:01', '::1'),
(49, 'lpij2acrjg7bglia3qn0q7kiv1', 1, 1, '2023-06-12 20:08:09', '2023-06-12 20:20:44', '::1'),
(50, '0k8p8eokq6m0pdgga139so41hf', 1, 1, '2023-06-13 06:23:26', '2023-06-13 06:43:14', '::1'),
(51, 'c0ilkr87mhe50obhh0bv2tu1ai', 1, 1, '2023-06-13 08:32:17', '2023-06-13 08:43:28', '::1'),
(52, '3p21b1kl5a676h83tr2bsb14p5', 1, 1, '2023-06-13 08:59:14', '2023-06-13 09:03:46', '::1'),
(53, 'lrnms4qn2qekvpbgs3p19mgutp', 1, 1, '2023-06-13 12:55:44', '2023-06-13 12:56:19', '::1'),
(54, '1jhv66e4l1g7p3ie2am5g10arg', 1, 1, '2023-06-13 13:43:44', '2023-06-13 13:50:56', '::1'),
(55, 'm0vi5huah6nbi15e41glgq2ocr', 1, 1, '2023-06-13 19:46:00', '2023-06-13 19:50:42', '::1'),
(56, 'jcf7vfe0r815h87kui3nkd2u18', 1, 1, '2023-06-13 20:50:00', '2023-06-13 20:55:18', '::1'),
(57, 'pnbash7rtipadrss5c0mg8pte8', 1, 1, '2023-06-13 21:13:54', '2023-06-13 21:16:44', '::1'),
(58, 'anhder7g2lugrq06evd6ie7sv9', 1, 1, '2023-06-14 05:57:28', '2023-06-14 13:57:26', '::1'),
(59, '55q1rrl8a5k3nelv7iir8ui8df', 1, 1, '2023-06-15 07:13:35', '2023-06-15 07:14:20', '::1'),
(60, 'f7jovq06j3tr0ro9ui6f4bb64l', 1, 1, '2023-06-15 12:15:21', '2023-06-15 12:21:00', '::1'),
(61, '3g4rdflet4631mgsjrrjtvqist', 1, 1, '2023-06-15 18:47:57', '2023-06-15 19:00:48', '::1'),
(62, '8ragh5e6ng51469p4r49h7mrhg', 1, 1, '2023-06-19 12:14:33', '2023-06-19 12:16:41', '::1'),
(63, 'qk9re8gtqnveq5o6fjf1a4edjj', 1, 1, '2023-06-19 18:59:28', '2023-06-19 20:47:29', '::1'),
(64, 'btd6etjtcd202dkhg5ptdp0c2l', 1, 2, '2023-06-20 04:42:00', '2023-06-20 06:50:50', '::1'),
(65, '4m1kurf699t0fk273sg1ln96no', 1, 1, '2023-06-20 06:50:50', '2023-06-20 10:20:42', '::1'),
(66, '5sqhi0asuc14blpvr689oi91vl', 1, 2, '2023-06-20 12:40:02', '2023-06-20 13:59:19', '::1'),
(67, 't0s6hsi5joe8cnab92mcgfmiar', 1, 2, '2023-06-20 13:59:19', '2023-06-20 18:14:55', '::1'),
(68, 'qq2bdqe8esad47hjhnr5i714qe', 1, 1, '2023-06-20 18:14:55', '2023-06-20 19:31:51', '::1'),
(69, 'k1ns92gqr6n75hlmvohp9gratf', 1, 2, '2023-06-21 06:55:28', '2023-06-21 10:32:37', '::1'),
(70, 'p7odm2str017qbodof75lljhf1', 1, 1, '2023-06-21 10:32:37', '2023-06-21 15:01:00', '::1'),
(71, 'mhr6fpdgtd2if8urkhbdsus0n8', 1, 1, '2023-06-21 17:16:07', '2023-06-21 19:43:05', '::1'),
(72, 'aevk06ki5ddfidi6vdiqgc9ume', 1, 2, '2023-06-22 06:01:26', '2023-06-22 10:43:35', '::1'),
(73, 'ikkh5jtqjc16ap3gj119ea67nm', 1, 1, '2023-06-22 10:43:35', '2023-06-22 13:09:54', '::1'),
(74, '6r53ic2018fu8690u6muo4h2ve', 1, 1, '2023-06-23 06:13:26', '2023-06-23 07:21:30', '::1'),
(75, '1825qcq5f5v9tvrjqsb6n6ug60', 1, 1, '2023-06-23 11:19:46', '2023-06-23 11:19:46', '::1'),
(76, 'va9teo5k6qtb8a26t3ked4htcg', 1, 1, '2023-06-23 13:47:14', '2023-06-23 15:17:16', '::1'),
(77, '0acssst204pg2vln6396s8ppob', 1, 1, '2023-06-24 22:52:21', '2023-06-24 23:02:18', '::1'),
(78, '2ugi5isqvse7sc4ml9lcvmadub', 1, 1, '2023-06-25 21:09:06', '2023-06-25 21:17:24', '::1'),
(79, 'cc4oo04g8ou8p7hpfgmmbl0itv', 1, 2, '2023-06-26 07:55:40', '2023-06-26 08:47:38', '::1'),
(80, 'anikng16l0rl9d1p0ctmijgk3v', 1, 1, '2023-06-26 08:47:38', '2023-06-26 09:10:41', '::1'),
(81, '9tg28urv7r2reunlrtunmtg9tt', 1, 1, '2023-06-26 12:21:31', '2023-06-26 16:03:37', '::1'),
(82, 'u7g72au9uanqmrkrunp8n284uf', 1, 1, '2023-06-27 07:07:45', '2023-06-27 07:57:38', '::1'),
(83, '8u9hjenkfb23a7jk93inuvaq2r', 1, 1, '2023-06-27 12:53:03', '2023-06-27 12:58:58', '::1'),
(84, '0j6bqvj9dnffljf1jdtdjdf1q6', 1, 2, '2023-07-03 07:45:47', '2023-07-03 08:52:03', '::1'),
(85, 'tuqo9cofoik19qdkfh5ltpegmb', 1, 2, '2023-07-03 08:52:03', '2023-07-03 12:01:37', '::1'),
(86, '2ek4jojkicvmo3i91n4rlp9m0s', 1, 1, '2023-07-03 12:01:37', '2023-07-03 12:41:01', '::1'),
(87, 'a26beph403se7slledcshcnu76', 1, 1, '2023-07-04 06:00:03', '2023-07-04 07:35:20', '::1'),
(88, 'q44neaabi54vlqhve3o52khc8s', 1, 1, '2023-07-04 13:14:48', '2023-07-04 13:46:35', '::1'),
(89, 'qilt1o1ie7uer10uak3o25ha71', 1, 1, '2023-07-05 05:56:33', '2023-07-05 05:59:45', '::1'),
(90, 'dikurjgsls9d04ga31u515uci9', 1, 2, '2023-07-05 17:29:21', '2023-07-05 17:53:40', '192.168.2.241'),
(91, 'isov8kh6rlmt4obl23ehm3mver', 1, 1, '2023-07-05 17:53:40', '2023-07-05 19:54:31', '::1'),
(92, 'hso4n7gvdgb6r8ru7rin31mh6d', 1, 1, '2023-07-06 06:04:18', '2023-07-06 06:56:04', '::1'),
(93, 'g15ldvhfbkmqhc7uhr5ee9q54t', 1, 2, '2023-07-06 12:08:20', '2023-07-06 12:54:51', '::1'),
(94, 'nfbvl0jhgj3g7gosul60kem1ms', 1, 1, '2023-07-06 12:54:51', '2023-07-06 13:34:57', '192.168.0.112'),
(95, 'mdajou7054r1ps71jbsuvq4cpb', 1, 1, '2023-07-06 19:37:45', '2023-07-06 19:38:25', '::1'),
(96, 'eskcib633m02d3uk2inedbucal', 1, 1, '2023-07-07 18:07:06', '2023-07-07 20:43:04', '::1'),
(97, 'pboch3k8kev32kgtepi3986ftb', 1, 1, '2023-07-10 12:51:33', '2023-07-10 15:29:25', '::1'),
(98, 'm0lpsetub8ss5b61cnperfbtc8', 1, 1, '2023-07-11 07:00:03', '2023-07-11 07:08:35', '::1'),
(99, 'stc1oa55mmjioci7qcf56fb9l1', 1, 1, '2023-07-11 09:34:40', '2023-07-11 09:51:27', '::1'),
(100, '4r0q8uf6pebo6tt7lr8pli6e7k', 1, 1, '2023-07-11 13:30:10', '2023-07-11 15:41:52', '::1'),
(101, 'd7t5ateuu3e44mdru1t4ec24gu', 1, 1, '2023-07-11 18:27:49', '2023-07-11 19:12:58', '::1'),
(102, 'egrttc06j6q52hs54fgf676u0s', 1, 1, '2023-07-12 06:01:26', '2023-07-12 06:07:27', '::1'),
(103, '781loic2km8ni55q25banpt483', 1, 1, '2023-07-12 08:56:39', '2023-07-12 08:58:52', '::1'),
(104, 'bca45skcurfe2bd9puounejf6l', 1, 1, '2023-07-12 11:34:49', '2023-07-12 13:27:00', '::1'),
(105, 'a1haobmj12nqlv23je2bke8dt2', 1, 1, '2023-07-13 07:05:04', '2023-07-13 09:34:37', '::1'),
(106, '4kmpjqbmfs478qtpemo0vatm3s', 1, 1, '2023-07-13 11:46:19', '2023-07-13 13:24:31', '::1'),
(107, 'saf1g316ida3semddcp5mfll3f', 1, 1, '2023-07-14 07:57:14', '2023-07-14 08:34:11', '::1'),
(108, 'bjaia7vcag7qvrvvgec7eikvti', 1, 1, '2023-07-14 11:03:25', '2023-07-14 11:46:43', '::1'),
(109, 'pdd3e0u88ripsd01edvlnslfnq', 1, 1, '2023-07-14 16:54:48', '2023-07-14 16:55:25', '::1'),
(110, 'huvhn3g7u1cop70b9ss1u616oe', 1, 1, '2023-07-15 06:02:04', '2023-07-15 06:07:08', '::1'),
(111, 'g97uaimnu0p2e6egnhjqjqjegl', 1, 2, '2023-07-15 18:41:31', '2023-07-15 18:41:45', '::1'),
(112, 'f5fm5fu2kfug0dbhkn2rpktged', 1, 1, '2023-07-15 18:41:45', '2023-07-15 19:23:00', '::1'),
(113, 'b265pcs48mia225hp63v3jm3gg', 1, 1, '2023-07-16 07:21:07', '2023-07-16 07:21:07', '::1'),
(114, 'tr3ji5b2v0m4ep727cm166ikkp', 1, 1, '2023-07-16 12:55:20', '2023-07-16 13:16:49', '::1'),
(115, 'cfqvojji3mihgepq578vjsq11t', 1, 2, '2023-07-21 11:38:25', '2023-07-21 13:40:15', '::1'),
(116, 'a1n3drbms20n0gphsgnvs2j2ot', 1, 1, '2023-07-21 13:40:15', '2023-07-21 13:57:46', '::1'),
(117, '46vau275bb57ls4ng594mcme7f', 1, 1, '2023-07-22 14:04:56', '2023-07-22 15:09:04', '::1'),
(118, '0f111lhr5bi9bsv8rvt4o00rjp', 1, 1, '2023-07-23 19:29:20', '2023-07-23 19:29:20', '::1'),
(119, 'eocop84fbtvvqljlhaobuo3vjs', 1, 1, '2023-07-24 07:12:39', '2023-07-24 07:40:48', '::1'),
(120, 'b1a3l6vgpoc6ugeiubqn5v524c', 1, 1, '2023-07-25 19:59:23', '2023-07-25 20:25:44', '::1'),
(121, 'efgbvdn7t0p58hs4paaidct1gv', 1, 0, '2023-07-26 07:21:56', '2023-07-26 07:43:03', '::1'),
(122, 'n469apjmsepgiluu922s5rqb8q', 1, 2, '2023-07-26 07:59:46', '2023-07-26 11:28:42', '::1'),
(123, 'up1nqpkodsdiko3lkv0avd811v', 1, 1, '2023-07-26 11:28:42', '2023-07-26 15:33:06', '::1'),
(124, 'ur4cgi5dh1dei7smduvvo22253', 1, 1, '2023-07-26 17:50:12', '2023-07-26 20:19:10', '::1'),
(125, 'udis4sjue86idsh7i4judde7lb', 1, 2, '2023-07-27 05:03:39', '2023-07-27 05:53:57', '::1'),
(126, '6riehuht4jt89tftsv3fmr34cf', 1, 2, '2023-07-27 05:53:57', '2023-07-27 07:35:04', '::1'),
(127, 'um6tvt9oud2gqaq9tb6mgmm7rl', 1, 1, '2023-07-27 07:35:04', '2023-07-27 16:12:58', '::1'),
(128, 'rcve3pnk79fgvhb1kl936km9ce', 1, 1, '2023-07-27 18:58:22', '2023-07-27 22:02:34', '::1'),
(129, '0a69b6fect1skrhgsuj6q6qdtb', 1, 1, '2023-07-28 04:44:31', '2023-07-28 09:49:57', '::1'),
(130, 'p5kimpp5k52hfukhikkmt9j6gt', 1, 1, '2023-07-28 14:15:23', '2023-07-28 14:22:35', '::1'),
(131, 'c3j72eu3d2c33s4g6mnls0abpt', 1, 1, '2023-07-30 14:33:34', '2023-07-30 15:39:59', '::1'),
(132, '37e85tupovqdrbhpbra15n2t81', 1, 1, '2023-07-30 18:40:36', '2023-07-30 19:11:36', '::1'),
(133, 'ksrensktd378clfmhha89ihqm6', 1, 1, '2023-07-31 05:53:22', '2023-07-31 07:58:05', '::1'),
(134, 'lj9s5p0ulicqci97igkonddqvv', 1, 2, '2023-08-01 06:41:37', '2023-08-01 08:01:35', '::1'),
(135, 'fm49hu3a7ngaokqjn34o4tsbjg', 1, 2, '2023-08-01 08:01:35', '2023-08-01 08:05:25', '::1'),
(136, '2fqd2q7jk88hs8g3akhu0r7eg0', 1, 2, '2023-08-01 08:05:25', '2023-08-01 08:09:19', '127.0.0.1'),
(137, '85fi3r6738a5thv0a581vkn7i8', 1, 2, '2023-08-01 08:09:19', '2023-08-01 08:27:01', '::1'),
(138, 'aqn69lohuouse9alk4pfvltgj5', 1, 2, '2023-08-01 08:27:01', '2023-08-01 08:42:43', '::1'),
(139, '4uvmd6onvmenh9b87g8oaj15n8', 1, 2, '2023-08-01 08:42:43', '2023-08-01 09:10:26', '::1'),
(140, 'mp7mbau2nm5j5nucqqlbrjlis3', 1, 2, '2023-08-01 09:10:26', '2023-08-01 09:14:44', '::1'),
(141, 'gg565ka8vtuf5qb3du78190j1r', 1, 2, '2023-08-01 09:14:44', '2023-08-01 09:17:05', '192.168.0.112'),
(142, 'lcclcnofoj985ll7nmp5b292h9', 1, 1, '2023-08-01 09:17:05', '2023-08-01 11:24:35', '192.168.0.112');

-- --------------------------------------------------------

--
-- Table structure for table `amazon_customer`
--

CREATE TABLE `amazon_customer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer_id',
  `amazon_id` varchar(255) NOT NULL COMMENT 'Amazon_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_customer';

-- --------------------------------------------------------

--
-- Table structure for table `amazon_pending_authorization`
--

CREATE TABLE `amazon_pending_authorization` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order_id',
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment_id',
  `authorization_id` varchar(255) DEFAULT NULL COMMENT 'Authorization_id',
  `created_at` datetime NOT NULL COMMENT 'Created_at',
  `updated_at` datetime DEFAULT NULL COMMENT 'Updated_at',
  `processed` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Initial authorization processed',
  `capture` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Initial authorization has capture',
  `capture_id` varchar(255) DEFAULT NULL COMMENT 'Initial authorization capture id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_pending_authorization';

-- --------------------------------------------------------

--
-- Table structure for table `amazon_pending_capture`
--

CREATE TABLE `amazon_pending_capture` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `capture_id` varchar(255) NOT NULL COMMENT 'Capture_id',
  `created_at` datetime NOT NULL COMMENT 'Created_at',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'order id',
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'payment id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_pending_capture';

-- --------------------------------------------------------

--
-- Table structure for table `amazon_pending_refund`
--

CREATE TABLE `amazon_pending_refund` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `refund_id` varchar(255) NOT NULL COMMENT 'Refund_id',
  `created_at` datetime NOT NULL COMMENT 'Created_at',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order_id',
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_pending_refund';

-- --------------------------------------------------------

--
-- Table structure for table `amazon_quote`
--

CREATE TABLE `amazon_quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote_id',
  `amazon_order_reference_id` varchar(255) NOT NULL COMMENT 'Amazon_order_reference_id',
  `sandbox_simulation_reference` varchar(255) DEFAULT NULL COMMENT 'Sandbox simulation reference',
  `confirmed` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote confirmed with Amazon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_quote';

-- --------------------------------------------------------

--
-- Table structure for table `amazon_sales_order`
--

CREATE TABLE `amazon_sales_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order_id',
  `amazon_order_reference_id` varchar(255) NOT NULL COMMENT 'Amazon_order_reference_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='amazon_sales_order';

-- --------------------------------------------------------

--
-- Table structure for table `authorization_role`
--

CREATE TABLE `authorization_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

INSERT INTO `authorization_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `user_type`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, '2', 'Administrators'),
(2, 1, 2, 0, 'U', 1, '2', 'Moemen');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_rule`
--

CREATE TABLE `authorization_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

INSERT INTO `authorization_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `permission`) VALUES
(1, 1, 'Magento_Backend::all', NULL, 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `cache_tag`
--

CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

--
-- Dumping data for table `captcha_log`
--

INSERT INTO `captcha_log` (`type`, `value`, `count`, `updated_at`) VALUES
('1', '192.168.2.241', 1, '2023-07-05 17:38:42'),
('2', 'asd@gmail.com', 1, '2023-07-06 13:07:11'),
('2', 'kjbuhi@fcc.com', 1, '2023-07-06 09:18:50'),
('2', 'kmomnon@jnl.com', 1, '2023-07-06 09:18:10'),
('2', 'mireieieiw@test.com', 1, '2023-07-26 13:08:04'),
('2', 'moemen@gmail.com', 1, '2023-07-06 12:55:26'),
('2', 'moemensaadeg3@gmail.com', 1, '2023-07-15 19:55:45'),
('2', 'moemjvvg@gmail.com', 1, '2023-07-19 13:57:54'),
('2', 'mosfer@fdhe.com', 1, '2023-07-06 09:19:24'),
('2', 'sdf@gmail.com', 1, '2023-07-06 12:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `website_id`, `stock_name`) VALUES
(1, 0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`, `website_id`) VALUES
(14, 14, 1, '1212424.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(19, 19, 1, '12222.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(20, 20, 1, '33.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(21, 21, 1, '11.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(22, 22, 1, '11.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(23, 23, 1, '21.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(24, 24, 1, '1.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(25, 25, 1, '1.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(26, 26, 1, '12.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(27, 27, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(28, 28, 1, '20.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(29, 29, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(30, 30, 1, '32.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(31, 31, 1, NULL, '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 0, '2023-06-26 13:05:47', '1.0000', 1, 1, 1, 1, 1, '1.0000', 1, 0, 0, 0),
(32, 32, 1, '30.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 0, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(33, 33, 1, '322.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(34, 34, 1, '322.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(35, 35, 1, '322.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(36, 36, 1, '0.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(37, 37, 1, '321.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(38, 38, 1, '322.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(39, 39, 1, '322.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(40, 40, 1, '3.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(41, 41, 1, '534.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(42, 42, 1, '455.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(14, 0, 1, '1212424.0000', 1),
(19, 0, 1, '12222.0000', 1),
(20, 0, 1, '33.0000', 1),
(21, 0, 1, '11.0000', 1),
(22, 0, 1, '11.0000', 1),
(23, 0, 1, '21.0000', 1),
(24, 0, 1, '1.0000', 1),
(25, 0, 1, '1.0000', 1),
(26, 0, 1, '12.0000', 1),
(27, 0, 1, '100.0000', 1),
(28, 0, 1, '20.0000', 1),
(29, 0, 1, '0.0000', 0),
(30, 0, 1, '32.0000', 1),
(31, 0, 1, '0.0000', 0),
(32, 0, 1, '30.0000', 0),
(33, 0, 1, '322.0000', 1),
(34, 0, 1, '322.0000', 1),
(35, 0, 1, '322.0000', 1),
(36, 0, 1, '0.0000', 1),
(37, 0, 1, '321.0000', 1),
(38, 0, 1, '322.0000', 1),
(39, 0, 1, '322.0000', 1),
(40, 0, 1, '3.0000', 1),
(41, 0, 1, '534.0000', 1),
(42, 0, 1, '455.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_replica`
--

CREATE TABLE `cataloginventory_stock_status_replica` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status_replica`
--

INSERT INTO `cataloginventory_stock_status_replica` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(14, 0, 1, '1212424.0000', 1),
(19, 0, 1, '12222.0000', 1),
(20, 0, 1, '33.0000', 1),
(21, 0, 1, '11.0000', 1),
(22, 0, 1, '11.0000', 1),
(23, 0, 1, '22.0000', 1),
(24, 0, 1, '1.0000', 1),
(25, 0, 1, '1.0000', 1),
(26, 0, 1, '12.0000', 1),
(27, 0, 1, '100.0000', 1),
(28, 0, 1, '22.0000', 1),
(29, 0, 1, '0.0000', 0),
(30, 0, 1, '33.0000', 1),
(31, 0, 1, '0.0000', 0),
(32, 0, 1, '30.0000', 0),
(33, 0, 1, '322.0000', 1),
(34, 0, 1, '322.0000', 1),
(35, 0, 1, '322.0000', 1),
(36, 0, 1, '0.0000', 1),
(37, 0, 1, '322.0000', 1),
(38, 0, 1, '322.0000', 1),
(39, 0, 1, '322.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE `catalogrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website_replica`
--

CREATE TABLE `catalogrule_group_website_replica` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price_replica`
--

CREATE TABLE `catalogrule_product_price_replica` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_replica`
--

CREATE TABLE `catalogrule_product_replica` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1_tmp';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

INSERT INTO `catalogsearch_fulltext_scope1` (`entity_id`, `attribute_id`, `data_index`) VALUES
(14, 73, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2'),
(14, 74, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2'),
(14, 97, 'Enabled'),
(14, 134, 'Taxable Goods'),
(14, 148, 'oventrop'),
(19, 73, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4'),
(19, 74, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4'),
(19, 97, 'Enabled'),
(19, 134, 'Taxable Goods'),
(19, 148, 'nobel'),
(20, 73, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"'),
(20, 74, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"'),
(20, 97, 'Enabled'),
(20, 134, 'Taxable Goods'),
(20, 148, 'imt'),
(21, 73, 'ECA - MANOMETER 1/4'),
(21, 74, 'ECA - MANOMETER 1/4'),
(21, 97, 'Enabled'),
(21, 134, 'Taxable Goods'),
(21, 148, 'syr'),
(22, 73, 'OV - OFIX OIL COMP. TEE 10MM'),
(22, 74, 'OV - OFIX OIL COMP. TEE 10MM'),
(22, 97, 'Enabled'),
(22, 134, 'Taxable Goods'),
(22, 148, 'oventrop'),
(23, 73, 'OV - NR.4 METAL CABINET 120x76x11.5'),
(23, 74, 'OV - NR.4 METAL CABINET 120x76x11.5'),
(23, 97, 'Enabled'),
(23, 134, 'Taxable Goods'),
(23, 148, 'redi'),
(24, 73, 'ARTHERMO - MANOMETER RADIAL'),
(24, 74, 'ARTHERMO - MANOMETER RADIAL'),
(24, 97, 'Enabled'),
(24, 134, 'Taxable Goods'),
(24, 148, 'herrmann'),
(25, 73, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH'),
(25, 74, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH'),
(25, 97, 'Enabled'),
(25, 134, 'Taxable Goods'),
(25, 148, 'seron'),
(26, 73, 'TWIN-INSULATED-SOLAR-HOSE'),
(26, 74, 'TWIN-INSULATED-SOLAR-HOSE'),
(26, 97, 'Enabled'),
(26, 134, 'Taxable Goods'),
(26, 148, 'hailin'),
(27, 73, 'HEAVY-ANCHOR-RAWL-BOLT'),
(27, 74, 'HEAVY-ANCHOR-RAWL-BOLT'),
(27, 97, 'Enabled'),
(27, 134, 'Taxable Goods'),
(27, 148, 'ega'),
(28, 73, '5543-LIQUID-SEALENT'),
(28, 74, '5543-LIQUID-SEALENT'),
(28, 97, 'Enabled'),
(28, 134, 'Taxable Goods'),
(28, 148, 'hailin'),
(29, 73, 'OV - MULTIDIS SF TOPMETER | OV - MULTIDIS SF TOPMETER-2circuits'),
(29, 74, 'OV - MULTIDIS SF TOPMETER'),
(29, 97, 'Enabled | Enabled'),
(29, 134, 'Taxable Goods | Taxable Goods'),
(29, 148, 'imt | imt'),
(30, 73, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"'),
(30, 74, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"'),
(30, 97, 'Enabled'),
(30, 134, 'Taxable Goods'),
(30, 148, 'oventrop'),
(36, 73, 'OV - MULTIDIS SF TOPMETER | configurable test-2circuits | configurable test-3circuits | configurable test-4circuits | OV - MULTIDIS SF TOPMETER-5circuits | OV - MULTIDIS SF TOPMETER-6circuits | OV - MULTIDIS SF TOPMETER-7circuits'),
(36, 74, '3453545'),
(36, 97, 'Enabled | Enabled | Enabled | Enabled | Enabled | Enabled | Enabled'),
(36, 134, 'Taxable Goods | Taxable Goods | Taxable Goods | Taxable Goods | Taxable Goods | Taxable Goods | Taxable Goods'),
(36, 148, 'oventrop | oventrop | oventrop | oventrop | oventrop | oventrop | oventrop'),
(40, 73, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410'),
(40, 74, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410'),
(40, 97, 'Enabled'),
(40, 134, 'Taxable Goods'),
(40, 148, 'syr'),
(41, 73, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L'),
(41, 74, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L'),
(41, 97, 'Enabled'),
(41, 134, 'Taxable Goods'),
(41, 148, 'seron'),
(42, 73, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW'),
(42, 74, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW'),
(42, 97, 'Enabled'),
(42, 134, 'Taxable Goods'),
(42, 148, 'redi');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, '2023-06-05 08:16:24', '2023-07-16 13:00:46', '1', 0, 0, 16),
(3, 3, 1, '2023-06-10 20:42:50', '2023-07-16 13:00:46', '1/3', 2, 1, 16),
(6, 3, 3, '2023-06-10 21:29:47', '2023-07-16 13:00:46', '1/3/6', 1, 2, -2),
(8, 3, 3, '2023-06-11 09:17:40', '2023-07-14 11:45:16', '1/3/8', 2, 2, 3),
(9, 3, 3, '2023-06-12 20:10:19', '2023-07-15 19:22:04', '1/3/9', 3, 2, 3),
(10, 3, 3, '2023-06-12 20:14:08', '2023-07-15 19:20:33', '1/3/10', 4, 2, 3),
(12, 3, 3, '2023-06-12 20:17:56', '2023-07-15 19:20:03', '1/3/12', 6, 2, 1),
(13, 3, 6, '2023-06-25 21:10:32', '2023-07-15 18:42:23', '1/3/6/13', 1, 3, -6),
(14, 3, 6, '2023-06-25 21:10:56', '2023-06-25 21:10:56', '1/3/6/14', 2, 3, 0),
(15, 3, 6, '2023-06-25 21:11:16', '2023-06-25 21:11:16', '1/3/6/15', 3, 3, 0),
(16, 3, 6, '2023-06-25 21:12:29', '2023-07-14 11:16:46', '1/3/6/16', 4, 3, -1),
(17, 3, 8, '2023-06-25 21:13:05', '2023-06-25 21:13:05', '1/3/8/17', 1, 3, 0),
(18, 3, 8, '2023-06-25 21:13:48', '2023-06-25 21:13:48', '1/3/8/18', 2, 3, 0),
(19, 3, 9, '2023-06-25 21:14:13', '2023-06-25 21:14:13', '1/3/9/19', 1, 3, 0),
(20, 3, 9, '2023-06-25 21:14:34', '2023-06-25 21:14:34', '1/3/9/20', 2, 3, 0),
(21, 3, 9, '2023-06-25 21:15:12', '2023-06-25 21:15:12', '1/3/9/21', 3, 3, 0),
(22, 3, 10, '2023-06-25 21:15:38', '2023-06-25 21:15:38', '1/3/10/22', 1, 3, 0),
(23, 3, 10, '2023-06-25 21:15:58', '2023-06-25 21:15:58', '1/3/10/23', 2, 3, 0),
(24, 3, 12, '2023-06-25 21:16:26', '2023-06-25 21:16:26', '1/3/12/24', 1, 3, 0),
(26, 3, 3, '2023-07-10 13:04:05', '2023-07-15 19:19:19', '1/3/26', 7, 2, 2),
(32, 3, 6, '2023-07-14 11:44:24', '2023-07-16 13:00:46', '1/3/6/32', 5, 3, 0),
(33, 3, 8, '2023-07-14 11:45:16', '2023-07-14 11:45:16', '1/3/8/33', 3, 3, 0),
(34, 3, 10, '2023-07-14 11:45:44', '2023-07-14 11:45:44', '1/3/10/34', 3, 3, 0),
(35, 3, 26, '2023-07-14 11:46:44', '2023-07-14 11:46:44', '1/3/26/35', 1, 3, 0),
(36, 3, 26, '2023-07-14 11:47:13', '2023-07-14 11:47:13', '1/3/26/36', 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 61, 0, 3, NULL),
(2, 62, 0, 3, NULL),
(5, 61, 0, 6, NULL),
(6, 62, 0, 6, NULL),
(7, 61, 0, 26, NULL),
(8, 62, 0, 26, NULL),
(9, 61, 0, 12, NULL),
(10, 62, 0, 12, NULL),
(11, 61, 0, 10, NULL),
(12, 62, 0, 10, NULL),
(13, 61, 0, 9, NULL),
(14, 62, 0, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 69, 0, 1, 1),
(4, 46, 0, 3, 1),
(5, 54, 0, 3, 1),
(6, 69, 0, 3, 1),
(7, 70, 0, 3, 1),
(8, 71, 0, 3, 0),
(14, 53, 0, 3, NULL),
(20, 46, 0, 6, 1),
(21, 54, 0, 6, 1),
(22, 69, 0, 6, 1),
(23, 70, 0, 6, 0),
(24, 71, 0, 6, 0),
(32, 46, 0, 8, 1),
(33, 54, 0, 8, 1),
(34, 69, 0, 8, 1),
(35, 70, 0, 8, 0),
(36, 71, 0, 8, 0),
(38, 46, 0, 9, 1),
(39, 54, 0, 9, 1),
(40, 69, 0, 9, 1),
(41, 70, 0, 9, 0),
(42, 71, 0, 9, 0),
(43, 46, 0, 10, 1),
(44, 54, 0, 10, 1),
(45, 69, 0, 10, 1),
(46, 70, 0, 10, 0),
(47, 71, 0, 10, 0),
(53, 46, 0, 12, 1),
(54, 54, 0, 12, 1),
(55, 69, 0, 12, 1),
(56, 70, 0, 12, 0),
(57, 71, 0, 12, 0),
(62, 46, 0, 13, 1),
(63, 54, 0, 13, 1),
(64, 69, 0, 13, 1),
(65, 70, 0, 13, 0),
(66, 71, 0, 13, 0),
(67, 46, 0, 14, 1),
(68, 54, 0, 14, 1),
(69, 69, 0, 14, 1),
(70, 70, 0, 14, 0),
(71, 71, 0, 14, 0),
(72, 46, 0, 15, 1),
(73, 54, 0, 15, 1),
(74, 69, 0, 15, 1),
(75, 70, 0, 15, 0),
(76, 71, 0, 15, 0),
(77, 46, 0, 16, 1),
(78, 54, 0, 16, 1),
(79, 69, 0, 16, 1),
(80, 70, 0, 16, 0),
(81, 71, 0, 16, 0),
(82, 46, 0, 17, 1),
(83, 54, 0, 17, 1),
(84, 69, 0, 17, 1),
(85, 70, 0, 17, 0),
(86, 71, 0, 17, 0),
(87, 46, 0, 18, 1),
(88, 54, 0, 18, 1),
(89, 69, 0, 18, 1),
(90, 70, 0, 18, 0),
(91, 71, 0, 18, 0),
(92, 46, 0, 19, 1),
(93, 54, 0, 19, 1),
(94, 69, 0, 19, 1),
(95, 70, 0, 19, 0),
(96, 71, 0, 19, 0),
(97, 46, 0, 20, 1),
(98, 54, 0, 20, 1),
(99, 69, 0, 20, 1),
(100, 70, 0, 20, 0),
(101, 71, 0, 20, 0),
(102, 46, 0, 21, 1),
(103, 54, 0, 21, 1),
(104, 69, 0, 21, 1),
(105, 70, 0, 21, 0),
(106, 71, 0, 21, 0),
(107, 46, 0, 22, 1),
(108, 54, 0, 22, 1),
(109, 69, 0, 22, 1),
(110, 70, 0, 22, 0),
(111, 71, 0, 22, 0),
(112, 46, 0, 23, 1),
(113, 54, 0, 23, 1),
(114, 69, 0, 23, 1),
(115, 70, 0, 23, 0),
(116, 71, 0, 23, 0),
(117, 46, 0, 24, 1),
(118, 54, 0, 24, 1),
(119, 69, 0, 24, 1),
(120, 70, 0, 24, 0),
(121, 71, 0, 24, 0),
(128, 46, 0, 26, 1),
(129, 54, 0, 26, 1),
(130, 69, 0, 26, 1),
(131, 70, 0, 26, 0),
(132, 71, 0, 26, 0),
(138, 53, 0, 6, NULL),
(159, 46, 0, 32, 1),
(160, 54, 0, 32, 1),
(161, 69, 0, 32, 1),
(162, 70, 0, 32, 0),
(163, 71, 0, 32, 0),
(164, 46, 0, 33, 1),
(165, 54, 0, 33, 1),
(166, 69, 0, 33, 1),
(167, 70, 0, 33, 0),
(168, 71, 0, 33, 0),
(169, 46, 0, 34, 1),
(170, 54, 0, 34, 1),
(171, 69, 0, 34, 1),
(172, 70, 0, 34, 0),
(173, 71, 0, 34, 0),
(174, 46, 0, 35, 1),
(175, 54, 0, 35, 1),
(176, 69, 0, 35, 1),
(177, 70, 0, 35, 0),
(178, 71, 0, 35, 0),
(179, 46, 0, 36, 1),
(180, 54, 0, 36, 1),
(181, 69, 0, 36, 1),
(182, 70, 0, 36, 0),
(183, 71, 0, 36, 0),
(189, 53, 0, 26, NULL),
(190, 53, 0, 12, NULL),
(191, 53, 0, 10, NULL),
(192, 53, 0, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 47, 0, 3, NULL),
(2, 50, 0, 3, NULL),
(3, 51, 0, 3, NULL),
(7, 47, 0, 6, NULL),
(8, 50, 0, 6, NULL),
(9, 51, 0, 6, NULL),
(10, 47, 0, 26, NULL),
(11, 50, 0, 26, NULL),
(12, 51, 0, 26, NULL),
(13, 47, 0, 12, NULL),
(14, 50, 0, 12, NULL),
(15, 51, 0, 12, NULL),
(16, 47, 0, 10, NULL),
(17, 50, 0, 10, NULL),
(18, 51, 0, 10, NULL),
(19, 47, 0, 9, NULL),
(20, 50, 0, 9, NULL),
(21, 51, 0, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 45, 0, 1, 'Root Catalog'),
(4, 45, 0, 3, 'Default Category'),
(5, 48, 0, 3, NULL),
(6, 52, 0, 3, 'PRODUCTS'),
(7, 119, 0, 3, 'heating'),
(12, 49, 0, 3, NULL),
(13, 60, 0, 3, NULL),
(14, 63, 0, 3, NULL),
(15, 120, 0, 3, NULL),
(21, 45, 0, 6, 'Heating'),
(22, 52, 0, 6, 'PRODUCTS'),
(23, 119, 0, 6, 'heating'),
(24, 120, 0, 6, 'heating'),
(26, 48, 0, 6, 'Zmerly-Heating_Banner_1.jpeg'),
(29, 63, 0, 6, '1column'),
(44, 45, 0, 8, 'Solar'),
(45, 48, 0, 8, '_SOLAR-Banner_1_1.png'),
(46, 52, 0, 8, 'PRODUCTS'),
(47, 119, 0, 8, 'solar'),
(48, 120, 0, 8, 'solar'),
(55, 63, 0, 8, '1column'),
(62, 45, 0, 9, 'plumbing'),
(63, 48, 0, 9, 'Zmerly-Plumbing_1.png'),
(64, 52, 0, 9, 'PRODUCTS'),
(65, 63, 0, 9, '1column'),
(66, 119, 0, 9, 'plumbing'),
(67, 120, 0, 9, 'plumbing'),
(68, 45, 0, 10, 'piping'),
(69, 48, 0, 10, 'Zmerly-PIPING_1_1.png'),
(70, 52, 0, 10, 'PRODUCTS'),
(71, 63, 0, 10, '1column'),
(72, 119, 0, 10, 'piping'),
(73, 120, 0, 10, 'piping'),
(80, 45, 0, 12, 'air'),
(81, 48, 0, 12, 'Zmerly_Air_2_1.png'),
(82, 52, 0, 12, 'PRODUCTS'),
(83, 63, 0, 12, '1column'),
(84, 119, 0, 12, 'air'),
(85, 120, 0, 12, 'air'),
(104, 45, 0, 13, 'Heat pump'),
(105, 52, 0, 13, 'PRODUCTS'),
(106, 119, 0, 13, 'heat-pump'),
(107, 120, 0, 13, 'heating/heat-pump'),
(108, 45, 0, 14, 'Boilers'),
(109, 52, 0, 14, 'PRODUCTS'),
(110, 119, 0, 14, 'boilers'),
(111, 120, 0, 14, 'heating/boilers'),
(112, 45, 0, 15, 'Burners'),
(113, 52, 0, 15, 'PRODUCTS'),
(114, 119, 0, 15, 'burners'),
(115, 120, 0, 15, 'heating/burners'),
(116, 45, 0, 16, 'Radiators'),
(117, 52, 0, 16, 'PRODUCTS'),
(118, 119, 0, 16, 'radiators'),
(119, 120, 0, 16, 'heating/radiators'),
(120, 45, 0, 17, 'Solar Collectors'),
(121, 52, 0, 17, 'PRODUCTS'),
(122, 119, 0, 17, 'solar-collectors'),
(123, 120, 0, 17, 'solar/solar-collectors'),
(124, 45, 0, 18, 'Solar Water Circuit'),
(125, 52, 0, 18, 'PRODUCTS'),
(126, 119, 0, 18, 'solar-water-circuit'),
(127, 120, 0, 18, 'solar/solar-water-circuit'),
(128, 45, 0, 19, 'Hot Waters'),
(129, 52, 0, 19, 'PRODUCTS'),
(130, 119, 0, 19, 'hot-waters'),
(131, 120, 0, 19, 'plumbing/hot-waters'),
(132, 45, 0, 20, 'Valves'),
(133, 52, 0, 20, 'PRODUCTS'),
(134, 119, 0, 20, 'valves'),
(135, 120, 0, 20, 'plumbing/valves'),
(136, 45, 0, 21, 'Sanitary Fixtures'),
(137, 52, 0, 21, 'PRODUCTS'),
(138, 119, 0, 21, 'sanitary-fixtures'),
(139, 120, 0, 21, 'plumbing/sanitary-fixtures'),
(140, 45, 0, 22, 'PEX'),
(141, 52, 0, 22, 'PRODUCTS'),
(142, 119, 0, 22, 'pex'),
(143, 120, 0, 22, 'piping/pex'),
(144, 45, 0, 23, 'Sealant'),
(145, 52, 0, 23, 'PRODUCTS'),
(146, 119, 0, 23, 'sealant'),
(147, 120, 0, 23, 'piping/sealant'),
(148, 45, 0, 24, 'Central Vacuum'),
(149, 52, 0, 24, 'PRODUCTS'),
(150, 119, 0, 24, 'central-vacuum'),
(151, 120, 0, 24, 'air/central-vacuum'),
(161, 45, 0, 26, 'water'),
(162, 52, 0, 26, 'PRODUCTS'),
(163, 119, 0, 26, 'water'),
(164, 120, 0, 26, 'water'),
(170, 49, 0, 6, NULL),
(171, 60, 0, 6, NULL),
(188, 45, 0, 32, 'Floor heating'),
(189, 52, 0, 32, 'PRODUCTS'),
(190, 119, 0, 32, 'floor-heating'),
(191, 120, 0, 32, 'heating/floor-heating'),
(192, 45, 0, 33, 'solar water heaters'),
(193, 52, 0, 33, 'PRODUCTS'),
(194, 119, 0, 33, 'solar-water-heaters'),
(195, 120, 0, 33, 'solar/solar-water-heaters'),
(196, 45, 0, 34, 'copper'),
(197, 52, 0, 34, 'PRODUCTS'),
(198, 119, 0, 34, 'copper'),
(199, 120, 0, 34, 'piping/copper'),
(200, 45, 0, 35, 'water treatment'),
(201, 52, 0, 35, 'PRODUCTS'),
(202, 119, 0, 35, 'water-treatment'),
(203, 120, 0, 35, 'water/water-treatment'),
(204, 45, 0, 36, 'sewage treatment'),
(205, 52, 0, 36, 'PRODUCTS'),
(206, 119, 0, 36, 'sewage-treatment'),
(207, 120, 0, 36, 'water/sewage-treatment'),
(213, 48, 0, 26, 'Zmerly-water_1_1.png'),
(214, 49, 0, 26, NULL),
(215, 60, 0, 26, NULL),
(216, 63, 0, 26, NULL),
(218, 49, 0, 12, NULL),
(219, 60, 0, 12, NULL),
(221, 49, 0, 10, NULL),
(222, 60, 0, 10, NULL),
(224, 49, 0, 9, NULL),
(225, 60, 0, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL COMMENT 'Entity ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`entity_id`, `category_id`, `product_id`, `position`) VALUES
(71, 3, 14, 0),
(72, 6, 14, 0),
(85, 3, 19, 0),
(91, 12, 21, 0),
(92, 10, 22, 0),
(93, 8, 23, 0),
(94, 8, 24, 0),
(95, 3, 24, 0),
(96, 3, 31, 0),
(97, 6, 31, 0),
(98, 3, 29, 0),
(99, 6, 29, 0),
(100, 3, 32, 0),
(101, 6, 32, 0),
(102, 3, 33, 0),
(103, 3, 34, 0),
(104, 3, 35, 0),
(105, 3, 36, 0),
(106, 3, 37, 0),
(107, 3, 38, 0),
(108, 3, 39, 0),
(109, 13, 14, 0),
(111, 26, 20, 0),
(112, 32, 26, 0),
(113, 6, 40, 0),
(114, 8, 40, 0),
(115, 9, 40, 0),
(116, 10, 40, 0),
(117, 12, 40, 0),
(118, 26, 40, 0),
(119, 3, 41, 0),
(120, 6, 41, 0),
(121, 8, 41, 0),
(122, 9, 41, 0),
(123, 10, 41, 0),
(124, 12, 41, 0),
(125, 26, 41, 0),
(126, 6, 42, 0),
(127, 8, 42, 0),
(128, 10, 42, 0),
(129, 12, 42, 0),
(130, 26, 42, 0),
(131, 13, 42, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_replica`
--

CREATE TABLE `catalog_category_product_index_replica` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_store1`
--

CREATE TABLE `catalog_category_product_index_store1` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1 Replica';

--
-- Dumping data for table `catalog_category_product_index_store1`
--

INSERT INTO `catalog_category_product_index_store1` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(3, 25, 0, 0, 1, 4),
(3, 27, 0, 0, 1, 4),
(3, 28, 0, 0, 1, 4),
(3, 30, 0, 0, 1, 4),
(3, 14, 10000, 0, 1, 4),
(3, 20, 10000, 0, 1, 4),
(3, 21, 10000, 0, 1, 4),
(3, 22, 10000, 0, 1, 4),
(3, 23, 10000, 0, 1, 4),
(3, 24, 10000, 0, 1, 4),
(3, 26, 10000, 0, 1, 4),
(3, 29, 10000, 0, 1, 4),
(3, 40, 10000, 0, 1, 4),
(3, 41, 10000, 0, 1, 4),
(3, 42, 10000, 0, 1, 4),
(3, 19, 0, 1, 1, 4),
(3, 36, 0, 1, 1, 4),
(6, 26, 10000, 0, 1, 4),
(6, 14, 0, 1, 1, 4),
(6, 29, 0, 1, 1, 4),
(6, 40, 0, 1, 1, 4),
(6, 41, 0, 1, 1, 4),
(6, 42, 0, 1, 1, 4),
(8, 23, 0, 1, 1, 4),
(8, 24, 0, 1, 1, 4),
(8, 40, 0, 1, 1, 4),
(8, 41, 0, 1, 1, 4),
(8, 42, 0, 1, 1, 4),
(9, 40, 0, 1, 1, 4),
(9, 41, 0, 1, 1, 4),
(10, 22, 0, 1, 1, 4),
(10, 40, 0, 1, 1, 4),
(10, 41, 0, 1, 1, 4),
(10, 42, 0, 1, 1, 4),
(12, 21, 0, 1, 1, 4),
(12, 40, 0, 1, 1, 4),
(12, 41, 0, 1, 1, 4),
(12, 42, 0, 1, 1, 4),
(13, 14, 0, 1, 1, 4),
(13, 42, 0, 1, 1, 4),
(26, 20, 0, 1, 1, 4),
(26, 40, 0, 1, 1, 4),
(26, 41, 0, 1, 1, 4),
(26, 42, 0, 1, 1, 4),
(32, 26, 0, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_store1_replica`
--

CREATE TABLE `catalog_category_product_index_store1_replica` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index Store1';

--
-- Dumping data for table `catalog_category_product_index_store1_replica`
--

INSERT INTO `catalog_category_product_index_store1_replica` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(3, 25, 0, 0, 1, 4),
(3, 27, 0, 0, 1, 4),
(3, 28, 0, 0, 1, 4),
(3, 30, 0, 0, 1, 4),
(3, 14, 10000, 0, 1, 4),
(3, 20, 10000, 0, 1, 4),
(3, 21, 10000, 0, 1, 4),
(3, 22, 10000, 0, 1, 4),
(3, 23, 10000, 0, 1, 4),
(3, 24, 10000, 0, 1, 4),
(3, 26, 10000, 0, 1, 4),
(3, 29, 10000, 0, 1, 4),
(3, 19, 0, 1, 1, 4),
(3, 36, 0, 1, 1, 4),
(6, 26, 10000, 0, 1, 4),
(6, 14, 0, 1, 1, 4),
(6, 29, 0, 1, 1, 4),
(8, 23, 0, 1, 1, 4),
(8, 24, 0, 1, 1, 4),
(10, 22, 0, 1, 1, 4),
(12, 21, 0, 1, 1, 4),
(13, 14, 0, 1, 1, 4),
(26, 20, 0, 1, 1, 4),
(32, 26, 0, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer temporary table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`, `is_required_in_admin_store`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `search_weight`, `additional_data`) VALUES
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(47, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(51, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(52, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(53, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(54, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(57, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(58, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(59, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(63, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(64, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(65, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(66, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(67, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(68, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(70, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(71, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(72, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(73, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 5, NULL),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 6, NULL),
(75, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(76, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, NULL, 1, 0, 1, 0, 0, 1, 0, 0, 1, NULL),
(77, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 'simple,virtual,configurable,downloadable,bundle', 1, 1, 0, 0, 0, 0, 0, 0, 1, NULL),
(78, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(80, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(81, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(82, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(83, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple,configurable', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(88, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(89, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(90, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(91, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable,bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(93, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(95, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(96, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(97, 'Magento\\Framework\\Data\\Form\\Element\\Hidden', 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(98, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(99, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(100, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(101, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(103, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(105, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(107, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(109, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(110, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(111, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(112, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(113, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(114, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,bundle,configurable,grouped', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(115, 'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(116, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(117, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(118, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(119, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(120, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(121, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(122, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(124, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(125, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(126, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, 'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(128, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(129, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(130, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(131, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(132, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(133, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(134, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,configurable,downloadable,bundle', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(135, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(136, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(137, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(138, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(139, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(140, NULL, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, NULL, 0, 0, 0, 1, 0, 1, 1, 0, 1, NULL),
(145, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(146, NULL, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(148, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, NULL, 1, 0, 0, 0, 0, 1, 1, 1, 1, '{\"swatch_input_type\":\"visual\",\"update_product_preview_image\":\"1\",\"use_product_image_for_swatch\":\"1\"}'),
(149, NULL, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, NULL, 0, 0, 0, 0, 0, 1, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(14, 4, 'simple', 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', 0, 0, '2023-06-14 06:57:24', '2023-07-06 06:12:39'),
(19, 4, 'simple', 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', 0, 0, '2023-06-14 08:19:52', '2023-06-22 06:38:55'),
(20, 4, 'simple', 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', 0, 0, '2023-06-15 12:16:30', '2023-06-22 06:40:29'),
(21, 4, 'simple', 'ECA - MANOMETER 1/4', 0, 0, '2023-06-15 12:19:16', '2023-06-22 06:42:03'),
(22, 4, 'simple', 'OV - OFIX OIL COMP. TEE 10MM', 0, 0, '2023-06-15 12:21:03', '2023-06-22 06:37:58'),
(23, 4, 'simple', 'OV - NR.4 METAL CABINET 120x76x11.5', 0, 0, '2023-06-19 12:16:44', '2023-07-27 08:51:30'),
(24, 4, 'simple', 'ARTHERMO - MANOMETER RADIAL', 0, 0, '2023-06-21 07:02:02', '2023-06-22 06:41:01'),
(25, 4, 'simple', 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH', 0, 0, '2023-06-21 07:43:25', '2023-06-22 06:42:32'),
(26, 4, 'simple', 'TWIN-INSULATED-SOLAR-HOSE', 0, 0, '2023-06-21 07:45:16', '2023-06-26 14:15:29'),
(27, 4, 'simple', 'HEAVY-ANCHOR-RAWL-BOLT', 0, 0, '2023-06-21 07:46:54', '2023-06-22 06:40:00'),
(28, 4, 'simple', '5543-LIQUID-SEALENT', 0, 0, '2023-06-21 07:48:12', '2023-06-22 06:41:33'),
(29, 4, 'configurable', 'OV - MULTIDIS SF TOPMETER', 1, 1, '2023-06-21 07:50:45', '2023-06-26 13:05:48'),
(30, 4, 'simple', 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', 0, 0, '2023-06-21 07:52:18', '2023-07-26 19:35:22'),
(31, 4, 'virtual', 'OV - MULTIDIS SF TOPMETER-2circuits', 0, 0, '2023-06-26 13:05:47', '2023-06-26 13:05:47'),
(32, 4, 'virtual', 'OV - MULTIDIS SF TOPMETER-2circuits-2circuits', 0, 0, '2023-06-26 13:08:14', '2023-06-26 15:59:00'),
(33, 4, 'virtual', 'configurable test-2circuits', 0, 0, '2023-06-26 13:15:53', '2023-07-05 05:59:48'),
(34, 4, 'virtual', '235346546', 0, 0, '2023-06-26 13:15:54', '2023-07-05 05:59:48'),
(35, 4, 'virtual', '000232', 0, 0, '2023-06-26 13:15:54', '2023-07-05 05:59:48'),
(36, 4, 'configurable', '3453545', 1, 1, '2023-06-26 13:15:54', '2023-07-05 05:59:49'),
(37, 4, 'virtual', '3453545-5circuits', 0, 0, '2023-07-05 05:59:46', '2023-07-05 05:59:46'),
(38, 4, 'virtual', '3453545-6circuits', 0, 0, '2023-07-05 05:59:47', '2023-07-05 05:59:47'),
(39, 4, 'virtual', '3453545-7circuits', 0, 0, '2023-07-05 05:59:48', '2023-07-05 05:59:48'),
(40, 4, 'simple', 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410', 0, 0, '2023-07-22 14:08:29', '2023-07-22 14:08:29'),
(41, 4, 'simple', 'MAXA - CALIDO HOT WATER HEAT PUMP 200L', 0, 0, '2023-07-22 14:12:13', '2023-07-22 14:12:13'),
(42, 4, 'simple', 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', 0, 0, '2023-07-22 14:13:58', '2023-07-22 14:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 79, 0, 26, '2023-06-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(22, 77, 0, 14, '29.6700'),
(30, 77, 0, 19, '15.5600'),
(31, 77, 0, 20, '149.2400'),
(32, 77, 0, 21, '13.3000'),
(33, 77, 0, 22, '21.0200'),
(34, 77, 0, 23, '292.1100'),
(35, 77, 0, 24, '5.6400'),
(36, 77, 0, 25, '21.4000'),
(37, 77, 0, 26, '21.2900'),
(38, 77, 0, 27, '0.4000'),
(39, 77, 0, 28, '3.7800'),
(40, 77, 0, 29, NULL),
(41, 77, 0, 30, '612.4300'),
(42, 77, 0, 31, '149.2400'),
(43, 77, 0, 32, '32425.0000'),
(44, 77, 0, 33, '20.0000'),
(45, 77, 0, 34, '30.0000'),
(46, 77, 0, 35, '40.0000'),
(47, 78, 0, 26, NULL),
(48, 77, 0, 37, '50.0000'),
(49, 77, 0, 38, '60.0000'),
(50, 77, 0, 39, '70.0000'),
(51, 77, 0, 40, '2343.4000'),
(52, 77, 0, 41, '34345.4300'),
(53, 77, 0, 42, '54.4500'),
(54, 82, 0, 30, '165.3470'),
(55, 82, 0, 23, '4345.0000');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(51, 97, 0, 14, 1),
(52, 99, 0, 14, 4),
(53, 134, 0, 14, 2),
(54, 140, 0, 14, 1),
(71, 97, 0, 19, 1),
(72, 99, 0, 19, 4),
(73, 134, 0, 19, 2),
(74, 140, 0, 19, 1),
(75, 97, 0, 20, 1),
(76, 99, 0, 20, 4),
(77, 134, 0, 20, 2),
(78, 140, 0, 20, 1),
(79, 97, 0, 21, 1),
(80, 99, 0, 21, 4),
(81, 134, 0, 21, 2),
(82, 140, 0, 21, 1),
(83, 97, 0, 22, 1),
(84, 99, 0, 22, 4),
(85, 134, 0, 22, 2),
(86, 140, 0, 22, 1),
(87, 97, 0, 23, 1),
(88, 99, 0, 23, 4),
(89, 134, 0, 23, 2),
(90, 140, 0, 23, 1),
(91, 145, 0, 20, 0),
(92, 145, 0, 21, 0),
(93, 145, 0, 14, 1),
(94, 97, 0, 24, 1),
(95, 99, 0, 24, 4),
(96, 134, 0, 24, 2),
(97, 140, 0, 24, 0),
(98, 145, 0, 24, 1),
(99, 97, 0, 25, 1),
(100, 99, 0, 25, 4),
(101, 134, 0, 25, 2),
(102, 140, 0, 25, 0),
(103, 145, 0, 25, 1),
(104, 97, 0, 26, 1),
(105, 99, 0, 26, 4),
(106, 134, 0, 26, 2),
(107, 140, 0, 26, 0),
(108, 145, 0, 26, 1),
(109, 97, 0, 27, 1),
(110, 99, 0, 27, 4),
(111, 134, 0, 27, 2),
(112, 140, 0, 27, 0),
(113, 145, 0, 27, 1),
(114, 97, 0, 28, 1),
(115, 99, 0, 28, 4),
(116, 134, 0, 28, 2),
(117, 140, 0, 28, 0),
(118, 145, 0, 28, 1),
(119, 97, 0, 29, 1),
(120, 99, 0, 29, 4),
(121, 134, 0, 29, 2),
(122, 140, 0, 29, 1),
(123, 145, 0, 29, 1),
(124, 97, 0, 30, 1),
(125, 99, 0, 30, 4),
(126, 134, 0, 30, 2),
(127, 140, 0, 30, 1),
(128, 145, 0, 30, 0),
(129, 145, 0, 19, 1),
(130, 148, 0, 14, 4),
(131, 148, 0, 30, 4),
(132, 145, 0, 22, 0),
(133, 148, 0, 22, 4),
(134, 148, 0, 26, 11),
(135, 148, 0, 19, 5),
(136, 145, 0, 23, 1),
(137, 148, 0, 23, 10),
(138, 148, 0, 27, 8),
(139, 148, 0, 20, 9),
(140, 148, 0, 24, 12),
(141, 148, 0, 28, 11),
(142, 148, 0, 21, 6),
(143, 148, 0, 25, 7),
(144, 148, 0, 29, 9),
(145, 97, 0, 31, 1),
(146, 99, 0, 31, 1),
(147, 134, 0, 31, 2),
(148, 140, 0, 31, 1),
(149, 145, 0, 31, 1),
(150, 148, 0, 31, 9),
(151, 149, 0, 31, 13),
(152, 97, 0, 32, 1),
(153, 99, 0, 32, 1),
(154, 134, 0, 32, 2),
(155, 140, 0, 32, 1),
(156, 145, 0, 32, 1),
(157, 148, 0, 32, 9),
(158, 149, 0, 32, 13),
(159, 97, 0, 33, 1),
(160, 99, 0, 33, 1),
(161, 134, 0, 33, 2),
(162, 140, 0, 33, 0),
(163, 145, 0, 33, 0),
(164, 148, 0, 33, 4),
(165, 149, 0, 33, 13),
(166, 97, 0, 34, 1),
(167, 99, 0, 34, 1),
(168, 134, 0, 34, 2),
(169, 140, 0, 34, 0),
(170, 145, 0, 34, 0),
(171, 148, 0, 34, 4),
(172, 149, 0, 34, 14),
(173, 97, 0, 35, 1),
(174, 99, 0, 35, 1),
(175, 134, 0, 35, 2),
(176, 140, 0, 35, 0),
(177, 145, 0, 35, 0),
(178, 148, 0, 35, 4),
(179, 149, 0, 35, 15),
(180, 97, 0, 36, 1),
(181, 99, 0, 36, 4),
(182, 134, 0, 36, 2),
(183, 140, 0, 36, 1),
(184, 145, 0, 36, 0),
(185, 148, 0, 36, 4),
(186, 97, 0, 37, 1),
(187, 99, 0, 37, 1),
(188, 134, 0, 37, 2),
(189, 140, 0, 37, 1),
(190, 145, 0, 37, 0),
(191, 148, 0, 37, 4),
(192, 149, 0, 37, 16),
(193, 97, 0, 38, 1),
(194, 99, 0, 38, 1),
(195, 134, 0, 38, 2),
(196, 140, 0, 38, 1),
(197, 145, 0, 38, 0),
(198, 148, 0, 38, 4),
(199, 149, 0, 38, 17),
(200, 97, 0, 39, 1),
(201, 99, 0, 39, 1),
(202, 134, 0, 39, 2),
(203, 140, 0, 39, 1),
(204, 145, 0, 39, 0),
(205, 148, 0, 39, 4),
(206, 149, 0, 39, 18),
(207, 97, 0, 40, 1),
(208, 99, 0, 40, 4),
(209, 134, 0, 40, 2),
(210, 140, 0, 40, 0),
(211, 145, 0, 40, 0),
(212, 148, 0, 40, 6),
(213, 97, 0, 41, 1),
(214, 99, 0, 41, 4),
(215, 134, 0, 41, 2),
(216, 140, 0, 41, 0),
(217, 145, 0, 41, 0),
(218, 148, 0, 41, 7),
(219, 97, 0, 42, 1),
(220, 99, 0, 42, 4),
(221, 134, 0, 42, 2),
(222, 140, 0, 42, 0),
(223, 145, 0, 42, 0),
(224, 148, 0, 42, 10);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `value`, `media_type`, `disabled`) VALUES
(22, 90, '/1/5/15213410_6.png', 'image', 0),
(23, 90, '/1/4/14091210_1_.png', 'image', 0),
(24, 90, '/1/8/18010052.png', 'image', 0),
(25, 90, '/2/3/23299050.png', 'image', 0),
(26, 90, '/1/4/14092303.png', 'image', 0),
(27, 90, '/1/4/14004904.png', 'image', 0),
(28, 90, '/1/4/14501206.png', 'image', 0),
(29, 90, '/2/6/26201210.png', 'image', 0),
(30, 90, '/3/8/38002160.png', 'image', 0),
(31, 90, '/2/8/28016008.png', 'image', 0),
(32, 90, '/3/9/39200305.png', 'image', 0),
(33, 90, '/1/4/14004252.png', 'image', 0),
(34, 90, '/1/4/14068154.png', 'image', 0),
(35, 90, '/1/4/14004252_1.png', 'image', 0),
(36, 90, '/1/4/14004252_2.png', 'image', 0),
(37, 90, '/2/6/26201210_1.png', 'image', 0),
(38, 90, '/1/0/10101010.png', 'image', 0),
(39, 90, '/1/0/10102200.png', 'image', 0),
(40, 90, '/1/1/11203030.png', 'image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) UNSIGNED NOT NULL COMMENT 'Record Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `entity_id`, `label`, `position`, `disabled`, `record_id`) VALUES
(26, 0, 22, NULL, 1, 0, 52),
(22, 0, 19, NULL, 1, 0, 54),
(31, 0, 27, NULL, 1, 0, 56),
(24, 0, 20, NULL, 1, 0, 57),
(28, 0, 24, NULL, 1, 0, 58),
(32, 0, 28, NULL, 1, 0, 59),
(25, 0, 21, NULL, 1, 0, 60),
(29, 0, 25, NULL, 1, 0, 61),
(33, 0, 29, NULL, 1, 0, 63),
(30, 0, 26, NULL, 1, 0, 65),
(35, 0, 32, NULL, 1, 0, 66),
(37, 0, 34, NULL, 1, 0, 73),
(36, 0, 36, NULL, 1, 0, 74),
(23, 0, 14, NULL, 1, 0, 75),
(38, 0, 40, NULL, 1, 0, 76),
(39, 0, 41, NULL, 1, 0, 77),
(40, 0, 42, NULL, 1, 0, 81),
(34, 0, 30, NULL, 1, 0, 84),
(27, 0, 23, NULL, 1, 0, 85);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Product entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` (`value_id`, `entity_id`) VALUES
(23, 14),
(22, 19),
(24, 20),
(25, 21),
(26, 22),
(27, 23),
(28, 24),
(29, 25),
(30, 26),
(31, 27),
(32, 28),
(33, 29),
(34, 30),
(35, 32),
(37, 34),
(36, 36),
(38, 40),
(39, 41),
(40, 42);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(14, 85, 0, 14, 'configurable'),
(19, 85, 0, 19, 'test the model'),
(20, 85, 0, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"'),
(21, 85, 0, 21, 'ECA - MANOMETER 1/4'),
(22, 85, 0, 22, 'OV - OFIX OIL COMP. TEE 10MM'),
(23, 85, 0, 23, 'OV - NR.4 METAL CABINET 120x76x11.5'),
(24, 85, 0, 24, 'ARTHERMO - MANOMETER RADIAL'),
(25, 85, 0, 25, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH'),
(26, 85, 0, 26, 'TWIN-INSULATED-SOLAR-HOSE'),
(27, 85, 0, 27, 'HEAVY-ANCHOR-RAWL-BOLT'),
(28, 85, 0, 28, '5543-LIQUID-SEALENT'),
(29, 85, 0, 29, 'OV - MULTIDIS SF TOPMETER'),
(30, 85, 0, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"'),
(31, 85, 0, 31, 'OV - MULTIDIS SF TOPMETER'),
(32, 85, 0, 32, 'OV - MULTIDIS SF TOPMETER'),
(33, 85, 0, 33, 'configurable test'),
(34, 85, 0, 34, 'configurable test'),
(35, 85, 0, 35, 'configurable test'),
(36, 85, 0, 36, 'configurable test'),
(37, 85, 0, 37, 'configurable test'),
(38, 85, 0, 38, 'configurable test'),
(39, 85, 0, 39, 'configurable test'),
(40, 85, 0, 40, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410'),
(41, 85, 0, 41, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L'),
(42, 85, 0, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `percentage_value` decimal(5,2) DEFAULT NULL COMMENT 'Percentage value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(197, 73, 0, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2'),
(198, 84, 0, 14, 'configurable'),
(199, 86, 0, 14, 'configurable '),
(200, 106, 0, 14, 'container2'),
(201, 118, 0, 14, '0'),
(202, 121, 0, 14, 'configurable'),
(203, 127, 0, 14, '2'),
(264, 73, 0, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4'),
(265, 84, 0, 19, 'test the model'),
(266, 86, 0, 19, 'test the model '),
(267, 106, 0, 19, 'container2'),
(268, 118, 0, 19, '0'),
(269, 121, 0, 19, 'test-the-model'),
(270, 127, 0, 19, '2'),
(341, 87, 0, 19, '/1/5/15213410_6.png'),
(342, 88, 0, 19, '/1/5/15213410_6.png'),
(343, 89, 0, 19, '/1/5/15213410_6.png'),
(344, 133, 0, 19, '/1/5/15213410_6.png'),
(345, 87, 0, 14, '/1/4/14091210_1_.png'),
(346, 88, 0, 14, '/1/4/14091210_1_.png'),
(347, 89, 0, 14, '/1/4/14091210_1_.png'),
(348, 133, 0, 14, '/1/4/14091210_1_.png'),
(353, 73, 0, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"'),
(354, 84, 0, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"'),
(355, 86, 0, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\" '),
(356, 87, 0, 20, '/1/8/18010052.png'),
(357, 88, 0, 20, '/1/8/18010052.png'),
(358, 89, 0, 20, '/1/8/18010052.png'),
(359, 106, 0, 20, 'container2'),
(360, 118, 0, 20, '0'),
(361, 121, 0, 20, 'spirotech-ab050-008-spirotop-solar-aav1-2'),
(362, 127, 0, 20, '2'),
(363, 133, 0, 20, '/1/8/18010052.png'),
(368, 73, 0, 21, 'ECA - MANOMETER 1/4'),
(369, 84, 0, 21, 'ECA - MANOMETER 1/4'),
(370, 86, 0, 21, 'ECA - MANOMETER 1/4 '),
(371, 87, 0, 21, '/2/3/23299050.png'),
(372, 88, 0, 21, '/2/3/23299050.png'),
(373, 89, 0, 21, '/2/3/23299050.png'),
(374, 106, 0, 21, 'container2'),
(375, 118, 0, 21, '0'),
(376, 121, 0, 21, 'eca-manometer-1-4'),
(377, 127, 0, 21, '2'),
(378, 133, 0, 21, '/2/3/23299050.png'),
(383, 73, 0, 22, 'OV - OFIX OIL COMP. TEE 10MM'),
(384, 84, 0, 22, 'OV - OFIX OIL COMP. TEE 10MM'),
(385, 86, 0, 22, 'OV - OFIX OIL COMP. TEE 10MM '),
(386, 87, 0, 22, '/1/4/14092303.png'),
(387, 88, 0, 22, '/1/4/14092303.png'),
(388, 89, 0, 22, '/1/4/14092303.png'),
(389, 106, 0, 22, 'container2'),
(390, 114, 0, 22, 'BB'),
(391, 118, 0, 22, '0'),
(392, 121, 0, 22, 'ov-ofix-oil-comp-tee-10mm'),
(393, 127, 0, 22, '2'),
(394, 133, 0, 22, '/1/4/14092303.png'),
(395, 73, 0, 23, 'OV - NR.4 METAL CABINET 120x76x11.5'),
(396, 84, 0, 23, 'OV - NR.4 METAL CABINET 120x76x11.5'),
(397, 86, 0, 23, 'OV - NR.4 METAL CABINET 120x76x11.5 '),
(398, 87, 0, 23, '/1/4/14004904.png'),
(399, 88, 0, 23, '/1/4/14004904.png'),
(400, 89, 0, 23, '/1/4/14004904.png'),
(401, 106, 0, 23, 'container2'),
(402, 118, 0, 23, '0'),
(403, 121, 0, 23, 'ov-nr-4-metal-cabinet-120x76x11-5'),
(404, 127, 0, 23, '2'),
(405, 133, 0, 23, '/1/4/14004904.png'),
(406, 146, 0, 14, '0.5BAR 1/4\"'),
(407, 73, 0, 24, 'ARTHERMO - MANOMETER RADIAL'),
(408, 84, 0, 24, 'ARTHERMO - MANOMETER RADIAL'),
(409, 86, 0, 24, 'ARTHERMO - MANOMETER RADIAL '),
(410, 87, 0, 24, '/1/4/14501206.png'),
(411, 88, 0, 24, '/1/4/14501206.png'),
(412, 89, 0, 24, '/1/4/14501206.png'),
(413, 106, 0, 24, 'container2'),
(414, 118, 0, 24, '0'),
(415, 121, 0, 24, 'arthermo-manometer-radial'),
(416, 127, 0, 24, '2'),
(417, 133, 0, 24, '/1/4/14501206.png'),
(442, 73, 0, 25, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH'),
(443, 84, 0, 25, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH'),
(444, 86, 0, 25, 'ACTUAT.-PLATE-ALPHA10-FOR-2FLUSH '),
(445, 87, 0, 25, '/2/6/26201210.png'),
(446, 88, 0, 25, '/2/6/26201210.png'),
(447, 89, 0, 25, '/2/6/26201210.png'),
(448, 106, 0, 25, 'container2'),
(449, 118, 0, 25, '0'),
(450, 121, 0, 25, 'actuat-plate-alpha10-for-2flush'),
(451, 127, 0, 25, '2'),
(452, 133, 0, 25, '/2/6/26201210.png'),
(457, 73, 0, 26, 'TWIN-INSULATED-SOLAR-HOSE'),
(458, 84, 0, 26, 'TWIN-INSULATED-SOLAR-HOSE'),
(459, 86, 0, 26, 'TWIN-INSULATED-SOLAR-HOSE '),
(460, 87, 0, 26, '/3/8/38002160.png'),
(461, 88, 0, 26, '/3/8/38002160.png'),
(462, 89, 0, 26, '/3/8/38002160.png'),
(463, 106, 0, 26, 'container2'),
(464, 118, 0, 26, '0'),
(465, 121, 0, 26, 'twin-insulated-solar-hose'),
(466, 127, 0, 26, '2'),
(467, 133, 0, 26, '/3/8/38002160.png'),
(472, 73, 0, 27, 'HEAVY-ANCHOR-RAWL-BOLT'),
(473, 84, 0, 27, 'HEAVY-ANCHOR-RAWL-BOLT'),
(474, 86, 0, 27, 'HEAVY-ANCHOR-RAWL-BOLT '),
(475, 87, 0, 27, '/2/8/28016008.png'),
(476, 88, 0, 27, '/2/8/28016008.png'),
(477, 89, 0, 27, '/2/8/28016008.png'),
(478, 106, 0, 27, 'container2'),
(479, 118, 0, 27, '0'),
(480, 121, 0, 27, 'heavy-anchor-rawl-bolt'),
(481, 127, 0, 27, '2'),
(482, 133, 0, 27, '/2/8/28016008.png'),
(487, 73, 0, 28, '5543-LIQUID-SEALENT'),
(488, 84, 0, 28, '5543-LIQUID-SEALENT'),
(489, 86, 0, 28, '5543-LIQUID-SEALENT '),
(490, 87, 0, 28, '/3/9/39200305.png'),
(491, 88, 0, 28, '/3/9/39200305.png'),
(492, 89, 0, 28, '/3/9/39200305.png'),
(493, 106, 0, 28, 'container2'),
(494, 118, 0, 28, '0'),
(495, 121, 0, 28, '5543-liquid-sealent'),
(496, 127, 0, 28, '2'),
(497, 133, 0, 28, '/3/9/39200305.png'),
(502, 73, 0, 29, 'OV - MULTIDIS SF TOPMETER'),
(503, 84, 0, 29, 'OV - MULTIDIS SF TOPMETER'),
(504, 86, 0, 29, 'OV - MULTIDIS SF TOPMETER '),
(505, 87, 0, 29, '/1/4/14004252.png'),
(506, 88, 0, 29, '/1/4/14004252.png'),
(507, 89, 0, 29, '/1/4/14004252.png'),
(508, 106, 0, 29, 'container2'),
(509, 118, 0, 29, '0'),
(510, 121, 0, 29, 'ov-multidis-sf-topmeter'),
(511, 127, 0, 29, '2'),
(512, 133, 0, 29, '/1/4/14004252.png'),
(517, 73, 0, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"'),
(518, 84, 0, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"'),
(519, 86, 0, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\" '),
(520, 87, 0, 30, '/1/4/14068154.png'),
(521, 88, 0, 30, '/1/4/14068154.png'),
(522, 89, 0, 30, '/1/4/14068154.png'),
(523, 106, 0, 30, 'container2'),
(524, 118, 0, 30, '0'),
(525, 121, 0, 30, 'ov-filling-station-for-heating-system-3-4'),
(526, 127, 0, 30, '2'),
(527, 133, 0, 30, '/1/4/14068154.png'),
(528, 73, 0, 31, 'OV - MULTIDIS SF TOPMETER-2circuits'),
(529, 84, 0, 31, 'OV - MULTIDIS SF TOPMETER'),
(530, 86, 0, 31, 'OV - MULTIDIS SF TOPMETER '),
(531, 106, 0, 31, 'container2'),
(532, 118, 0, 31, '0'),
(533, 121, 0, 31, 'ov-multidis-sf-topmeter-2circuits'),
(534, 127, 0, 31, '0'),
(539, 73, 0, 32, 'OV - MULTIDIS SF TOPMETER-2circuits-2circuits'),
(540, 84, 0, 32, 'OV - MULTIDIS SF TOPMETER'),
(541, 86, 0, 32, 'OV - MULTIDIS SF TOPMETER '),
(542, 106, 0, 32, 'container2'),
(543, 118, 0, 32, '0'),
(544, 121, 0, 32, 'ov-multidis-sf-topmeter-2circuits-2circuits'),
(545, 127, 0, 32, '0'),
(546, 73, 0, 33, 'configurable test-2circuits'),
(547, 84, 0, 33, 'configurable test'),
(548, 86, 0, 33, 'configurable test '),
(549, 106, 0, 33, 'container2'),
(550, 121, 0, 33, 'configurable-test-2circuits'),
(551, 127, 0, 33, '0'),
(552, 73, 0, 34, 'configurable test-3circuits'),
(553, 84, 0, 34, 'configurable test'),
(554, 86, 0, 34, 'configurable test '),
(555, 106, 0, 34, 'container2'),
(556, 121, 0, 34, 'configurable-test-3circuits'),
(557, 127, 0, 34, '0'),
(558, 73, 0, 35, 'configurable test-4circuits'),
(559, 84, 0, 35, 'configurable test'),
(560, 86, 0, 35, 'configurable test '),
(561, 106, 0, 35, 'container2'),
(562, 121, 0, 35, 'configurable-test-4circuits'),
(563, 127, 0, 35, '0'),
(564, 73, 0, 36, 'OV - MULTIDIS SF TOPMETER'),
(565, 84, 0, 36, 'configurable test'),
(566, 86, 0, 36, 'configurable test '),
(567, 106, 0, 36, 'container2'),
(568, 118, 0, 36, '0'),
(569, 121, 0, 36, 'configurable-test'),
(570, 127, 0, 36, '2'),
(571, 87, 0, 32, '/1/4/14004252_1.png'),
(572, 88, 0, 32, '/1/4/14004252_1.png'),
(573, 89, 0, 32, '/1/4/14004252_1.png'),
(574, 133, 0, 32, '/1/4/14004252_1.png'),
(579, 87, 0, 36, '/1/4/14004252_2.png'),
(580, 88, 0, 36, '/1/4/14004252_2.png'),
(581, 89, 0, 36, '/1/4/14004252_2.png'),
(582, 118, 0, 34, '0'),
(592, 87, 0, 34, '/2/6/26201210_1.png'),
(593, 88, 0, 34, '/2/6/26201210_1.png'),
(594, 89, 0, 34, '/2/6/26201210_1.png'),
(595, 133, 0, 34, '/2/6/26201210_1.png'),
(604, 118, 0, 33, '0'),
(605, 118, 0, 35, '0'),
(606, 73, 0, 37, 'OV - MULTIDIS SF TOPMETER-5circuits'),
(607, 84, 0, 37, 'configurable test'),
(608, 86, 0, 37, 'configurable test '),
(609, 106, 0, 37, 'container2'),
(610, 118, 0, 37, '0'),
(611, 121, 0, 37, 'ov-multidis-sf-topmeter-5circuits'),
(612, 127, 0, 37, '0'),
(613, 73, 0, 38, 'OV - MULTIDIS SF TOPMETER-6circuits'),
(614, 84, 0, 38, 'configurable test'),
(615, 86, 0, 38, 'configurable test '),
(616, 106, 0, 38, 'container2'),
(617, 118, 0, 38, '0'),
(618, 121, 0, 38, 'ov-multidis-sf-topmeter-6circuits'),
(619, 127, 0, 38, '0'),
(620, 73, 0, 39, 'OV - MULTIDIS SF TOPMETER-7circuits'),
(621, 84, 0, 39, 'configurable test'),
(622, 86, 0, 39, 'configurable test '),
(623, 106, 0, 39, 'container2'),
(624, 118, 0, 39, '0'),
(625, 121, 0, 39, 'ov-multidis-sf-topmeter-7circuits'),
(626, 127, 0, 39, '0'),
(627, 73, 0, 40, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410'),
(628, 84, 0, 40, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410'),
(629, 86, 0, 40, 'MAXA - AIR TO WATER HEAT PUMP 10KW - IHWAK/KP/V410 '),
(630, 87, 0, 40, '/1/0/10101010.png'),
(631, 88, 0, 40, '/1/0/10101010.png'),
(632, 89, 0, 40, '/1/0/10101010.png'),
(633, 106, 0, 40, 'container2'),
(634, 118, 0, 40, '0'),
(635, 121, 0, 40, 'maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410'),
(636, 127, 0, 40, '2'),
(637, 133, 0, 40, '/1/0/10101010.png'),
(642, 73, 0, 41, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L'),
(643, 84, 0, 41, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L'),
(644, 86, 0, 41, 'MAXA - CALIDO HOT WATER HEAT PUMP 200L '),
(645, 87, 0, 41, '/1/0/10102200.png'),
(646, 88, 0, 41, '/1/0/10102200.png'),
(647, 89, 0, 41, '/1/0/10102200.png'),
(648, 106, 0, 41, 'container2'),
(649, 118, 0, 41, '0'),
(650, 121, 0, 41, 'maxa-calido-hot-water-heat-pump-200l'),
(651, 127, 0, 41, '2'),
(652, 133, 0, 41, '/1/0/10102200.png'),
(657, 73, 0, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW'),
(658, 84, 0, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW'),
(659, 86, 0, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW '),
(660, 87, 0, 42, '/1/1/11203030.png'),
(661, 88, 0, 42, '/1/1/11203030.png'),
(662, 89, 0, 42, '/1/1/11203030.png'),
(663, 106, 0, 42, 'container2'),
(664, 118, 0, 42, '0'),
(665, 121, 0, 42, 'evolution-ev30fm-condensing-boiler-30kw'),
(666, 127, 0, 42, '2'),
(667, 133, 0, 42, '/1/1/11203030.png'),
(668, 146, 0, 30, '1\"1/2'),
(673, 146, 0, 23, '120x76x11.5');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_frontend_action`
--

CREATE TABLE `catalog_product_frontend_action` (
  `action_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Product Action Id',
  `type_id` varchar(64) NOT NULL COMMENT 'Type of product action',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `added_at` bigint(20) NOT NULL COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Frontend Action Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`, `source_id`) VALUES
(14, 99, 1, 4, 14),
(19, 99, 1, 4, 19),
(20, 99, 1, 4, 20),
(21, 99, 1, 4, 21),
(22, 99, 1, 4, 22),
(23, 99, 1, 4, 23),
(24, 99, 1, 4, 24),
(25, 99, 1, 4, 25),
(26, 99, 1, 4, 26),
(27, 99, 1, 4, 27),
(28, 99, 1, 4, 28),
(29, 99, 1, 1, 31),
(29, 99, 1, 4, 29),
(30, 99, 1, 4, 30),
(36, 99, 1, 1, 33),
(36, 99, 1, 1, 34),
(36, 99, 1, 1, 35),
(36, 99, 1, 1, 37),
(36, 99, 1, 1, 38),
(36, 99, 1, 1, 39),
(36, 99, 1, 4, 36),
(40, 99, 1, 4, 40),
(41, 99, 1, 4, 41),
(42, 99, 1, 4, 42),
(14, 148, 1, 4, 14),
(19, 148, 1, 5, 19),
(20, 148, 1, 9, 20),
(21, 148, 1, 6, 21),
(22, 148, 1, 4, 22),
(23, 148, 1, 10, 23),
(24, 148, 1, 12, 24),
(25, 148, 1, 7, 25),
(26, 148, 1, 11, 26),
(27, 148, 1, 8, 27),
(28, 148, 1, 11, 28),
(29, 148, 1, 9, 29),
(29, 148, 1, 9, 31),
(30, 148, 1, 4, 30),
(36, 148, 1, 4, 33),
(36, 148, 1, 4, 34),
(36, 148, 1, 4, 35),
(36, 148, 1, 4, 36),
(36, 148, 1, 4, 37),
(36, 148, 1, 4, 38),
(36, 148, 1, 4, 39),
(40, 148, 1, 6, 40),
(41, 148, 1, 7, 41),
(42, 148, 1, 10, 42);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_replica`
--

CREATE TABLE `catalog_product_index_eav_decimal_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_replica`
--

CREATE TABLE `catalog_product_index_eav_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav_replica`
--

INSERT INTO `catalog_product_index_eav_replica` (`entity_id`, `attribute_id`, `store_id`, `value`, `source_id`) VALUES
(14, 99, 1, 4, 14),
(19, 99, 1, 4, 19),
(20, 99, 1, 4, 20),
(21, 99, 1, 4, 21),
(22, 99, 1, 4, 22),
(23, 99, 1, 4, 23),
(24, 99, 1, 4, 24),
(25, 99, 1, 4, 25),
(26, 99, 1, 4, 26),
(27, 99, 1, 4, 27),
(28, 99, 1, 4, 28),
(29, 99, 1, 1, 31),
(29, 99, 1, 4, 29),
(30, 99, 1, 4, 30),
(36, 99, 1, 1, 33),
(36, 99, 1, 1, 34),
(36, 99, 1, 1, 35),
(36, 99, 1, 1, 37),
(36, 99, 1, 1, 38),
(36, 99, 1, 1, 39),
(36, 99, 1, 4, 36),
(14, 140, 1, 1, 14),
(19, 140, 1, 1, 19),
(20, 140, 1, 1, 20),
(21, 140, 1, 1, 21),
(22, 140, 1, 1, 22),
(23, 140, 1, 1, 23),
(24, 140, 1, 0, 24),
(25, 140, 1, 0, 25),
(26, 140, 1, 0, 26),
(27, 140, 1, 0, 27),
(28, 140, 1, 0, 28),
(29, 140, 1, 1, 29),
(29, 140, 1, 1, 31),
(30, 140, 1, 1, 30),
(36, 140, 1, 0, 33),
(36, 140, 1, 0, 34),
(36, 140, 1, 0, 35),
(36, 140, 1, 1, 36),
(36, 140, 1, 1, 37),
(36, 140, 1, 1, 38),
(36, 140, 1, 1, 39),
(14, 148, 1, 4, 14),
(19, 148, 1, 5, 19),
(20, 148, 1, 9, 20),
(21, 148, 1, 6, 21),
(22, 148, 1, 4, 22),
(23, 148, 1, 10, 23),
(24, 148, 1, 12, 24),
(25, 148, 1, 7, 25),
(26, 148, 1, 11, 26),
(27, 148, 1, 8, 27),
(28, 148, 1, 11, 28),
(29, 148, 1, 9, 29),
(29, 148, 1, 9, 31),
(30, 148, 1, 4, 30),
(36, 148, 1, 4, 33),
(36, 148, 1, 4, 34),
(36, 148, 1, 4, 35),
(36, 148, 1, 4, 36),
(36, 148, 1, 4, 37),
(36, 148, 1, 4, 38),
(36, 148, 1, 4, 39);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Original entity Id for attribute value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(14, 0, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 1, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 2, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 3, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(19, 0, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 1, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 2, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 3, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(20, 0, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 1, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 2, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 3, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(21, 0, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 1, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 2, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 3, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(22, 0, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 1, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 2, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 3, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(23, 0, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 1, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 2, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 3, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(24, 0, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 1, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 2, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 3, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(25, 0, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 1, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 2, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 3, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(26, 0, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 1, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 2, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 3, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(27, 0, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 1, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 2, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 3, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(28, 0, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 1, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 2, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 3, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(29, 0, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 1, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 2, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 3, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(30, 0, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 1, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 2, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 3, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(33, 0, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 1, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 2, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 3, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(34, 0, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 1, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 2, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 3, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(35, 0, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 1, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 2, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 3, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(36, 0, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 1, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 2, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 3, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(37, 0, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 1, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 2, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 3, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(38, 0, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 1, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 2, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 3, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(39, 0, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 1, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 2, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 3, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(40, 0, 1, 2, '2343.4000', '2343.4000', '2343.4000', '2343.4000', NULL),
(40, 1, 1, 2, '2343.4000', '2343.4000', '2343.4000', '2343.4000', NULL),
(40, 2, 1, 2, '2343.4000', '2343.4000', '2343.4000', '2343.4000', NULL),
(40, 3, 1, 2, '2343.4000', '2343.4000', '2343.4000', '2343.4000', NULL),
(41, 0, 1, 2, '34345.4300', '34345.4300', '34345.4300', '34345.4300', NULL),
(41, 1, 1, 2, '34345.4300', '34345.4300', '34345.4300', '34345.4300', NULL),
(41, 2, 1, 2, '34345.4300', '34345.4300', '34345.4300', '34345.4300', NULL),
(41, 3, 1, 2, '34345.4300', '34345.4300', '34345.4300', '34345.4300', NULL),
(42, 0, 1, 2, '54.4500', '54.4500', '54.4500', '54.4500', NULL),
(42, 1, 1, 2, '54.4500', '54.4500', '54.4500', '54.4500', NULL),
(42, 2, 1, 2, '54.4500', '54.4500', '54.4500', '54.4500', NULL),
(42, 3, 1, 2, '54.4500', '54.4500', '54.4500', '54.4500', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(11) NOT NULL,
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_replica`
--

CREATE TABLE `catalog_product_index_price_replica` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price_replica`
--

INSERT INTO `catalog_product_index_price_replica` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(14, 0, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 1, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 2, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(14, 3, 1, 2, '29.6700', '29.6700', '29.6700', '29.6700', NULL),
(19, 0, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 1, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 2, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(19, 3, 1, 2, '15.5600', '15.5600', '15.5600', '15.5600', NULL),
(20, 0, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 1, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 2, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(20, 3, 1, 2, '149.2400', '149.2400', '149.2400', '149.2400', NULL),
(21, 0, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 1, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 2, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(21, 3, 1, 2, '13.3000', '13.3000', '13.3000', '13.3000', NULL),
(22, 0, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 1, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 2, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(22, 3, 1, 2, '21.0200', '21.0200', '21.0200', '21.0200', NULL),
(23, 0, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 1, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 2, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(23, 3, 1, 2, '292.1100', '292.1100', '292.1100', '292.1100', NULL),
(24, 0, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 1, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 2, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(24, 3, 1, 2, '5.6400', '5.6400', '5.6400', '5.6400', NULL),
(25, 0, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 1, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 2, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(25, 3, 1, 2, '21.4000', '21.4000', '21.4000', '21.4000', NULL),
(26, 0, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 1, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 2, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(26, 3, 1, 2, '21.2900', '21.2900', '21.2900', '21.2900', NULL),
(27, 0, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 1, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 2, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(27, 3, 1, 2, '0.4000', '0.4000', '0.4000', '0.4000', NULL),
(28, 0, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 1, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 2, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(28, 3, 1, 2, '3.7800', '3.7800', '3.7800', '3.7800', NULL),
(29, 0, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 1, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 2, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(29, 3, 1, 2, '0.0000', '0.0000', '0.0000', '0.0000', NULL),
(30, 0, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 1, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 2, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(30, 3, 1, 2, '612.4300', '612.4300', '612.4300', '612.4300', NULL),
(33, 0, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 1, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 2, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(33, 3, 1, 2, '20.0000', '20.0000', '20.0000', '20.0000', NULL),
(34, 0, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 1, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 2, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(34, 3, 1, 2, '30.0000', '30.0000', '30.0000', '30.0000', NULL),
(35, 0, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 1, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 2, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(35, 3, 1, 2, '40.0000', '40.0000', '40.0000', '40.0000', NULL),
(36, 0, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 1, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 2, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(36, 3, 1, 2, '0.0000', '0.0000', '20.0000', '70.0000', NULL),
(37, 0, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 1, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 2, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(37, 3, 1, 2, '50.0000', '50.0000', '50.0000', '50.0000', NULL),
(38, 0, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 1, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 2, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(38, 3, 1, 2, '60.0000', '60.0000', '60.0000', '60.0000', NULL),
(39, 0, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 1, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 2, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(39, 3, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  `default_store_id` smallint(6) NOT NULL COMMENT 'Default store id for website '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`, `default_store_id`) VALUES
(1, '2023-07-27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 4, 'position', 'int'),
(3, 5, 'position', 'int'),
(4, 3, 'position', 'int'),
(5, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) UNSIGNED DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

--
-- Dumping data for table `catalog_product_relation`
--

INSERT INTO `catalog_product_relation` (`parent_id`, `child_id`) VALUES
(29, 31),
(36, 33),
(36, 34),
(36, 35),
(36, 37),
(36, 38),
(36, 39);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

--
-- Dumping data for table `catalog_product_super_attribute`
--

INSERT INTO `catalog_product_super_attribute` (`product_super_attribute_id`, `product_id`, `attribute_id`, `position`) VALUES
(1, 29, 149, 0),
(3, 36, 149, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

--
-- Dumping data for table `catalog_product_super_attribute_label`
--

INSERT INTO `catalog_product_super_attribute_label` (`value_id`, `product_super_attribute_id`, `store_id`, `use_default`, `value`) VALUES
(1, 1, 0, 0, 'Model'),
(3, 3, 0, 0, 'Model');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

--
-- Dumping data for table `catalog_product_super_link`
--

INSERT INTO `catalog_product_super_link` (`link_id`, `product_id`, `parent_id`) VALUES
(1, 31, 29),
(3, 33, 36),
(4, 34, 36),
(5, 35, 36),
(6, 37, 36),
(7, 38, 36),
(8, 39, 36);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(14, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'category_id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'product_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

INSERT INTO `catalog_url_rewrite_product_category` (`url_rewrite_id`, `category_id`, `product_id`) VALUES
(134, 3, 21),
(133, 12, 21),
(137, 3, 22),
(136, 10, 22),
(140, 3, 23),
(139, 8, 23),
(147, 3, 24),
(146, 8, 24),
(169, 3, 29),
(168, 6, 29),
(174, 3, 28),
(204, 3, 14),
(202, 6, 14),
(203, 13, 14),
(209, 3, 20),
(208, 26, 20),
(218, 3, 26),
(217, 32, 26),
(219, 6, 26),
(225, 6, 40),
(226, 8, 40),
(227, 9, 40),
(228, 10, 40),
(229, 12, 40),
(230, 26, 40),
(231, 3, 40),
(239, 3, 41),
(237, 12, 41),
(233, 6, 41),
(236, 10, 41),
(235, 9, 41),
(234, 8, 41),
(238, 26, 41),
(254, 3, 42),
(251, 12, 42),
(248, 6, 42),
(253, 13, 42),
(250, 10, 42),
(249, 8, 42),
(252, 26, 42);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title',
  `layout_update_selected` varchar(255) DEFAULT NULL COMMENT 'File containing custom layout update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`, `layout_update_selected`) VALUES
(1, '404 Not Found', '2columns-right', 'Page keywords', 'Page description', 'no-route', 'Whoops, our bad...', '<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n', '2023-06-05 08:16:21', '2023-06-05 08:16:21', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'home', '', '', 'home', 'Home Page', '<p>{{widget type=\"Magento\\CatalogWidget\\Block\\Product\\ProductsList\" title=\"FEATURED PRODUCTS\" show_pager=\"0\" products_count=\"4\" template=\"Magento_CatalogWidget::product/widget/content/grid.phtml\" conditions_encoded=\"^[`1`:^[`type`:`Magento||CatalogWidget||Model||Rule||Condition||Combine`,`aggregator`:`all`,`value`:`1`,`new_child`:``^]^]\"}}</p>', '2023-06-05 08:16:21', '2023-06-14 09:56:53', 1, 0, NULL, '', '', NULL, NULL, NULL, '', NULL),
(3, 'Enable Cookies', '1column', NULL, NULL, 'enable-cookies', 'What are Cookies?', '<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>', '2023-06-05 08:16:21', '2023-06-05 08:16:21', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Privacy and Cookie Policy', '1column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy and Cookie Policy', '<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '2023-06-05 08:16:21', '2023-06-05 08:16:21', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'zmerly shop', 'shop', '', '', 'shop', '', '', '2023-06-21 09:05:09', '2023-07-07 18:09:08', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`, `updated_at`) VALUES
(1, 'default', 0, 'web/seo/use_rewrites', '1', '2023-06-05 08:16:04'),
(2, 'default', 0, 'web/unsecure/base_url', 'http://192.168.0.112:8888/new/', '2023-08-01 09:13:20'),
(3, 'default', 0, 'web/secure/base_url', 'https://192.168.0.112:8888/new/', '2023-08-01 09:13:24'),
(4, 'default', 0, 'general/locale/code', 'en_US', '2023-06-05 08:16:08'),
(5, 'default', 0, 'web/secure/use_in_frontend', '0', '2023-06-13 08:37:36'),
(6, 'default', 0, 'web/secure/use_in_adminhtml', '0', '2023-06-13 08:37:36'),
(7, 'default', 0, 'general/locale/timezone', 'UTC', '2023-06-05 08:16:13'),
(8, 'default', 0, 'currency/options/base', 'USD', '2023-06-05 08:16:15'),
(9, 'default', 0, 'currency/options/default', 'USD', '2023-06-05 08:16:16'),
(10, 'default', 0, 'currency/options/allow', 'USD', '2023-06-05 08:16:18'),
(11, 'default', 0, 'general/region/display_all', '1', '2023-06-05 08:16:20'),
(12, 'default', 0, 'general/region/state_required', 'AT,BR,CA,CH,EE,ES,FI,LT,LV,RO,US,HR,IN,AU', '2023-06-05 08:16:20'),
(13, 'default', 0, 'catalog/category/root_id', '2', '2023-06-05 08:16:24'),
(14, 'default', 0, 'payment/authorizenet_acceptjs/cctypes', 'AE,VI,MC,DI,JCB,DN', '2023-06-05 08:16:27'),
(15, 'default', 0, 'payment/authorizenet_acceptjs/order_status', 'processing', '2023-06-05 08:16:27'),
(16, 'default', 0, 'payment/authorizenet_acceptjs/payment_action', 'authorize', '2023-06-05 08:16:27'),
(17, 'default', 0, 'payment/authorizenet_acceptjs/currency', 'USD', '2023-06-05 08:16:27'),
(18, 'default', 0, 'analytics/subscription/enabled', '1', '2023-06-05 08:16:27'),
(19, 'default', 0, 'crontab/default/jobs/analytics_subscribe/schedule/cron_expr', '0 * * * *', '2023-06-05 08:16:27'),
(20, 'website', 0, 'connector_configuration/transactional_data/order_statuses', 'canceled,closed,complete,fraud,holded,payment_review,paypal_canceled_reversal,paypal_reversed,pending,pending_payment,pending_paypal,processing', '2023-06-05 08:16:29'),
(21, 'website', 0, 'connector_configuration/catalog_sync/catalog_type', 'simple,virtual,configurable,downloadable,grouped,bundle', '2023-06-05 08:16:29'),
(22, 'website', 0, 'connector_configuration/catalog_sync/catalog_visibility', '1,2,3,4', '2023-06-05 08:16:29'),
(23, 'default', 0, 'connector_dynamic_content/external_dynamic_content_urls/passcode', 'gISBd12f3MZFgEudMw6lXRc1cBeK0zI9', '2023-06-05 08:16:29'),
(24, 'default', 0, 'connector_automation/review_settings/allow_non_subscribers', '1', '2023-06-05 08:16:29'),
(25, 'default', 0, 'connector_configuration/abandoned_carts/allow_non_subscribers', '1', '2023-06-05 08:16:29'),
(26, 'default', 0, 'sync_settings/addressbook/allow_non_subscribers', '1', '2023-06-05 08:16:29'),
(27, 'stores', 1, 'design/theme/theme_id', '5', '2023-06-05 08:46:01'),
(28, 'default', 0, 'dev/debug/template_hints_storefront', '0', '2023-07-28 08:20:34'),
(29, 'stores', 1, 'design/header/welcome', NULL, '2023-06-05 10:11:14'),
(30, 'stores', 1, 'design/header/logo_src', 'stores/1/Zmerly-Logo.png', '2023-06-07 09:53:46'),
(31, 'stores', 1, 'design/header/logo_width', '250', '2023-06-07 09:58:52'),
(32, 'stores', 1, 'design/header/logo_height', '70', '2023-06-07 09:58:52'),
(33, 'stores', 1, 'design/header/logo_alt', 'zmerly logo', '2023-06-07 09:58:52'),
(34, 'default', 0, 'mpbannerslider/general/enabled', '1', '2023-06-09 08:08:35'),
(35, 'default', 0, 'mpbannerslider/mpbannerslider_design/responsive', '1', '2023-06-09 18:43:56'),
(36, 'default', 0, 'mpbannerslider/mpbannerslider_design/item_slider', '{\"_1686392655706_706\":{\"size\":\"0\",\"items\":\"1\"}}', '2023-06-10 10:26:45'),
(37, 'default', 0, 'mpbannerslider/mpbannerslider_design/autoWidth', '0', '2023-06-13 09:03:46'),
(38, 'default', 0, 'mpbannerslider/mpbannerslider_design/autoHeight', '0', '2023-06-09 18:44:40'),
(39, 'default', 0, 'mpbannerslider/mpbannerslider_design/loop', '1', '2023-06-10 10:32:46'),
(40, 'default', 0, 'mpbannerslider/mpbannerslider_design/nav', '1', '2023-06-11 06:16:16'),
(41, 'default', 0, 'mpbannerslider/mpbannerslider_design/dots', '1', '2023-06-11 06:16:16'),
(42, 'default', 0, 'mpbannerslider/mpbannerslider_design/lazyLoad', '1', '2023-06-09 08:08:35'),
(43, 'default', 0, 'mpbannerslider/mpbannerslider_design/autoplay', '1', '2023-07-05 17:56:50'),
(44, 'default', 0, 'mpbannerslider/mpbannerslider_design/autoplayTimeout', '7000', '2023-07-05 17:56:50'),
(45, 'default', 0, 'blog/general/enabled', '0', '2023-06-09 12:01:11'),
(46, 'default', 0, 'blog/general/toplinks', '1', '2023-06-09 11:55:34'),
(47, 'default', 0, 'blog/general/footer', '1', '2023-06-09 11:55:34'),
(48, 'default', 0, 'web/unsecure/base_static_url', NULL, '2023-06-13 08:37:36'),
(49, 'default', 0, 'web/unsecure/base_media_url', 'http://localhost:8888/new/pub/media/', '2023-06-13 08:37:36'),
(50, 'default', 0, 'web/secure/base_static_url', NULL, '2023-06-13 08:37:36'),
(51, 'default', 0, 'web/secure/base_media_url', 'https://localhost:8888/new/pub/media/', '2023-06-13 08:37:36'),
(52, 'default', 0, 'web/cookie/cookie_path', NULL, '2023-06-13 08:37:36'),
(53, 'default', 0, 'web/cookie/cookie_domain', NULL, '2023-06-13 08:37:36'),
(54, 'default', 0, 'web/cookie/cookie_httponly', '1', '2023-06-13 08:37:36'),
(55, 'default', 0, 'admin/security/use_case_sensitive_login', '0', '2023-06-14 05:59:57'),
(56, 'default', 0, 'admin/security/session_lifetime', '7200', '2023-06-14 05:59:57'),
(57, 'default', 0, 'system/full_page_cache/varnish/access_list', 'localhost', '2023-06-22 13:07:22'),
(58, 'default', 0, 'system/full_page_cache/varnish/backend_host', 'localhost', '2023-06-22 13:07:22'),
(59, 'default', 0, 'system/full_page_cache/varnish/backend_port', '8080', '2023-06-22 13:07:22'),
(60, 'default', 0, 'system/full_page_cache/varnish/grace_period', '300', '2023-06-22 13:07:22'),
(61, 'default', 0, 'sales_email/general/async_sending', '0', '2023-07-06 13:28:53'),
(62, 'default', 0, 'sales_email/order/copy_to', NULL, '2023-07-06 13:28:53'),
(63, 'default', 0, 'sales_email/order_comment/copy_to', NULL, '2023-07-06 13:28:53'),
(64, 'default', 0, 'sales_email/invoice/copy_to', NULL, '2023-07-06 13:28:53'),
(65, 'default', 0, 'sales_email/invoice_comment/copy_to', NULL, '2023-07-06 13:28:53'),
(66, 'default', 0, 'sales_email/shipment/copy_to', NULL, '2023-07-06 13:28:53'),
(67, 'default', 0, 'sales_email/shipment_comment/copy_to', NULL, '2023-07-06 13:28:53'),
(68, 'default', 0, 'sales_email/creditmemo/copy_to', NULL, '2023-07-06 13:28:53'),
(69, 'default', 0, 'sales_email/creditmemo_comment/copy_to', NULL, '2023-07-06 13:28:53'),
(70, 'default', 0, 'catalog/frontend/list_mode', 'grid', '2023-07-24 07:16:04'),
(71, 'default', 0, 'catalog/frontend/list_allow_all', '0', '2023-07-21 13:42:52'),
(72, 'default', 0, 'catalog/frontend/flat_catalog_product', '0', '2023-07-21 13:58:14'),
(73, 'default', 0, 'catalog/productalert_cron/frequency', 'D', '2023-07-21 13:42:52'),
(74, 'default', 0, 'crontab/default/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *', '2023-07-21 13:42:52'),
(75, 'default', 0, 'crontab/default/jobs/catalog_product_alert/run/model', NULL, '2023-07-21 13:42:52'),
(76, 'default', 0, 'catalog/productalert_cron/time', '00,00,00', '2023-07-21 13:42:52'),
(77, 'default', 0, 'catalog/productalert_cron/error_email', NULL, '2023-07-21 13:42:52'),
(78, 'default', 0, 'catalog/product_video/youtube_api_key', NULL, '2023-07-21 13:42:52'),
(79, 'default', 0, 'catalog/price/scope', '0', '2023-07-21 13:42:52'),
(80, 'default', 0, 'catalog/downloadable/shareable', '0', '2023-07-21 13:42:52'),
(81, 'default', 0, 'catalog/downloadable/content_disposition', 'inline', '2023-07-21 13:42:52'),
(82, 'default', 0, 'catalog/custom_options/use_calendar', '0', '2023-07-21 13:42:52'),
(83, 'default', 0, 'catalog/custom_options/year_range', ',', '2023-07-21 13:42:52'),
(84, 'default', 0, 'catalog/placeholder/image_placeholder', NULL, '2023-07-21 13:42:52'),
(85, 'default', 0, 'catalog/placeholder/small_image_placeholder', NULL, '2023-07-21 13:42:52'),
(86, 'default', 0, 'catalog/placeholder/swatch_image_placeholder', NULL, '2023-07-21 13:42:52'),
(87, 'default', 0, 'catalog/placeholder/thumbnail_placeholder', NULL, '2023-07-21 13:42:52'),
(88, 'default', 0, 'catalog/frontend/grid_per_page_values', '9,12,15,30', '2023-07-21 13:50:13'),
(89, 'default', 0, 'catalog/recently_products/synchronize_with_backend', '1', '2023-07-26 08:02:08'),
(90, 'default', 0, 'payment/amazon_payments/simplepath/publickey', '-----BEGIN PUBLIC KEY-----\r\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmHm2fqousqbXUZCsx8EU\r\nvjkaK/jjwm0BayxEINS1Njh8zUS+0AaEuCoRiuOvMaQ7hxZPZcL9EiLmYmv6yuYy\r\nT1yPq8VDCGp+jXkGYvKQYKyhnEmUqs6Boy5w06xSe6JOUF/iVxtQFrzSMCEAmBCr\r\nvW7yfHqAi5PHGndNF2bwfqaAml/duJbAiat8hfa5adHfiqRjKxVg53zd2SGBPAKV\r\nlrZiF+00G1pEPrMP244ba+PfM9b3eLEJxCrYP3pW3WdCcTK0JrPfUFAoJBj4UH55\r\nZCl4VpSiFeOptwYgtTEgzwyiO8ldm/2AQyGNRYI6AL7y0RU78jIlK42ySwiwL1fN\r\n1QIDAQAB\r\n-----END PUBLIC KEY-----', '2023-07-26 13:14:10'),
(91, 'default', 0, 'payment/amazon_payments/simplepath/privatekey', '0:2:8Hg80tmHIQoxEt4EDTdWTTxoedwXw1jT:58GgrxtI+gPkhT2payCvnPK/DKgkP4xe47SZ9xUfgX0X2Ig+CtrtAHc/mHymeq632ErNu5gcpLQlKyrpmh8mFWone7NSY1Bmba9xnFEyul4CzGb/vzCdAl1VIGP6nInhmcL01qN9OtOQTD0y2igTyhpUc/CLAmRGtj4hIKlFVqhR9oAF1/ZjWbgMxK0mMijIpqTLHEQ3RmgbIgXnZN0ko0R5Cp319Mu00NUEwKHQasBT7ok+GALIg14XgojSnCCsFo7Rzm9hfcGi5Orvh8pGQ4/Dq8KireXrXC+DxzoT7eAx6mNKIU9kkb8T9+W7ndW2NAATwtKffLFQQM9QsaFTpVAi9knAxkN3+idOMPp1c4AslY5Ni4BNnBoPrPwMSv6ZnYEZRRHcLUIGtvpON+r3rCUG/5aL6GxgdiaQGcNmdypXB483SROh+6LUUls1pKIPjEXayiOlquyWoP6/tVVt3RL4Bafo9jgLwAkdISatZM+9Vq7L50pFDDX9Lc6bj341YdHA5yPwc+j72ml1Y2i5J4XPXPZByVoHTGwgXRgUSWMlarOuZSBaNA5oAhokFZQsQTSjwmYOtdL3gKQ5421CtI7jJ0CdNsFRmcAQI4WWACF+kCS3n5xR/hXEuVOIk5dZ+MeG8CNxo7NamQ4B0NR7D/Lcs6B6Pwl5aNsJes5jigT0yIxaBYWiqUKlSGDwZRz2QUBwCQTuemrtsJt0sUQ0d8RK5AymO+3C9ctzb7ltz4pFmE56Fag8yImCec6aXpbGW/X6nHv0lCuaMd7HPo85jJ5IxzrDgnZRwkU6kN0YRX+KmItCqP3fKtWcCUQiukq+Qq4B45XScb1sc7/kx9he9c73MTpYSpjG3EXP5ZxS420n2T+34b0vHy05bKzdXPPEii/mNyavwMbZM9R+EfsVzcVgyTVuVIfeMnuP+fCp+Clouc66UtOWjj1mKxsOyZqHOaWY8c5gxArGovmD3hyc8j8BbIwpViJYRv2+D4+HC6RwtFhyRfrBG5S6kHhFlKSKQGtW0VyE7DA2wJYdy/JdLlyMZ721HVAvcDkOIrb2oGY8f7kSapQXSo4Wedswb6GT6LhMvTaO4pTkqmPZjqD+d5mahm8kON9YqYD8PtfrplcBKkCwnWTpwTfX0LvNdSi2lUknYzId2SzO6psGIHkGcoAOibhz3UxthPo+A6b+AIYO830ZnpxyrrHqOtn088L6BnnNvt0l3Oa3Dhc9Gy++l9yLQ87VRzwKyEj0tbgQNCiEbUTVhflGgr/Bq3k1xpUVmrqqkIeroaYl6SwlBPH2hM7INUEM2XjKZcC4QDZePpnXDo0NWuQc44VqAaKWYskSRy+7bvd3xq11/CHfpxRGi5BDoBdnrVKu3dpLYH2JHbdzOnECva/G2iEHnRqaOLnhDLfuqhj0PQpJvG8bAxP+g9hHv37briw5XXgcZQtB2SK1TXPqMITU8Aveyh8+9L7qZ57EzZU81zHmJgtJFlVYsmWEKOdGpTPqaNB4HK21ZkcCs6or409POP9BW6soC46sinHc6WiJsT7j/s3l6/VIR9bJXlihW/GDzZlwE0PjCuc3Wya/mDnY1zi8EuMNwzcD0qPoLd2OCcmMvcgkmKzywhIPGZ/VXxw4M8wCsG8kcV+MAN4v3LDpPoJ9PBIc11n8QW/pMP2TBD9CxFy8gXWdv5hrJlA84j06Ppe/LVMmSsrSrMhugISOX1jY+Rk4NtT5ChJBWW3Jrc9wGOsM9H650+R2Wq0nCWnDJhgD4fJEfDvUIsE6Ik5iuH6KWHRhIsZ/Z/G3aGnPAtCrMv6O8B4bygIYe2YDRmFF11WSdKX8cOtvRuBrU/3/T22bJbfLROPb+pIr37Rvl8sd3vuVApG/6549mBuSVTUmtcDxX2L04Yw0n4GHRLEhlBoWiC0lVfjR8WW6JuadTfhRPboVBWtBMx602h0R6cXhviJJIaP7xvTcIALWqoHhbfOdPiHY/ivEVcEz171GCF2NWb9xTOVn6nP1jc15mX+8QSoc/o85CWRuBTwx2fxWk01cSAtWuNIZVzV0mlSNGp7exul6od9V2P3MEQzDq9BOaCuAmovNMkURyLqQCfXLqn8anmOy0L2G5vpt1YdU+bEBqLB7f+PyKfHcQaj9rkJh2anJeG2uRdIjGCLm9Sd37XWxPhu9XMjHrUCxUPux9XzumDxBy+7Pt8BY3Xi/iOoGFpe9flgome9C3LfB47He6ZmS4SG3njSvoX83y5XAbmtFp6ZIGVf3NhLIus6FLg8PZx0HIoivomjLIfY4LJlwjfWSRGfZX80h', '2023-07-26 13:14:10'),
(93, 'default', 0, 'carriers/flatrate/handling_fee', NULL, '2023-07-26 13:28:03'),
(94, 'default', 0, 'carriers/flatrate/specificcountry', NULL, '2023-07-26 13:28:03'),
(95, 'default', 0, 'carriers/flatrate/showmethod', '0', '2023-07-26 20:13:10'),
(96, 'default', 0, 'carriers/flatrate/sort_order', NULL, '2023-07-26 13:28:03'),
(97, 'default', 0, 'carriers/freeshipping/free_shipping_subtotal', NULL, '2023-07-26 13:28:03'),
(98, 'default', 0, 'carriers/freeshipping/specificcountry', NULL, '2023-07-26 13:28:03'),
(99, 'default', 0, 'carriers/freeshipping/showmethod', '0', '2023-07-26 13:28:03'),
(100, 'default', 0, 'carriers/freeshipping/sort_order', NULL, '2023-07-26 13:28:03'),
(101, 'default', 0, 'carriers/tablerate/handling_fee', NULL, '2023-07-26 13:28:03'),
(102, 'default', 0, 'carriers/tablerate/specificcountry', 'LB', '2023-07-27 09:47:55'),
(103, 'default', 0, 'carriers/tablerate/showmethod', '1', '2023-07-27 05:07:31'),
(104, 'default', 0, 'carriers/tablerate/sort_order', NULL, '2023-07-26 13:28:03'),
(105, 'default', 0, 'carriers/ups/shipper_number', NULL, '2023-07-26 13:28:03'),
(106, 'default', 0, 'carriers/ups/handling_fee', NULL, '2023-07-26 13:28:03'),
(107, 'default', 0, 'carriers/ups/free_shipping_enable', '0', '2023-07-26 13:28:03'),
(108, 'default', 0, 'carriers/ups/specificcountry', NULL, '2023-07-26 13:28:03'),
(109, 'default', 0, 'carriers/ups/showmethod', '0', '2023-07-26 13:28:03'),
(110, 'default', 0, 'carriers/ups/debug', '0', '2023-07-26 13:28:03'),
(111, 'default', 0, 'carriers/ups/sort_order', NULL, '2023-07-26 13:28:03'),
(112, 'default', 0, 'carriers/usps/userid', NULL, '2023-07-26 13:28:03'),
(113, 'default', 0, 'carriers/usps/password', NULL, '2023-07-26 13:28:03'),
(114, 'default', 0, 'carriers/usps/handling_fee', NULL, '2023-07-26 13:28:03'),
(115, 'default', 0, 'carriers/usps/free_shipping_enable', '0', '2023-07-26 13:28:03'),
(116, 'default', 0, 'carriers/usps/specificcountry', NULL, '2023-07-26 13:28:03'),
(117, 'default', 0, 'carriers/usps/debug', '0', '2023-07-26 13:28:03'),
(118, 'default', 0, 'carriers/usps/showmethod', '0', '2023-07-26 13:28:03'),
(119, 'default', 0, 'carriers/usps/sort_order', NULL, '2023-07-26 13:28:03'),
(120, 'default', 0, 'carriers/fedex/account', NULL, '2023-07-26 13:28:03'),
(121, 'default', 0, 'carriers/fedex/meter_number', NULL, '2023-07-26 13:28:03'),
(122, 'default', 0, 'carriers/fedex/key', NULL, '2023-07-26 13:28:03'),
(123, 'default', 0, 'carriers/fedex/password', NULL, '2023-07-26 13:28:03'),
(124, 'default', 0, 'carriers/fedex/handling_fee', NULL, '2023-07-26 13:28:03'),
(125, 'default', 0, 'carriers/fedex/residence_delivery', '0', '2023-07-26 13:28:03'),
(126, 'default', 0, 'carriers/fedex/smartpost_hubid', NULL, '2023-07-26 13:28:03'),
(127, 'default', 0, 'carriers/fedex/free_shipping_enable', '0', '2023-07-26 13:28:03'),
(128, 'default', 0, 'carriers/fedex/specificcountry', NULL, '2023-07-26 13:28:03'),
(129, 'default', 0, 'carriers/fedex/debug', '0', '2023-07-26 13:28:03'),
(130, 'default', 0, 'carriers/fedex/showmethod', '0', '2023-07-26 13:28:03'),
(131, 'default', 0, 'carriers/fedex/sort_order', NULL, '2023-07-26 13:28:03'),
(132, 'default', 0, 'carriers/dhl/id', NULL, '2023-07-26 13:28:03'),
(133, 'default', 0, 'carriers/dhl/password', NULL, '2023-07-26 13:28:03'),
(134, 'default', 0, 'carriers/dhl/handling_fee', NULL, '2023-07-26 13:28:03'),
(135, 'default', 0, 'carriers/dhl/free_method_nondoc', NULL, '2023-07-26 13:28:03'),
(136, 'default', 0, 'carriers/dhl/free_shipping_enable', '0', '2023-07-26 13:28:03'),
(137, 'default', 0, 'carriers/dhl/specificcountry', NULL, '2023-07-26 13:28:03'),
(138, 'default', 0, 'carriers/dhl/showmethod', '0', '2023-07-26 13:28:03'),
(139, 'default', 0, 'carriers/dhl/debug', '0', '2023-07-26 13:28:03'),
(140, 'default', 0, 'carriers/dhl/sandbox_mode', '0', '2023-07-26 13:28:03'),
(141, 'default', 0, 'carriers/dhl/sort_order', NULL, '2023-07-26 13:28:03'),
(142, 'default', 0, 'carriers/temando/active', '0', '2023-07-26 13:28:03'),
(143, 'default', 0, 'carriers/temando/collectionpoints_countries', NULL, '2023-07-26 13:28:03'),
(144, 'default', 0, 'carriers/temando/specificcountry', NULL, '2023-07-26 13:28:03'),
(145, 'default', 0, 'carriers/temando/specificerrmsg', 'This shipping method is not available. To use this shipping method, please contact us.', '2023-07-26 13:28:03'),
(150, 'websites', 1, 'carriers/tablerate/import', '1690742572,,,,4,0', '2023-07-30 19:11:36'),
(153, 'websites', 1, 'carriers/temando/collectionpoints_countries', NULL, '2023-07-26 14:14:04'),
(154, 'websites', 1, 'carriers/temando/specificcountry', NULL, '2023-07-26 14:14:04'),
(155, 'websites', 1, 'carriers/tablerate/active', '1', '2023-07-27 05:09:52'),
(158, 'websites', 1, 'carriers/tablerate/handling_fee', '122', '2023-07-26 18:20:35'),
(161, 'websites', 1, 'carriers/flatrate/handling_type', 'F', '2023-07-26 18:30:21'),
(163, 'websites', 1, 'carriers/flatrate/price', '5', '2023-07-27 05:08:56'),
(168, 'websites', 1, 'carriers/freeshipping/active', '0', '2023-07-26 19:25:01'),
(169, 'websites', 1, 'carriers/freeshipping/free_shipping_subtotal', '20', '2023-07-26 19:13:15'),
(171, 'default', 0, 'checkout/options/display_billing_address_on', '0', '2023-07-26 20:11:40'),
(172, 'default', 0, 'checkout/options/enable_agreements', '0', '2023-07-26 20:10:51'),
(173, 'default', 0, 'checkout/payment_failed/copy_to', NULL, '2023-07-26 20:10:51'),
(174, 'default', 0, 'checkout/payment_failed/copy_method', 'bcc', '2023-07-26 20:10:51'),
(175, 'websites', 1, 'carriers/tablerate/showmethod', '0', '2023-07-27 06:10:46'),
(176, 'websites', 1, 'carriers/flatrate/active', '0', '2023-07-27 06:12:13'),
(177, 'websites', 1, 'payment/paypal_express/in_context', '0', '2023-07-27 08:39:30'),
(178, 'websites', 1, 'payment/paypal_express_bml/active', '0', '2023-07-27 08:39:30'),
(179, 'websites', 1, 'payment/paypal_express/specificcountry', NULL, '2023-07-27 08:39:30'),
(180, 'websites', 1, 'payment/paypal_billing_agreement/specificcountry', NULL, '2023-07-27 08:39:30'),
(181, 'websites', 1, 'payment/payflow_express_bml/active', '0', '2023-07-27 08:39:30'),
(182, 'websites', 1, 'payment/payflow_advanced/specificcountry', NULL, '2023-07-27 08:39:30'),
(183, 'websites', 1, 'payment/payflow_express/specificcountry', NULL, '2023-07-27 08:39:30'),
(184, 'websites', 1, 'payment/payflowpro/specificcountry', NULL, '2023-07-27 08:39:30'),
(185, 'websites', 1, 'payment/wps_express_bml/active', '0', '2023-07-27 08:39:30'),
(186, 'websites', 1, 'payment/payflow_link/specificcountry', NULL, '2023-07-27 08:39:30'),
(187, 'websites', 1, 'payment/klarna_kp/specificcountry', NULL, '2023-07-27 08:39:30'),
(188, 'websites', 1, 'payment/cashondelivery/active', '1', '2023-07-27 08:39:30'),
(189, 'default', 0, 'carriers/tablerate/sallowspecific', '1', '2023-07-27 09:47:55'),
(190, 'default', 0, 'carriers/flatrate/active', '0', '2023-07-27 09:48:22'),
(191, 'default', 0, 'carriers/tablerate/active', '1', '2023-07-27 09:48:22'),
(192, 'websites', 1, 'carriers/tablerate/sallowspecific', '1', '2023-07-27 09:57:43'),
(193, 'websites', 1, 'carriers/tablerate/specificcountry', 'LB', '2023-07-27 09:57:43'),
(194, 'websites', 1, 'general/country/default', 'LB', '2023-07-27 10:01:16'),
(195, 'websites', 1, 'general/country/allow', 'LB', '2023-07-27 10:01:16'),
(196, 'websites', 1, 'dev/debug/template_hints_blocks', '1', '2023-07-27 11:17:28'),
(197, 'default', 0, 'dev/restrict/allow_ips', NULL, '2023-07-28 07:41:25'),
(198, 'default', 0, 'dev/debug/template_hints_admin', '0', '2023-07-28 07:42:32'),
(199, 'default', 0, 'dev/debug/template_hints_blocks', '1', '2023-07-28 07:41:25'),
(200, 'default', 0, 'dev/template/allow_symlink', '0', '2023-07-28 07:41:25'),
(201, 'default', 0, 'dev/translate_inline/active', '0', '2023-07-28 07:41:25'),
(202, 'default', 0, 'dev/translate_inline/active_admin', '0', '2023-07-28 07:41:25'),
(203, 'default', 0, 'dev/static/sign', '1', '2023-07-28 07:41:25'),
(204, 'websites', 1, 'carriers/tablerate/state_maker', 'tablerates (1).csv,text/csv,/Applications/MAMP/tmp/php/phpcfsdJg,0,102', '2023-07-30 19:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) UNSIGNED NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validation request success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

--
-- Dumping data for table `customer_address_entity`
--

INSERT INTO `customer_address_entity` (`entity_id`, `increment_id`, `parent_id`, `created_at`, `updated_at`, `is_active`, `city`, `company`, `country_id`, `fax`, `firstname`, `lastname`, `middlename`, `postcode`, `prefix`, `region`, `region_id`, `street`, `suffix`, `telephone`, `vat_id`, `vat_is_valid`, `vat_request_date`, `vat_request_id`, `vat_request_success`) VALUES
(1, NULL, 2, '2023-07-26 13:17:11', '2023-07-26 13:17:11', 1, 'mina', NULL, 'US', NULL, 'mireille', 'test', NULL, '1300', NULL, 'American Samoa', 3, 'mina', NULL, 'ewfeewrfewf', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `is_searchable_in_grid`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL, 1, 1, 1, 0),
(2, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(3, 1, NULL, 0, NULL, 1, 20, NULL, 1, 1, 0, 1),
(4, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(5, 1, 'trim', 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 40, NULL, 0, 0, 0, 0),
(6, 0, 'trim', 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(7, 1, 'trim', 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 60, NULL, 0, 0, 0, 0),
(8, 0, NULL, 0, NULL, 0, 70, NULL, 0, 0, 0, 0),
(9, 1, NULL, 0, '{\"input_validation\":\"email\"}', 1, 80, NULL, 1, 1, 1, 1),
(10, 1, NULL, 0, NULL, 1, 25, NULL, 1, 1, 1, 0),
(11, 0, 'date', 0, '{\"input_validation\":\"date\"}', 0, 90, NULL, 1, 1, 1, 0),
(12, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(13, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(14, 0, NULL, 0, '{\"input_validation\":\"date\"}', 1, 0, NULL, 0, 0, 0, 0),
(15, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(16, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(17, 0, NULL, 0, '{\"max_text_length\":255}', 0, 100, NULL, 1, 1, 0, 1),
(18, 0, NULL, 0, NULL, 1, 0, NULL, 1, 1, 1, 0),
(19, 0, NULL, 0, NULL, 0, 0, NULL, 1, 1, 1, 0),
(20, 0, NULL, 0, '[]', 0, 110, NULL, 1, 1, 1, 0),
(21, 1, NULL, 0, NULL, 1, 28, NULL, 0, 0, 0, 0),
(22, 0, NULL, 0, NULL, 0, 10, NULL, 0, 0, 0, 0),
(23, 1, 'trim', 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 20, NULL, 1, 0, 0, 1),
(24, 0, 'trim', 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(25, 1, 'trim', 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 40, NULL, 1, 0, 0, 1),
(26, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(27, 1, NULL, 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 60, NULL, 1, 0, 0, 1),
(28, 1, NULL, 3, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 70, NULL, 1, 0, 0, 1),
(29, 1, NULL, 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 80, NULL, 1, 0, 0, 1),
(30, 1, NULL, 0, NULL, 1, 90, NULL, 1, 1, 1, 0),
(31, 1, NULL, 0, NULL, 1, 100, NULL, 1, 1, 0, 1),
(32, 1, NULL, 0, NULL, 1, 100, NULL, 0, 0, 0, 0),
(33, 1, NULL, 0, '[]', 1, 110, 'Magento\\Customer\\Model\\Attribute\\Data\\Postcode', 1, 1, 1, 1),
(34, 1, NULL, 0, '{\"max_text_length\":255,\"min_text_length\":1}', 1, 120, NULL, 1, 1, 1, 1),
(35, 0, NULL, 0, '{\"max_text_length\":255,\"min_text_length\":1}', 0, 130, NULL, 1, 0, 0, 1),
(36, 1, NULL, 0, NULL, 1, 140, NULL, 0, 0, 0, 0),
(37, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(38, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(39, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(40, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(41, 0, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(42, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(43, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(44, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

INSERT INTO `customer_eav_attribute_website` (`attribute_id`, `website_id`, `is_visible`, `is_required`, `default_value`, `multiline_count`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL, NULL),
(6, 1, NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL, NULL),
(24, 1, NULL, NULL, NULL, NULL),
(25, 1, NULL, NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL, NULL),
(32, 1, NULL, NULL, NULL, NULL),
(33, 1, NULL, NULL, NULL, NULL),
(34, 1, NULL, NULL, NULL, NULL),
(35, 1, NULL, NULL, NULL, NULL),
(36, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE `customer_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Name Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Name Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

--
-- Dumping data for table `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`, `created_in`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `dob`, `password_hash`, `rp_token`, `rp_token_created_at`, `default_billing`, `default_shipping`, `taxvat`, `confirmation`, `gender`, `failures_num`, `first_failure`, `lock_expires`) VALUES
(1, 1, 'moemensaadeh5@gmail.com', 1, NULL, 1, '2023-07-19 13:19:20', '2023-07-26 05:59:13', 1, 0, 'Default Store View', NULL, 'moemen', NULL, 'saadeh', NULL, NULL, '306b33e4b10794e8065310de14f2076d6a83802fd340ba063384f6a5c0c83362:yb3VGgQdRFoZcYPWltDyBuzNvpEY2hbg:1', 'uTfROo7lqfCgBueDo7SrYQbutpdfDJYq', '2023-07-19 13:19:21', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 1, 'mireille.a@codendot.com', 1, NULL, 1, '2023-07-26 13:08:39', '2023-07-26 13:17:11', 1, 0, 'Default Store View', NULL, 'mireille', NULL, 'test', NULL, NULL, 'e29560581157072b9ea0ff90a9e3d99e2d6741a880328f1711d0b438c9f61b54:0ufV4gpK12j73kYdaTP3SW7yJYmsnofU:1', 'DKaNKoPab1SDK7go1kAy1km0i3t0A7Gu', '2023-07-26 13:08:39', 1, 1, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 17),
('adminhtml_customer', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_customer', 19),
('customer_account_create', 19),
('customer_account_edit', 19),
('adminhtml_checkout', 20),
('adminhtml_customer', 20),
('customer_account_create', 20),
('customer_account_edit', 20),
('adminhtml_customer', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer_address', 33),
('customer_address_edit', 33),
('customer_register_address', 33),
('adminhtml_customer_address', 34),
('customer_address_edit', 34),
('customer_register_address', 34),
('adminhtml_customer_address', 35),
('customer_address_edit', 35),
('customer_register_address', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_grid_flat`
--

CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `shipping_full` text COMMENT 'Shipping_full',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

--
-- Dumping data for table `customer_grid_flat`
--

INSERT INTO `customer_grid_flat` (`entity_id`, `name`, `email`, `group_id`, `created_at`, `website_id`, `confirmation`, `created_in`, `dob`, `gender`, `taxvat`, `lock_expires`, `shipping_full`, `billing_full`, `billing_firstname`, `billing_lastname`, `billing_telephone`, `billing_postcode`, `billing_country_id`, `billing_region`, `billing_street`, `billing_city`, `billing_fax`, `billing_vat_id`, `billing_company`) VALUES
(1, 'moemen saadeh', 'moemensaadeh5@gmail.com', 1, '2023-07-19 13:19:20', 1, NULL, 'Default Store View', NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'mireille test', 'mireille.a@codendot.com', 1, '2023-07-26 13:08:39', 1, NULL, 'Default Store View', NULL, NULL, NULL, NULL, 'mina mina American Samoa 1300', 'mina mina American Samoa 1300', 'mireille', 'test', 'ewfeewrfewf', '1300', 'US', 'American Samoa', 'mina', 'mina', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_log`
--

CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

--
-- Dumping data for table `customer_log`
--

INSERT INTO `customer_log` (`log_id`, `customer_id`, `last_login_at`, `last_logout_at`) VALUES
(1, 1, '2023-07-26 20:01:17', '2023-07-26 10:59:20'),
(10, 2, '2023-07-26 13:09:10', '2023-07-26 13:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `customer_visitor`
--

CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

INSERT INTO `customer_visitor` (`visitor_id`, `customer_id`, `session_id`, `last_visit_at`) VALUES
(1, NULL, '8s82paeluebg07noaem6i4lvjk', '2023-06-05 13:04:11'),
(2, NULL, 'qnpeuco930oeuakidu9a58a0pb', '2023-06-14 16:15:00'),
(3, NULL, 'q5898ein4m2b0frur1mlcndfsp', '2023-06-14 15:04:29'),
(4, NULL, 'j6n46hcd877k5e8218rlih6k71', '2023-06-15 10:11:20'),
(5, NULL, 'j6n46hcd877k5e8218rlih6k71', '2023-06-15 12:22:17'),
(6, NULL, 'al3i2482vdkrrcj1jqchbgp1tj', '2023-06-15 15:43:59'),
(7, NULL, '5q6gu1vv6dr9v4b8kls2p2co7b', '2023-06-19 16:37:02'),
(8, NULL, 'ng1bitvi3dcldicq8lhhb173bh', '2023-06-20 09:27:27'),
(9, NULL, '17oc7ulgv679l09sopfp0j4j96', '2023-06-21 12:37:21'),
(10, NULL, 'g2m73e1tstpomh8sr7k1bthmlr', '2023-06-23 13:46:39'),
(11, NULL, '9fthp18vj6j2nthq008mbg99tn', '2023-06-26 13:19:32'),
(12, NULL, '4o2n2piai9gip20pobfhd0t378', '2023-06-26 18:30:29'),
(13, NULL, '42t57cd54pooq92mbokhrt4rhp', '2023-07-01 17:50:16'),
(14, NULL, 'aq34n4i14c8jrufsvpi7gm78kq', '2023-07-03 08:53:35'),
(15, NULL, 'pkqus4ot3v2v5kj5vvq57a02hf', '2023-07-05 13:56:53'),
(16, NULL, 'js99q9mkv8m281hban69l9441c', '2023-07-05 17:39:31'),
(17, NULL, 'b2teie16aupgrf2c47ifesmhbl', '2023-07-05 17:50:36'),
(18, NULL, 'jkcr2l5odsubg6jpacd35brvh5', '2023-07-06 09:19:24'),
(19, NULL, '6qt3c6ddbr6ses8l337n0cqa6d', '2023-07-06 14:02:27'),
(20, NULL, 'd29fp0dm578i5cujskffhrmbpc', '2023-07-06 14:27:09'),
(21, NULL, 'i9doimd7qftc921udnhmug5llv', '2023-07-06 17:46:32'),
(22, NULL, 'jj5ie04r868m8ue25vvhjkquo5', '2023-07-15 19:55:45'),
(23, NULL, 'uedu9gg37lq01cl3ppjrdnt3ij', '2023-07-16 14:25:18'),
(24, 1, 'sn1qhlh00uhtdrldrng300cs4f', '2023-07-19 13:54:23'),
(25, NULL, 'ccobskhhme98g392hncmf1d506', '2023-07-19 13:57:54'),
(26, 1, 'h1mmkkmjm490opbjo4kvlo2fi8', '2023-07-20 05:53:38'),
(27, NULL, 'opq5bauq3l4ke1nv5voa6mj494', '2023-07-20 18:20:09'),
(28, NULL, 'vj0s6e8lhubjmc4hmbsjm2jmgg', '2023-07-20 21:19:41'),
(29, NULL, 'op9q7g08a7jbtjs71qkkbf30uv', '2023-07-21 06:55:41'),
(30, 1, 'gi3uluo4ruj50b05n9nh732gbs', '2023-07-23 18:59:46'),
(31, 1, 'be4jskb3gij4qquboqnkt0ak8b', '2023-07-23 19:49:37'),
(32, 1, '02cepd52uevg2qp3ojajeic47v', '2023-07-23 20:03:21'),
(33, 1, 'li7ajbc1gjqij265i65bccbbpi', '2023-07-23 20:06:03'),
(34, 1, 'b72m86dqr4l6j4juuitq01o60q', '2023-07-24 12:53:18'),
(35, 1, 'lc4e55gnjhaocu4nrpb9bo1pp5', '2023-07-24 13:40:09'),
(36, NULL, 'gsk7aco7cms82dve7t28l6ma4u', '2023-07-24 13:45:33'),
(37, NULL, '1qpn1fk1bfa7km1hfr64fmios2', '2023-07-24 15:41:36'),
(38, 1, '0321n34ki0lv8nncgenl2eo0fu', '2023-07-24 18:10:19'),
(39, 1, 'nbe417dfsb26i5jr2r4mk7vt7c', '2023-07-24 20:38:58'),
(40, NULL, 'nr527h853tut4o6h4t0jaq3398', '2023-07-24 20:42:14'),
(41, 1, 'viggtra6o7g7fq7uag68d2jt3a', '2023-07-25 07:58:12'),
(42, 1, 'unf8q7705q9a54998iodh0lba0', '2023-07-25 08:37:27'),
(43, 1, 'pf1hva25h3alrq9co9q8seaggl', '2023-07-25 08:41:33'),
(44, 1, 'knkhne9e6blv869mqcrnct2jtf', '2023-07-25 13:57:38'),
(45, 1, 'er8n9193t00o878dfmdgsorjao', '2023-07-25 14:23:07'),
(46, 1, '0t4a79iesn8f0mk4c78qqlf2gi', '2023-07-25 17:56:12'),
(47, 1, 'vvie9r4k1klv4qav7u20ri89k5', '2023-07-25 18:54:28'),
(48, 1, 'h3rk7nsqqa9dv2d82trar350cn', '2023-07-25 19:54:46'),
(49, 1, '7s7cqgsmvqved7ciu656lnhcoi', '2023-07-26 05:59:33'),
(50, 1, 'v1bk2rcl52fsc3ot7l1pghvn2e', '2023-07-26 06:04:57'),
(51, 1, 'cm7qfatgj1h0bhcntrd0p5g4o7', '2023-07-26 10:37:42'),
(52, 1, 'hnfr0l9pksk80grc6to8fb8in3', '2023-07-26 10:59:20'),
(53, 2, 'bpi1o7tuabs08qoica3olae53q', '2023-07-26 13:08:52'),
(54, 2, 'ue2rnp8546i1k1bko28a4hgflu', '2023-07-26 13:18:49'),
(55, NULL, 'mjri0vq4i43usp4b19pe120983', '2023-07-26 13:20:24'),
(56, 1, '04movg2suu6a83qel2m6lkq8hl', '2023-07-26 20:01:16'),
(57, NULL, 'uck0k4n55absghqsvcbras3q9b', '2023-07-27 08:48:55'),
(58, NULL, '85kk49pe8dh9of30beaor41ea3', '2023-07-27 20:12:40'),
(59, NULL, 'h37tcvcuelthnaf3h95a1658uq', '2023-07-30 14:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- --------------------------------------------------------

--
-- Table structure for table `design_config_grid_flat`
--

CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

INSERT INTO `design_config_grid_flat` (`entity_id`, `store_website_id`, `store_group_id`, `store_id`, `theme_theme_id`) VALUES
(0, NULL, NULL, NULL, ''),
(1, 1, NULL, NULL, ''),
(2, 1, 1, 1, '5');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) UNSIGNED NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE `directory_country_region` (
  `region_id` int(10) UNSIGNED NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AE', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AE', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AE', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d\'Or'),
(204, 'FR', '22', 'Côtes-d\'Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d\'Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 'BR', 'AC', 'Acre'),
(486, 'BR', 'AL', 'Alagoas'),
(487, 'BR', 'AP', 'Amapá'),
(488, 'BR', 'AM', 'Amazonas'),
(489, 'BR', 'BA', 'Bahia'),
(490, 'BR', 'CE', 'Ceará'),
(491, 'BR', 'ES', 'Espírito Santo'),
(492, 'BR', 'GO', 'Goiás'),
(493, 'BR', 'MA', 'Maranhão'),
(494, 'BR', 'MT', 'Mato Grosso'),
(495, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 'BR', 'MG', 'Minas Gerais'),
(497, 'BR', 'PA', 'Pará'),
(498, 'BR', 'PB', 'Paraíba'),
(499, 'BR', 'PR', 'Paraná'),
(500, 'BR', 'PE', 'Pernambuco'),
(501, 'BR', 'PI', 'Piauí'),
(502, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 'BR', 'RO', 'Rondônia'),
(506, 'BR', 'RR', 'Roraima'),
(507, 'BR', 'SC', 'Santa Catarina'),
(508, 'BR', 'SP', 'São Paulo'),
(509, 'BR', 'SE', 'Sergipe'),
(510, 'BR', 'TO', 'Tocantins'),
(511, 'BR', 'DF', 'Distrito Federal'),
(512, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 'HR', 'HR-13', 'Zadarska županija'),
(525, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 'HR', 'HR-18', 'Istarska županija'),
(530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 'HR', 'HR-20', 'Međimurska županija'),
(532, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 'IN', 'AP', 'Andhra Pradesh'),
(535, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 'IN', 'AS', 'Assam'),
(537, 'IN', 'BR', 'Bihar'),
(538, 'IN', 'CH', 'Chandigarh'),
(539, 'IN', 'CT', 'Chhattisgarh'),
(540, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 'IN', 'DD', 'Daman and Diu'),
(542, 'IN', 'DL', 'Delhi'),
(543, 'IN', 'GA', 'Goa'),
(544, 'IN', 'GJ', 'Gujarat'),
(545, 'IN', 'HR', 'Haryana'),
(546, 'IN', 'HP', 'Himachal Pradesh'),
(547, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 'IN', 'JH', 'Jharkhand'),
(549, 'IN', 'KA', 'Karnataka'),
(550, 'IN', 'KL', 'Kerala'),
(551, 'IN', 'LD', 'Lakshadweep'),
(552, 'IN', 'MP', 'Madhya Pradesh'),
(553, 'IN', 'MH', 'Maharashtra'),
(554, 'IN', 'MN', 'Manipur'),
(555, 'IN', 'ML', 'Meghalaya'),
(556, 'IN', 'MZ', 'Mizoram'),
(557, 'IN', 'NL', 'Nagaland'),
(558, 'IN', 'OR', 'Odisha'),
(559, 'IN', 'PY', 'Puducherry'),
(560, 'IN', 'PB', 'Punjab'),
(561, 'IN', 'RJ', 'Rajasthan'),
(562, 'IN', 'SK', 'Sikkim'),
(563, 'IN', 'TN', 'Tamil Nadu'),
(564, 'IN', 'TG', 'Telangana'),
(565, 'IN', 'TR', 'Tripura'),
(566, 'IN', 'UP', 'Uttar Pradesh'),
(567, 'IN', 'UT', 'Uttarakhand'),
(568, 'IN', 'WB', 'West Bengal'),
(569, 'AU', 'ACT', 'Australian Capital Territory'),
(570, 'AU', 'NSW', 'New South Wales'),
(571, 'AU', 'VIC', 'Victoria'),
(572, 'AU', 'QLD', 'Queensland'),
(573, 'AU', 'SA', 'South Australia'),
(574, 'AU', 'TAS', 'Tasmania'),
(575, 'AU', 'WA', 'Western Australia'),
(576, 'AU', 'NT', 'Northern Territory'),
(577, 'LB', 'BA', 'Beirut');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('', 577, 'Beirut'),
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d\'Or'),
('en_US', 204, 'Côtes-d\'Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d\'Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis'),
('en_US', 485, 'Acre'),
('en_US', 486, 'Alagoas'),
('en_US', 487, 'Amapá'),
('en_US', 488, 'Amazonas'),
('en_US', 489, 'Bahia'),
('en_US', 490, 'Ceará'),
('en_US', 491, 'Espírito Santo'),
('en_US', 492, 'Goiás'),
('en_US', 493, 'Maranhão'),
('en_US', 494, 'Mato Grosso'),
('en_US', 495, 'Mato Grosso do Sul'),
('en_US', 496, 'Minas Gerais'),
('en_US', 497, 'Pará'),
('en_US', 498, 'Paraíba'),
('en_US', 499, 'Paraná'),
('en_US', 500, 'Pernambuco'),
('en_US', 501, 'Piauí'),
('en_US', 502, 'Rio de Janeiro'),
('en_US', 503, 'Rio Grande do Norte'),
('en_US', 504, 'Rio Grande do Sul'),
('en_US', 505, 'Rondônia'),
('en_US', 506, 'Roraima'),
('en_US', 507, 'Santa Catarina'),
('en_US', 508, 'São Paulo'),
('en_US', 509, 'Sergipe'),
('en_US', 510, 'Tocantins'),
('en_US', 511, 'Distrito Federal'),
('en_US', 512, 'Zagrebačka županija'),
('en_US', 513, 'Krapinsko-zagorska županija'),
('en_US', 514, 'Sisačko-moslavačka županija'),
('en_US', 515, 'Karlovačka županija'),
('en_US', 516, 'Varaždinska županija'),
('en_US', 517, 'Koprivničko-križevačka županija'),
('en_US', 518, 'Bjelovarsko-bilogorska županija'),
('en_US', 519, 'Primorsko-goranska županija'),
('en_US', 520, 'Ličko-senjska županija'),
('en_US', 521, 'Virovitičko-podravska županija'),
('en_US', 522, 'Požeško-slavonska županija'),
('en_US', 523, 'Brodsko-posavska županija'),
('en_US', 524, 'Zadarska županija'),
('en_US', 525, 'Osječko-baranjska županija'),
('en_US', 526, 'Šibensko-kninska županija'),
('en_US', 527, 'Vukovarsko-srijemska županija'),
('en_US', 528, 'Splitsko-dalmatinska županija'),
('en_US', 529, 'Istarska županija'),
('en_US', 530, 'Dubrovačko-neretvanska županija'),
('en_US', 531, 'Međimurska županija'),
('en_US', 532, 'Grad Zagreb'),
('en_US', 533, 'Andaman and Nicobar Islands'),
('en_US', 534, 'Andhra Pradesh'),
('en_US', 535, 'Arunachal Pradesh'),
('en_US', 536, 'Assam'),
('en_US', 537, 'Bihar'),
('en_US', 538, 'Chandigarh'),
('en_US', 539, 'Chhattisgarh'),
('en_US', 540, 'Dadra and Nagar Haveli'),
('en_US', 541, 'Daman and Diu'),
('en_US', 542, 'Delhi'),
('en_US', 543, 'Goa'),
('en_US', 544, 'Gujarat'),
('en_US', 545, 'Haryana'),
('en_US', 546, 'Himachal Pradesh'),
('en_US', 547, 'Jammu and Kashmir'),
('en_US', 548, 'Jharkhand'),
('en_US', 549, 'Karnataka'),
('en_US', 550, 'Kerala'),
('en_US', 551, 'Lakshadweep'),
('en_US', 552, 'Madhya Pradesh'),
('en_US', 553, 'Maharashtra'),
('en_US', 554, 'Manipur'),
('en_US', 555, 'Meghalaya'),
('en_US', 556, 'Mizoram'),
('en_US', 557, 'Nagaland'),
('en_US', 558, 'Odisha'),
('en_US', 559, 'Puducherry'),
('en_US', 560, 'Punjab'),
('en_US', 561, 'Rajasthan'),
('en_US', 562, 'Sikkim'),
('en_US', 563, 'Tamil Nadu'),
('en_US', 564, 'Telangana'),
('en_US', 565, 'Tripura'),
('en_US', 566, 'Uttar Pradesh'),
('en_US', 567, 'Uttarakhand'),
('en_US', 568, 'West Bengal'),
('en_US', 569, 'Australian Capital Territory'),
('en_US', 570, 'New South Wales'),
('en_US', 571, 'Victoria'),
('en_US', 572, 'Queensland'),
('en_US', 573, 'South Australia'),
('en_US', 574, 'Tasmania'),
('en_US', 575, 'Western Australia'),
('en_US', 576, 'Northern Territory');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE `downloadable_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) UNSIGNED NOT NULL COMMENT 'Price ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) UNSIGNED NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) UNSIGNED NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) NOT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'static', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'static', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Date of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password', 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'rp_token', NULL, NULL, 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'rp_token_created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'default_billing', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing', 'static', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'default_shipping', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping', 'static', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'taxvat', NULL, NULL, 'static', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'confirmation', NULL, NULL, 'static', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(19, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 1, 'gender', NULL, NULL, 'static', NULL, NULL, 'select', 'Gender', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 0, 0, NULL, 0, NULL),
(21, 1, 'disable_auto_group_change', NULL, 'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(23, 2, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(24, 2, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Name Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(27, 2, 'company', NULL, NULL, 'static', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(28, 2, 'street', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend', 'static', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(29, 2, 'city', NULL, NULL, 'static', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(30, 2, 'country_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Country', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country', 1, 0, NULL, 0, NULL),
(31, 2, 'region', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region', 'static', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(32, 2, 'region_id', NULL, NULL, 'static', NULL, NULL, 'hidden', 'State/Province', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region', 0, 0, NULL, 0, NULL),
(33, 2, 'postcode', NULL, NULL, 'static', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 2, 'telephone', NULL, NULL, 'static', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 1, 0, NULL, 0, NULL),
(35, 2, 'fax', NULL, NULL, 'static', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 1, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Updated At', NULL, NULL, 0, 0, NULL, 0, NULL),
(42, 1, 'failures_num', NULL, NULL, 'static', NULL, NULL, 'hidden', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(43, 1, 'first_failure', NULL, NULL, 'static', NULL, NULL, 'date', 'First Failure Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 1, 'lock_expires', NULL, NULL, 'static', NULL, NULL, 'date', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(46, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, NULL, 0, NULL),
(47, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(50, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(51, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(52, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode', 0, 0, NULL, 0, NULL),
(53, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(54, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '1', 0, NULL),
(55, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(59, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(61, 3, 'custom_design_from', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(62, 3, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(64, 3, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(66, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(67, 3, 'available_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(68, 3, 'default_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(69, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, '1', 0, NULL),
(70, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(71, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(72, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(73, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Product Name', 'validate-length maximum-length-255', NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku', 'static', NULL, NULL, 'text', 'SKU', 'validate-length maximum-length-64', NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(76, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(78, 4, 'special_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'special_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(80, 4, 'special_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(81, 4, 'cost', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'weight', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight', 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(84, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(85, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),
(87, 4, 'image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Base', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Small', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'media_gallery', NULL, NULL, 'static', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'tier_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(93, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(94, 4, 'news_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'news_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(97, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Product', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status', 0, 0, '1', 0, NULL),
(98, 4, 'minimal_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'Magento\\Catalog\\Model\\Product\\Visibility', 0, 0, '4', 0, NULL),
(100, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Theme', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(101, 4, 'custom_design_from', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(103, 4, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Layout Update XML', NULL, NULL, 0, 0, NULL, 0, NULL),
(104, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(105, 4, 'category_ids', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category', 'static', NULL, NULL, 'text', 'Categories', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container', 0, 0, 'container2', 0, NULL),
(107, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(108, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(110, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(113, 4, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(114, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture', 0, 0, NULL, 0, NULL),
(115, 4, 'quantity_and_stock_status', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock', 'int', NULL, NULL, 'select', 'Quantity', NULL, 'Magento\\CatalogInventory\\Model\\Source\\Stock', 0, 0, '1', 0, NULL),
(116, 4, 'custom_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(117, 4, 'msrp', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_display_actual_price_type', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price', 0, 0, '0', 0, NULL),
(119, 3, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(120, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(122, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(123, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(127, 4, 'gift_message_available', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(128, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Price', NULL, NULL, 1, 0, '0', 0, NULL),
(129, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic SKU', NULL, NULL, 1, 0, '0', 0, NULL),
(130, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Weight', NULL, NULL, 1, 0, '0', 0, NULL),
(131, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View', 1, 0, NULL, 0, NULL),
(132, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, 'select', 'Ship Bundle Items', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type', 1, 0, '0', 0, NULL),
(133, 4, 'swatch_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Swatch', NULL, NULL, 0, 0, NULL, 0, NULL),
(134, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'Magento\\Tax\\Model\\TaxClass\\Source\\Product', 0, 0, '2', 0, NULL),
(135, 4, 'ts_dimensions_length', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Length', NULL, NULL, 0, 0, NULL, 0, NULL),
(136, 4, 'ts_dimensions_width', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Width', NULL, NULL, 0, 0, NULL, 0, NULL),
(137, 4, 'ts_dimensions_height', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Height', NULL, NULL, 0, 0, NULL, 0, NULL),
(138, 4, 'custom_layout_update_file', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\LayoutUpdate', 'varchar', NULL, NULL, 'select', 'Custom Layout Update', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\LayoutUpdate', 0, 0, NULL, 0, NULL),
(139, 3, 'custom_layout_update_file', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\LayoutUpdate', 'varchar', NULL, NULL, 'select', 'Custom Layout Update', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\LayoutUpdate', 0, 0, NULL, 0, NULL),
(140, 4, 'featured', NULL, NULL, 'int', NULL, NULL, 'boolean', 'featured', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 1, '0', 0, NULL),
(145, 4, 'best_seller_products', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Best Seller Products', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 1, '0', 0, NULL),
(146, 4, 'product_showing_type', NULL, NULL, 'varchar', NULL, NULL, 'text', 'product showing type', NULL, NULL, 0, 1, NULL, 0, NULL),
(148, 4, 'brands', NULL, NULL, 'int', NULL, NULL, 'select', 'Product Brand', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 1, 1, '', 0, NULL),
(149, 4, 'model', NULL, NULL, 'int', NULL, NULL, 'select', 'Model', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 0, 1, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`, `attribute_group_code`, `tab_group_code`) VALUES
(1, 1, 'General', 1, 1, 'general', NULL),
(2, 2, 'General', 1, 1, 'general', NULL),
(3, 3, 'General', 10, 1, 'general', NULL),
(4, 3, 'General Information', 2, 0, 'general-information', NULL),
(5, 3, 'Display Settings', 20, 0, 'display-settings', NULL),
(6, 3, 'Custom Design', 30, 0, 'custom-design', NULL),
(7, 4, 'Product Details', 1, 1, 'product-details', 'basic'),
(8, 4, 'Advanced Pricing', 6, 0, 'advanced-pricing', 'advanced'),
(9, 4, 'Search Engine Optimization', 5, 0, 'search-engine-optimization', 'basic'),
(10, 4, 'Images', 4, 0, 'image-management', 'basic'),
(11, 4, 'Design', 7, 0, 'design', 'advanced'),
(12, 4, 'Autosettings', 9, 0, 'autosettings', 'advanced'),
(13, 4, 'Content', 2, 0, 'content', 'basic'),
(14, 4, 'Schedule Design Update', 8, 0, 'schedule-design-update', 'advanced'),
(15, 5, 'General', 1, 1, 'general', NULL),
(16, 6, 'General', 1, 1, 'general', NULL),
(17, 7, 'General', 1, 1, 'general', NULL),
(18, 8, 'General', 1, 1, 'general', NULL),
(19, 4, 'Gift Options', 10, 0, 'gift-options', NULL),
(20, 4, 'Bundle Items', 3, 0, 'bundle-items', NULL),
(23, 4, 'Attributes', 11, 0, 'attributes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 20, 0),
(2, 20, 1),
(3, 20, 3),
(4, 148, 1),
(5, 148, 2),
(6, 148, 3),
(7, 148, 4),
(8, 148, 5),
(9, 148, 6),
(10, 148, 7),
(11, 148, 8),
(12, 148, 9),
(13, 149, 1),
(14, 149, 2),
(15, 149, 3),
(16, 149, 4),
(17, 149, 5),
(18, 149, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_swatch`
--

CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) UNSIGNED NOT NULL COMMENT 'Swatch ID',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `type` smallint(5) UNSIGNED NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

--
-- Dumping data for table `eav_attribute_option_swatch`
--

INSERT INTO `eav_attribute_option_swatch` (`swatch_id`, `option_id`, `store_id`, `type`, `value`) VALUES
(1, 4, 0, 2, '/6/7/672437add5034b48bda72b675255de00_1_.png'),
(2, 5, 0, 2, '/i/m/image_61_3.png'),
(3, 6, 0, 2, '/i/m/image_63_2.png'),
(4, 7, 0, 2, '/s/e/seltron-2016_d400.png'),
(5, 8, 0, 2, '/e/c/eca_d400.png'),
(6, 9, 0, 2, '/i/m/imt_d400.png'),
(7, 10, 0, 2, '/r/e/redi_logo_1.png'),
(8, 11, 0, 2, '/h/a/hailin_logo.jpeg'),
(9, 12, 0, 2, '/h/e/herrmann_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female'),
(3, 3, 0, 'Not Specified'),
(30, 13, 0, '2circuits'),
(31, 14, 0, '3circuits'),
(32, 15, 0, '4circuits'),
(33, 16, 0, '5circuits'),
(34, 17, 0, '6circuits'),
(35, 18, 0, '7circuits'),
(45, 4, 0, 'oventrop'),
(46, 5, 0, 'nobel'),
(47, 6, 0, 'syr'),
(48, 7, 0, 'seron'),
(49, 8, 0, 'ega'),
(50, 9, 0, 'imt'),
(51, 10, 0, 'redi'),
(52, 11, 0, 'hailin'),
(53, 12, 0, 'herrmann');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 2),
(2, 2, 'Default', 2),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE `eav_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 20),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 81),
(13, 1, 1, 1, 13, 115),
(14, 1, 1, 1, 14, 120),
(15, 1, 1, 1, 15, 82),
(16, 1, 1, 1, 16, 83),
(17, 1, 1, 1, 17, 100),
(18, 1, 1, 1, 18, 0),
(19, 1, 1, 1, 19, 0),
(20, 1, 1, 1, 20, 110),
(21, 1, 1, 1, 21, 28),
(22, 2, 2, 2, 22, 10),
(23, 2, 2, 2, 23, 20),
(24, 2, 2, 2, 24, 30),
(25, 2, 2, 2, 25, 40),
(26, 2, 2, 2, 26, 50),
(27, 2, 2, 2, 27, 60),
(28, 2, 2, 2, 28, 70),
(29, 2, 2, 2, 29, 80),
(30, 2, 2, 2, 30, 90),
(31, 2, 2, 2, 31, 100),
(32, 2, 2, 2, 32, 100),
(33, 2, 2, 2, 33, 110),
(34, 2, 2, 2, 34, 120),
(35, 2, 2, 2, 35, 130),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 1, 1, 1, 41, 87),
(42, 1, 1, 1, 42, 100),
(43, 1, 1, 1, 43, 110),
(44, 1, 1, 1, 44, 120),
(45, 3, 3, 4, 45, 1),
(46, 3, 3, 4, 46, 2),
(47, 3, 3, 4, 47, 4),
(48, 3, 3, 4, 48, 5),
(49, 3, 3, 4, 49, 6),
(50, 3, 3, 4, 50, 7),
(51, 3, 3, 4, 51, 8),
(52, 3, 3, 5, 52, 10),
(53, 3, 3, 5, 53, 20),
(54, 3, 3, 5, 54, 30),
(55, 3, 3, 4, 55, 12),
(56, 3, 3, 4, 56, 13),
(57, 3, 3, 4, 57, 14),
(58, 3, 3, 4, 58, 15),
(59, 3, 3, 4, 59, 16),
(60, 3, 3, 6, 60, 10),
(61, 3, 3, 6, 61, 30),
(62, 3, 3, 6, 62, 40),
(63, 3, 3, 6, 63, 50),
(64, 3, 3, 6, 64, 60),
(65, 3, 3, 4, 65, 24),
(66, 3, 3, 4, 66, 25),
(67, 3, 3, 5, 67, 40),
(68, 3, 3, 5, 68, 50),
(69, 3, 3, 4, 69, 10),
(70, 3, 3, 6, 70, 5),
(71, 3, 3, 6, 71, 6),
(72, 3, 3, 5, 72, 51),
(90, 4, 4, 7, 91, 6),
(96, 4, 4, 8, 98, 8),
(101, 4, 4, 11, 103, 10),
(105, 4, 4, 7, 107, 14),
(106, 4, 4, 7, 108, 15),
(107, 4, 4, 7, 109, 16),
(108, 4, 4, 7, 110, 17),
(109, 4, 4, 7, 111, 18),
(110, 4, 4, 7, 112, 19),
(111, 4, 4, 7, 113, 20),
(117, 3, 3, 4, 119, 3),
(118, 3, 3, 4, 120, 17),
(120, 4, 4, 7, 122, 11),
(121, 4, 4, 7, 123, 111),
(122, 4, 4, 7, 124, 112),
(123, 4, 4, 7, 125, 113),
(124, 4, 4, 7, 126, 114),
(137, 3, 3, 6, 139, 51),
(600, 4, 4, 7, 73, 2),
(601, 4, 4, 7, 74, 3),
(602, 4, 4, 7, 77, 5),
(603, 4, 4, 7, 82, 12),
(604, 4, 4, 7, 94, 16),
(605, 4, 4, 7, 95, 17),
(606, 4, 4, 7, 97, 1),
(607, 4, 4, 7, 99, 14),
(608, 4, 4, 7, 105, 15),
(609, 4, 4, 7, 114, 18),
(610, 4, 4, 7, 115, 8),
(611, 4, 4, 7, 128, 6),
(612, 4, 4, 7, 129, 4),
(613, 4, 4, 7, 130, 13),
(614, 4, 4, 7, 134, 7),
(615, 4, 4, 7, 135, 9),
(616, 4, 4, 7, 136, 10),
(617, 4, 4, 7, 137, 11),
(618, 4, 4, 13, 75, 1),
(619, 4, 4, 13, 76, 2),
(620, 4, 4, 20, 132, 1),
(621, 4, 4, 10, 87, 1),
(622, 4, 4, 10, 88, 2),
(623, 4, 4, 10, 89, 3),
(624, 4, 4, 10, 90, 5),
(625, 4, 4, 10, 96, 6),
(626, 4, 4, 10, 133, 4),
(627, 4, 4, 9, 84, 2),
(628, 4, 4, 9, 85, 3),
(629, 4, 4, 9, 86, 4),
(630, 4, 4, 9, 121, 1),
(631, 4, 4, 8, 78, 1),
(632, 4, 4, 8, 79, 2),
(633, 4, 4, 8, 80, 3),
(634, 4, 4, 8, 81, 4),
(635, 4, 4, 8, 92, 5),
(636, 4, 4, 8, 117, 6),
(637, 4, 4, 8, 118, 7),
(638, 4, 4, 8, 131, 8),
(639, 4, 4, 11, 104, 1),
(640, 4, 4, 11, 106, 2),
(641, 4, 4, 11, 138, 3),
(642, 4, 4, 14, 100, 3),
(643, 4, 4, 14, 101, 1),
(644, 4, 4, 14, 102, 2),
(645, 4, 4, 14, 116, 4),
(646, 4, 4, 19, 127, 1),
(647, 4, 4, 23, 140, 2),
(648, 4, 4, 23, 145, 1),
(649, 4, 4, 23, 146, 3),
(650, 4, 4, 23, 148, 4),
(651, 4, 4, 23, 149, 5);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) UNSIGNED NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'Magento\\Customer\\Model\\ResourceModel\\Customer', 'Magento\\Customer\\Model\\Attribute', 'customer_entity', NULL, NULL, 1, 'default', 1, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),
(2, 'customer_address', 'Magento\\Customer\\Model\\ResourceModel\\Address', 'Magento\\Customer\\Model\\Attribute', 'customer_address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),
(3, 'catalog_category', 'Magento\\Catalog\\Model\\ResourceModel\\Category', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_category_entity', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),
(4, 'catalog_product', 'Magento\\Catalog\\Model\\ResourceModel\\Product', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_product_entity', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),
(5, 'order', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_order', NULL, NULL, 1, 'default', 5, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Invoice', NULL, 'sales_invoice', NULL, NULL, 1, 'default', 6, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo', NULL, 'sales_creditmemo', NULL, NULL, 1, 'default', 7, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment', NULL, 'sales_shipment', NULL, NULL, 1, 'default', 8, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE `eav_form_element` (
  `element_id` int(10) UNSIGNED NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 23, 0),
(2, 1, NULL, 25, 1),
(3, 1, NULL, 27, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 28, 4),
(6, 1, NULL, 29, 5),
(7, 1, NULL, 31, 6),
(8, 1, NULL, 33, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 34, 9),
(11, 1, NULL, 35, 10),
(12, 2, NULL, 23, 0),
(13, 2, NULL, 25, 1),
(14, 2, NULL, 27, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 28, 4),
(17, 2, NULL, 29, 5),
(18, 2, NULL, 31, 6),
(19, 2, NULL, 33, 7),
(20, 2, NULL, 30, 8),
(21, 2, NULL, 34, 9),
(22, 2, NULL, 35, 10),
(23, 3, NULL, 23, 0),
(24, 3, NULL, 25, 1),
(25, 3, NULL, 27, 2),
(26, 3, NULL, 28, 3),
(27, 3, NULL, 29, 4),
(28, 3, NULL, 31, 5),
(29, 3, NULL, 33, 6),
(30, 3, NULL, 30, 7),
(31, 3, NULL, 34, 8),
(32, 3, NULL, 35, 9),
(33, 4, NULL, 23, 0),
(34, 4, NULL, 25, 1),
(35, 4, NULL, 27, 2),
(36, 4, NULL, 28, 3),
(37, 4, NULL, 29, 4),
(38, 4, NULL, 31, 5),
(39, 4, NULL, 33, 6),
(40, 4, NULL, 30, 7),
(41, 4, NULL, 34, 8),
(42, 4, NULL, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `email_abandoned_cart`
--

CREATE TABLE `email_abandoned_cart` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `quote_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Quote Active',
  `quote_updated_at` timestamp NULL DEFAULT NULL COMMENT 'Quote updated at',
  `abandoned_cart_number` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Abandoned Cart number',
  `items_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Quote items count',
  `items_ids` varchar(255) DEFAULT NULL COMMENT 'Quote item ids',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Abandoned Carts Table';

-- --------------------------------------------------------

--
-- Table structure for table `email_automation`
--

CREATE TABLE `email_automation` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `automation_type` varchar(255) DEFAULT NULL COMMENT 'Automation Type',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Automation Type',
  `enrolment_status` varchar(255) NOT NULL COMMENT 'Entrolment Status',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `type_id` varchar(255) DEFAULT NULL COMMENT 'Type ID',
  `program_id` varchar(255) DEFAULT NULL COMMENT 'Program ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `message` varchar(255) NOT NULL COMMENT 'Message',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Automation Status';

-- --------------------------------------------------------

--
-- Table structure for table `email_campaign`
--

CREATE TABLE `email_campaign` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `campaign_id` int(10) UNSIGNED NOT NULL COMMENT 'Campaign ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Contact Email',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `sent_at` timestamp NULL DEFAULT NULL COMMENT 'Send Date',
  `order_increment_id` varchar(50) NOT NULL COMMENT 'Order Increment ID',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Sales Quote ID',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT 'Error Message',
  `checkout_method` varchar(255) NOT NULL DEFAULT '' COMMENT 'Checkout Method Used',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `event_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Event Name',
  `send_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Send Id',
  `send_status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Campaign send status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Campaigns';

-- --------------------------------------------------------

--
-- Table structure for table `email_catalog`
--

CREATE TABLE `email_catalog` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Imported',
  `modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Catalog';

--
-- Dumping data for table `email_catalog`
--

INSERT INTO `email_catalog` (`id`, `product_id`, `imported`, `modified`, `created_at`, `updated_at`) VALUES
(14, 14, NULL, NULL, '2023-06-14 06:57:24', '2023-06-14 06:57:24'),
(19, 19, NULL, NULL, '2023-06-14 08:19:52', '2023-06-14 08:19:52'),
(20, 20, NULL, NULL, '2023-06-15 12:16:30', '2023-06-15 12:16:30'),
(21, 21, NULL, NULL, '2023-06-15 12:19:17', '2023-06-15 12:19:17'),
(22, 22, NULL, NULL, '2023-06-15 12:21:03', '2023-06-15 12:21:03'),
(23, 23, NULL, NULL, '2023-06-19 12:16:45', '2023-06-19 12:16:45'),
(24, 24, NULL, NULL, '2023-06-21 07:02:03', '2023-06-21 07:02:03'),
(25, 25, NULL, NULL, '2023-06-21 07:43:25', '2023-06-21 07:43:25'),
(26, 26, NULL, NULL, '2023-06-21 07:45:17', '2023-06-21 07:45:17'),
(27, 27, NULL, NULL, '2023-06-21 07:46:54', '2023-06-21 07:46:54'),
(28, 28, NULL, NULL, '2023-06-21 07:48:13', '2023-06-21 07:48:13'),
(29, 29, NULL, NULL, '2023-06-21 07:50:45', '2023-06-21 07:50:45'),
(30, 30, NULL, NULL, '2023-06-21 07:52:18', '2023-06-21 07:52:18'),
(31, 31, NULL, NULL, '2023-06-26 13:05:48', '2023-06-26 13:05:48'),
(32, 32, NULL, NULL, '2023-06-26 13:08:14', '2023-06-26 13:08:14'),
(33, 33, NULL, NULL, '2023-06-26 13:15:54', '2023-06-26 13:15:54'),
(34, 34, NULL, NULL, '2023-06-26 13:15:54', '2023-06-26 13:15:54'),
(35, 35, NULL, NULL, '2023-06-26 13:15:54', '2023-06-26 13:15:54'),
(36, 36, NULL, NULL, '2023-06-26 13:15:54', '2023-06-26 13:15:54'),
(37, 37, NULL, NULL, '2023-07-05 05:59:47', '2023-07-05 05:59:47'),
(38, 38, NULL, NULL, '2023-07-05 05:59:47', '2023-07-05 05:59:47'),
(39, 39, NULL, NULL, '2023-07-05 05:59:48', '2023-07-05 05:59:48'),
(40, 40, NULL, NULL, '2023-07-22 14:08:29', '2023-07-22 14:08:29'),
(41, 41, NULL, NULL, '2023-07-22 14:12:13', '2023-07-22 14:12:13'),
(42, 42, NULL, NULL, '2023-07-22 14:13:59', '2023-07-22 14:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `email_contact`
--

CREATE TABLE `email_contact` (
  `email_contact_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Guest',
  `contact_id` varchar(15) DEFAULT NULL COMMENT 'Connector Contact ID',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Customer Email',
  `is_subscriber` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Subscriber',
  `subscriber_status` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Subscriber status',
  `email_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Imported',
  `subscriber_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Imported',
  `suppressed` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Suppressed',
  `last_subscribed_at` timestamp NULL DEFAULT NULL COMMENT 'Last time user subscribed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Contacts';

-- --------------------------------------------------------

--
-- Table structure for table `email_contact_consent`
--

CREATE TABLE `email_contact_consent` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `email_contact_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Email Contact Id',
  `consent_url` varchar(255) DEFAULT NULL COMMENT 'Contact consent url',
  `consent_datetime` datetime DEFAULT NULL COMMENT 'Contact consent datetime',
  `consent_ip` varchar(255) DEFAULT NULL COMMENT 'Contact consent ip',
  `consent_user_agent` varchar(255) DEFAULT NULL COMMENT 'Contact consent user agent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email contact consent table.';

-- --------------------------------------------------------

--
-- Table structure for table `email_failed_auth`
--

CREATE TABLE `email_failed_auth` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `failures_num` int(10) UNSIGNED DEFAULT NULL COMMENT 'Number of fails',
  `first_attempt_date` datetime DEFAULT NULL COMMENT 'First attempt date',
  `last_attempt_date` datetime DEFAULT NULL COMMENT 'Last attempt date',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `store_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Failed Auth Table.';

-- --------------------------------------------------------

--
-- Table structure for table `email_importer`
--

CREATE TABLE `email_importer` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `import_type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Type',
  `website_id` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `import_status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Import Status',
  `import_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Id',
  `import_data` mediumblob NOT NULL COMMENT 'Import Data',
  `import_mode` varchar(255) NOT NULL DEFAULT '' COMMENT 'Import Mode',
  `import_file` text NOT NULL COMMENT 'Import File',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT 'Error Message',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `import_started` timestamp NULL DEFAULT NULL COMMENT 'Import Started',
  `import_finished` timestamp NULL DEFAULT NULL COMMENT 'Import Finished'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Importer';

-- --------------------------------------------------------

--
-- Table structure for table `email_order`
--

CREATE TABLE `email_order` (
  `email_order_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order ID',
  `order_status` varchar(255) NOT NULL COMMENT 'Order Status',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Sales Quote ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `email_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Order Imported',
  `modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Order Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Transactional Order Data';

-- --------------------------------------------------------

--
-- Table structure for table `email_review`
--

CREATE TABLE `email_review` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `review_id` int(10) UNSIGNED NOT NULL COMMENT 'Review Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `review_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Review Imported',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Reviews';

-- --------------------------------------------------------

--
-- Table structure for table `email_rules`
--

CREATE TABLE `email_rules` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Rule Name',
  `website_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Rule Type',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `combination` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rule Condition',
  `conditions` blob NOT NULL COMMENT 'Rule Conditions',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Rules';

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- --------------------------------------------------------

--
-- Table structure for table `email_wishlist`
--

CREATE TABLE `email_wishlist` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Id',
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Item Count',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `wishlist_imported` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Wishlist Imported',
  `wishlist_modified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Wishlist Modified',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Connector Wishlist';

--
-- Dumping data for table `email_wishlist`
--

INSERT INTO `email_wishlist` (`id`, `wishlist_id`, `item_count`, `customer_id`, `store_id`, `wishlist_imported`, `wishlist_modified`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, NULL, 1, '2023-07-24 07:48:17', '2023-07-26 10:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `flag`
--

CREATE TABLE `flag` (
  `flag_id` int(10) UNSIGNED NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Dumping data for table `flag`
--

INSERT INTO `flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'analytics_link_attempts_reverse_counter', 0, '24', '2023-06-05 08:16:27'),
(2, 'report_order_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(3, 'report_tax_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(4, 'report_shipping_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(5, 'report_invoiced_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(6, 'report_refunded_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(7, 'report_coupons_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(8, 'report_bestsellers_aggregated', 0, NULL, '2023-07-27 07:35:12'),
(9, 'report_product_viewed_aggregated', 0, NULL, '2023-07-27 07:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) UNSIGNED NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- --------------------------------------------------------

--
-- Table structure for table `googleoptimizer_code`
--

CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) UNSIGNED NOT NULL COMMENT 'Google experiment code id',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE `importexport_importdata` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- --------------------------------------------------------

--
-- Table structure for table `import_history`
--

CREATE TABLE `import_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

-- --------------------------------------------------------

--
-- Table structure for table `indexer_state`
--

CREATE TABLE `indexer_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

INSERT INTO `indexer_state` (`state_id`, `indexer_id`, `status`, `updated`, `hash_config`) VALUES
(1, 'design_config_grid', 'valid', '2023-07-06 06:14:57', '9ac9b78cc02fbbb439b6e42c10014016'),
(2, 'customer_grid', 'valid', '2023-07-06 06:14:57', '8edc28fed4f1d6d5840b06712c169998'),
(3, 'catalog_category_product', 'valid', '2023-07-16 13:00:56', 'a10a23b9f110ff4ae5bfd3a059dd8334'),
(4, 'catalog_product_category', 'valid', '2023-06-05 08:44:18', '06779db4b0926575e6a2f60e60143f79'),
(5, 'catalogrule_rule', 'valid', '2023-07-06 06:14:58', '46c10b60988feb39d24861c49bccc4cb'),
(6, 'catalog_product_attribute', 'valid', '2023-07-06 06:49:12', '38d3b8f31c1229c3542025c248b05db9'),
(7, 'catalog_product_price', 'valid', '2023-07-21 13:43:29', 'b2e0952d9ce9886ba57a64e7f5082192'),
(8, 'catalogrule_product', 'valid', '2023-07-14 11:16:53', '161776ad8c380e5d90b5d96ae2c7c213'),
(9, 'cataloginventory_stock', 'valid', '2023-07-06 06:14:58', '331c3b824ae984752e83b94f4fcb11d3'),
(10, 'catalogsearch_fulltext', 'valid', '2023-07-26 08:02:49', 'f968a1a5a7dc71ffa95c45f86743ef8b'),
(11, 'catalog_category_flat', 'invalid', '2023-07-21 13:55:57', ''),
(12, 'catalog_product_flat', 'invalid', '2023-07-21 13:57:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `integration_id` int(10) UNSIGNED NOT NULL COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) UNSIGNED NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

-- --------------------------------------------------------

--
-- Table structure for table `klarna_core_order`
--

CREATE TABLE `klarna_core_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `klarna_order_id` varchar(255) DEFAULT NULL COMMENT 'Klarna Order Id',
  `session_id` varchar(255) DEFAULT NULL COMMENT 'Session Id',
  `reservation_id` varchar(255) DEFAULT NULL COMMENT 'Reservation Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `is_acknowledged` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Acknowledged'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Klarna Order';

-- --------------------------------------------------------

--
-- Table structure for table `klarna_payments_quote`
--

CREATE TABLE `klarna_payments_quote` (
  `payments_quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Payments Id',
  `session_id` varchar(255) DEFAULT NULL COMMENT 'Klarna Session Id',
  `client_token` text COMMENT 'Klarna Client Token',
  `authorization_token` varchar(255) DEFAULT NULL COMMENT 'Authorization Token',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote Id',
  `payment_methods` varchar(255) DEFAULT NULL COMMENT 'Payment Method Categories',
  `payment_method_info` text COMMENT 'Payment Method Category Info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Klarna Payments Quote';

-- --------------------------------------------------------

--
-- Table structure for table `layout_link`
--

CREATE TABLE `layout_link` (
  `layout_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

--
-- Dumping data for table `layout_link`
--

INSERT INTO `layout_link` (`layout_link_id`, `store_id`, `theme_id`, `layout_update_id`, `is_temporary`) VALUES
(4, 0, 5, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `layout_update`
--

CREATE TABLE `layout_update` (
  `layout_update_id` int(10) UNSIGNED NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

--
-- Dumping data for table `layout_update`
--

INSERT INTO `layout_update` (`layout_update_id`, `handle`, `xml`, `sort_order`, `updated_at`) VALUES
(4, 'default', '<body><referenceContainer name=\"sidebar.main\"><block class=\"Magento\\Catalog\\Block\\Widget\\RecentlyViewed\" name=\"SWB0Egc6sRnRQ00AtsK34nKpYa92rmRt\" template=\"product/widget/viewed/sidebar.phtml\"><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">uiComponent</argument><argument name=\"value\" xsi:type=\"string\">widget_recently_viewed</argument></action><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">page_size</argument><argument name=\"value\" xsi:type=\"string\">5</argument></action><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">show_attributes</argument><argument name=\"value\" xsi:type=\"string\">name,image,price</argument></action><action method=\"setData\"><argument name=\"name\" xsi:type=\"string\">show_buttons</argument><argument name=\"value\" xsi:type=\"string\">add_to_cart</argument></action></block></referenceContainer></body>', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_bannerslider_banner`
--

CREATE TABLE `mageplaza_bannerslider_banner` (
  `banner_id` int(10) UNSIGNED NOT NULL COMMENT 'Banner ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Banner Name',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Status',
  `type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Banner Type',
  `content` text COMMENT 'Custom html, css',
  `image` varchar(255) DEFAULT NULL COMMENT 'Banner Image',
  `url_banner` varchar(255) DEFAULT NULL COMMENT 'Banner Url',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `newtab` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Open tab',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Banner Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Banner Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Banner Table';

--
-- Dumping data for table `mageplaza_bannerslider_banner`
--

INSERT INTO `mageplaza_bannerslider_banner` (`banner_id`, `name`, `status`, `type`, `content`, `image`, `url_banner`, `title`, `newtab`, `created_at`, `updated_at`) VALUES
(7, 'home-banner1', 1, 0, NULL, 'b/a/banner3_2_1.png', NULL, NULL, 0, '2023-06-10 09:27:16', '2023-06-10 09:27:16'),
(8, 'home-banner2', 1, 0, NULL, 'b/a/banner2_1.png', NULL, NULL, 0, '2023-06-10 09:28:42', '2023-06-10 09:28:42'),
(9, 'home-banner3', 1, 0, NULL, 'b/a/banner1_1.png', NULL, NULL, 0, '2023-06-10 09:29:25', '2023-06-10 09:29:25'),
(10, 'home-banner4', 1, 0, NULL, 'g/r/group_301_1.png', NULL, NULL, 0, '2023-06-10 09:29:56', '2023-06-10 09:29:56'),
(11, 'shop-banner1', 1, 0, NULL, 'a/c/accessories.jpeg', NULL, NULL, 0, '2023-06-21 09:56:27', '2023-06-21 10:55:19'),
(12, 'shop-banner2', 1, 0, NULL, 'z/m/zmerlyvan.jpeg', NULL, NULL, 0, '2023-06-21 14:18:23', '2023-06-21 14:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_bannerslider_banner_slider`
--

CREATE TABLE `mageplaza_bannerslider_banner_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `banner_id` int(10) UNSIGNED NOT NULL COMMENT 'Banner ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Slider To Banner Link Table';

--
-- Dumping data for table `mageplaza_bannerslider_banner_slider`
--

INSERT INTO `mageplaza_bannerslider_banner_slider` (`slider_id`, `banner_id`, `position`) VALUES
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(2, 11, 1),
(3, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_bannerslider_slider`
--

CREATE TABLE `mageplaza_bannerslider_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `name` varchar(255) NOT NULL COMMENT 'Slider Name',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Status',
  `location` text COMMENT 'Location',
  `store_ids` varchar(255) DEFAULT NULL COMMENT 'Store_ids',
  `customer_group_ids` varchar(255) DEFAULT NULL COMMENT 'Customer_group_ids',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Priority',
  `effect` varchar(255) DEFAULT NULL COMMENT 'Animation effect',
  `autoWidth` smallint(6) DEFAULT NULL COMMENT 'Auto Width',
  `autoHeight` smallint(6) DEFAULT NULL COMMENT 'Auto Height',
  `design` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Design',
  `loop` smallint(6) DEFAULT NULL COMMENT 'Loop slider',
  `lazyLoad` smallint(6) DEFAULT NULL COMMENT 'Lazyload image',
  `autoplay` smallint(6) DEFAULT NULL COMMENT 'Autoplay',
  `autoplayTimeout` varchar(255) DEFAULT '5000' COMMENT 'autoplay Timeout',
  `nav` smallint(6) DEFAULT NULL COMMENT 'Navigation',
  `dots` smallint(6) DEFAULT NULL COMMENT 'Dots',
  `is_responsive` smallint(6) DEFAULT NULL COMMENT 'Responsive',
  `responsive_items` varchar(255) DEFAULT NULL COMMENT 'Max Items Slider',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Slider Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Slider Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Slider Table';

--
-- Dumping data for table `mageplaza_bannerslider_slider`
--

INSERT INTO `mageplaza_bannerslider_slider` (`slider_id`, `name`, `status`, `location`, `store_ids`, `customer_group_ids`, `priority`, `effect`, `autoWidth`, `autoHeight`, `design`, `loop`, `lazyLoad`, `autoplay`, `autoplayTimeout`, `nav`, `dots`, `is_responsive`, `responsive_items`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(1, 'sliderhome', 1, 'cms_index_index.content-top', '0', '0,1,2,3', 0, 'slider', NULL, NULL, 0, NULL, NULL, NULL, '5000', NULL, NULL, NULL, '[]', '2023-06-09', NULL, '2023-06-09 11:42:54', '2023-06-10 09:50:39'),
(2, 'shop_slider', 1, 'custom.snippet-code', '0', '0,1,2,3', 0, 'slider', NULL, NULL, 0, NULL, NULL, NULL, '5000', NULL, NULL, NULL, '[]', '2023-06-21', NULL, '2023-06-21 09:55:22', '2023-06-21 10:55:54'),
(3, 'shop_slider2', 1, 'custom.snippet-code', '0', '0,1,2,3', 0, 'slider', NULL, NULL, 0, NULL, NULL, NULL, '5000', NULL, NULL, NULL, '[]', '2023-06-21', NULL, '2023-06-21 14:17:14', '2023-06-21 14:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_author`
--

CREATE TABLE `mageplaza_blog_author` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Author ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Display Name',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Author URL Key',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `type` int(10) UNSIGNED DEFAULT '0' COMMENT 'Author Type',
  `status` int(10) UNSIGNED DEFAULT '0' COMMENT 'Author Status',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Author Updated At',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Author Created At',
  `image` varchar(255) DEFAULT NULL COMMENT 'Author Image',
  `short_description` text COMMENT 'Author Short Description',
  `facebook_link` varchar(255) DEFAULT NULL COMMENT 'Facebook Link',
  `twitter_link` varchar(255) DEFAULT NULL COMMENT 'Twitter Link'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Author Table';

--
-- Dumping data for table `mageplaza_blog_author`
--

INSERT INTO `mageplaza_blog_author` (`user_id`, `name`, `url_key`, `customer_id`, `type`, `status`, `updated_at`, `created_at`, `image`, `short_description`, `facebook_link`, `twitter_link`) VALUES
(1, 'Admin', 'admin', 0, 0, 1, NULL, '2023-06-09 11:40:20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_category`
--

CREATE TABLE `mageplaza_blog_category` (
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Category ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Category Name',
  `description` text COMMENT 'Category Description',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Category URL Key',
  `enabled` int(11) DEFAULT NULL COMMENT 'Category Enabled',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Category Meta Title',
  `meta_description` text COMMENT 'Category Meta Description',
  `meta_keywords` text COMMENT 'Category Meta Keywords',
  `meta_robots` text,
  `parent_id` int(11) DEFAULT NULL COMMENT 'Category Parent Id',
  `path` varchar(255) DEFAULT NULL COMMENT 'Category Path',
  `position` int(11) DEFAULT NULL COMMENT 'Category Position',
  `level` int(11) DEFAULT NULL COMMENT 'Category Level',
  `children_count` int(11) DEFAULT NULL COMMENT 'Category Children Count',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `import_source` text COMMENT 'Import Source'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Category Table';

--
-- Dumping data for table `mageplaza_blog_category`
--

INSERT INTO `mageplaza_blog_category` (`category_id`, `name`, `description`, `store_ids`, `url_key`, `enabled`, `meta_title`, `meta_description`, `meta_keywords`, `meta_robots`, `parent_id`, `path`, `position`, `level`, `children_count`, `updated_at`, `created_at`, `import_source`) VALUES
(1, 'ROOT', NULL, '', 'root', NULL, NULL, NULL, NULL, NULL, NULL, '1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_comment`
--

CREATE TABLE `mageplaza_blog_comment` (
  `comment_id` int(10) UNSIGNED NOT NULL COMMENT 'Comment ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'User Comment ID',
  `has_reply` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Comment has reply',
  `is_reply` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is reply comment',
  `reply_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Reply ID',
  `content` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '3' COMMENT 'Status',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `user_name` text COMMENT 'User Name',
  `user_email` text COMMENT 'User Email',
  `import_source` text COMMENT 'Import Source'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='mageplaza_blog_comment';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_comment_like`
--

CREATE TABLE `mageplaza_blog_comment_like` (
  `like_id` int(10) UNSIGNED NOT NULL COMMENT 'Like ID',
  `comment_id` int(10) UNSIGNED NOT NULL COMMENT 'Comment ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'User Like ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='mageplaza_blog_comment_like';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post`
--

CREATE TABLE `mageplaza_blog_post` (
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Post Name',
  `post_position` varchar(255) DEFAULT NULL COMMENT 'Post position',
  `post_brand_id` varchar(255) DEFAULT NULL COMMENT 'Post brand id',
  `post_product_attachment` varchar(255) DEFAULT NULL COMMENT 'Post product attachment',
  `short_description` text COMMENT 'Post Short Description',
  `post_content` text COMMENT 'Post Content',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `image` varchar(255) DEFAULT NULL COMMENT 'Post Image',
  `views` int(11) DEFAULT NULL COMMENT 'Post Views',
  `enabled` int(11) DEFAULT NULL COMMENT 'Post Enabled',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Post URL Key',
  `in_rss` int(11) DEFAULT NULL COMMENT 'Post In RSS',
  `allow_comment` int(11) DEFAULT NULL COMMENT 'Post Allow Comment',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Post Meta Title',
  `meta_description` text COMMENT 'Post Meta Description',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_robots` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Author ID',
  `modifier_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Modifier ID',
  `publish_date` timestamp NULL DEFAULT NULL,
  `import_source` text COMMENT 'Import Source',
  `layout` text COMMENT 'Post Layout'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_category`
--

CREATE TABLE `mageplaza_blog_post_category` (
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Category ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Category To Post Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_history`
--

CREATE TABLE `mageplaza_blog_post_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Post Name',
  `short_description` text COMMENT 'Post Short Description',
  `post_content` text COMMENT 'Post Content',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `image` varchar(255) DEFAULT NULL COMMENT 'Post Image',
  `views` int(11) DEFAULT NULL COMMENT 'Post Views',
  `enabled` int(11) DEFAULT NULL COMMENT 'Post Enabled',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Post URL Key',
  `in_rss` int(11) DEFAULT NULL COMMENT 'Post In RSS',
  `allow_comment` int(11) DEFAULT NULL COMMENT 'Post Allow Comment',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Post Meta Title',
  `meta_description` text COMMENT 'Post Meta Description',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_robots` text COMMENT 'Post Meta Robots',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Post Updated At',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Post Created At',
  `author_id` int(10) UNSIGNED NOT NULL COMMENT 'Author ID',
  `modifier_id` int(10) UNSIGNED NOT NULL COMMENT 'Modifier ID',
  `publish_date` timestamp NULL DEFAULT NULL COMMENT 'Publish Date',
  `import_source` text COMMENT 'Import Source',
  `layout` text COMMENT 'Post Layout',
  `category_ids` varchar(255) DEFAULT NULL COMMENT 'Post Category Id',
  `tag_ids` varchar(255) DEFAULT NULL COMMENT 'Post Tag Id',
  `topic_ids` varchar(255) DEFAULT NULL COMMENT 'Post Topic Id',
  `product_ids` text COMMENT 'Post Product Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post History Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_like`
--

CREATE TABLE `mageplaza_blog_post_like` (
  `like_id` int(10) UNSIGNED NOT NULL COMMENT 'Like ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `action` int(10) UNSIGNED NOT NULL COMMENT 'type like',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'User Like ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='mageplaza_blog_post_like';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_product`
--

CREATE TABLE `mageplaza_blog_post_product` (
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post To Product Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_tag`
--

CREATE TABLE `mageplaza_blog_post_tag` (
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'Tag ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post To Tag Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_topic`
--

CREATE TABLE `mageplaza_blog_post_topic` (
  `topic_id` int(10) UNSIGNED NOT NULL COMMENT 'Topic ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Post To Topic Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_post_traffic`
--

CREATE TABLE `mageplaza_blog_post_traffic` (
  `traffic_id` int(10) UNSIGNED NOT NULL COMMENT 'Traffic ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Post ID',
  `numbers_view` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Traffic Post Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_tag`
--

CREATE TABLE `mageplaza_blog_tag` (
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'Tag ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tag Name',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Tag URL Key',
  `description` text COMMENT 'Tag Description',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `enabled` int(11) DEFAULT NULL COMMENT 'Tag Enabled',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Post Meta Title',
  `meta_description` text COMMENT 'Post Meta Description',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_robots` text,
  `import_source` text COMMENT 'Import Source'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Table';

-- --------------------------------------------------------

--
-- Table structure for table `mageplaza_blog_topic`
--

CREATE TABLE `mageplaza_blog_topic` (
  `topic_id` int(10) UNSIGNED NOT NULL COMMENT 'Topic ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Topic Name',
  `description` text COMMENT 'Topic Description',
  `store_ids` text NOT NULL COMMENT 'Store Id',
  `enabled` int(11) DEFAULT NULL COMMENT 'Topic Enabled',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'Topic URL Key',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Topic Meta Title',
  `meta_description` text COMMENT 'Topic Meta Description',
  `meta_keywords` text COMMENT 'Topic Meta Keywords',
  `meta_robots` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `import_source` text COMMENT 'Import Source'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Topic Table';

-- --------------------------------------------------------

--
-- Table structure for table `mview_state`
--

CREATE TABLE `mview_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'View Version Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) UNSIGNED NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) UNSIGNED DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) UNSIGNED NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`subscriber_id`, `store_id`, `change_status_at`, `customer_id`, `subscriber_email`, `subscriber_status`, `subscriber_confirm_code`) VALUES
(1, 1, '2023-07-19 13:19:21', 1, 'moemensaadeh5@gmail.com', 1, 'cmfn81iw2r5p8e7eux4r29rfusi7op57');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE `newsletter_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `is_legacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Should the template render in legacy mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) UNSIGNED NOT NULL COMMENT 'Consumer ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE `oauth_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token_request_log`
--

CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) UNSIGNED NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_request_event`
--

CREATE TABLE `password_reset_request_event` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

--
-- Dumping data for table `password_reset_request_event`
--

INSERT INTO `password_reset_request_event` (`id`, `request_type`, `account_reference`, `created_at`, `ip`) VALUES
(1, 1, 'moemensaadeh5@gmail.com', '2023-07-26 07:44:33', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement`
--

CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement_order`
--

CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `report_date` date DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) UNSIGNED NOT NULL COMMENT 'Row Id',
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) UNSIGNED NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) UNSIGNED DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(45) DEFAULT NULL,
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `is_persistent`, `gift_message_id`) VALUES
(1, 1, '2023-07-19 13:19:22', '2023-07-26 20:01:17', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '3.7800', '3.7800', NULL, 1, 3, 1, 'moemensaadeh5@gmail.com', NULL, 'moemen', NULL, 'saadeh', NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '3.7800', '3.7800', '3.7800', '3.7800', 1, 0, NULL, 0, NULL),
(2, 1, '2023-07-20 18:15:39', '2023-07-20 18:20:10', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '612.4300', '612.4300', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', 1, 0, NULL, 0, NULL),
(3, 1, '2023-07-20 21:19:34', '2023-07-20 21:19:42', NULL, 1, 0, 0, 0, '0.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, 0, NULL),
(4, 1, '2023-07-21 06:41:11', '2023-07-21 06:55:41', NULL, 1, 0, 0, 0, '0.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, 0, NULL),
(5, 1, '2023-07-24 15:40:35', '2023-07-24 15:40:42', NULL, 1, 0, 0, 0, '0.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, 0, NULL),
(6, 1, '2023-07-26 13:05:25', '2023-07-26 13:07:41', NULL, 0, 1, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '50.0000', '50.0000', 'guest', NULL, 3, 0, 'mireille.a@codendot.com', NULL, 'mireille', NULL, 'test', NULL, NULL, NULL, 1, 1, '::1', NULL, '000000001', NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '50.0000', '50.0000', '50.0000', '50.0000', 1, 0, NULL, 0, NULL),
(7, 1, '2023-07-26 13:08:41', '2023-07-26 13:17:14', NULL, 0, 0, 0, 1, '2.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '17.5600', '17.5600', NULL, 2, 3, 1, 'mireille.a@codendot.com', NULL, 'mireille', NULL, 'test', NULL, NULL, NULL, 1, 0, '::1', NULL, '000000002', NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '7.5600', '7.5600', '7.5600', '7.5600', 1, 0, NULL, 0, NULL),
(8, 1, '2023-07-26 13:20:25', '2023-07-26 13:20:25', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '0.4000', '0.4000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.4000', '0.4000', '0.4000', '0.4000', 1, 0, NULL, 0, NULL),
(9, 1, '2023-07-27 05:05:14', '2023-07-27 08:46:41', NULL, 0, 0, 0, 2, '2.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '1248.5400', '1248.5400', 'guest', NULL, 3, 0, 'moemensaadeh5@gmail.com', NULL, 'joud', NULL, 'dh', NULL, NULL, NULL, 1, 1, '::1', NULL, '000000003', NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '904.5400', '904.5400', '904.5400', '904.5400', 1, 0, NULL, 0, NULL),
(10, 1, '2023-07-27 08:48:55', '2023-07-27 08:48:55', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '292.1100', '292.1100', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '292.1100', '292.1100', '292.1100', '292.1100', 1, 0, NULL, 0, NULL),
(11, 1, '2023-07-27 20:12:40', '2023-07-27 20:12:40', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '54.4500', '54.4500', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '54.4500', '54.4500', '54.4500', '54.4500', 1, 0, NULL, 0, NULL),
(12, 1, '2023-07-30 14:43:35', '2023-07-30 14:43:35', NULL, 1, 0, 0, 1, '1.0000', 0, '0.0000', '0.0000', 'USD', 'USD', 'USD', '612.4300', '612.4300', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address`
--

CREATE TABLE `quote_address` (
  `address_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(40) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `same_as_billing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(120) DEFAULT NULL,
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

INSERT INTO `quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `shipping_discount_tax_compensation_amount`, `base_shipping_discount_tax_compensation_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `free_shipping`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(13, 2, '2023-07-20 18:20:03', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '0.0000', '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', NULL, '[]', NULL, '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 2, '2023-07-20 18:20:03', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, '2023-07-20 21:19:42', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 3, '2023-07-20 21:19:42', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 4, '2023-07-21 06:55:41', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 4, '2023-07-21 06:55:41', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 5, '2023-07-24 15:40:42', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 5, '2023-07-24 15:40:42', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, '2023-07-25 19:06:32', '0000-00-00 00:00:00', 1, 0, NULL, 'shipping', 'moemensaadeh5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '0.0000', '3.7800', '3.7800', '3.7800', '3.7800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '3.7800', '3.7800', NULL, '[]', NULL, '0.0000', '0.0000', '3.7800', '3.7800', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, '2023-07-25 19:06:32', '0000-00-00 00:00:00', 1, 0, NULL, 'billing', 'moemensaadeh5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 6, '2023-07-26 13:05:25', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 6, '2023-07-26 13:07:36', '0000-00-00 00:00:00', NULL, 1, NULL, 'billing', 'mireille.a@codendot.com', NULL, 'mireille', NULL, 'test', NULL, 'test', '123', 'dwdwd', NULL, NULL, '1233222', 'UM', '701282822', NULL, 0, 0, NULL, NULL, '0.0000', '50.0000', '50.0000', '50.0000', '50.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', NULL, '[]', NULL, '0.0000', '0.0000', '50.0000', '50.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 7, '2023-07-26 13:08:41', '2023-07-26 13:17:04', 2, 1, 1, 'shipping', 'mireille.a@codendot.com', NULL, 'mireille', NULL, 'test', NULL, NULL, 'mina', 'mina', 'American Samoa', 3, '1300', 'US', 'ewfeewrfewf', NULL, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '0.0000', '7.5600', '7.5600', '7.5600', '7.5600', '0.0000', '0.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '17.5600', '17.5600', NULL, '[]', NULL, '0.0000', '0.0000', '7.5600', '7.5600', '0.0000', '0.0000', '0.0000', NULL, '10.0000', '10.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 7, '2023-07-26 13:17:11', '0000-00-00 00:00:00', 2, NULL, NULL, 'billing', 'mireille.a@codendot.com', NULL, 'mireille', NULL, 'test', NULL, NULL, 'mina', 'mina', 'American Samoa', 3, '1300', 'US', 'ewfeewrfewf', NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 8, '2023-07-26 13:20:25', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 8, '2023-07-26 13:20:25', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '0.0000', '0.4000', '0.4000', '0.4000', '0.4000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.4000', '0.4000', NULL, '[]', NULL, '0.0000', '0.0000', '0.4000', '0.4000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 9, '2023-07-27 05:05:14', '2023-07-27 08:46:12', NULL, 0, NULL, 'shipping', 'moemensaadeh5@gmail.com', NULL, 'joud', NULL, 'dh', NULL, NULL, 'mina', 'dwdwd', 'Beirut', 577, '0000', 'LB', '23423', NULL, 0, 0, 'tablerate_bestway', 'Best Way - Table Rate', '165.3470', '904.5400', '904.5400', '904.5400', '904.5400', '0.0000', '0.0000', '344.0000', '344.0000', '0.0000', '0.0000', '0.0000', '0.0000', '1248.5400', '1248.5400', NULL, '[]', NULL, '0.0000', '0.0000', '904.5400', '904.5400', '0.0000', '0.0000', '0.0000', NULL, '344.0000', '344.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 9, '2023-07-27 08:46:37', '0000-00-00 00:00:00', NULL, NULL, NULL, 'billing', 'moemensaadeh5@gmail.com', NULL, 'joud', NULL, 'dh', NULL, NULL, 'mina', 'dwdwd', 'Beirut', 577, '0000', 'LB', '23423', NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 10, '2023-07-27 08:48:55', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 10, '2023-07-27 08:48:55', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '0.0000', '292.1100', '292.1100', '292.1100', '292.1100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '292.1100', '292.1100', NULL, '[]', NULL, '0.0000', '0.0000', '292.1100', '292.1100', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 11, '2023-07-27 20:12:40', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 11, '2023-07-27 20:12:40', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '0.0000', '54.4500', '54.4500', '54.4500', '54.4500', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '54.4500', '54.4500', NULL, '[]', NULL, '0.0000', '0.0000', '54.4500', '54.4500', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 12, '2023-07-30 14:43:35', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'null', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 12, '2023-07-30 14:43:35', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '165.3470', '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', NULL, '[]', NULL, '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address_item`
--

CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) UNSIGNED DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Free Shipping',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- --------------------------------------------------------

--
-- Table structure for table `quote_id_mask`
--

CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

INSERT INTO `quote_id_mask` (`entity_id`, `quote_id`, `masked_id`) VALUES
(1, 2, 'CzJjHqBRGapdax4k0kitieckKuWbxsVP'),
(8, 10, 'eOOhRc5Fb0P25R9ZcKwbZpwR5jJhPZj5'),
(7, 9, 'fLikaCswJVhldYh7rLkEe1P3jcmHI2Se'),
(10, 12, 'iigrTkLpanOEkm4Iy2U7S4jj8G4OJXUQ'),
(2, 3, 'nplykYaC7YXn3FPZbi1IH8n2xUHGHxVe'),
(6, 8, 'OR3UJ5t6LgK8igNXFAdt4zea2EQIjgsU'),
(9, 11, 'owsMAjWXR2dBfHWx4eNodeQqg0iPJ4Oc'),
(4, 5, 'sg8EOWHNl23cEo3g5MpYSnQBrK5GXVIG'),
(3, 4, 'SJaXVpEaytYUl7uuVlgf70p7s3qiwD4B'),
(5, 6, 'tGq5WaPgaUFyoDl7rpPlz9aBFj3gNKAA');

-- --------------------------------------------------------

--
-- Table structure for table `quote_item`
--

CREATE TABLE `quote_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_excluded_product` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flags whether or not product is excluded from Amazon Pay',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

INSERT INTO `quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `free_shipping`, `is_excluded_product`, `gift_message_id`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(3, 2, '2023-07-20 18:20:10', '0000-00-00 00:00:00', 30, 1, NULL, 0, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '612.4300', '612.4300', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 6, '2023-07-26 13:05:25', '0000-00-00 00:00:00', 36, 1, NULL, 1, '3453545-5circuits', 'OV - MULTIDIS SF TOPMETER', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '50.0000', '50.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', '0.0000', '0.0000', 'configurable', NULL, NULL, NULL, NULL, NULL, '50.0000', '50.0000', '50.0000', '50.0000', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 6, '2023-07-26 13:05:25', '0000-00-00 00:00:00', 37, 1, 4, 1, '3453545-5circuits', 'OV - MULTIDIS SF TOPMETER-5circuits', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '50.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 'virtual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 7, '2023-07-26 13:09:53', '2023-07-26 13:10:30', 28, 1, NULL, 0, '5543-LIQUID-SEALENT', '5543-LIQUID-SEALENT', NULL, NULL, NULL, 0, 0, NULL, '2.0000', '3.7800', '3.7800', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '7.5600', '7.5600', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '3.7800', '3.7800', '7.5600', '7.5600', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 8, '2023-07-26 13:20:25', '0000-00-00 00:00:00', 27, 1, NULL, 0, 'HEAVY-ANCHOR-RAWL-BOLT', 'HEAVY-ANCHOR-RAWL-BOLT', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '0.4000', '0.4000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.4000', '0.4000', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '0.4000', '0.4000', '0.4000', '0.4000', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, '2023-07-26 19:58:52', '0000-00-00 00:00:00', 28, 1, NULL, 0, '5543-LIQUID-SEALENT', '5543-LIQUID-SEALENT', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '3.7800', '3.7800', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '3.7800', '3.7800', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '3.7800', '3.7800', '3.7800', '3.7800', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 9, '2023-07-27 06:16:51', '0000-00-00 00:00:00', 30, 1, NULL, 0, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', NULL, NULL, NULL, 0, 0, '165.3470', '1.0000', '612.4300', '612.4300', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '165.3470', 'simple', NULL, NULL, NULL, NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 9, '2023-07-27 06:29:01', '0000-00-00 00:00:00', 23, 1, NULL, 0, 'OV - NR.4 METAL CABINET 120x76x11.5', 'OV - NR.4 METAL CABINET 120x76x11.5', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '292.1100', '292.1100', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '292.1100', '292.1100', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '292.1100', '292.1100', '292.1100', '292.1100', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 10, '2023-07-27 08:48:55', '0000-00-00 00:00:00', 23, 1, NULL, 0, 'OV - NR.4 METAL CABINET 120x76x11.5', 'OV - NR.4 METAL CABINET 120x76x11.5', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '292.1100', '292.1100', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '292.1100', '292.1100', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '292.1100', '292.1100', '292.1100', '292.1100', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 11, '2023-07-27 20:12:40', '0000-00-00 00:00:00', 42, 1, NULL, 0, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', NULL, NULL, NULL, 0, 0, NULL, '1.0000', '54.4500', '54.4500', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '54.4500', '54.4500', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '54.4500', '54.4500', '54.4500', '54.4500', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 12, '2023-07-30 14:43:35', '0000-00-00 00:00:00', 30, 1, NULL, 0, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', NULL, NULL, NULL, 0, 0, '165.3470', '1.0000', '612.4300', '612.4300', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '165.3470', 'simple', NULL, NULL, NULL, NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_item_option`
--

CREATE TABLE `quote_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

INSERT INTO `quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(3, 3, 30, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"30\",\"qty\":1}'),
(4, 4, 36, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9jb25maWd1cmFibGUtdGVzdC5odG1s\",\"product\":\"36\",\"selected_configurable_option\":\"37\",\"related_product\":\"\",\"item\":\"36\",\"super_attribute\":{\"149\":\"16\"},\"qty\":\"1\"}'),
(5, 4, 36, 'attributes', '{\"149\":\"16\"}'),
(6, 4, 37, 'product_qty_37', '1'),
(7, 4, 37, 'simple_product', '37'),
(8, 5, 37, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9jb25maWd1cmFibGUtdGVzdC5odG1s\",\"product\":\"36\",\"selected_configurable_option\":\"37\",\"related_product\":\"\",\"item\":\"36\",\"super_attribute\":{\"149\":\"16\"},\"qty\":\"1\"}'),
(9, 5, 37, 'parent_product_id', '36'),
(10, 6, 28, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy81NTQzLWxpcXVpZC1zZWFsZW50Lmh0bWw,\",\"product\":\"28\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"28\",\"qty\":\"4\"}'),
(11, 7, 27, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"27\",\"qty\":1}'),
(16, 12, 28, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy81NTQzLWxpcXVpZC1zZWFsZW50Lmh0bWw,\",\"product\":\"28\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"28\",\"qty\":\"1\"}'),
(18, 14, 30, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"30\",\"qty\":1}'),
(19, 15, 23, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9vdi1uci00LW1ldGFsLWNhYmluZXQtMTIweDc2eDExLTUuaHRtbA,,\",\"product\":\"23\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"23\",\"qty\":\"1\"}'),
(20, 16, 23, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"23\",\"qty\":1}'),
(21, 17, 42, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9zaG9w\",\"product\":\"42\",\"qty\":1}'),
(22, 18, 30, 'info_buyRequest', '{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"30\",\"qty\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `quote_payment`
--

CREATE TABLE `quote_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

--
-- Dumping data for table `quote_payment`
--

INSERT INTO `quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last_4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
(1, 6, '2023-07-26 13:07:36', '0000-00-00 00:00:00', 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 'null', NULL, NULL, NULL),
(2, 7, '2023-07-26 13:17:11', '0000-00-00 00:00:00', 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 'null', NULL, NULL, NULL),
(3, 9, '2023-07-27 08:46:37', '0000-00-00 00:00:00', 'cashondelivery', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 'null', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_shipping_rate`
--

CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) UNSIGNED NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Dumping data for table `quote_shipping_rate`
--

INSERT INTO `quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
(2, 34, '2023-07-26 13:17:11', '0000-00-00 00:00:00', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '10.0000', NULL, 'Fixed'),
(4, 39, '2023-07-27 08:46:37', '0000-00-00 00:00:00', 'tablerate', 'Best Way', 'tablerate_bestway', 'bestway', NULL, '344.0000', NULL, 'Table Rate');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`, `is_active`) VALUES
(1, 1, 'Quality', 0, 1),
(2, 1, 'Value', 0, 1),
(3, 1, 'Price', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE `rating_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Vote id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `release_notification_viewer_log`
--

CREATE TABLE `release_notification_viewer_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `viewer_id` int(10) UNSIGNED NOT NULL COMMENT 'Viewer admin user ID',
  `last_view_version` varchar(16) NOT NULL COMMENT 'Viewer last view on product version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Release Notification Viewer Log Table';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_counts`
--

CREATE TABLE `reporting_counts` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) UNSIGNED DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_module_status`
--

CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_orders`
--

CREATE TABLE `reporting_orders` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(10,0) UNSIGNED DEFAULT NULL,
  `total_base` decimal(10,0) UNSIGNED DEFAULT NULL,
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_system_updates`
--

CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_users`
--

CREATE TABLE `reporting_users` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE `report_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2023-06-14 12:38:31', 1, 19, 2, 1, 1),
(2, '2023-06-14 12:53:39', 1, 19, 2, 1, 1),
(3, '2023-06-14 13:22:21', 1, 19, 2, 1, 1),
(4, '2023-06-14 13:37:42', 1, 19, 2, 1, 1),
(5, '2023-06-14 15:15:22', 1, 14, 3, 1, 1),
(6, '2023-06-14 15:15:33', 1, 19, 3, 1, 1),
(7, '2023-06-14 18:58:26', 1, 19, 2, 1, 1),
(8, '2023-06-15 07:50:48', 1, 19, 0, 1, 1),
(9, '2023-06-15 10:40:43', 1, 19, 4, 1, 1),
(10, '2023-06-15 13:04:53', 1, 19, 5, 1, 1),
(11, '2023-06-15 13:22:31', 1, 19, 5, 1, 1),
(12, '2023-06-15 16:24:03', 1, 22, 6, 1, 1),
(13, '2023-06-19 12:18:13', 1, 20, 0, 1, 1),
(14, '2023-06-19 12:18:14', 1, 21, 0, 1, 1),
(15, '2023-06-19 12:40:33', 1, 20, 0, 1, 1),
(16, '2023-06-19 12:44:40', 1, 22, 0, 1, 1),
(17, '2023-06-19 13:01:07', 1, 23, 0, 1, 1),
(18, '2023-06-19 13:18:13', 1, 21, 0, 1, 1),
(19, '2023-06-19 16:36:40', 1, 23, 7, 1, 1),
(20, '2023-06-19 18:04:28', 1, 21, 0, 1, 1),
(21, '2023-06-19 18:28:27', 1, 23, 0, 1, 1),
(22, '2023-06-19 18:41:39', 1, 22, 0, 1, 1),
(23, '2023-06-19 19:05:29', 1, 23, 0, 1, 1),
(24, '2023-06-20 04:40:32', 1, 20, 8, 1, 1),
(25, '2023-06-20 09:27:38', 1, 22, 8, 1, 1),
(26, '2023-06-20 15:49:27', 1, 19, 0, 1, 1),
(27, '2023-06-20 15:49:28', 1, 19, 0, 1, 1),
(28, '2023-06-21 17:47:28', 1, 30, 0, 1, 1),
(29, '2023-06-21 20:35:46', 1, 30, 0, 1, 1),
(30, '2023-06-26 13:16:48', 1, 36, 11, 1, 1),
(31, '2023-06-26 13:38:57', 1, 36, 11, 1, 1),
(32, '2023-06-26 17:27:15', 1, 36, 0, 1, 1),
(33, '2023-06-26 17:42:28', 1, 36, 0, 1, 1),
(34, '2023-06-26 17:44:06', 1, 36, 0, 1, 1),
(35, '2023-06-26 17:54:23', 1, 36, 0, 1, 1),
(36, '2023-06-26 18:06:04', 1, 36, 0, 1, 1),
(37, '2023-06-26 18:15:44', 1, 36, 0, 1, 1),
(38, '2023-06-26 18:32:42', 1, 36, 12, 1, 1),
(39, '2023-06-26 18:35:29', 1, 36, 12, 1, 1),
(40, '2023-06-26 18:40:23', 1, 36, 12, 1, 1),
(41, '2023-06-26 18:41:31', 1, 36, 12, 1, 1),
(42, '2023-06-26 18:42:23', 1, 36, 12, 1, 1),
(43, '2023-06-26 18:43:16', 1, 36, 12, 1, 1),
(44, '2023-06-26 18:45:04', 1, 36, 12, 1, 1),
(45, '2023-06-26 18:57:02', 1, 36, 12, 1, 1),
(46, '2023-06-26 19:02:22', 1, 36, 12, 1, 1),
(47, '2023-06-26 19:03:46', 1, 36, 12, 1, 1),
(48, '2023-06-26 19:04:46', 1, 36, 12, 1, 1),
(49, '2023-06-26 19:05:36', 1, 36, 12, 1, 1),
(50, '2023-06-26 19:07:49', 1, 36, 12, 1, 1),
(51, '2023-06-26 19:09:06', 1, 36, 12, 1, 1),
(52, '2023-06-26 19:10:09', 1, 36, 12, 1, 1),
(53, '2023-06-26 19:27:19', 1, 36, 12, 1, 1),
(54, '2023-06-26 19:52:31', 1, 36, 12, 1, 1),
(55, '2023-06-26 19:54:04', 1, 36, 12, 1, 1),
(56, '2023-06-26 19:56:08', 1, 36, 12, 1, 1),
(57, '2023-06-26 20:07:08', 1, 36, 12, 1, 1),
(58, '2023-06-26 20:19:33', 1, 36, 0, 1, 1),
(59, '2023-06-27 05:28:29', 1, 36, 0, 1, 1),
(60, '2023-06-27 05:32:47', 1, 36, 0, 1, 1),
(61, '2023-06-27 05:34:05', 1, 36, 0, 1, 1),
(62, '2023-06-27 05:34:49', 1, 36, 0, 1, 1),
(63, '2023-06-27 05:35:28', 1, 36, 0, 1, 1),
(64, '2023-06-27 05:40:01', 1, 36, 0, 1, 1),
(65, '2023-06-27 05:40:50', 1, 36, 0, 1, 1),
(66, '2023-06-27 05:41:32', 1, 36, 0, 1, 1),
(67, '2023-06-27 05:42:13', 1, 36, 0, 1, 1),
(68, '2023-06-27 05:42:46', 1, 36, 0, 1, 1),
(69, '2023-06-27 05:44:21', 1, 36, 0, 1, 1),
(70, '2023-06-27 05:45:03', 1, 36, 0, 1, 1),
(71, '2023-06-27 05:50:15', 1, 36, 0, 1, 1),
(72, '2023-06-27 05:51:17', 1, 36, 0, 1, 1),
(73, '2023-06-27 05:55:37', 1, 36, 0, 1, 1),
(74, '2023-06-27 05:56:47', 1, 36, 0, 1, 1),
(75, '2023-06-27 05:58:14', 1, 36, 0, 1, 1),
(76, '2023-06-27 06:11:12', 1, 36, 0, 1, 1),
(77, '2023-06-27 06:12:50', 1, 36, 0, 1, 1),
(78, '2023-06-27 06:16:14', 1, 36, 0, 1, 1),
(79, '2023-06-27 06:16:50', 1, 36, 0, 1, 1),
(80, '2023-06-27 06:17:48', 1, 36, 0, 1, 1),
(81, '2023-06-27 06:23:44', 1, 36, 0, 1, 1),
(82, '2023-06-27 06:31:00', 1, 36, 0, 1, 1),
(83, '2023-06-27 06:33:30', 1, 36, 0, 1, 1),
(84, '2023-06-27 06:40:41', 1, 36, 0, 1, 1),
(85, '2023-06-27 06:42:33', 1, 36, 0, 1, 1),
(86, '2023-06-27 07:15:09', 1, 36, 0, 1, 1),
(87, '2023-06-27 07:16:06', 1, 36, 0, 1, 1),
(88, '2023-06-27 07:22:37', 1, 36, 0, 1, 1),
(89, '2023-06-27 07:23:20', 1, 36, 0, 1, 1),
(90, '2023-06-27 07:25:16', 1, 36, 0, 1, 1),
(91, '2023-06-27 07:26:23', 1, 36, 0, 1, 1),
(92, '2023-06-27 07:27:16', 1, 36, 0, 1, 1),
(93, '2023-06-27 07:30:01', 1, 36, 0, 1, 1),
(94, '2023-06-27 07:31:39', 1, 36, 0, 1, 1),
(95, '2023-06-27 07:32:08', 1, 36, 0, 1, 1),
(96, '2023-06-27 07:37:08', 1, 36, 0, 1, 1),
(97, '2023-06-27 07:37:41', 1, 36, 0, 1, 1),
(98, '2023-06-27 07:38:30', 1, 36, 0, 1, 1),
(99, '2023-06-27 07:39:00', 1, 36, 0, 1, 1),
(100, '2023-06-27 07:40:59', 1, 36, 0, 1, 1),
(101, '2023-06-27 07:42:53', 1, 36, 0, 1, 1),
(102, '2023-06-27 07:46:29', 1, 36, 0, 1, 1),
(103, '2023-06-27 07:47:44', 1, 36, 0, 1, 1),
(104, '2023-06-27 07:50:12', 1, 36, 0, 1, 1),
(105, '2023-06-27 07:51:19', 1, 36, 0, 1, 1),
(106, '2023-06-27 07:52:51', 1, 36, 0, 1, 1),
(107, '2023-06-27 07:53:34', 1, 36, 0, 1, 1),
(108, '2023-06-27 07:56:20', 1, 36, 0, 1, 1),
(109, '2023-06-27 07:58:36', 1, 36, 0, 1, 1),
(110, '2023-06-27 08:02:53', 1, 36, 0, 1, 1),
(111, '2023-06-27 08:03:39', 1, 36, 0, 1, 1),
(112, '2023-06-27 08:04:27', 1, 36, 0, 1, 1),
(113, '2023-06-27 08:05:01', 1, 36, 0, 1, 1),
(114, '2023-06-27 08:06:01', 1, 36, 0, 1, 1),
(115, '2023-06-27 08:06:34', 1, 36, 0, 1, 1),
(116, '2023-06-27 08:07:09', 1, 36, 0, 1, 1),
(117, '2023-06-27 08:07:50', 1, 36, 0, 1, 1),
(118, '2023-06-27 08:08:25', 1, 36, 0, 1, 1),
(119, '2023-06-27 08:09:33', 1, 36, 0, 1, 1),
(120, '2023-06-27 08:10:21', 1, 36, 0, 1, 1),
(121, '2023-06-27 08:10:55', 1, 36, 0, 1, 1),
(122, '2023-06-27 08:11:36', 1, 36, 0, 1, 1),
(123, '2023-06-27 08:12:10', 1, 36, 0, 1, 1),
(124, '2023-06-27 08:12:43', 1, 36, 0, 1, 1),
(125, '2023-06-27 08:13:21', 1, 36, 0, 1, 1),
(126, '2023-06-27 08:14:42', 1, 36, 0, 1, 1),
(127, '2023-06-27 08:18:15', 1, 36, 0, 1, 1),
(128, '2023-06-27 08:21:06', 1, 36, 0, 1, 1),
(129, '2023-06-27 08:21:41', 1, 36, 0, 1, 1),
(130, '2023-06-27 08:23:41', 1, 36, 0, 1, 1),
(131, '2023-06-27 08:25:57', 1, 36, 0, 1, 1),
(132, '2023-06-27 08:30:35', 1, 36, 0, 1, 1),
(133, '2023-06-27 08:31:22', 1, 36, 0, 1, 1),
(134, '2023-06-27 08:33:29', 1, 36, 0, 1, 1),
(135, '2023-06-27 08:37:15', 1, 36, 0, 1, 1),
(136, '2023-06-27 08:40:10', 1, 36, 0, 1, 1),
(137, '2023-06-27 08:43:01', 1, 36, 0, 1, 1),
(138, '2023-06-27 08:44:04', 1, 36, 0, 1, 1),
(139, '2023-06-27 08:45:14', 1, 36, 0, 1, 1),
(140, '2023-06-27 08:47:12', 1, 36, 0, 1, 1),
(141, '2023-06-27 08:47:47', 1, 36, 0, 1, 1),
(142, '2023-06-27 08:49:48', 1, 36, 0, 1, 1),
(143, '2023-06-27 08:50:44', 1, 36, 0, 1, 1),
(144, '2023-06-27 08:58:04', 1, 36, 0, 1, 1),
(145, '2023-06-27 08:58:47', 1, 36, 0, 1, 1),
(146, '2023-06-27 08:59:42', 1, 36, 0, 1, 1),
(147, '2023-06-27 09:00:54', 1, 36, 0, 1, 1),
(148, '2023-06-27 09:07:43', 1, 36, 0, 1, 1),
(149, '2023-06-27 09:09:20', 1, 36, 0, 1, 1),
(150, '2023-06-27 09:11:41', 1, 36, 0, 1, 1),
(151, '2023-06-27 09:12:38', 1, 36, 0, 1, 1),
(152, '2023-06-27 09:13:30', 1, 36, 0, 1, 1),
(153, '2023-06-27 09:14:55', 1, 36, 0, 1, 1),
(154, '2023-06-27 09:31:45', 1, 36, 0, 1, 1),
(155, '2023-06-27 09:39:57', 1, 36, 0, 1, 1),
(156, '2023-06-27 09:41:36', 1, 36, 0, 1, 1),
(157, '2023-06-27 09:42:10', 1, 36, 0, 1, 1),
(158, '2023-06-27 09:45:01', 1, 36, 0, 1, 1),
(159, '2023-06-27 09:46:21', 1, 36, 0, 1, 1),
(160, '2023-06-27 09:56:35', 1, 36, 0, 1, 1),
(161, '2023-06-27 09:57:37', 1, 36, 0, 1, 1),
(162, '2023-06-27 09:58:08', 1, 36, 0, 1, 1),
(163, '2023-06-27 10:00:36', 1, 36, 0, 1, 1),
(164, '2023-06-27 10:03:26', 1, 36, 0, 1, 1),
(165, '2023-06-27 10:06:26', 1, 36, 0, 1, 1),
(166, '2023-06-27 10:14:23', 1, 36, 0, 1, 1),
(167, '2023-06-27 10:15:48', 1, 36, 0, 1, 1),
(168, '2023-06-27 10:18:45', 1, 36, 0, 1, 1),
(169, '2023-06-27 10:20:59', 1, 36, 0, 1, 1),
(170, '2023-06-27 10:21:32', 1, 36, 0, 1, 1),
(171, '2023-06-27 10:22:16', 1, 36, 0, 1, 1),
(172, '2023-06-27 10:29:38', 1, 36, 0, 1, 1),
(173, '2023-06-27 10:30:27', 1, 36, 0, 1, 1),
(174, '2023-06-27 10:33:51', 1, 36, 0, 1, 1),
(175, '2023-06-27 10:36:09', 1, 36, 0, 1, 1),
(176, '2023-06-27 10:36:41', 1, 36, 0, 1, 1),
(177, '2023-06-27 10:38:01', 1, 36, 0, 1, 1),
(178, '2023-06-27 10:39:11', 1, 36, 0, 1, 1),
(179, '2023-06-27 10:42:27', 1, 36, 0, 1, 1),
(180, '2023-06-27 10:45:52', 1, 36, 0, 1, 1),
(181, '2023-06-27 10:48:15', 1, 36, 0, 1, 1),
(182, '2023-06-27 10:52:12', 1, 36, 0, 1, 1),
(183, '2023-06-27 10:53:37', 1, 36, 0, 1, 1),
(184, '2023-06-27 11:00:07', 1, 36, 0, 1, 1),
(185, '2023-06-27 12:18:21', 1, 36, 0, 1, 1),
(186, '2023-06-27 12:22:21', 1, 36, 0, 1, 1),
(187, '2023-06-27 12:30:43', 1, 36, 0, 1, 1),
(188, '2023-06-27 12:31:53', 1, 36, 0, 1, 1),
(189, '2023-06-27 12:34:36', 1, 36, 0, 1, 1),
(190, '2023-06-27 12:36:20', 1, 36, 0, 1, 1),
(191, '2023-06-27 12:37:05', 1, 30, 0, 1, 1),
(192, '2023-06-27 12:43:08', 1, 36, 0, 1, 1),
(193, '2023-06-27 12:45:23', 1, 36, 0, 1, 1),
(194, '2023-06-27 12:47:34', 1, 36, 0, 1, 1),
(195, '2023-06-27 12:49:32', 1, 36, 0, 1, 1),
(196, '2023-06-27 12:50:47', 1, 36, 0, 1, 1),
(197, '2023-06-27 12:51:19', 1, 23, 0, 1, 1),
(198, '2023-06-27 12:59:15', 1, 36, 0, 1, 1),
(199, '2023-06-27 18:06:51', 1, 36, 0, 1, 1),
(200, '2023-06-27 18:10:18', 1, 36, 0, 1, 1),
(201, '2023-06-27 18:13:33', 1, 36, 0, 1, 1),
(202, '2023-06-27 18:15:04', 1, 36, 0, 1, 1),
(203, '2023-06-27 18:16:11', 1, 36, 0, 1, 1),
(204, '2023-06-27 18:19:48', 1, 36, 0, 1, 1),
(205, '2023-06-27 18:21:06', 1, 36, 0, 1, 1),
(206, '2023-06-27 18:21:42', 1, 36, 0, 1, 1),
(207, '2023-06-27 18:23:13', 1, 36, 0, 1, 1),
(208, '2023-06-27 18:37:32', 1, 36, 0, 1, 1),
(209, '2023-06-27 18:42:07', 1, 36, 0, 1, 1),
(210, '2023-06-27 18:43:33', 1, 36, 0, 1, 1),
(211, '2023-06-27 18:45:24', 1, 36, 0, 1, 1),
(212, '2023-06-27 18:48:54', 1, 36, 0, 1, 1),
(213, '2023-06-27 18:49:38', 1, 36, 0, 1, 1),
(214, '2023-06-27 18:50:44', 1, 36, 0, 1, 1),
(215, '2023-06-27 18:51:43', 1, 36, 0, 1, 1),
(216, '2023-06-27 18:53:36', 1, 36, 0, 1, 1),
(217, '2023-06-27 18:54:29', 1, 36, 0, 1, 1),
(218, '2023-06-27 18:56:45', 1, 36, 0, 1, 1),
(219, '2023-06-27 18:57:44', 1, 36, 0, 1, 1),
(220, '2023-06-27 19:00:40', 1, 36, 0, 1, 1),
(221, '2023-06-27 19:07:07', 1, 36, 0, 1, 1),
(222, '2023-06-27 19:14:16', 1, 36, 0, 1, 1),
(223, '2023-06-27 19:19:54', 1, 36, 0, 1, 1),
(224, '2023-06-27 19:20:44', 1, 36, 0, 1, 1),
(225, '2023-07-01 17:50:26', 1, 36, 13, 1, 1),
(226, '2023-07-01 17:54:59', 1, 36, 13, 1, 1),
(227, '2023-07-01 17:55:49', 1, 36, 13, 1, 1),
(228, '2023-07-01 18:01:15', 1, 36, 13, 1, 1),
(229, '2023-07-01 18:09:39', 1, 36, 13, 1, 1),
(230, '2023-07-01 18:11:20', 1, 36, 13, 1, 1),
(231, '2023-07-01 18:12:31', 1, 36, 13, 1, 1),
(232, '2023-07-01 19:16:34', 1, 36, 0, 1, 1),
(233, '2023-07-01 19:30:07', 1, 36, 0, 1, 1),
(234, '2023-07-01 19:37:55', 1, 36, 0, 1, 1),
(235, '2023-07-01 19:59:59', 1, 36, 0, 1, 1),
(236, '2023-07-02 06:01:04', 1, 36, 0, 1, 1),
(237, '2023-07-02 06:16:03', 1, 36, 0, 1, 1),
(238, '2023-07-02 17:23:54', 1, 36, 0, 1, 1),
(239, '2023-07-02 17:56:34', 1, 30, 0, 1, 1),
(240, '2023-07-02 18:11:48', 1, 36, 0, 1, 1),
(241, '2023-07-02 18:12:13', 1, 36, 0, 1, 1),
(242, '2023-07-02 18:25:11', 1, 36, 0, 1, 1),
(243, '2023-07-02 18:27:27', 1, 36, 0, 1, 1),
(244, '2023-07-02 18:31:44', 1, 36, 0, 1, 1),
(245, '2023-07-02 18:31:48', 1, 36, 0, 1, 1),
(246, '2023-07-02 18:31:48', 1, 36, 0, 1, 1),
(247, '2023-07-02 19:23:12', 1, 36, 0, 1, 1),
(248, '2023-07-02 19:43:32', 1, 36, 0, 1, 1),
(249, '2023-07-02 19:50:28', 1, 36, 0, 1, 1),
(250, '2023-07-02 20:36:07', 1, 36, 0, 1, 1),
(251, '2023-07-02 20:38:37', 1, 36, 0, 1, 1),
(252, '2023-07-02 20:39:18', 1, 36, 0, 1, 1),
(253, '2023-07-02 20:50:30', 1, 36, 0, 1, 1),
(254, '2023-07-02 21:09:34', 1, 36, 0, 1, 1),
(255, '2023-07-02 21:12:56', 1, 36, 0, 1, 1),
(256, '2023-07-02 21:14:51', 1, 36, 0, 1, 1),
(257, '2023-07-02 21:16:00', 1, 36, 0, 1, 1),
(258, '2023-07-02 21:19:32', 1, 36, 0, 1, 1),
(259, '2023-07-02 21:21:46', 1, 36, 0, 1, 1),
(260, '2023-07-02 21:22:45', 1, 36, 0, 1, 1),
(261, '2023-07-02 21:24:23', 1, 36, 0, 1, 1),
(262, '2023-07-02 21:24:28', 1, 36, 0, 1, 1),
(263, '2023-07-02 21:24:51', 1, 36, 0, 1, 1),
(264, '2023-07-02 21:25:21', 1, 36, 0, 1, 1),
(265, '2023-07-02 21:28:35', 1, 36, 0, 1, 1),
(266, '2023-07-02 21:31:07', 1, 36, 0, 1, 1),
(267, '2023-07-02 21:50:09', 1, 36, 0, 1, 1),
(268, '2023-07-02 21:51:54', 1, 36, 0, 1, 1),
(269, '2023-07-02 21:53:34', 1, 36, 0, 1, 1),
(270, '2023-07-02 21:54:29', 1, 36, 0, 1, 1),
(271, '2023-07-02 22:06:43', 1, 36, 0, 1, 1),
(272, '2023-07-02 22:08:45', 1, 36, 0, 1, 1),
(273, '2023-07-03 05:44:31', 1, 36, 0, 1, 1),
(274, '2023-07-03 05:45:54', 1, 36, 0, 1, 1),
(275, '2023-07-03 05:51:11', 1, 36, 0, 1, 1),
(276, '2023-07-03 06:03:20', 1, 36, 0, 1, 1),
(277, '2023-07-03 06:04:32', 1, 36, 0, 1, 1),
(278, '2023-07-03 06:08:06', 1, 36, 0, 1, 1),
(279, '2023-07-03 06:17:59', 1, 36, 0, 1, 1),
(280, '2023-07-03 06:20:09', 1, 36, 0, 1, 1),
(281, '2023-07-03 06:22:06', 1, 36, 0, 1, 1),
(282, '2023-07-03 06:23:22', 1, 36, 0, 1, 1),
(283, '2023-07-03 06:23:59', 1, 36, 0, 1, 1),
(284, '2023-07-03 06:49:53', 1, 36, 0, 1, 1),
(285, '2023-07-03 06:51:10', 1, 36, 0, 1, 1),
(286, '2023-07-03 06:51:51', 1, 36, 0, 1, 1),
(287, '2023-07-03 06:52:06', 1, 36, 0, 1, 1),
(288, '2023-07-03 06:55:43', 1, 36, 0, 1, 1),
(289, '2023-07-03 06:58:06', 1, 36, 0, 1, 1),
(290, '2023-07-03 07:01:10', 1, 36, 0, 1, 1),
(291, '2023-07-03 07:04:15', 1, 36, 0, 1, 1),
(292, '2023-07-03 07:06:06', 1, 36, 0, 1, 1),
(293, '2023-07-03 07:07:02', 1, 36, 0, 1, 1),
(294, '2023-07-03 07:13:23', 1, 36, 0, 1, 1),
(295, '2023-07-03 07:16:08', 1, 36, 0, 1, 1),
(296, '2023-07-03 07:16:59', 1, 36, 0, 1, 1),
(297, '2023-07-03 07:17:36', 1, 36, 0, 1, 1),
(298, '2023-07-03 07:19:39', 1, 36, 0, 1, 1),
(299, '2023-07-03 07:23:40', 1, 36, 0, 1, 1),
(300, '2023-07-03 07:24:24', 1, 36, 0, 1, 1),
(301, '2023-07-03 07:34:10', 1, 36, 0, 1, 1),
(302, '2023-07-03 07:34:44', 1, 36, 0, 1, 1),
(303, '2023-07-03 07:36:25', 1, 36, 0, 1, 1),
(304, '2023-07-03 07:37:16', 1, 36, 0, 1, 1),
(305, '2023-07-03 07:38:43', 1, 36, 0, 1, 1),
(306, '2023-07-03 07:42:31', 1, 36, 0, 1, 1),
(307, '2023-07-03 07:43:49', 1, 36, 0, 1, 1),
(308, '2023-07-03 07:44:06', 1, 30, 0, 1, 1),
(309, '2023-07-03 07:44:30', 1, 23, 0, 1, 1),
(310, '2023-07-03 07:50:21', 1, 28, 14, 1, 1),
(311, '2023-07-03 07:51:30', 1, 27, 14, 1, 1),
(312, '2023-07-03 07:52:00', 1, 27, 14, 1, 1),
(313, '2023-07-03 07:53:05', 1, 27, 14, 1, 1),
(314, '2023-07-03 07:55:46', 1, 27, 14, 1, 1),
(315, '2023-07-03 07:56:19', 1, 27, 14, 1, 1),
(316, '2023-07-03 07:56:30', 1, 36, 14, 1, 1),
(317, '2023-07-03 08:00:07', 1, 36, 14, 1, 1),
(318, '2023-07-03 08:02:18', 1, 36, 14, 1, 1),
(319, '2023-07-03 08:07:39', 1, 36, 14, 1, 1),
(320, '2023-07-03 08:10:29', 1, 36, 14, 1, 1),
(321, '2023-07-03 08:12:19', 1, 36, 14, 1, 1),
(322, '2023-07-03 08:18:19', 1, 36, 14, 1, 1),
(323, '2023-07-03 08:33:05', 1, 36, 14, 1, 1),
(324, '2023-07-03 08:34:38', 1, 36, 14, 1, 1),
(325, '2023-07-03 08:36:46', 1, 36, 14, 1, 1),
(326, '2023-07-03 08:38:12', 1, 36, 14, 1, 1),
(327, '2023-07-03 08:38:44', 1, 36, 14, 1, 1),
(328, '2023-07-03 08:40:26', 1, 36, 14, 1, 1),
(329, '2023-07-03 08:54:26', 1, 36, 14, 1, 1),
(330, '2023-07-03 08:59:10', 1, 36, 14, 1, 1),
(331, '2023-07-03 08:59:57', 1, 36, 14, 1, 1),
(332, '2023-07-03 09:00:26', 1, 36, 14, 1, 1),
(333, '2023-07-03 09:01:40', 1, 36, 14, 1, 1),
(334, '2023-07-03 09:02:31', 1, 36, 14, 1, 1),
(335, '2023-07-03 09:03:44', 1, 36, 14, 1, 1),
(336, '2023-07-03 09:04:43', 1, 36, 14, 1, 1),
(337, '2023-07-03 09:06:54', 1, 36, 14, 1, 1),
(338, '2023-07-03 09:08:10', 1, 36, 14, 1, 1),
(339, '2023-07-03 09:15:48', 1, 36, 14, 1, 1),
(340, '2023-07-03 09:16:15', 1, 36, 14, 1, 1),
(341, '2023-07-03 09:29:12', 1, 36, 14, 1, 1),
(342, '2023-07-03 09:30:26', 1, 36, 14, 1, 1),
(343, '2023-07-03 09:31:14', 1, 36, 14, 1, 1),
(344, '2023-07-03 09:32:07', 1, 36, 14, 1, 1),
(345, '2023-07-03 09:34:31', 1, 36, 14, 1, 1),
(346, '2023-07-03 09:35:42', 1, 36, 14, 1, 1),
(347, '2023-07-03 09:36:32', 1, 36, 14, 1, 1),
(348, '2023-07-03 09:41:44', 1, 36, 14, 1, 1),
(349, '2023-07-03 09:42:15', 1, 36, 14, 1, 1),
(350, '2023-07-03 09:49:18', 1, 36, 14, 1, 1),
(351, '2023-07-03 09:50:18', 1, 36, 14, 1, 1),
(352, '2023-07-03 09:58:19', 1, 36, 14, 1, 1),
(353, '2023-07-03 10:21:01', 1, 36, 14, 1, 1),
(354, '2023-07-03 10:32:36', 1, 36, 14, 1, 1),
(355, '2023-07-03 10:42:09', 1, 36, 14, 1, 1),
(356, '2023-07-03 10:58:01', 1, 36, 14, 1, 1),
(357, '2023-07-03 11:17:54', 1, 36, 14, 1, 1),
(358, '2023-07-03 11:21:40', 1, 36, 14, 1, 1),
(359, '2023-07-03 11:22:35', 1, 36, 14, 1, 1),
(360, '2023-07-03 11:30:38', 1, 36, 14, 1, 1),
(361, '2023-07-03 11:31:16', 1, 36, 14, 1, 1),
(362, '2023-07-03 11:37:24', 1, 36, 14, 1, 1),
(363, '2023-07-03 11:39:46', 1, 36, 14, 1, 1),
(364, '2023-07-03 11:40:54', 1, 36, 14, 1, 1),
(365, '2023-07-03 11:41:27', 1, 36, 14, 1, 1),
(366, '2023-07-03 11:47:39', 1, 36, 14, 1, 1),
(367, '2023-07-03 11:49:50', 1, 36, 14, 1, 1),
(368, '2023-07-03 11:51:07', 1, 36, 14, 1, 1),
(369, '2023-07-03 11:51:23', 1, 30, 14, 1, 1),
(370, '2023-07-03 11:53:31', 1, 36, 14, 1, 1),
(371, '2023-07-03 12:00:09', 1, 36, 14, 1, 1),
(372, '2023-07-03 12:01:16', 1, 36, 14, 1, 1),
(373, '2023-07-03 12:02:29', 1, 36, 14, 1, 1),
(374, '2023-07-03 12:05:16', 1, 36, 14, 1, 1),
(375, '2023-07-03 12:11:32', 1, 36, 14, 1, 1),
(376, '2023-07-03 12:12:14', 1, 23, 14, 1, 1),
(377, '2023-07-03 12:13:40', 1, 36, 14, 1, 1),
(378, '2023-07-03 12:18:28', 1, 36, 14, 1, 1),
(379, '2023-07-03 12:19:29', 1, 36, 14, 1, 1),
(380, '2023-07-03 12:20:05', 1, 36, 14, 1, 1),
(381, '2023-07-03 12:23:26', 1, 36, 14, 1, 1),
(382, '2023-07-03 12:26:54', 1, 36, 14, 1, 1),
(383, '2023-07-03 12:28:23', 1, 36, 14, 1, 1),
(384, '2023-07-03 12:37:32', 1, 36, 14, 1, 1),
(385, '2023-07-03 12:40:39', 1, 36, 14, 1, 1),
(386, '2023-07-03 12:45:45', 1, 36, 14, 1, 1),
(387, '2023-07-03 12:47:32', 1, 36, 14, 1, 1),
(388, '2023-07-03 12:48:59', 1, 36, 14, 1, 1),
(389, '2023-07-03 12:49:52', 1, 36, 14, 1, 1),
(390, '2023-07-03 12:53:02', 1, 36, 14, 1, 1),
(391, '2023-07-03 12:56:05', 1, 36, 14, 1, 1),
(392, '2023-07-03 13:05:03', 1, 36, 14, 1, 1),
(393, '2023-07-03 13:05:36', 1, 36, 14, 1, 1),
(394, '2023-07-03 13:07:04', 1, 36, 14, 1, 1),
(395, '2023-07-03 13:08:17', 1, 36, 14, 1, 1),
(396, '2023-07-03 13:09:00', 1, 36, 14, 1, 1),
(397, '2023-07-03 13:09:55', 1, 36, 14, 1, 1),
(398, '2023-07-03 13:10:51', 1, 36, 14, 1, 1),
(399, '2023-07-03 13:11:30', 1, 36, 14, 1, 1),
(400, '2023-07-03 13:12:20', 1, 36, 14, 1, 1),
(401, '2023-07-03 13:14:16', 1, 36, 14, 1, 1),
(402, '2023-07-03 13:56:45', 1, 36, 14, 1, 1),
(403, '2023-07-03 13:57:37', 1, 36, 14, 1, 1),
(404, '2023-07-03 13:58:15', 1, 28, 14, 1, 1),
(405, '2023-07-03 14:00:55', 1, 36, 14, 1, 1),
(406, '2023-07-03 14:02:19', 1, 36, 14, 1, 1),
(407, '2023-07-03 14:03:06', 1, 36, 14, 1, 1),
(408, '2023-07-03 14:03:53', 1, 36, 14, 1, 1),
(409, '2023-07-03 14:04:22', 1, 36, 14, 1, 1),
(410, '2023-07-03 14:05:15', 1, 36, 14, 1, 1),
(411, '2023-07-03 14:06:03', 1, 36, 14, 1, 1),
(412, '2023-07-03 14:07:27', 1, 36, 14, 1, 1),
(413, '2023-07-03 14:08:07', 1, 36, 14, 1, 1),
(414, '2023-07-03 14:08:49', 1, 36, 14, 1, 1),
(415, '2023-07-03 14:11:37', 1, 36, 14, 1, 1),
(416, '2023-07-03 14:13:21', 1, 36, 14, 1, 1),
(417, '2023-07-03 14:14:25', 1, 36, 14, 1, 1),
(418, '2023-07-03 14:15:04', 1, 36, 14, 1, 1),
(419, '2023-07-03 14:16:59', 1, 36, 14, 1, 1),
(420, '2023-07-03 14:18:12', 1, 36, 14, 1, 1),
(421, '2023-07-04 05:47:09', 1, 36, 0, 1, 1),
(422, '2023-07-04 05:53:33', 1, 36, 0, 1, 1),
(423, '2023-07-04 05:55:40', 1, 36, 0, 1, 1),
(424, '2023-07-04 05:57:24', 1, 36, 0, 1, 1),
(425, '2023-07-04 05:58:02', 1, 36, 0, 1, 1),
(426, '2023-07-04 06:28:18', 1, 36, 0, 1, 1),
(427, '2023-07-04 07:03:41', 1, 36, 0, 1, 1),
(428, '2023-07-04 07:04:19', 1, 36, 0, 1, 1),
(429, '2023-07-04 07:05:16', 1, 36, 0, 1, 1),
(430, '2023-07-04 07:18:06', 1, 36, 0, 1, 1),
(431, '2023-07-04 07:20:02', 1, 36, 0, 1, 1),
(432, '2023-07-04 07:20:54', 1, 36, 0, 1, 1),
(433, '2023-07-04 07:22:45', 1, 36, 0, 1, 1),
(434, '2023-07-04 07:25:51', 1, 36, 0, 1, 1),
(435, '2023-07-04 07:28:02', 1, 36, 0, 1, 1),
(436, '2023-07-04 07:28:55', 1, 36, 0, 1, 1),
(437, '2023-07-04 07:29:49', 1, 36, 0, 1, 1),
(438, '2023-07-04 07:34:41', 1, 36, 0, 1, 1),
(439, '2023-07-04 07:37:58', 1, 36, 0, 1, 1),
(440, '2023-07-04 07:39:12', 1, 36, 0, 1, 1),
(441, '2023-07-04 07:52:36', 1, 36, 0, 1, 1),
(442, '2023-07-04 07:53:28', 1, 36, 0, 1, 1),
(443, '2023-07-04 07:54:16', 1, 36, 0, 1, 1),
(444, '2023-07-04 07:55:39', 1, 36, 0, 1, 1),
(445, '2023-07-04 07:56:45', 1, 36, 0, 1, 1),
(446, '2023-07-04 08:17:58', 1, 36, 0, 1, 1),
(447, '2023-07-04 08:20:50', 1, 36, 0, 1, 1),
(448, '2023-07-04 08:22:08', 1, 36, 0, 1, 1),
(449, '2023-07-04 09:18:49', 1, 36, 0, 1, 1),
(450, '2023-07-04 09:19:57', 1, 36, 0, 1, 1),
(451, '2023-07-04 09:23:22', 1, 36, 0, 1, 1),
(452, '2023-07-04 09:26:14', 1, 36, 0, 1, 1),
(453, '2023-07-04 09:28:50', 1, 36, 0, 1, 1),
(454, '2023-07-04 09:32:58', 1, 36, 0, 1, 1),
(455, '2023-07-04 09:52:52', 1, 36, 0, 1, 1),
(456, '2023-07-04 09:53:53', 1, 36, 0, 1, 1),
(457, '2023-07-04 09:54:41', 1, 36, 0, 1, 1),
(458, '2023-07-04 09:55:32', 1, 36, 0, 1, 1),
(459, '2023-07-04 09:56:05', 1, 36, 0, 1, 1),
(460, '2023-07-04 09:56:38', 1, 36, 0, 1, 1),
(461, '2023-07-04 10:00:01', 1, 36, 0, 1, 1),
(462, '2023-07-04 10:01:06', 1, 36, 0, 1, 1),
(463, '2023-07-04 10:04:11', 1, 36, 0, 1, 1),
(464, '2023-07-04 10:05:19', 1, 36, 0, 1, 1),
(465, '2023-07-04 10:05:58', 1, 36, 0, 1, 1),
(466, '2023-07-04 10:06:39', 1, 36, 0, 1, 1),
(467, '2023-07-04 10:08:11', 1, 36, 0, 1, 1),
(468, '2023-07-04 10:09:34', 1, 36, 0, 1, 1),
(469, '2023-07-04 10:10:11', 1, 36, 0, 1, 1),
(470, '2023-07-04 11:18:42', 1, 36, 0, 1, 1),
(471, '2023-07-04 11:19:53', 1, 36, 0, 1, 1),
(472, '2023-07-04 11:20:58', 1, 36, 0, 1, 1),
(473, '2023-07-04 11:21:50', 1, 30, 0, 1, 1),
(474, '2023-07-04 11:23:30', 1, 36, 0, 1, 1),
(475, '2023-07-04 11:30:00', 1, 36, 0, 1, 1),
(476, '2023-07-04 11:30:46', 1, 36, 0, 1, 1),
(477, '2023-07-04 11:30:47', 1, 36, 0, 1, 1),
(478, '2023-07-04 11:31:30', 1, 36, 0, 1, 1),
(479, '2023-07-04 11:32:52', 1, 36, 0, 1, 1),
(480, '2023-07-04 11:41:28', 1, 36, 0, 1, 1),
(481, '2023-07-04 11:42:18', 1, 36, 0, 1, 1),
(482, '2023-07-04 11:46:41', 1, 36, 0, 1, 1),
(483, '2023-07-04 11:47:38', 1, 36, 0, 1, 1),
(484, '2023-07-04 11:49:59', 1, 36, 0, 1, 1),
(485, '2023-07-04 12:01:39', 1, 36, 0, 1, 1),
(486, '2023-07-04 12:02:20', 1, 36, 0, 1, 1),
(487, '2023-07-04 12:03:15', 1, 36, 0, 1, 1),
(488, '2023-07-04 12:06:03', 1, 36, 0, 1, 1),
(489, '2023-07-04 12:09:50', 1, 36, 0, 1, 1),
(490, '2023-07-04 12:10:29', 1, 36, 0, 1, 1),
(491, '2023-07-04 12:11:40', 1, 36, 0, 1, 1),
(492, '2023-07-04 12:12:38', 1, 36, 0, 1, 1),
(493, '2023-07-04 12:13:59', 1, 36, 0, 1, 1),
(494, '2023-07-04 12:19:20', 1, 36, 0, 1, 1),
(495, '2023-07-04 12:33:56', 1, 36, 0, 1, 1),
(496, '2023-07-04 12:36:09', 1, 36, 0, 1, 1),
(497, '2023-07-04 12:36:57', 1, 36, 0, 1, 1),
(498, '2023-07-04 12:37:48', 1, 36, 0, 1, 1),
(499, '2023-07-04 12:38:44', 1, 36, 0, 1, 1),
(500, '2023-07-04 12:39:40', 1, 36, 0, 1, 1),
(501, '2023-07-04 12:41:14', 1, 36, 0, 1, 1),
(502, '2023-07-04 12:42:18', 1, 36, 0, 1, 1),
(503, '2023-07-04 12:43:37', 1, 36, 0, 1, 1),
(504, '2023-07-04 12:44:14', 1, 36, 0, 1, 1),
(505, '2023-07-04 12:45:21', 1, 36, 0, 1, 1),
(506, '2023-07-04 12:46:02', 1, 36, 0, 1, 1),
(507, '2023-07-04 12:46:32', 1, 36, 0, 1, 1),
(508, '2023-07-04 12:47:26', 1, 36, 0, 1, 1),
(509, '2023-07-04 12:48:45', 1, 36, 0, 1, 1),
(510, '2023-07-04 12:52:56', 1, 36, 0, 1, 1),
(511, '2023-07-04 12:53:36', 1, 36, 0, 1, 1),
(512, '2023-07-04 12:54:39', 1, 36, 0, 1, 1),
(513, '2023-07-04 12:58:16', 1, 36, 0, 1, 1),
(514, '2023-07-04 12:59:05', 1, 36, 0, 1, 1),
(515, '2023-07-04 12:59:43', 1, 36, 0, 1, 1),
(516, '2023-07-04 13:00:17', 1, 36, 0, 1, 1),
(517, '2023-07-04 13:02:40', 1, 36, 0, 1, 1),
(518, '2023-07-04 13:05:58', 1, 36, 0, 1, 1),
(519, '2023-07-04 13:07:40', 1, 36, 0, 1, 1),
(520, '2023-07-04 13:08:34', 1, 36, 0, 1, 1),
(521, '2023-07-04 13:09:37', 1, 36, 0, 1, 1),
(522, '2023-07-04 13:10:58', 1, 36, 0, 1, 1),
(523, '2023-07-04 13:34:05', 1, 36, 0, 1, 1),
(524, '2023-07-04 13:35:55', 1, 23, 0, 1, 1),
(525, '2023-07-04 13:44:40', 1, 36, 0, 1, 1),
(526, '2023-07-04 14:00:41', 1, 36, 0, 1, 1),
(527, '2023-07-04 14:02:52', 1, 36, 0, 1, 1),
(528, '2023-07-04 18:16:14', 1, 36, 0, 1, 1),
(529, '2023-07-04 18:55:07', 1, 36, 0, 1, 1),
(530, '2023-07-04 18:55:07', 1, 36, 0, 1, 1),
(531, '2023-07-04 19:27:19', 1, 36, 0, 1, 1),
(532, '2023-07-04 19:35:20', 1, 36, 0, 1, 1),
(533, '2023-07-04 20:47:00', 1, 36, 0, 1, 1),
(534, '2023-07-04 21:09:48', 1, 36, 0, 1, 1),
(535, '2023-07-04 21:29:53', 1, 36, 0, 1, 1),
(536, '2023-07-04 21:32:36', 1, 36, 0, 1, 1),
(537, '2023-07-04 21:34:42', 1, 36, 0, 1, 1),
(538, '2023-07-04 21:35:35', 1, 36, 0, 1, 1),
(539, '2023-07-04 21:45:40', 1, 36, 0, 1, 1),
(540, '2023-07-04 21:57:15', 1, 36, 0, 1, 1),
(541, '2023-07-04 21:59:25', 1, 36, 0, 1, 1),
(542, '2023-07-04 22:01:19', 1, 36, 0, 1, 1),
(543, '2023-07-04 22:03:30', 1, 36, 0, 1, 1),
(544, '2023-07-05 05:46:32', 1, 30, 0, 1, 1),
(545, '2023-07-05 05:46:42', 1, 23, 0, 1, 1),
(546, '2023-07-05 05:47:14', 1, 21, 0, 1, 1),
(547, '2023-07-05 06:00:01', 1, 36, 0, 1, 1),
(548, '2023-07-05 06:11:42', 1, 36, 0, 1, 1),
(549, '2023-07-05 06:13:37', 1, 36, 0, 1, 1),
(550, '2023-07-05 06:14:10', 1, 36, 0, 1, 1),
(551, '2023-07-05 06:19:47', 1, 36, 0, 1, 1),
(552, '2023-07-05 06:25:47', 1, 36, 0, 1, 1),
(553, '2023-07-05 06:26:53', 1, 36, 0, 1, 1),
(554, '2023-07-05 06:28:28', 1, 36, 0, 1, 1),
(555, '2023-07-05 06:29:29', 1, 36, 0, 1, 1),
(556, '2023-07-05 06:40:01', 1, 36, 0, 1, 1),
(557, '2023-07-05 06:41:51', 1, 36, 0, 1, 1),
(558, '2023-07-05 06:53:20', 1, 36, 0, 1, 1),
(559, '2023-07-05 06:57:16', 1, 36, 0, 1, 1),
(560, '2023-07-05 06:58:32', 1, 36, 0, 1, 1),
(561, '2023-07-05 07:09:09', 1, 36, 0, 1, 1),
(562, '2023-07-05 07:10:19', 1, 36, 0, 1, 1),
(563, '2023-07-05 07:11:38', 1, 36, 0, 1, 1),
(564, '2023-07-05 07:14:08', 1, 36, 0, 1, 1),
(565, '2023-07-05 07:15:23', 1, 36, 0, 1, 1),
(566, '2023-07-05 07:20:56', 1, 36, 0, 1, 1),
(567, '2023-07-05 07:22:42', 1, 36, 0, 1, 1),
(568, '2023-07-05 07:23:32', 1, 36, 0, 1, 1),
(569, '2023-07-05 07:27:01', 1, 36, 0, 1, 1),
(570, '2023-07-05 07:28:14', 1, 36, 0, 1, 1),
(571, '2023-07-05 07:31:09', 1, 36, 0, 1, 1),
(572, '2023-07-05 07:32:18', 1, 36, 0, 1, 1),
(573, '2023-07-05 07:33:02', 1, 36, 0, 1, 1),
(574, '2023-07-05 07:33:58', 1, 36, 0, 1, 1),
(575, '2023-07-05 07:52:31', 1, 36, 0, 1, 1),
(576, '2023-07-05 07:55:58', 1, 36, 0, 1, 1),
(577, '2023-07-05 07:57:49', 1, 36, 0, 1, 1),
(578, '2023-07-05 08:01:08', 1, 36, 0, 1, 1),
(579, '2023-07-05 08:02:58', 1, 36, 0, 1, 1),
(580, '2023-07-05 08:04:40', 1, 36, 0, 1, 1),
(581, '2023-07-05 08:05:34', 1, 36, 0, 1, 1),
(582, '2023-07-05 08:09:33', 1, 36, 0, 1, 1),
(583, '2023-07-05 08:11:50', 1, 36, 0, 1, 1),
(584, '2023-07-05 08:14:02', 1, 36, 0, 1, 1),
(585, '2023-07-05 08:17:27', 1, 36, 0, 1, 1),
(586, '2023-07-05 08:20:10', 1, 36, 0, 1, 1),
(587, '2023-07-05 08:25:34', 1, 36, 0, 1, 1),
(588, '2023-07-05 08:27:04', 1, 36, 0, 1, 1),
(589, '2023-07-05 08:36:32', 1, 36, 0, 1, 1),
(590, '2023-07-05 08:37:53', 1, 36, 0, 1, 1),
(591, '2023-07-05 08:38:47', 1, 36, 0, 1, 1),
(592, '2023-07-05 08:41:03', 1, 36, 0, 1, 1),
(593, '2023-07-05 08:42:06', 1, 36, 0, 1, 1),
(594, '2023-07-05 08:44:28', 1, 36, 0, 1, 1),
(595, '2023-07-05 08:45:20', 1, 36, 0, 1, 1),
(596, '2023-07-05 08:46:05', 1, 36, 0, 1, 1),
(597, '2023-07-05 08:49:20', 1, 36, 0, 1, 1),
(598, '2023-07-05 08:53:28', 1, 36, 0, 1, 1),
(599, '2023-07-05 08:54:47', 1, 36, 0, 1, 1),
(600, '2023-07-05 08:56:52', 1, 36, 0, 1, 1),
(601, '2023-07-05 08:57:59', 1, 36, 0, 1, 1),
(602, '2023-07-05 09:01:06', 1, 36, 0, 1, 1),
(603, '2023-07-05 09:08:20', 1, 36, 0, 1, 1),
(604, '2023-07-05 09:09:58', 1, 36, 0, 1, 1),
(605, '2023-07-05 09:12:18', 1, 36, 0, 1, 1),
(606, '2023-07-05 09:13:25', 1, 36, 0, 1, 1),
(607, '2023-07-05 09:16:14', 1, 36, 0, 1, 1),
(608, '2023-07-05 09:24:39', 1, 36, 0, 1, 1),
(609, '2023-07-05 09:30:34', 1, 36, 0, 1, 1),
(610, '2023-07-05 09:31:49', 1, 36, 0, 1, 1),
(611, '2023-07-05 09:35:12', 1, 36, 15, 1, 1),
(612, '2023-07-05 09:39:38', 1, 36, 15, 1, 1),
(613, '2023-07-05 09:42:32', 1, 36, 15, 1, 1),
(614, '2023-07-05 09:45:29', 1, 36, 15, 1, 1),
(615, '2023-07-05 09:52:25', 1, 36, 15, 1, 1),
(616, '2023-07-05 09:59:59', 1, 36, 15, 1, 1),
(617, '2023-07-05 10:35:47', 1, 36, 15, 1, 1),
(618, '2023-07-05 10:41:54', 1, 36, 15, 1, 1),
(619, '2023-07-05 10:48:17', 1, 36, 15, 1, 1),
(620, '2023-07-05 10:49:16', 1, 36, 15, 1, 1),
(621, '2023-07-05 10:50:49', 1, 36, 15, 1, 1),
(622, '2023-07-05 10:51:29', 1, 36, 15, 1, 1),
(623, '2023-07-05 10:53:16', 1, 36, 15, 1, 1),
(624, '2023-07-05 11:08:20', 1, 36, 15, 1, 1),
(625, '2023-07-05 11:14:24', 1, 36, 15, 1, 1),
(626, '2023-07-05 11:18:41', 1, 36, 15, 1, 1),
(627, '2023-07-05 11:20:43', 1, 36, 15, 1, 1),
(628, '2023-07-05 11:22:13', 1, 36, 15, 1, 1),
(629, '2023-07-05 11:23:27', 1, 36, 15, 1, 1),
(630, '2023-07-05 11:28:17', 1, 36, 15, 1, 1),
(631, '2023-07-05 11:32:08', 1, 36, 15, 1, 1),
(632, '2023-07-05 11:37:22', 1, 36, 15, 1, 1),
(633, '2023-07-05 11:38:40', 1, 36, 15, 1, 1),
(634, '2023-07-05 11:42:01', 1, 36, 15, 1, 1),
(635, '2023-07-05 11:52:41', 1, 36, 15, 1, 1),
(636, '2023-07-05 11:55:20', 1, 36, 15, 1, 1),
(637, '2023-07-05 12:01:42', 1, 36, 15, 1, 1),
(638, '2023-07-05 12:07:49', 1, 36, 15, 1, 1),
(639, '2023-07-05 12:10:04', 1, 36, 15, 1, 1),
(640, '2023-07-05 12:12:03', 1, 36, 15, 1, 1),
(641, '2023-07-05 12:14:13', 1, 36, 15, 1, 1),
(642, '2023-07-05 12:23:15', 1, 36, 15, 1, 1),
(643, '2023-07-05 12:24:46', 1, 36, 15, 1, 1),
(644, '2023-07-05 12:26:58', 1, 36, 15, 1, 1),
(645, '2023-07-05 12:29:05', 1, 36, 15, 1, 1),
(646, '2023-07-05 12:31:55', 1, 36, 15, 1, 1),
(647, '2023-07-05 12:33:58', 1, 36, 15, 1, 1),
(648, '2023-07-05 12:36:21', 1, 36, 15, 1, 1),
(649, '2023-07-05 12:39:39', 1, 36, 15, 1, 1),
(650, '2023-07-05 12:41:44', 1, 36, 15, 1, 1),
(651, '2023-07-05 12:43:59', 1, 36, 15, 1, 1),
(652, '2023-07-05 12:50:20', 1, 36, 15, 1, 1),
(653, '2023-07-05 12:51:34', 1, 36, 15, 1, 1),
(654, '2023-07-05 12:56:00', 1, 36, 15, 1, 1),
(655, '2023-07-05 12:58:07', 1, 36, 15, 1, 1),
(656, '2023-07-05 13:00:36', 1, 36, 15, 1, 1),
(657, '2023-07-05 13:06:47', 1, 36, 15, 1, 1),
(658, '2023-07-05 13:07:34', 1, 36, 15, 1, 1),
(659, '2023-07-05 13:11:05', 1, 36, 15, 1, 1),
(660, '2023-07-05 13:19:05', 1, 36, 15, 1, 1),
(661, '2023-07-05 13:30:34', 1, 36, 15, 1, 1),
(662, '2023-07-05 13:37:21', 1, 36, 15, 1, 1),
(663, '2023-07-05 13:45:56', 1, 36, 15, 1, 1),
(664, '2023-07-05 13:50:57', 1, 36, 15, 1, 1),
(665, '2023-07-05 13:52:36', 1, 36, 15, 1, 1),
(666, '2023-07-05 13:56:23', 1, 36, 15, 1, 1),
(667, '2023-07-05 14:00:26', 1, 23, 15, 1, 1),
(668, '2023-07-05 14:01:07', 1, 30, 15, 1, 1),
(669, '2023-07-05 14:02:26', 1, 27, 15, 1, 1),
(670, '2023-07-05 17:17:53', 1, 36, 0, 1, 1),
(671, '2023-07-05 17:58:54', 1, 23, 17, 1, 1),
(672, '2023-07-05 17:59:10', 1, 28, 17, 1, 1),
(673, '2023-07-06 07:12:30', 1, 36, 0, 1, 1),
(674, '2023-07-06 09:22:10', 1, 36, 18, 1, 1),
(675, '2023-07-06 09:22:42', 1, 30, 18, 1, 1),
(676, '2023-07-06 17:46:10', 1, 36, 0, 1, 1),
(677, '2023-07-07 18:00:59', 1, 36, 0, 1, 1),
(678, '2023-07-11 15:52:26', 1, 36, 0, 1, 1),
(679, '2023-07-11 15:56:57', 1, 30, 0, 1, 1),
(680, '2023-07-16 13:12:56', 1, 20, 0, 1, 1),
(681, '2023-07-16 13:13:14', 1, 36, 23, 1, 1),
(682, '2023-07-16 14:34:49', 1, 26, 23, 1, 1),
(683, '2023-07-17 05:59:40', 1, 36, 0, 1, 1),
(684, '2023-07-19 13:21:58', 4, 30, 1, 0, 1),
(685, '2023-07-19 13:38:42', 4, 30, 1, 0, 1),
(686, '2023-07-20 05:51:34', 1, 30, 1, 0, 1),
(687, '2023-07-20 05:52:36', 1, 36, 1, 0, 1),
(688, '2023-07-20 05:52:55', 4, 36, 1, 0, 1),
(689, '2023-07-20 13:06:48', 1, 28, 0, 1, 1),
(690, '2023-07-20 14:34:06', 1, 27, 0, 1, 1),
(691, '2023-07-20 18:15:24', 1, 36, 27, 1, 1),
(692, '2023-07-20 18:15:39', 4, 28, 27, 1, 1),
(693, '2023-07-20 18:19:54', 4, 30, 27, 1, 1),
(694, '2023-07-20 18:20:10', 4, 30, 27, 1, 1),
(695, '2023-07-20 21:19:34', 4, 19, 28, 1, 1),
(696, '2023-07-20 21:26:34', 1, 36, 28, 1, 1),
(697, '2023-07-21 06:40:57', 1, 36, 29, 1, 1),
(698, '2023-07-21 06:41:11', 4, 30, 29, 1, 1),
(699, '2023-07-21 13:09:20', 1, 14, 0, 1, 1),
(700, '2023-07-21 13:55:24', 1, 36, 0, 1, 1),
(701, '2023-07-21 14:22:21', 1, 30, 0, 1, 1),
(702, '2023-07-22 14:20:41', 1, 42, 0, 1, 1),
(703, '2023-07-24 07:48:05', 1, 36, 1, 0, 1),
(704, '2023-07-24 07:48:17', 5, 36, 1, 0, 1),
(705, '2023-07-24 07:49:26', 5, 36, 1, 0, 1),
(706, '2023-07-24 15:40:35', 4, 20, 37, 1, 1),
(707, '2023-07-24 18:03:18', 1, 30, 38, 1, 1),
(708, '2023-07-24 18:03:37', 4, 30, 38, 1, 1),
(709, '2023-07-24 18:05:23', 1, 42, 38, 1, 1),
(710, '2023-07-25 06:34:47', 5, 27, 1, 0, 1),
(711, '2023-07-25 06:36:16', 5, 27, 1, 0, 1),
(712, '2023-07-25 06:37:46', 5, 27, 1, 0, 1),
(713, '2023-07-25 06:37:50', 5, 26, 1, 0, 1),
(714, '2023-07-25 06:37:51', 5, 26, 1, 0, 1),
(715, '2023-07-25 06:37:52', 5, 26, 1, 0, 1),
(716, '2023-07-25 06:45:10', 5, 27, 1, 0, 1),
(717, '2023-07-25 06:48:00', 5, 28, 1, 0, 1),
(718, '2023-07-25 06:50:43', 5, 27, 1, 0, 1),
(719, '2023-07-25 06:56:18', 5, 27, 1, 0, 1),
(720, '2023-07-25 06:58:40', 5, 27, 1, 0, 1),
(721, '2023-07-25 07:04:37', 5, 28, 1, 0, 1),
(722, '2023-07-25 07:39:45', 5, 28, 1, 0, 1),
(723, '2023-07-25 07:39:46', 5, 27, 1, 0, 1),
(724, '2023-07-25 07:39:46', 5, 26, 1, 0, 1),
(725, '2023-07-25 07:39:47', 5, 25, 1, 0, 1),
(726, '2023-07-25 07:39:48', 5, 24, 1, 0, 1),
(727, '2023-07-25 07:39:48', 5, 23, 1, 0, 1),
(728, '2023-07-25 07:39:49', 5, 19, 1, 0, 1),
(729, '2023-07-25 07:39:50', 5, 14, 1, 0, 1),
(730, '2023-07-25 07:40:12', 5, 28, 1, 0, 1),
(731, '2023-07-25 07:40:13', 5, 27, 1, 0, 1),
(732, '2023-07-25 07:40:14', 5, 26, 1, 0, 1),
(733, '2023-07-25 07:40:14', 5, 25, 1, 0, 1),
(734, '2023-07-25 07:40:15', 5, 24, 1, 0, 1),
(735, '2023-07-25 07:40:16', 5, 23, 1, 0, 1),
(736, '2023-07-25 07:40:16', 5, 19, 1, 0, 1),
(737, '2023-07-25 07:40:17', 5, 14, 1, 0, 1),
(738, '2023-07-25 07:40:24', 5, 28, 1, 0, 1),
(739, '2023-07-25 07:40:40', 5, 28, 1, 0, 1),
(740, '2023-07-25 07:40:40', 5, 27, 1, 0, 1),
(741, '2023-07-25 07:40:41', 5, 26, 1, 0, 1),
(742, '2023-07-25 07:40:41', 5, 25, 1, 0, 1),
(743, '2023-07-25 07:40:42', 5, 24, 1, 0, 1),
(744, '2023-07-25 07:40:43', 5, 23, 1, 0, 1),
(745, '2023-07-25 07:40:43', 5, 19, 1, 0, 1),
(746, '2023-07-25 07:40:44', 5, 14, 1, 0, 1),
(747, '2023-07-25 07:40:45', 5, 27, 1, 0, 1),
(748, '2023-07-25 07:40:48', 5, 27, 1, 0, 1),
(749, '2023-07-25 07:40:49', 5, 28, 1, 0, 1),
(750, '2023-07-25 07:40:56', 5, 28, 1, 0, 1),
(751, '2023-07-25 07:40:56', 5, 27, 1, 0, 1),
(752, '2023-07-25 07:40:57', 5, 26, 1, 0, 1),
(753, '2023-07-25 07:40:58', 5, 25, 1, 0, 1),
(754, '2023-07-25 07:40:58', 5, 24, 1, 0, 1),
(755, '2023-07-25 07:40:59', 5, 23, 1, 0, 1),
(756, '2023-07-25 07:40:59', 5, 19, 1, 0, 1),
(757, '2023-07-25 07:41:00', 5, 14, 1, 0, 1),
(758, '2023-07-25 07:46:45', 5, 28, 1, 0, 1),
(759, '2023-07-25 07:46:46', 5, 27, 1, 0, 1),
(760, '2023-07-25 07:46:46', 5, 26, 1, 0, 1),
(761, '2023-07-25 07:46:47', 5, 25, 1, 0, 1),
(762, '2023-07-25 07:46:48', 5, 24, 1, 0, 1),
(763, '2023-07-25 07:46:48', 5, 23, 1, 0, 1),
(764, '2023-07-25 07:46:49', 5, 19, 1, 0, 1),
(765, '2023-07-25 07:46:50', 5, 14, 1, 0, 1),
(766, '2023-07-25 07:47:14', 5, 28, 1, 0, 1),
(767, '2023-07-25 07:47:15', 5, 27, 1, 0, 1),
(768, '2023-07-25 07:47:15', 5, 26, 1, 0, 1),
(769, '2023-07-25 07:47:16', 5, 25, 1, 0, 1),
(770, '2023-07-25 07:47:17', 5, 24, 1, 0, 1),
(771, '2023-07-25 07:47:17', 5, 23, 1, 0, 1),
(772, '2023-07-25 07:47:18', 5, 19, 1, 0, 1),
(773, '2023-07-25 07:47:19', 5, 14, 1, 0, 1),
(774, '2023-07-25 07:47:29', 5, 28, 1, 0, 1),
(775, '2023-07-25 07:47:41', 5, 28, 1, 0, 1),
(776, '2023-07-25 07:47:41', 5, 27, 1, 0, 1),
(777, '2023-07-25 07:47:42', 5, 26, 1, 0, 1),
(778, '2023-07-25 07:47:43', 5, 25, 1, 0, 1),
(779, '2023-07-25 07:47:44', 5, 24, 1, 0, 1),
(780, '2023-07-25 07:47:44', 5, 23, 1, 0, 1),
(781, '2023-07-25 07:47:45', 5, 19, 1, 0, 1),
(782, '2023-07-25 07:47:46', 5, 14, 1, 0, 1),
(783, '2023-07-25 07:47:46', 5, 27, 1, 0, 1),
(784, '2023-07-25 07:47:49', 5, 27, 1, 0, 1),
(785, '2023-07-25 07:47:56', 5, 28, 1, 0, 1),
(786, '2023-07-25 07:47:57', 5, 27, 1, 0, 1),
(787, '2023-07-25 07:47:58', 5, 26, 1, 0, 1),
(788, '2023-07-25 07:47:58', 5, 25, 1, 0, 1),
(789, '2023-07-25 07:47:59', 5, 24, 1, 0, 1),
(790, '2023-07-25 07:48:00', 5, 23, 1, 0, 1),
(791, '2023-07-25 07:48:00', 5, 19, 1, 0, 1),
(792, '2023-07-25 07:48:01', 5, 14, 1, 0, 1),
(793, '2023-07-25 07:51:33', 5, 28, 1, 0, 1),
(794, '2023-07-25 07:51:33', 5, 27, 1, 0, 1),
(795, '2023-07-25 07:51:34', 5, 26, 1, 0, 1),
(796, '2023-07-25 07:51:35', 5, 25, 1, 0, 1),
(797, '2023-07-25 07:51:35', 5, 24, 1, 0, 1),
(798, '2023-07-25 07:51:36', 5, 23, 1, 0, 1),
(799, '2023-07-25 07:51:37', 5, 19, 1, 0, 1),
(800, '2023-07-25 07:51:38', 5, 14, 1, 0, 1),
(801, '2023-07-25 07:51:56', 5, 28, 1, 0, 1),
(802, '2023-07-25 07:51:57', 5, 27, 1, 0, 1),
(803, '2023-07-25 07:51:57', 5, 26, 1, 0, 1),
(804, '2023-07-25 07:51:58', 5, 25, 1, 0, 1),
(805, '2023-07-25 07:51:59', 5, 24, 1, 0, 1),
(806, '2023-07-25 07:51:59', 5, 23, 1, 0, 1),
(807, '2023-07-25 07:52:01', 5, 19, 1, 0, 1),
(808, '2023-07-25 07:52:02', 5, 14, 1, 0, 1),
(809, '2023-07-25 07:52:05', 5, 28, 1, 0, 1),
(810, '2023-07-25 07:52:06', 5, 27, 1, 0, 1),
(811, '2023-07-25 07:52:07', 5, 26, 1, 0, 1),
(812, '2023-07-25 07:52:07', 5, 25, 1, 0, 1),
(813, '2023-07-25 07:52:08', 5, 24, 1, 0, 1),
(814, '2023-07-25 07:52:09', 5, 23, 1, 0, 1),
(815, '2023-07-25 07:52:09', 5, 19, 1, 0, 1),
(816, '2023-07-25 07:52:10', 5, 14, 1, 0, 1),
(817, '2023-07-25 07:52:11', 5, 28, 1, 0, 1),
(818, '2023-07-25 07:52:19', 5, 28, 1, 0, 1),
(819, '2023-07-25 07:52:20', 5, 27, 1, 0, 1),
(820, '2023-07-25 07:52:21', 5, 26, 1, 0, 1),
(821, '2023-07-25 07:52:21', 5, 25, 1, 0, 1),
(822, '2023-07-25 07:52:22', 5, 24, 1, 0, 1),
(823, '2023-07-25 07:52:22', 5, 23, 1, 0, 1),
(824, '2023-07-25 07:52:23', 5, 19, 1, 0, 1),
(825, '2023-07-25 07:52:24', 5, 14, 1, 0, 1),
(826, '2023-07-25 07:56:28', 5, 27, 1, 0, 1),
(827, '2023-07-25 08:37:16', 5, 28, 1, 0, 1),
(828, '2023-07-25 09:28:16', 5, 26, 1, 0, 1),
(829, '2023-07-25 09:28:29', 5, 27, 1, 0, 1),
(830, '2023-07-25 09:28:51', 5, 28, 1, 0, 1),
(831, '2023-07-25 09:32:39', 5, 27, 1, 0, 1),
(832, '2023-07-25 09:32:51', 5, 27, 1, 0, 1),
(833, '2023-07-25 19:04:31', 1, 42, 1, 0, 1),
(834, '2023-07-25 19:06:11', 4, 42, 1, 0, 1),
(835, '2023-07-25 19:11:31', 1, 36, 1, 0, 1),
(836, '2023-07-25 20:08:39', 1, 42, 0, 1, 1),
(837, '2023-07-26 06:37:23', 1, 36, 0, 1, 1),
(838, '2023-07-26 06:39:39', 1, 36, 0, 1, 1),
(839, '2023-07-26 06:40:00', 1, 23, 0, 1, 1),
(840, '2023-07-26 07:36:00', 1, 28, 0, 1, 1),
(841, '2023-07-26 07:36:11', 1, 36, 0, 1, 1),
(842, '2023-07-26 07:36:18', 1, 23, 0, 1, 1),
(843, '2023-07-26 07:38:38', 1, 36, 0, 1, 1),
(844, '2023-07-26 07:49:45', 1, 28, 0, 1, 1),
(845, '2023-07-26 07:52:34', 1, 36, 0, 1, 1),
(846, '2023-07-26 08:03:34', 1, 36, 0, 1, 1),
(847, '2023-07-26 08:05:10', 1, 36, 0, 1, 1),
(848, '2023-07-26 08:10:18', 1, 36, 0, 1, 1),
(849, '2023-07-26 08:24:37', 1, 23, 0, 1, 1),
(850, '2023-07-26 08:33:20', 1, 36, 0, 1, 1),
(851, '2023-07-26 08:41:09', 1, 28, 0, 1, 1),
(852, '2023-07-26 09:53:26', 1, 30, 0, 1, 1),
(853, '2023-07-26 13:03:38', 1, 36, 53, 1, 1),
(854, '2023-07-26 13:05:25', 4, 36, 53, 1, 1),
(855, '2023-07-26 13:09:47', 1, 28, 2, 0, 1),
(856, '2023-07-26 13:09:53', 4, 28, 2, 0, 1),
(857, '2023-07-26 13:20:25', 4, 27, 55, 1, 1),
(858, '2023-07-26 18:07:33', 4, 28, 56, 1, 1),
(859, '2023-07-26 18:14:58', 4, 30, 56, 1, 1),
(860, '2023-07-26 19:36:51', 1, 30, 56, 1, 1),
(861, '2023-07-26 19:37:17', 4, 30, 56, 1, 1),
(862, '2023-07-26 19:58:43', 1, 28, 56, 1, 1),
(863, '2023-07-26 19:58:52', 4, 28, 56, 1, 1),
(864, '2023-07-26 20:01:17', 4, 28, 1, 0, 1),
(865, '2023-07-27 05:05:14', 4, 23, 57, 1, 1),
(866, '2023-07-27 06:16:51', 4, 30, 57, 1, 1),
(867, '2023-07-27 06:16:58', 1, 30, 57, 1, 1),
(868, '2023-07-27 06:28:56', 1, 23, 57, 1, 1),
(869, '2023-07-27 06:29:01', 4, 23, 57, 1, 1),
(870, '2023-07-27 07:16:55', 1, 23, 57, 1, 1),
(871, '2023-07-27 08:48:55', 4, 23, 57, 1, 1),
(872, '2023-07-27 20:12:40', 4, 42, 58, 1, 1),
(873, '2023-07-30 14:34:09', 1, 30, 0, 1, 1),
(874, '2023-07-30 14:43:35', 4, 30, 59, 1, 1),
(875, '2023-07-30 20:27:15', 1, 30, 0, 1, 1),
(876, '2023-07-30 20:27:43', 1, 36, 0, 1, 1),
(877, '2023-07-30 20:30:10', 1, 42, 0, 1, 1),
(878, '2023-08-01 06:38:23', 1, 23, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Dumping data for table `report_viewed_product_aggregated_daily`
--

INSERT INTO `report_viewed_product_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2023-06-14', 1, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', '29.6700', 1, 2),
(2, '2023-06-14', 1, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', '15.5600', 6, 1),
(3, '2023-06-15', 1, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', '15.5600', 4, 1),
(4, '2023-06-15', 1, 22, 'OV - OFIX OIL COMP. TEE 10MM', '21.0200', 1, 2),
(5, '2023-06-19', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 2, 4),
(6, '2023-06-19', 1, 21, 'ECA - MANOMETER 1/4', '13.3000', 3, 2),
(7, '2023-06-19', 1, 22, 'OV - OFIX OIL COMP. TEE 10MM', '21.0200', 2, 3),
(8, '2023-06-19', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 4, 1),
(9, '2023-06-20', 1, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', '15.5600', 2, 1),
(10, '2023-06-20', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 1, 2),
(11, '2023-06-20', 1, 22, 'OV - OFIX OIL COMP. TEE 10MM', '21.0200', 1, 3),
(12, '2023-06-21', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 2, 1),
(13, '2023-06-26', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 29, 1),
(14, '2023-06-27', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 1, 2),
(15, '2023-06-27', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 3),
(16, '2023-06-27', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 164, 1),
(17, '2023-07-01', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 11, 1),
(18, '2023-07-02', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 2),
(19, '2023-07-02', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 36, 1),
(20, '2023-07-03', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 2, 3),
(21, '2023-07-03', 1, 27, 'HEAVY-ANCHOR-RAWL-BOLT', '0.4000', 5, 2),
(22, '2023-07-03', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 2, 4),
(23, '2023-07-03', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 2, 5),
(24, '2023-07-03', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 137, 1),
(25, '2023-07-04', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 1, 3),
(26, '2023-07-04', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 2),
(27, '2023-07-04', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 121, 1),
(28, '2023-07-05', 1, 21, 'ECA - MANOMETER 1/4', '13.3000', 1, 4),
(29, '2023-07-05', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 3, 2),
(30, '2023-07-05', 1, 27, 'HEAVY-ANCHOR-RAWL-BOLT', '0.4000', 1, 5),
(31, '2023-07-05', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 1, 6),
(32, '2023-07-05', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 2, 3),
(33, '2023-07-05', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 121, 1),
(34, '2023-07-06', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 2),
(35, '2023-07-06', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 3, 1),
(36, '2023-07-07', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 1),
(37, '2023-07-11', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 1),
(38, '2023-07-11', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 2),
(39, '2023-07-16', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 1, 1),
(40, '2023-07-16', 1, 26, 'TWIN-INSULATED-SOLAR-HOSE', '21.2900', 1, 2),
(41, '2023-07-16', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 3),
(42, '2023-07-17', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 1),
(43, '2023-07-20', 1, 27, 'HEAVY-ANCHOR-RAWL-BOLT', '0.4000', 1, 3),
(44, '2023-07-20', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 1, 4),
(45, '2023-07-20', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 2),
(46, '2023-07-20', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 3, 1),
(47, '2023-07-21', 1, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', '29.6700', 1, 2),
(48, '2023-07-21', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 3),
(49, '2023-07-21', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 2, 1),
(50, '2023-07-22', 1, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', '54.4500', 1, 1),
(51, '2023-07-24', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 3),
(52, '2023-07-24', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 1),
(53, '2023-07-24', 1, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', '54.4500', 1, 2),
(54, '2023-07-25', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 1, 2),
(55, '2023-07-25', 1, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', '54.4500', 2, 1),
(56, '2023-07-26', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 3, 3),
(57, '2023-07-26', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 5, 2),
(58, '2023-07-26', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 2, 4),
(59, '2023-07-26', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 10, 1),
(60, '2023-07-27', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 2, 1),
(61, '2023-07-27', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Dumping data for table `report_viewed_product_aggregated_monthly`
--

INSERT INTO `report_viewed_product_aggregated_monthly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2023-06-01', 1, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', '15.5600', 12, 2),
(2, '2023-06-01', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 5, 3),
(3, '2023-06-01', 1, 22, 'OV - OFIX OIL COMP. TEE 10MM', '21.0200', 4, 4),
(4, '2023-06-01', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 3, 5),
(5, '2023-06-01', 1, 21, 'ECA - MANOMETER 1/4', '13.3000', 3, 7),
(6, '2023-06-01', 1, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', '29.6700', 1, 8),
(7, '2023-06-01', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 3, 6),
(8, '2023-06-01', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 193, 1),
(9, '2023-07-01', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 450, 1),
(10, '2023-07-01', 1, 27, 'HEAVY-ANCHOR-RAWL-BOLT', '0.4000', 7, 5),
(11, '2023-07-01', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 14, 2),
(12, '2023-07-01', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 9, 4),
(13, '2023-07-01', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 11, 3),
(14, '2023-07-01', 1, 21, 'ECA - MANOMETER 1/4', '13.3000', 1, 8),
(15, '2023-07-01', 1, 26, 'TWIN-INSULATED-SOLAR-HOSE', '21.2900', 1, 7),
(16, '2023-07-01', 1, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', '29.6700', 1, 9),
(17, '2023-07-01', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 1, 10),
(18, '2023-07-01', 1, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', '54.4500', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Dumping data for table `report_viewed_product_aggregated_yearly`
--

INSERT INTO `report_viewed_product_aggregated_yearly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2023-01-01', 1, 19, 'TG - TG600 LOW PRESSURE SWITCH 0.5BAR 1/4', '15.5600', 12, 4),
(2, '2023-01-01', 1, 23, 'OV - NR.4 METAL CABINET 120x76x11.5', '292.1100', 16, 3),
(3, '2023-01-01', 1, 22, 'OV - OFIX OIL COMP. TEE 10MM', '21.0200', 4, 10),
(4, '2023-01-01', 1, 20, 'SPIROTECH - AB050/008 SPIROTOP SOLAR AAV1/2\"', '149.2400', 4, 7),
(5, '2023-01-01', 1, 21, 'ECA - MANOMETER 1/4', '13.3000', 4, 9),
(6, '2023-01-01', 1, 14, 'OV - MECHANICAL LEVEL INDICATOR 1\"1/2', '29.6700', 2, 11),
(7, '2023-01-01', 1, 30, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', '612.4300', 17, 2),
(8, '2023-01-01', 1, 36, 'OV - MULTIDIS SF TOPMETER', '0.0000', 643, 1),
(9, '2023-01-01', 1, 27, 'HEAVY-ANCHOR-RAWL-BOLT', '0.4000', 7, 6),
(10, '2023-01-01', 1, 28, '5543-LIQUID-SEALENT', '3.7800', 9, 5),
(11, '2023-01-01', 1, 26, 'TWIN-INSULATED-SOLAR-HOSE', '21.2900', 1, 12),
(12, '2023-01-01', 1, 42, 'EVOLUTION - EV30FM CONDENSING BOILER 30kW', '54.4500', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 2, NULL, 19, 1, '2023-06-14 12:38:31'),
(2, 3, NULL, 14, 1, '2023-06-14 15:15:22'),
(3, 3, NULL, 19, 1, '2023-06-14 15:15:33'),
(4, NULL, NULL, 19, 1, '2023-06-15 07:50:48'),
(5, 4, NULL, 19, 1, '2023-06-15 10:40:43'),
(6, 5, NULL, 19, 1, '2023-06-15 13:04:53'),
(7, 6, NULL, 22, 1, '2023-06-15 16:24:03'),
(8, NULL, NULL, 20, 1, '2023-06-19 12:18:13'),
(9, NULL, NULL, 21, 1, '2023-06-19 12:18:14'),
(10, NULL, NULL, 20, 1, '2023-06-19 12:40:33'),
(11, NULL, NULL, 22, 1, '2023-06-19 12:44:40'),
(12, NULL, NULL, 23, 1, '2023-06-19 13:01:07'),
(13, NULL, NULL, 21, 1, '2023-06-19 13:18:13'),
(14, 7, NULL, 23, 1, '2023-06-19 16:36:40'),
(15, NULL, NULL, 21, 1, '2023-06-19 18:04:28'),
(16, NULL, NULL, 23, 1, '2023-06-19 18:28:27'),
(17, NULL, NULL, 22, 1, '2023-06-19 18:41:39'),
(18, NULL, NULL, 23, 1, '2023-06-19 19:05:29'),
(19, 8, NULL, 20, 1, '2023-06-20 04:40:32'),
(20, 8, NULL, 22, 1, '2023-06-20 09:27:38'),
(21, NULL, NULL, 19, 1, '2023-06-20 15:49:27'),
(22, NULL, NULL, 19, 1, '2023-06-20 15:49:28'),
(23, NULL, NULL, 30, 1, '2023-06-21 17:47:28'),
(24, NULL, NULL, 30, 1, '2023-06-21 20:35:46'),
(25, 11, NULL, 36, 1, '2023-06-26 13:16:48'),
(26, NULL, NULL, 36, 1, '2023-06-26 17:27:15'),
(27, NULL, NULL, 36, 1, '2023-06-26 17:42:28'),
(28, NULL, NULL, 36, 1, '2023-06-26 17:44:06'),
(29, NULL, NULL, 36, 1, '2023-06-26 17:54:23'),
(30, NULL, NULL, 36, 1, '2023-06-26 18:06:04'),
(31, NULL, NULL, 36, 1, '2023-06-26 18:15:44'),
(32, 12, NULL, 36, 1, '2023-06-26 18:32:42'),
(52, NULL, NULL, 36, 1, '2023-06-26 20:19:33'),
(53, NULL, NULL, 36, 1, '2023-06-27 05:28:29'),
(54, NULL, NULL, 36, 1, '2023-06-27 05:32:47'),
(55, NULL, NULL, 36, 1, '2023-06-27 05:34:05'),
(56, NULL, NULL, 36, 1, '2023-06-27 05:34:49'),
(57, NULL, NULL, 36, 1, '2023-06-27 05:35:28'),
(58, NULL, NULL, 36, 1, '2023-06-27 05:40:01'),
(59, NULL, NULL, 36, 1, '2023-06-27 05:40:50'),
(60, NULL, NULL, 36, 1, '2023-06-27 05:41:31'),
(61, NULL, NULL, 36, 1, '2023-06-27 05:42:13'),
(62, NULL, NULL, 36, 1, '2023-06-27 05:42:46'),
(63, NULL, NULL, 36, 1, '2023-06-27 05:44:21'),
(64, NULL, NULL, 36, 1, '2023-06-27 05:45:03'),
(65, NULL, NULL, 36, 1, '2023-06-27 05:50:15'),
(66, NULL, NULL, 36, 1, '2023-06-27 05:51:17'),
(67, NULL, NULL, 36, 1, '2023-06-27 05:55:36'),
(68, NULL, NULL, 36, 1, '2023-06-27 05:56:47'),
(69, NULL, NULL, 36, 1, '2023-06-27 05:58:14'),
(70, NULL, NULL, 36, 1, '2023-06-27 06:11:12'),
(71, NULL, NULL, 36, 1, '2023-06-27 06:12:50'),
(72, NULL, NULL, 36, 1, '2023-06-27 06:16:14'),
(73, NULL, NULL, 36, 1, '2023-06-27 06:16:50'),
(74, NULL, NULL, 36, 1, '2023-06-27 06:17:48'),
(75, NULL, NULL, 36, 1, '2023-06-27 06:23:44'),
(76, NULL, NULL, 36, 1, '2023-06-27 06:31:00'),
(77, NULL, NULL, 36, 1, '2023-06-27 06:33:30'),
(78, NULL, NULL, 36, 1, '2023-06-27 06:40:41'),
(79, NULL, NULL, 36, 1, '2023-06-27 06:42:33'),
(80, NULL, NULL, 36, 1, '2023-06-27 07:15:09'),
(81, NULL, NULL, 36, 1, '2023-06-27 07:16:06'),
(82, NULL, NULL, 36, 1, '2023-06-27 07:22:37'),
(83, NULL, NULL, 36, 1, '2023-06-27 07:23:20'),
(84, NULL, NULL, 36, 1, '2023-06-27 07:25:16'),
(85, NULL, NULL, 36, 1, '2023-06-27 07:26:23'),
(86, NULL, NULL, 36, 1, '2023-06-27 07:27:16'),
(87, NULL, NULL, 36, 1, '2023-06-27 07:30:01'),
(88, NULL, NULL, 36, 1, '2023-06-27 07:31:39'),
(89, NULL, NULL, 36, 1, '2023-06-27 07:32:08'),
(90, NULL, NULL, 36, 1, '2023-06-27 07:37:08'),
(91, NULL, NULL, 36, 1, '2023-06-27 07:37:41'),
(92, NULL, NULL, 36, 1, '2023-06-27 07:38:30'),
(93, NULL, NULL, 36, 1, '2023-06-27 07:39:00'),
(94, NULL, NULL, 36, 1, '2023-06-27 07:40:59'),
(95, NULL, NULL, 36, 1, '2023-06-27 07:42:53'),
(96, NULL, NULL, 36, 1, '2023-06-27 07:46:29'),
(97, NULL, NULL, 36, 1, '2023-06-27 07:47:44'),
(98, NULL, NULL, 36, 1, '2023-06-27 07:50:12'),
(99, NULL, NULL, 36, 1, '2023-06-27 07:51:19'),
(100, NULL, NULL, 36, 1, '2023-06-27 07:52:51'),
(101, NULL, NULL, 36, 1, '2023-06-27 07:53:34'),
(102, NULL, NULL, 36, 1, '2023-06-27 07:56:20'),
(103, NULL, NULL, 36, 1, '2023-06-27 07:58:36'),
(104, NULL, NULL, 36, 1, '2023-06-27 08:02:53'),
(105, NULL, NULL, 36, 1, '2023-06-27 08:03:39'),
(106, NULL, NULL, 36, 1, '2023-06-27 08:04:27'),
(107, NULL, NULL, 36, 1, '2023-06-27 08:05:01'),
(108, NULL, NULL, 36, 1, '2023-06-27 08:06:01'),
(109, NULL, NULL, 36, 1, '2023-06-27 08:06:34'),
(110, NULL, NULL, 36, 1, '2023-06-27 08:07:09'),
(111, NULL, NULL, 36, 1, '2023-06-27 08:07:50'),
(112, NULL, NULL, 36, 1, '2023-06-27 08:08:25'),
(113, NULL, NULL, 36, 1, '2023-06-27 08:09:33'),
(114, NULL, NULL, 36, 1, '2023-06-27 08:10:21'),
(115, NULL, NULL, 36, 1, '2023-06-27 08:10:55'),
(116, NULL, NULL, 36, 1, '2023-06-27 08:11:36'),
(117, NULL, NULL, 36, 1, '2023-06-27 08:12:10'),
(118, NULL, NULL, 36, 1, '2023-06-27 08:12:43'),
(119, NULL, NULL, 36, 1, '2023-06-27 08:13:21'),
(120, NULL, NULL, 36, 1, '2023-06-27 08:14:42'),
(121, NULL, NULL, 36, 1, '2023-06-27 08:18:15'),
(122, NULL, NULL, 36, 1, '2023-06-27 08:21:06'),
(123, NULL, NULL, 36, 1, '2023-06-27 08:21:41'),
(124, NULL, NULL, 36, 1, '2023-06-27 08:23:41'),
(125, NULL, NULL, 36, 1, '2023-06-27 08:25:57'),
(126, NULL, NULL, 36, 1, '2023-06-27 08:30:35'),
(127, NULL, NULL, 36, 1, '2023-06-27 08:31:22'),
(128, NULL, NULL, 36, 1, '2023-06-27 08:33:29'),
(129, NULL, NULL, 36, 1, '2023-06-27 08:37:15'),
(130, NULL, NULL, 36, 1, '2023-06-27 08:40:10'),
(131, NULL, NULL, 36, 1, '2023-06-27 08:43:01'),
(132, NULL, NULL, 36, 1, '2023-06-27 08:44:04'),
(133, NULL, NULL, 36, 1, '2023-06-27 08:45:14'),
(134, NULL, NULL, 36, 1, '2023-06-27 08:47:12'),
(135, NULL, NULL, 36, 1, '2023-06-27 08:47:47'),
(136, NULL, NULL, 36, 1, '2023-06-27 08:49:48'),
(137, NULL, NULL, 36, 1, '2023-06-27 08:50:44'),
(138, NULL, NULL, 36, 1, '2023-06-27 08:58:04'),
(139, NULL, NULL, 36, 1, '2023-06-27 08:58:47'),
(140, NULL, NULL, 36, 1, '2023-06-27 08:59:42'),
(141, NULL, NULL, 36, 1, '2023-06-27 09:00:54'),
(142, NULL, NULL, 36, 1, '2023-06-27 09:07:43'),
(143, NULL, NULL, 36, 1, '2023-06-27 09:09:20'),
(144, NULL, NULL, 36, 1, '2023-06-27 09:11:41'),
(145, NULL, NULL, 36, 1, '2023-06-27 09:12:38'),
(146, NULL, NULL, 36, 1, '2023-06-27 09:13:30'),
(147, NULL, NULL, 36, 1, '2023-06-27 09:14:55'),
(148, NULL, NULL, 36, 1, '2023-06-27 09:31:45'),
(149, NULL, NULL, 36, 1, '2023-06-27 09:39:57'),
(150, NULL, NULL, 36, 1, '2023-06-27 09:41:36'),
(151, NULL, NULL, 36, 1, '2023-06-27 09:42:10'),
(152, NULL, NULL, 36, 1, '2023-06-27 09:45:01'),
(153, NULL, NULL, 36, 1, '2023-06-27 09:46:21'),
(154, NULL, NULL, 36, 1, '2023-06-27 09:56:35'),
(155, NULL, NULL, 36, 1, '2023-06-27 09:57:36'),
(156, NULL, NULL, 36, 1, '2023-06-27 09:58:08'),
(157, NULL, NULL, 36, 1, '2023-06-27 10:00:36'),
(158, NULL, NULL, 36, 1, '2023-06-27 10:03:26'),
(159, NULL, NULL, 36, 1, '2023-06-27 10:06:26'),
(160, NULL, NULL, 36, 1, '2023-06-27 10:14:23'),
(161, NULL, NULL, 36, 1, '2023-06-27 10:15:48'),
(162, NULL, NULL, 36, 1, '2023-06-27 10:18:45'),
(163, NULL, NULL, 36, 1, '2023-06-27 10:20:59'),
(164, NULL, NULL, 36, 1, '2023-06-27 10:21:32'),
(165, NULL, NULL, 36, 1, '2023-06-27 10:22:16'),
(166, NULL, NULL, 36, 1, '2023-06-27 10:29:38'),
(167, NULL, NULL, 36, 1, '2023-06-27 10:30:27'),
(168, NULL, NULL, 36, 1, '2023-06-27 10:33:51'),
(169, NULL, NULL, 36, 1, '2023-06-27 10:36:09'),
(170, NULL, NULL, 36, 1, '2023-06-27 10:36:41'),
(171, NULL, NULL, 36, 1, '2023-06-27 10:38:01'),
(172, NULL, NULL, 36, 1, '2023-06-27 10:39:11'),
(173, NULL, NULL, 36, 1, '2023-06-27 10:42:27'),
(174, NULL, NULL, 36, 1, '2023-06-27 10:45:52'),
(175, NULL, NULL, 36, 1, '2023-06-27 10:48:15'),
(176, NULL, NULL, 36, 1, '2023-06-27 10:52:12'),
(177, NULL, NULL, 36, 1, '2023-06-27 10:53:37'),
(178, NULL, NULL, 36, 1, '2023-06-27 11:00:07'),
(179, NULL, NULL, 36, 1, '2023-06-27 12:18:21'),
(180, NULL, NULL, 36, 1, '2023-06-27 12:22:21'),
(181, NULL, NULL, 36, 1, '2023-06-27 12:30:43'),
(182, NULL, NULL, 36, 1, '2023-06-27 12:31:53'),
(183, NULL, NULL, 36, 1, '2023-06-27 12:34:36'),
(184, NULL, NULL, 36, 1, '2023-06-27 12:36:20'),
(185, NULL, NULL, 30, 1, '2023-06-27 12:37:05'),
(186, NULL, NULL, 36, 1, '2023-06-27 12:43:08'),
(187, NULL, NULL, 36, 1, '2023-06-27 12:45:23'),
(188, NULL, NULL, 36, 1, '2023-06-27 12:47:34'),
(189, NULL, NULL, 36, 1, '2023-06-27 12:49:32'),
(190, NULL, NULL, 36, 1, '2023-06-27 12:50:47'),
(191, NULL, NULL, 23, 1, '2023-06-27 12:51:19'),
(192, NULL, NULL, 36, 1, '2023-06-27 12:59:15'),
(193, NULL, NULL, 36, 1, '2023-06-27 18:06:51'),
(194, NULL, NULL, 36, 1, '2023-06-27 18:10:18'),
(195, NULL, NULL, 36, 1, '2023-06-27 18:13:33'),
(196, NULL, NULL, 36, 1, '2023-06-27 18:15:04'),
(197, NULL, NULL, 36, 1, '2023-06-27 18:16:11'),
(198, NULL, NULL, 36, 1, '2023-06-27 18:19:48'),
(199, NULL, NULL, 36, 1, '2023-06-27 18:21:06'),
(200, NULL, NULL, 36, 1, '2023-06-27 18:21:42'),
(201, NULL, NULL, 36, 1, '2023-06-27 18:23:13'),
(202, NULL, NULL, 36, 1, '2023-06-27 18:37:32'),
(203, NULL, NULL, 36, 1, '2023-06-27 18:42:07'),
(204, NULL, NULL, 36, 1, '2023-06-27 18:43:33'),
(205, NULL, NULL, 36, 1, '2023-06-27 18:45:23'),
(206, NULL, NULL, 36, 1, '2023-06-27 18:48:54'),
(207, NULL, NULL, 36, 1, '2023-06-27 18:49:38'),
(208, NULL, NULL, 36, 1, '2023-06-27 18:50:44'),
(209, NULL, NULL, 36, 1, '2023-06-27 18:51:43'),
(210, NULL, NULL, 36, 1, '2023-06-27 18:53:36'),
(211, NULL, NULL, 36, 1, '2023-06-27 18:54:29'),
(212, NULL, NULL, 36, 1, '2023-06-27 18:56:45'),
(213, NULL, NULL, 36, 1, '2023-06-27 18:57:44'),
(214, NULL, NULL, 36, 1, '2023-06-27 19:00:40'),
(215, NULL, NULL, 36, 1, '2023-06-27 19:07:07'),
(216, NULL, NULL, 36, 1, '2023-06-27 19:14:16'),
(217, NULL, NULL, 36, 1, '2023-06-27 19:19:54'),
(218, NULL, NULL, 36, 1, '2023-06-27 19:20:44'),
(219, 13, NULL, 36, 1, '2023-07-01 17:50:26'),
(226, NULL, NULL, 36, 1, '2023-07-01 19:16:34'),
(227, NULL, NULL, 36, 1, '2023-07-01 19:30:07'),
(228, NULL, NULL, 36, 1, '2023-07-01 19:37:55'),
(229, NULL, NULL, 36, 1, '2023-07-01 19:59:59'),
(230, NULL, NULL, 36, 1, '2023-07-02 06:01:04'),
(231, NULL, NULL, 36, 1, '2023-07-02 06:16:03'),
(232, NULL, NULL, 36, 1, '2023-07-02 17:23:54'),
(233, NULL, NULL, 30, 1, '2023-07-02 17:56:34'),
(234, NULL, NULL, 36, 1, '2023-07-02 18:11:48'),
(235, NULL, NULL, 36, 1, '2023-07-02 18:12:13'),
(236, NULL, NULL, 36, 1, '2023-07-02 18:25:11'),
(237, NULL, NULL, 36, 1, '2023-07-02 18:27:27'),
(238, NULL, NULL, 36, 1, '2023-07-02 18:31:44'),
(239, NULL, NULL, 36, 1, '2023-07-02 18:31:48'),
(240, NULL, NULL, 36, 1, '2023-07-02 18:31:48'),
(241, NULL, NULL, 36, 1, '2023-07-02 19:23:12'),
(242, NULL, NULL, 36, 1, '2023-07-02 19:43:32'),
(243, NULL, NULL, 36, 1, '2023-07-02 19:50:28'),
(244, NULL, NULL, 36, 1, '2023-07-02 20:36:07'),
(245, NULL, NULL, 36, 1, '2023-07-02 20:38:37'),
(246, NULL, NULL, 36, 1, '2023-07-02 20:39:18'),
(247, NULL, NULL, 36, 1, '2023-07-02 20:50:30'),
(248, NULL, NULL, 36, 1, '2023-07-02 21:09:34'),
(249, NULL, NULL, 36, 1, '2023-07-02 21:12:56'),
(250, NULL, NULL, 36, 1, '2023-07-02 21:14:51'),
(251, NULL, NULL, 36, 1, '2023-07-02 21:16:00'),
(252, NULL, NULL, 36, 1, '2023-07-02 21:19:32'),
(253, NULL, NULL, 36, 1, '2023-07-02 21:21:46'),
(254, NULL, NULL, 36, 1, '2023-07-02 21:22:45'),
(255, NULL, NULL, 36, 1, '2023-07-02 21:24:23'),
(256, NULL, NULL, 36, 1, '2023-07-02 21:24:28'),
(257, NULL, NULL, 36, 1, '2023-07-02 21:24:51'),
(258, NULL, NULL, 36, 1, '2023-07-02 21:25:21'),
(259, NULL, NULL, 36, 1, '2023-07-02 21:28:35'),
(260, NULL, NULL, 36, 1, '2023-07-02 21:31:06'),
(261, NULL, NULL, 36, 1, '2023-07-02 21:50:09'),
(262, NULL, NULL, 36, 1, '2023-07-02 21:51:54'),
(263, NULL, NULL, 36, 1, '2023-07-02 21:53:34'),
(264, NULL, NULL, 36, 1, '2023-07-02 21:54:29'),
(265, NULL, NULL, 36, 1, '2023-07-02 22:06:43'),
(266, NULL, NULL, 36, 1, '2023-07-02 22:08:45'),
(267, NULL, NULL, 36, 1, '2023-07-03 05:44:31'),
(268, NULL, NULL, 36, 1, '2023-07-03 05:45:54'),
(269, NULL, NULL, 36, 1, '2023-07-03 05:51:11'),
(270, NULL, NULL, 36, 1, '2023-07-03 06:03:20'),
(271, NULL, NULL, 36, 1, '2023-07-03 06:04:32'),
(272, NULL, NULL, 36, 1, '2023-07-03 06:08:06'),
(273, NULL, NULL, 36, 1, '2023-07-03 06:17:59'),
(274, NULL, NULL, 36, 1, '2023-07-03 06:20:09'),
(275, NULL, NULL, 36, 1, '2023-07-03 06:22:06'),
(276, NULL, NULL, 36, 1, '2023-07-03 06:23:22'),
(277, NULL, NULL, 36, 1, '2023-07-03 06:23:59'),
(278, NULL, NULL, 36, 1, '2023-07-03 06:49:53'),
(279, NULL, NULL, 36, 1, '2023-07-03 06:51:10'),
(280, NULL, NULL, 36, 1, '2023-07-03 06:51:51'),
(281, NULL, NULL, 36, 1, '2023-07-03 06:52:06'),
(282, NULL, NULL, 36, 1, '2023-07-03 06:55:43'),
(283, NULL, NULL, 36, 1, '2023-07-03 06:58:06'),
(284, NULL, NULL, 36, 1, '2023-07-03 07:01:10'),
(285, NULL, NULL, 36, 1, '2023-07-03 07:04:15'),
(286, NULL, NULL, 36, 1, '2023-07-03 07:06:06'),
(287, NULL, NULL, 36, 1, '2023-07-03 07:07:02'),
(288, NULL, NULL, 36, 1, '2023-07-03 07:13:23'),
(289, NULL, NULL, 36, 1, '2023-07-03 07:16:08'),
(290, NULL, NULL, 36, 1, '2023-07-03 07:16:59'),
(291, NULL, NULL, 36, 1, '2023-07-03 07:17:36'),
(292, NULL, NULL, 36, 1, '2023-07-03 07:19:39'),
(293, NULL, NULL, 36, 1, '2023-07-03 07:23:40'),
(294, NULL, NULL, 36, 1, '2023-07-03 07:24:24'),
(295, NULL, NULL, 36, 1, '2023-07-03 07:34:10'),
(296, NULL, NULL, 36, 1, '2023-07-03 07:34:44'),
(297, NULL, NULL, 36, 1, '2023-07-03 07:36:25'),
(298, NULL, NULL, 36, 1, '2023-07-03 07:37:16'),
(299, NULL, NULL, 36, 1, '2023-07-03 07:38:43'),
(300, NULL, NULL, 36, 1, '2023-07-03 07:42:31'),
(301, NULL, NULL, 36, 1, '2023-07-03 07:43:49'),
(302, NULL, NULL, 30, 1, '2023-07-03 07:44:06'),
(303, NULL, NULL, 23, 1, '2023-07-03 07:44:30'),
(304, 14, NULL, 28, 1, '2023-07-03 07:50:21'),
(305, 14, NULL, 27, 1, '2023-07-03 07:51:30'),
(310, 14, NULL, 36, 1, '2023-07-03 07:56:30'),
(363, 14, NULL, 30, 1, '2023-07-03 11:51:23'),
(370, 14, NULL, 23, 1, '2023-07-03 12:12:14'),
(371, NULL, NULL, 36, 1, '2023-07-04 05:47:09'),
(372, NULL, NULL, 36, 1, '2023-07-04 05:53:33'),
(373, NULL, NULL, 36, 1, '2023-07-04 05:55:40'),
(374, NULL, NULL, 36, 1, '2023-07-04 05:57:24'),
(375, NULL, NULL, 36, 1, '2023-07-04 05:58:02'),
(376, NULL, NULL, 36, 1, '2023-07-04 06:28:18'),
(377, NULL, NULL, 36, 1, '2023-07-04 07:03:41'),
(378, NULL, NULL, 36, 1, '2023-07-04 07:04:19'),
(379, NULL, NULL, 36, 1, '2023-07-04 07:05:16'),
(380, NULL, NULL, 36, 1, '2023-07-04 07:18:06'),
(381, NULL, NULL, 36, 1, '2023-07-04 07:20:02'),
(382, NULL, NULL, 36, 1, '2023-07-04 07:20:54'),
(383, NULL, NULL, 36, 1, '2023-07-04 07:22:45'),
(384, NULL, NULL, 36, 1, '2023-07-04 07:25:51'),
(385, NULL, NULL, 36, 1, '2023-07-04 07:28:02'),
(386, NULL, NULL, 36, 1, '2023-07-04 07:28:55'),
(387, NULL, NULL, 36, 1, '2023-07-04 07:29:49'),
(388, NULL, NULL, 36, 1, '2023-07-04 07:34:41'),
(389, NULL, NULL, 36, 1, '2023-07-04 07:37:58'),
(390, NULL, NULL, 36, 1, '2023-07-04 07:39:12'),
(391, NULL, NULL, 36, 1, '2023-07-04 07:52:36'),
(392, NULL, NULL, 36, 1, '2023-07-04 07:53:28'),
(393, NULL, NULL, 36, 1, '2023-07-04 07:54:16'),
(394, NULL, NULL, 36, 1, '2023-07-04 07:55:39'),
(395, NULL, NULL, 36, 1, '2023-07-04 07:56:45'),
(396, NULL, NULL, 36, 1, '2023-07-04 08:17:58'),
(397, NULL, NULL, 36, 1, '2023-07-04 08:20:50'),
(398, NULL, NULL, 36, 1, '2023-07-04 08:22:08'),
(399, NULL, NULL, 36, 1, '2023-07-04 09:18:49'),
(400, NULL, NULL, 36, 1, '2023-07-04 09:19:57'),
(401, NULL, NULL, 36, 1, '2023-07-04 09:23:22'),
(402, NULL, NULL, 36, 1, '2023-07-04 09:26:14'),
(403, NULL, NULL, 36, 1, '2023-07-04 09:28:50'),
(404, NULL, NULL, 36, 1, '2023-07-04 09:32:58'),
(405, NULL, NULL, 36, 1, '2023-07-04 09:52:52'),
(406, NULL, NULL, 36, 1, '2023-07-04 09:53:53'),
(407, NULL, NULL, 36, 1, '2023-07-04 09:54:41'),
(408, NULL, NULL, 36, 1, '2023-07-04 09:55:32'),
(409, NULL, NULL, 36, 1, '2023-07-04 09:56:05'),
(410, NULL, NULL, 36, 1, '2023-07-04 09:56:38'),
(411, NULL, NULL, 36, 1, '2023-07-04 10:00:01'),
(412, NULL, NULL, 36, 1, '2023-07-04 10:01:06'),
(413, NULL, NULL, 36, 1, '2023-07-04 10:04:11'),
(414, NULL, NULL, 36, 1, '2023-07-04 10:05:19'),
(415, NULL, NULL, 36, 1, '2023-07-04 10:05:58'),
(416, NULL, NULL, 36, 1, '2023-07-04 10:06:39'),
(417, NULL, NULL, 36, 1, '2023-07-04 10:08:11'),
(418, NULL, NULL, 36, 1, '2023-07-04 10:09:34'),
(419, NULL, NULL, 36, 1, '2023-07-04 10:10:11'),
(420, NULL, NULL, 36, 1, '2023-07-04 11:18:42'),
(421, NULL, NULL, 36, 1, '2023-07-04 11:19:53'),
(422, NULL, NULL, 36, 1, '2023-07-04 11:20:58'),
(423, NULL, NULL, 30, 1, '2023-07-04 11:21:50'),
(424, NULL, NULL, 36, 1, '2023-07-04 11:23:30'),
(425, NULL, NULL, 36, 1, '2023-07-04 11:30:00'),
(426, NULL, NULL, 36, 1, '2023-07-04 11:30:46'),
(427, NULL, NULL, 36, 1, '2023-07-04 11:30:47'),
(428, NULL, NULL, 36, 1, '2023-07-04 11:31:30'),
(429, NULL, NULL, 36, 1, '2023-07-04 11:32:52'),
(430, NULL, NULL, 36, 1, '2023-07-04 11:41:28'),
(431, NULL, NULL, 36, 1, '2023-07-04 11:42:17'),
(432, NULL, NULL, 36, 1, '2023-07-04 11:46:41'),
(433, NULL, NULL, 36, 1, '2023-07-04 11:47:38'),
(434, NULL, NULL, 36, 1, '2023-07-04 11:49:59'),
(435, NULL, NULL, 36, 1, '2023-07-04 12:01:39'),
(436, NULL, NULL, 36, 1, '2023-07-04 12:02:20'),
(437, NULL, NULL, 36, 1, '2023-07-04 12:03:15'),
(438, NULL, NULL, 36, 1, '2023-07-04 12:06:03'),
(439, NULL, NULL, 36, 1, '2023-07-04 12:09:50'),
(440, NULL, NULL, 36, 1, '2023-07-04 12:10:29'),
(441, NULL, NULL, 36, 1, '2023-07-04 12:11:40'),
(442, NULL, NULL, 36, 1, '2023-07-04 12:12:38'),
(443, NULL, NULL, 36, 1, '2023-07-04 12:13:59'),
(444, NULL, NULL, 36, 1, '2023-07-04 12:19:20'),
(445, NULL, NULL, 36, 1, '2023-07-04 12:33:56'),
(446, NULL, NULL, 36, 1, '2023-07-04 12:36:09'),
(447, NULL, NULL, 36, 1, '2023-07-04 12:36:57'),
(448, NULL, NULL, 36, 1, '2023-07-04 12:37:48'),
(449, NULL, NULL, 36, 1, '2023-07-04 12:38:44'),
(450, NULL, NULL, 36, 1, '2023-07-04 12:39:40'),
(451, NULL, NULL, 36, 1, '2023-07-04 12:41:14'),
(452, NULL, NULL, 36, 1, '2023-07-04 12:42:18'),
(453, NULL, NULL, 36, 1, '2023-07-04 12:43:37'),
(454, NULL, NULL, 36, 1, '2023-07-04 12:44:14'),
(455, NULL, NULL, 36, 1, '2023-07-04 12:45:21'),
(456, NULL, NULL, 36, 1, '2023-07-04 12:46:02'),
(457, NULL, NULL, 36, 1, '2023-07-04 12:46:32'),
(458, NULL, NULL, 36, 1, '2023-07-04 12:47:26'),
(459, NULL, NULL, 36, 1, '2023-07-04 12:48:45'),
(460, NULL, NULL, 36, 1, '2023-07-04 12:52:56'),
(461, NULL, NULL, 36, 1, '2023-07-04 12:53:36'),
(462, NULL, NULL, 36, 1, '2023-07-04 12:54:39'),
(463, NULL, NULL, 36, 1, '2023-07-04 12:58:16'),
(464, NULL, NULL, 36, 1, '2023-07-04 12:59:05'),
(465, NULL, NULL, 36, 1, '2023-07-04 12:59:43'),
(466, NULL, NULL, 36, 1, '2023-07-04 13:00:17'),
(467, NULL, NULL, 36, 1, '2023-07-04 13:02:40'),
(468, NULL, NULL, 36, 1, '2023-07-04 13:05:58'),
(469, NULL, NULL, 36, 1, '2023-07-04 13:07:40'),
(470, NULL, NULL, 36, 1, '2023-07-04 13:08:34'),
(471, NULL, NULL, 36, 1, '2023-07-04 13:09:37'),
(472, NULL, NULL, 36, 1, '2023-07-04 13:10:58'),
(473, NULL, NULL, 36, 1, '2023-07-04 13:34:05'),
(474, NULL, NULL, 23, 1, '2023-07-04 13:35:55'),
(475, NULL, NULL, 36, 1, '2023-07-04 13:44:40'),
(476, NULL, NULL, 36, 1, '2023-07-04 14:00:40'),
(477, NULL, NULL, 36, 1, '2023-07-04 14:02:52'),
(478, NULL, NULL, 36, 1, '2023-07-04 18:16:14'),
(479, NULL, NULL, 36, 1, '2023-07-04 18:55:07'),
(480, NULL, NULL, 36, 1, '2023-07-04 18:55:07'),
(481, NULL, NULL, 36, 1, '2023-07-04 19:27:19'),
(482, NULL, NULL, 36, 1, '2023-07-04 19:35:20'),
(483, NULL, NULL, 36, 1, '2023-07-04 20:46:59'),
(484, NULL, NULL, 36, 1, '2023-07-04 21:09:48'),
(485, NULL, NULL, 36, 1, '2023-07-04 21:29:53'),
(486, NULL, NULL, 36, 1, '2023-07-04 21:32:36'),
(487, NULL, NULL, 36, 1, '2023-07-04 21:34:42'),
(488, NULL, NULL, 36, 1, '2023-07-04 21:35:35'),
(489, NULL, NULL, 36, 1, '2023-07-04 21:45:40'),
(490, NULL, NULL, 36, 1, '2023-07-04 21:57:15'),
(491, NULL, NULL, 36, 1, '2023-07-04 21:59:25'),
(492, NULL, NULL, 36, 1, '2023-07-04 22:01:19'),
(493, NULL, NULL, 36, 1, '2023-07-04 22:03:30'),
(494, NULL, NULL, 30, 1, '2023-07-05 05:46:32'),
(495, NULL, NULL, 23, 1, '2023-07-05 05:46:42'),
(496, NULL, NULL, 21, 1, '2023-07-05 05:47:14'),
(497, NULL, NULL, 36, 1, '2023-07-05 06:00:01'),
(498, NULL, NULL, 36, 1, '2023-07-05 06:11:42'),
(499, NULL, NULL, 36, 1, '2023-07-05 06:13:37'),
(500, NULL, NULL, 36, 1, '2023-07-05 06:14:10'),
(501, NULL, NULL, 36, 1, '2023-07-05 06:19:47'),
(502, NULL, NULL, 36, 1, '2023-07-05 06:25:47'),
(503, NULL, NULL, 36, 1, '2023-07-05 06:26:53'),
(504, NULL, NULL, 36, 1, '2023-07-05 06:28:28'),
(505, NULL, NULL, 36, 1, '2023-07-05 06:29:29'),
(506, NULL, NULL, 36, 1, '2023-07-05 06:40:01'),
(507, NULL, NULL, 36, 1, '2023-07-05 06:41:51'),
(508, NULL, NULL, 36, 1, '2023-07-05 06:53:20'),
(509, NULL, NULL, 36, 1, '2023-07-05 06:57:16'),
(510, NULL, NULL, 36, 1, '2023-07-05 06:58:32'),
(511, NULL, NULL, 36, 1, '2023-07-05 07:09:09'),
(512, NULL, NULL, 36, 1, '2023-07-05 07:10:19'),
(513, NULL, NULL, 36, 1, '2023-07-05 07:11:38'),
(514, NULL, NULL, 36, 1, '2023-07-05 07:14:08'),
(515, NULL, NULL, 36, 1, '2023-07-05 07:15:23'),
(516, NULL, NULL, 36, 1, '2023-07-05 07:20:56'),
(517, NULL, NULL, 36, 1, '2023-07-05 07:22:42'),
(518, NULL, NULL, 36, 1, '2023-07-05 07:23:32'),
(519, NULL, NULL, 36, 1, '2023-07-05 07:27:01'),
(520, NULL, NULL, 36, 1, '2023-07-05 07:28:14'),
(521, NULL, NULL, 36, 1, '2023-07-05 07:31:09'),
(522, NULL, NULL, 36, 1, '2023-07-05 07:32:18'),
(523, NULL, NULL, 36, 1, '2023-07-05 07:33:02'),
(524, NULL, NULL, 36, 1, '2023-07-05 07:33:58'),
(525, NULL, NULL, 36, 1, '2023-07-05 07:52:31'),
(526, NULL, NULL, 36, 1, '2023-07-05 07:55:58'),
(527, NULL, NULL, 36, 1, '2023-07-05 07:57:49'),
(528, NULL, NULL, 36, 1, '2023-07-05 08:01:08'),
(529, NULL, NULL, 36, 1, '2023-07-05 08:02:58'),
(530, NULL, NULL, 36, 1, '2023-07-05 08:04:40'),
(531, NULL, NULL, 36, 1, '2023-07-05 08:05:34'),
(532, NULL, NULL, 36, 1, '2023-07-05 08:09:33'),
(533, NULL, NULL, 36, 1, '2023-07-05 08:11:50'),
(534, NULL, NULL, 36, 1, '2023-07-05 08:14:02'),
(535, NULL, NULL, 36, 1, '2023-07-05 08:17:27'),
(536, NULL, NULL, 36, 1, '2023-07-05 08:20:10'),
(537, NULL, NULL, 36, 1, '2023-07-05 08:25:34'),
(538, NULL, NULL, 36, 1, '2023-07-05 08:27:04'),
(539, NULL, NULL, 36, 1, '2023-07-05 08:36:32'),
(540, NULL, NULL, 36, 1, '2023-07-05 08:37:53'),
(541, NULL, NULL, 36, 1, '2023-07-05 08:38:47'),
(542, NULL, NULL, 36, 1, '2023-07-05 08:41:03'),
(543, NULL, NULL, 36, 1, '2023-07-05 08:42:06'),
(544, NULL, NULL, 36, 1, '2023-07-05 08:44:28'),
(545, NULL, NULL, 36, 1, '2023-07-05 08:45:20'),
(546, NULL, NULL, 36, 1, '2023-07-05 08:46:05'),
(547, NULL, NULL, 36, 1, '2023-07-05 08:49:20'),
(548, NULL, NULL, 36, 1, '2023-07-05 08:53:28'),
(549, NULL, NULL, 36, 1, '2023-07-05 08:54:47'),
(550, NULL, NULL, 36, 1, '2023-07-05 08:56:52'),
(551, NULL, NULL, 36, 1, '2023-07-05 08:57:59'),
(552, NULL, NULL, 36, 1, '2023-07-05 09:01:06'),
(553, NULL, NULL, 36, 1, '2023-07-05 09:08:20'),
(554, NULL, NULL, 36, 1, '2023-07-05 09:09:58'),
(555, NULL, NULL, 36, 1, '2023-07-05 09:12:17'),
(556, NULL, NULL, 36, 1, '2023-07-05 09:13:25'),
(557, NULL, NULL, 36, 1, '2023-07-05 09:16:14'),
(558, NULL, NULL, 36, 1, '2023-07-05 09:24:39'),
(559, NULL, NULL, 36, 1, '2023-07-05 09:30:34'),
(560, NULL, NULL, 36, 1, '2023-07-05 09:31:49'),
(561, 15, NULL, 36, 1, '2023-07-05 09:35:12'),
(617, 15, NULL, 23, 1, '2023-07-05 14:00:26'),
(618, 15, NULL, 30, 1, '2023-07-05 14:01:07'),
(619, 15, NULL, 27, 1, '2023-07-05 14:02:26'),
(620, NULL, NULL, 36, 1, '2023-07-05 17:17:53'),
(621, 17, NULL, 23, 1, '2023-07-05 17:58:54'),
(622, 17, NULL, 28, 1, '2023-07-05 17:59:10'),
(623, NULL, NULL, 36, 1, '2023-07-06 07:12:30'),
(624, 18, NULL, 36, 1, '2023-07-06 09:22:10'),
(625, 18, NULL, 30, 1, '2023-07-06 09:22:42'),
(626, NULL, NULL, 36, 1, '2023-07-06 17:46:10'),
(627, NULL, NULL, 36, 1, '2023-07-07 18:00:59'),
(628, NULL, NULL, 36, 1, '2023-07-11 15:52:26'),
(629, NULL, NULL, 30, 1, '2023-07-11 15:56:57'),
(630, NULL, NULL, 20, 1, '2023-07-16 13:12:56'),
(631, 23, NULL, 36, 1, '2023-07-16 13:13:14'),
(632, 23, NULL, 26, 1, '2023-07-16 14:34:49'),
(633, NULL, NULL, 36, 1, '2023-07-17 05:59:40'),
(634, 56, 1, 30, 1, '2023-07-20 05:51:34'),
(635, NULL, 1, 36, 1, '2023-07-20 05:52:36'),
(636, NULL, NULL, 28, 1, '2023-07-20 13:06:48'),
(637, NULL, NULL, 27, 1, '2023-07-20 14:34:06'),
(638, 27, NULL, 36, 1, '2023-07-20 18:15:24'),
(639, 28, NULL, 36, 1, '2023-07-20 21:26:34'),
(640, 29, NULL, 36, 1, '2023-07-21 06:40:57'),
(641, NULL, NULL, 14, 1, '2023-07-21 13:09:20'),
(642, NULL, NULL, 36, 1, '2023-07-21 13:55:24'),
(643, NULL, NULL, 30, 1, '2023-07-21 14:22:21'),
(644, NULL, NULL, 42, 1, '2023-07-22 14:20:41'),
(646, NULL, 1, 42, 1, '2023-07-24 18:05:23'),
(649, NULL, NULL, 42, 1, '2023-07-25 20:08:39'),
(650, NULL, NULL, 36, 1, '2023-07-26 06:37:23'),
(651, NULL, NULL, 36, 1, '2023-07-26 06:39:39'),
(652, NULL, NULL, 23, 1, '2023-07-26 06:40:00'),
(653, NULL, NULL, 28, 1, '2023-07-26 07:36:00'),
(654, NULL, NULL, 36, 1, '2023-07-26 07:36:11'),
(655, NULL, NULL, 23, 1, '2023-07-26 07:36:18'),
(656, NULL, NULL, 36, 1, '2023-07-26 07:38:38'),
(657, NULL, NULL, 28, 1, '2023-07-26 07:49:45'),
(658, NULL, NULL, 36, 1, '2023-07-26 07:52:34'),
(659, NULL, NULL, 36, 1, '2023-07-26 08:03:34'),
(660, NULL, NULL, 36, 1, '2023-07-26 08:05:10'),
(661, NULL, NULL, 36, 1, '2023-07-26 08:10:18'),
(662, NULL, NULL, 23, 1, '2023-07-26 08:24:37'),
(663, NULL, NULL, 36, 1, '2023-07-26 08:33:20'),
(664, NULL, NULL, 28, 1, '2023-07-26 08:41:09'),
(665, NULL, NULL, 30, 1, '2023-07-26 09:53:26'),
(666, NULL, 2, 36, 1, '2023-07-26 13:03:38'),
(667, NULL, 2, 28, 1, '2023-07-26 13:09:47'),
(669, 56, 1, 28, 1, '2023-07-26 19:58:43'),
(670, 57, NULL, 30, 1, '2023-07-27 06:16:58'),
(671, 57, NULL, 23, 1, '2023-07-27 06:28:56'),
(672, NULL, NULL, 30, 1, '2023-07-30 14:34:09'),
(673, NULL, NULL, 30, 1, '2023-07-30 20:27:15'),
(674, NULL, NULL, 36, 1, '2023-07-30 20:27:43'),
(675, NULL, NULL, 42, 1, '2023-07-30 20:30:10'),
(676, NULL, NULL, 23, 1, '2023-08-01 06:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE `review_status` (
  `status_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE `review_store` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE `salesrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  `generated_by_dotmailer` smallint(6) DEFAULT NULL COMMENT '1 = Generated by dotmailer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated`
--

CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE `salesrule_label` (
  `label_id` int(10) UNSIGNED NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

--
-- Dumping data for table `sales_bestsellers_aggregated_daily`
--

INSERT INTO `sales_bestsellers_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2023-07-26', 1, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(2, '2023-07-26', 1, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2),
(4, '2023-07-26', 0, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(5, '2023-07-26', 0, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

--
-- Dumping data for table `sales_bestsellers_aggregated_monthly`
--

INSERT INTO `sales_bestsellers_aggregated_monthly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2023-07-01', 0, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(2, '2023-07-01', 0, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2),
(3, '2023-07-01', 1, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(4, '2023-07-01', 1, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

--
-- Dumping data for table `sales_bestsellers_aggregated_yearly`
--

INSERT INTO `sales_bestsellers_aggregated_yearly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `qty_ordered`, `rating_pos`) VALUES
(1, '2023-01-01', 0, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(2, '2023-01-01', 0, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2),
(3, '2023-01-01', 1, 28, '5543-LIQUID-SEALENT', '3.7800', '2.0000', 1),
(4, '2023-01-01', 1, 37, 'OV - MULTIDIS SF TOPMETER-5circuits', '50.0000', '1.0000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo`
--

CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_comment`
--

CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_grid`
--

CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_item`
--

CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_comment`
--

CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_grid`
--

CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_item`
--

CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` int(11) DEFAULT NULL,
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(45) DEFAULT NULL,
  `shipping_method` varchar(120) DEFAULT NULL,
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`entity_id`, `state`, `status`, `coupon_code`, `protect_code`, `shipping_description`, `is_virtual`, `store_id`, `customer_id`, `base_discount_amount`, `base_discount_canceled`, `base_discount_invoiced`, `base_discount_refunded`, `base_grand_total`, `base_shipping_amount`, `base_shipping_canceled`, `base_shipping_invoiced`, `base_shipping_refunded`, `base_shipping_tax_amount`, `base_shipping_tax_refunded`, `base_subtotal`, `base_subtotal_canceled`, `base_subtotal_invoiced`, `base_subtotal_refunded`, `base_tax_amount`, `base_tax_canceled`, `base_tax_invoiced`, `base_tax_refunded`, `base_to_global_rate`, `base_to_order_rate`, `base_total_canceled`, `base_total_invoiced`, `base_total_invoiced_cost`, `base_total_offline_refunded`, `base_total_online_refunded`, `base_total_paid`, `base_total_qty_ordered`, `base_total_refunded`, `discount_amount`, `discount_canceled`, `discount_invoiced`, `discount_refunded`, `grand_total`, `shipping_amount`, `shipping_canceled`, `shipping_invoiced`, `shipping_refunded`, `shipping_tax_amount`, `shipping_tax_refunded`, `store_to_base_rate`, `store_to_order_rate`, `subtotal`, `subtotal_canceled`, `subtotal_invoiced`, `subtotal_refunded`, `tax_amount`, `tax_canceled`, `tax_invoiced`, `tax_refunded`, `total_canceled`, `total_invoiced`, `total_offline_refunded`, `total_online_refunded`, `total_paid`, `total_qty_ordered`, `total_refunded`, `can_ship_partially`, `can_ship_partially_item`, `customer_is_guest`, `customer_note_notify`, `billing_address_id`, `customer_group_id`, `edit_increment`, `email_sent`, `send_email`, `forced_shipment_with_invoice`, `payment_auth_expiration`, `quote_address_id`, `quote_id`, `shipping_address_id`, `adjustment_negative`, `adjustment_positive`, `base_adjustment_negative`, `base_adjustment_positive`, `base_shipping_discount_amount`, `base_subtotal_incl_tax`, `base_total_due`, `payment_authorization_amount`, `shipping_discount_amount`, `subtotal_incl_tax`, `total_due`, `weight`, `customer_dob`, `increment_id`, `applied_rule_ids`, `base_currency_code`, `customer_email`, `customer_firstname`, `customer_lastname`, `customer_middlename`, `customer_prefix`, `customer_suffix`, `customer_taxvat`, `discount_description`, `ext_customer_id`, `ext_order_id`, `global_currency_code`, `hold_before_state`, `hold_before_status`, `order_currency_code`, `original_increment_id`, `relation_child_id`, `relation_child_real_id`, `relation_parent_id`, `relation_parent_real_id`, `remote_ip`, `shipping_method`, `store_currency_code`, `store_name`, `x_forwarded_for`, `customer_note`, `created_at`, `updated_at`, `total_item_count`, `customer_gender`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `shipping_discount_tax_compensation_amount`, `base_shipping_discount_tax_compensation_amnt`, `discount_tax_compensation_invoiced`, `base_discount_tax_compensation_invoiced`, `discount_tax_compensation_refunded`, `base_discount_tax_compensation_refunded`, `shipping_incl_tax`, `base_shipping_incl_tax`, `coupon_rule_name`, `gift_message_id`, `paypal_ipn_customer_notified`) VALUES
(1, 'new', 'pending', NULL, '112d5576ac837d61ec9823694a3183a4', NULL, 1, 1, NULL, '0.0000', NULL, NULL, NULL, '50.0000', '0.0000', NULL, NULL, NULL, '0.0000', NULL, '50.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '50.0000', '0.0000', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '50.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, 1, 1, 1, 0, NULL, 1, 1, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, '0.0000', '50.0000', '50.0000', NULL, '0.0000', '50.0000', '50.0000', '0.0000', NULL, '000000001', NULL, 'USD', 'mireille.a@codendot.com', 'mireille', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '::1', NULL, 'USD', 'Main Website\nMain Website Store\n', NULL, NULL, '2023-07-26 13:07:37', '2023-07-26 13:07:41', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, 0),
(2, 'new', 'pending', NULL, '8526d75500cae7f6406583b9d245d390', 'Flat Rate - Fixed', 0, 1, 2, '0.0000', NULL, NULL, NULL, '17.5600', '10.0000', NULL, NULL, NULL, '0.0000', NULL, '7.5600', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '17.5600', '10.0000', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '7.5600', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.0000', NULL, NULL, NULL, 0, 1, 3, 1, NULL, 1, 1, NULL, NULL, NULL, 7, 2, NULL, NULL, NULL, NULL, '0.0000', '7.5600', '17.5600', NULL, '0.0000', '7.5600', '17.5600', '0.0000', NULL, '000000002', NULL, 'USD', 'mireille.a@codendot.com', 'mireille', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '::1', 'flatrate_flatrate', 'USD', 'Main Website\nMain Website Store\n', NULL, NULL, '2023-07-26 13:17:12', '2023-07-26 13:17:14', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '10.0000', '10.0000', NULL, NULL, 0),
(3, 'new', 'pending', NULL, '60e2fdf59b29f21795328841636d52c4', 'Best Way - Table Rate', 0, 1, NULL, '0.0000', NULL, NULL, NULL, '1248.5400', '344.0000', NULL, NULL, NULL, '0.0000', NULL, '904.5400', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1248.5400', '344.0000', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '904.5400', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.0000', NULL, NULL, NULL, 1, 1, 5, 0, NULL, 1, 1, NULL, NULL, NULL, 9, 4, NULL, NULL, NULL, NULL, '0.0000', '904.5400', '1248.5400', NULL, '0.0000', '904.5400', '1248.5400', '165.3470', NULL, '000000003', NULL, 'USD', 'moemensaadeh5@gmail.com', 'joud', 'dh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '::1', 'tablerate_bestway', 'USD', 'Main Website\nMain Website Store\n', NULL, NULL, '2023-07-27 08:46:38', '2023-07-27 08:46:41', 2, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '344.0000', '344.0000', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_address`
--

CREATE TABLE `sales_order_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

--
-- Dumping data for table `sales_order_address`
--

INSERT INTO `sales_order_address` (`entity_id`, `parent_id`, `customer_address_id`, `quote_address_id`, `region_id`, `customer_id`, `fax`, `region`, `postcode`, `lastname`, `street`, `city`, `email`, `telephone`, `country_id`, `firstname`, `address_type`, `prefix`, `middlename`, `suffix`, `company`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`) VALUES
(1, 1, NULL, 32, NULL, NULL, NULL, NULL, '1233222', 'test', '123', 'dwdwd', 'mireille.a@codendot.com', '701282822', 'UM', 'mireille', 'billing', NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 34, 3, NULL, NULL, 'American Samoa', '1300', 'test', 'mina', 'mina', 'mireille.a@codendot.com', 'ewfeewrfewf', 'US', 'mireille', 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, NULL, 35, 3, NULL, NULL, 'American Samoa', '1300', 'test', 'mina', 'mina', 'mireille.a@codendot.com', 'ewfeewrfewf', 'US', 'mireille', 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, NULL, 39, 577, NULL, NULL, 'Beirut', '0000', 'dh', 'mina', 'dwdwd', 'moemensaadeh5@gmail.com', '23423', 'LB', 'joud', 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, NULL, 40, 577, NULL, NULL, 'Beirut', '0000', 'dh', 'mina', 'dwdwd', 'moemensaadeh5@gmail.com', '23423', 'LB', 'joud', 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_updated`
--

CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_grid`
--

CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `signifyd_guarantee_status` varchar(32) DEFAULT NULL COMMENT 'Signifyd Guarantee Disposition Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- Dumping data for table `sales_order_grid`
--

INSERT INTO `sales_order_grid` (`entity_id`, `status`, `store_id`, `store_name`, `customer_id`, `base_grand_total`, `base_total_paid`, `grand_total`, `total_paid`, `increment_id`, `base_currency_code`, `order_currency_code`, `shipping_name`, `billing_name`, `created_at`, `updated_at`, `billing_address`, `shipping_address`, `shipping_information`, `customer_email`, `customer_group`, `subtotal`, `shipping_and_handling`, `customer_name`, `payment_method`, `total_refunded`, `signifyd_guarantee_status`) VALUES
(1, 'pending', 1, 'Main Website\nMain Website Store\n', NULL, '50.0000', NULL, '50.0000', NULL, '000000001', 'USD', 'USD', '', 'mireille test', '2023-07-26 13:07:37', '2023-07-26 13:07:37', 'test 123 dwdwd 1233222', '', NULL, 'mireille.a@codendot.com', '0', '50.0000', '0.0000', 'mireille test', 'checkmo', NULL, NULL),
(2, 'pending', 1, 'Main Website\nMain Website Store\n', 2, '17.5600', NULL, '17.5600', NULL, '000000002', 'USD', 'USD', 'mireille test', 'mireille test', '2023-07-26 13:17:12', '2023-07-26 13:17:12', 'mina mina American Samoa 1300', 'mina mina American Samoa 1300', 'Flat Rate - Fixed', 'mireille.a@codendot.com', '1', '7.5600', '10.0000', 'mireille test', 'checkmo', NULL, NULL),
(3, 'pending', 1, 'Main Website\nMain Website Store\n', NULL, '1248.5400', NULL, '1248.5400', NULL, '000000003', 'USD', 'USD', 'joud dh', 'joud dh', '2023-07-27 08:46:38', '2023-07-27 08:46:38', 'mina dwdwd Beirut 0000', 'mina dwdwd Beirut 0000', 'Best Way - Table Rate', 'moemensaadeh5@gmail.com', '0', '904.5400', '344.0000', 'joud dh', 'cashondelivery', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

--
-- Dumping data for table `sales_order_item`
--

INSERT INTO `sales_order_item` (`item_id`, `order_id`, `parent_item_id`, `quote_item_id`, `store_id`, `created_at`, `updated_at`, `product_id`, `product_type`, `product_options`, `weight`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `is_qty_decimal`, `no_discount`, `qty_backordered`, `qty_canceled`, `qty_invoiced`, `qty_ordered`, `qty_refunded`, `qty_shipped`, `base_cost`, `price`, `base_price`, `original_price`, `base_original_price`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_invoiced`, `base_tax_invoiced`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `amount_refunded`, `base_amount_refunded`, `row_total`, `base_row_total`, `row_invoiced`, `base_row_invoiced`, `row_weight`, `base_tax_before_discount`, `tax_before_discount`, `ext_order_item_id`, `locked_do_invoice`, `locked_do_ship`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `discount_tax_compensation_invoiced`, `base_discount_tax_compensation_invoiced`, `discount_tax_compensation_refunded`, `base_discount_tax_compensation_refunded`, `tax_canceled`, `discount_tax_compensation_canceled`, `tax_refunded`, `base_tax_refunded`, `discount_refunded`, `base_discount_refunded`, `free_shipping`, `gift_message_id`, `gift_message_available`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(1, 1, NULL, 4, 1, '2023-07-26 13:07:37', '2023-07-26 13:07:37', 36, 'configurable', '{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9jb25maWd1cmFibGUtdGVzdC5odG1s\",\"product\":\"36\",\"selected_configurable_option\":\"37\",\"related_product\":\"\",\"item\":\"36\",\"super_attribute\":{\"149\":\"16\"},\"qty\":\"1\"},\"attributes_info\":[{\"label\":\"Model\",\"value\":\"5circuits\",\"option_id\":149,\"option_value\":\"16\"}],\"simple_name\":\"OV - MULTIDIS SF TOPMETER-5circuits\",\"simple_sku\":\"3453545-5circuits\",\"product_calculations\":1,\"shipment_type\":0}', NULL, 1, '3453545-5circuits', 'OV - MULTIDIS SF TOPMETER', NULL, NULL, NULL, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', NULL, '50.0000', '50.0000', '50.0000', '50.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '50.0000', '50.0000', '50.0000', '50.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, 5, 1, '2023-07-26 13:07:37', '2023-07-26 13:07:37', 37, 'virtual', '{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9jb25maWd1cmFibGUtdGVzdC5odG1s\",\"product\":\"36\",\"selected_configurable_option\":\"37\",\"related_product\":\"\",\"item\":\"36\",\"super_attribute\":{\"149\":\"16\"},\"qty\":\"1\"}}', NULL, 1, '3453545-5circuits', 'OV - MULTIDIS SF TOPMETER-5circuits', NULL, NULL, NULL, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', NULL, '50.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, NULL, 6, 1, '2023-07-26 13:17:12', '2023-07-26 13:17:12', 28, 'simple', '{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy81NTQzLWxpcXVpZC1zZWFsZW50Lmh0bWw,\",\"product\":\"28\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"28\",\"qty\":\"4\"}}', NULL, 0, '5543-LIQUID-SEALENT', '5543-LIQUID-SEALENT', NULL, NULL, NULL, 0, 0, NULL, '0.0000', '0.0000', '2.0000', '0.0000', '0.0000', NULL, '3.7800', '3.7800', '3.7800', '3.7800', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '7.5600', '7.5600', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '3.7800', '3.7800', '7.5600', '7.5600', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, NULL, 14, 1, '2023-07-27 08:46:38', '2023-07-27 08:46:38', 30, 'simple', '{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy8,\",\"product\":\"30\",\"qty\":1}}', '165.3470', 0, 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', 'OV - FILLING STATION FOR HEATING SYSTEM 3/4\"', NULL, NULL, NULL, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', NULL, '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '612.4300', '612.4300', '0.0000', '0.0000', '165.3470', NULL, NULL, NULL, NULL, NULL, '612.4300', '612.4300', '612.4300', '612.4300', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, NULL, 15, 1, '2023-07-27 08:46:38', '2023-07-27 08:46:38', 23, 'simple', '{\"info_buyRequest\":{\"uenc\":\"aHR0cDovL2xvY2FsaG9zdDo4ODg4L25ldy9vdi1uci00LW1ldGFsLWNhYmluZXQtMTIweDc2eDExLTUuaHRtbA,,\",\"product\":\"23\",\"selected_configurable_option\":\"\",\"related_product\":\"\",\"item\":\"23\",\"qty\":\"1\"}}', NULL, 0, 'OV - NR.4 METAL CABINET 120x76x11.5', 'OV - NR.4 METAL CABINET 120x76x11.5', NULL, NULL, NULL, 0, 0, NULL, '0.0000', '0.0000', '1.0000', '0.0000', '0.0000', NULL, '292.1100', '292.1100', '292.1100', '292.1100', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '292.1100', '292.1100', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '292.1100', '292.1100', '292.1100', '292.1100', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_payment`
--

CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL,
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(128) DEFAULT NULL,
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

--
-- Dumping data for table `sales_order_payment`
--

INSERT INTO `sales_order_payment` (`entity_id`, `parent_id`, `base_shipping_captured`, `shipping_captured`, `amount_refunded`, `base_amount_paid`, `amount_canceled`, `base_amount_authorized`, `base_amount_paid_online`, `base_amount_refunded_online`, `base_shipping_amount`, `shipping_amount`, `amount_paid`, `amount_authorized`, `base_amount_ordered`, `base_shipping_refunded`, `shipping_refunded`, `base_amount_refunded`, `amount_ordered`, `base_amount_canceled`, `quote_payment_id`, `additional_data`, `cc_exp_month`, `cc_ss_start_year`, `echeck_bank_name`, `method`, `cc_debug_request_body`, `cc_secure_verify`, `protection_eligibility`, `cc_approval`, `cc_last_4`, `cc_status_description`, `echeck_type`, `cc_debug_response_serialized`, `cc_ss_start_month`, `echeck_account_type`, `last_trans_id`, `cc_cid_status`, `cc_owner`, `cc_type`, `po_number`, `cc_exp_year`, `cc_status`, `echeck_routing_number`, `account_status`, `anet_trans_method`, `cc_debug_response_body`, `cc_ss_issue`, `echeck_account_name`, `cc_avs_status`, `cc_number_enc`, `cc_trans_id`, `address_status`, `additional_information`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, '50.0000', NULL, NULL, NULL, '50.0000', NULL, NULL, NULL, NULL, NULL, NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"method_title\":\"Check \\/ Money order\"}'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', NULL, NULL, '17.5600', NULL, NULL, NULL, '17.5600', NULL, NULL, NULL, NULL, NULL, NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"method_title\":\"Check \\/ Money order\"}'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '344.0000', '344.0000', NULL, NULL, '1248.5400', NULL, NULL, NULL, '1248.5400', NULL, NULL, NULL, NULL, NULL, NULL, 'cashondelivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"method_title\":\"Cash On Delivery\",\"instructions\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status`
--

CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_history`
--

CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_label`
--

CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_state`
--

CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visible on front'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`, `visible_on_front`) VALUES
('canceled', 'canceled', 1, 1),
('closed', 'closed', 1, 1),
('complete', 'complete', 1, 1),
('fraud', 'payment_review', 0, 1),
('fraud', 'processing', 0, 1),
('holded', 'holded', 1, 1),
('payment_review', 'payment_review', 1, 1),
('pending', 'new', 1, 1),
('pending_payment', 'pending_payment', 1, 0),
('processing', 'processing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax_item`
--

CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Item Id',
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Transaction Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_meta`
--

CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

INSERT INTO `sales_sequence_meta` (`meta_id`, `entity_type`, `store_id`, `sequence_table`) VALUES
(1, 'order', 0, 'sequence_order_0'),
(2, 'invoice', 0, 'sequence_invoice_0'),
(3, 'creditmemo', 0, 'sequence_creditmemo_0'),
(4, 'shipment', 0, 'sequence_shipment_0'),
(5, 'order', 1, 'sequence_order_1'),
(6, 'invoice', 1, 'sequence_invoice_1'),
(7, 'creditmemo', 1, 'sequence_creditmemo_1'),
(8, 'shipment', 1, 'sequence_shipment_1');

-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_profile`
--

CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) UNSIGNED NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) UNSIGNED NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

INSERT INTO `sales_sequence_profile` (`profile_id`, `meta_id`, `prefix`, `suffix`, `start_value`, `step`, `max_value`, `warning_value`, `is_active`) VALUES
(1, 1, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(2, 2, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(3, 3, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(4, 4, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(5, 5, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(6, 6, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(7, 7, NULL, NULL, 1, 1, 4294967295, 4294966295, 1),
(8, 8, NULL, NULL, 1, 1, 4294967295, 4294966295, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment`
--

CREATE TABLE `sales_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_comment`
--

CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_grid`
--

CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_item`
--

CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_track`
--

CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `search_query`
--

CREATE TABLE `search_query` (
  `query_id` int(10) UNSIGNED NOT NULL COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Dumping data for table `search_query`
--

INSERT INTO `search_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, 'moemen', 0, 5, NULL, 1, 1, 1, 0, '2023-07-25 17:58:51'),
(4, 'jkdfs', 0, 2, NULL, 1, 1, 1, 0, '2023-06-08 11:51:38'),
(5, 'oussana', 0, 1, NULL, 1, 1, 1, 0, '2023-06-09 05:36:08'),
(6, 'moo', 0, 1, NULL, 1, 1, 1, 0, '2023-06-09 11:44:41'),
(7, 'noee', 0, 1, NULL, 1, 1, 1, 0, '2023-06-10 10:29:57'),
(8, 'momne', 0, 1, NULL, 1, 1, 1, 0, '2023-06-14 15:31:53'),
(9, 'amani', 0, 1, NULL, 1, 1, 1, 0, '2023-06-21 14:10:16'),
(11, 'headting', 0, 1, NULL, 1, 1, 1, 0, '2023-06-21 14:11:47'),
(12, 'solar', 2, 3, NULL, 1, 1, 1, 0, '2023-06-26 12:41:40'),
(13, 'multidis', 1, 2, NULL, 1, 1, 1, 0, '2023-07-05 17:58:16'),
(15, 'multid', 1, 5, NULL, 1, 1, 1, 0, '2023-07-05 17:58:14'),
(16, 'ov', 16, 0, NULL, 1, 1, 1, 0, '2023-07-26 13:09:33'),
(17, 'av', 16, 0, NULL, 1, 1, 1, 0, '2023-07-25 17:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

CREATE TABLE `sendfriend_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `ip` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_0`
--

CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_1`
--

CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_0`
--

CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_1`
--

CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_0`
--

CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_1`
--

CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sequence_order_1`
--

INSERT INTO `sequence_order_1` (`sequence_value`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_0`
--

CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_1`
--

CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Table structure for table `setup_module`
--

CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

INSERT INTO `setup_module` (`module`, `schema_version`, `data_version`) VALUES
('Amazon_Core', '2.3.1', '2.3.1'),
('Amazon_Login', '2.3.1', '2.3.1'),
('Amazon_Payment', '2.3.1', '2.3.1'),
('Dotdigitalgroup_Email', '2.8.0', '2.8.0'),
('Header_Part', '1.0.0', '1.0.0'),
('Klarna_Core', '4.5.9', '4.5.9'),
('Klarna_Kp', '5.5.6', '5.5.6'),
('Klarna_Ordermanagement', '4.4.4', '4.4.4'),
('Magento_AdminNotification', '2.0.0', '2.0.0'),
('Magento_AdvancedPricingImportExport', '2.0.0', '2.0.0'),
('Magento_Analytics', '2.0.0', '2.0.0'),
('Magento_Authorization', '2.0.0', '2.0.0'),
('Magento_Authorizenet', '2.0.0', '2.0.0'),
('Magento_AuthorizenetAcceptjs', '1.0.0', '1.0.0'),
('Magento_AuthorizenetCardinal', '1.0.0', '1.0.0'),
('Magento_Backend', '2.0.0', '2.0.0'),
('Magento_Backup', '2.0.0', '2.0.0'),
('Magento_Braintree', '2.0.1', '2.0.1'),
('Magento_Bundle', '2.0.4', '2.0.4'),
('Magento_BundleImportExport', '2.0.0', '2.0.0'),
('Magento_CacheInvalidate', '2.0.0', '2.0.0'),
('Magento_Captcha', '2.0.0', '2.0.0'),
('Magento_CardinalCommerce', '1.0.0', '1.0.0'),
('Magento_Catalog', '2.2.6', '2.2.6'),
('Magento_CatalogAnalytics', '2.0.0', '2.0.0'),
('Magento_CatalogImportExport', '2.0.0', '2.0.0'),
('Magento_CatalogInventory', '2.3.0', '2.3.0'),
('Magento_CatalogRule', '2.1.0', '2.1.0'),
('Magento_CatalogRuleConfigurable', '2.0.0', '2.0.0'),
('Magento_CatalogSearch', '2.0.0', '2.0.0'),
('Magento_CatalogUrlRewrite', '2.0.0', '2.0.0'),
('Magento_CatalogWidget', '2.0.1', '2.0.1'),
('Magento_Checkout', '2.0.0', '2.0.0'),
('Magento_CheckoutAgreements', '2.2.0', '2.2.0'),
('Magento_Cms', '2.0.2', '2.0.2'),
('Magento_CmsUrlRewrite', '2.0.0', '2.0.0'),
('Magento_Config', '2.1.0', '2.1.0'),
('Magento_ConfigurableImportExport', '2.0.0', '2.0.0'),
('Magento_ConfigurableProduct', '2.2.2', '2.2.2'),
('Magento_ConfigurableProductSales', '2.2.0', '2.2.0'),
('Magento_Contact', '2.0.0', '2.0.0'),
('Magento_Cookie', '2.0.0', '2.0.0'),
('Magento_Cron', '2.0.0', '2.0.0'),
('Magento_CurrencySymbol', '2.0.1', '2.0.1'),
('Magento_Customer', '2.0.13', '2.0.13'),
('Magento_CustomerAnalytics', '2.0.0', '2.0.0'),
('Magento_CustomerImportExport', '2.0.0', '2.0.0'),
('Magento_Deploy', '2.0.0', '2.0.0'),
('Magento_Developer', '2.0.0', '2.0.0'),
('Magento_Dhl', '2.0.0', '2.0.0'),
('Magento_Directory', '2.0.3', '2.0.3'),
('Magento_Downloadable', '2.0.4', '2.0.4'),
('Magento_DownloadableImportExport', '2.0.0', '2.0.0'),
('Magento_Eav', '2.1.1', '2.1.1'),
('Magento_Email', '2.0.1', '2.0.1'),
('Magento_EncryptionKey', '2.0.0', '2.0.0'),
('Magento_Fedex', '2.0.0', '2.0.0'),
('Magento_GiftMessage', '2.0.1', '2.0.1'),
('Magento_GoogleAdwords', '2.0.0', '2.0.0'),
('Magento_GoogleAnalytics', '2.0.0', '2.0.0'),
('Magento_GoogleOptimizer', '2.0.0', '2.0.0'),
('Magento_GroupedImportExport', '2.0.0', '2.0.0'),
('Magento_GroupedProduct', '2.0.1', '2.0.1'),
('Magento_ImportExport', '2.0.1', '2.0.1'),
('Magento_Indexer', '2.1.0', '2.1.0'),
('Magento_InstantPurchase', '1.0.0', '1.0.0'),
('Magento_Integration', '2.2.1', '2.2.1'),
('Magento_LayeredNavigation', '2.0.0', '2.0.0'),
('Magento_Marketplace', '1.0.0', '1.0.0'),
('Magento_MediaStorage', '2.0.0', '2.0.0'),
('Magento_Msrp', '2.1.3', '2.1.3'),
('Magento_Multishipping', '2.0.0', '2.0.0'),
('Magento_NewRelicReporting', '2.0.1', '2.0.1'),
('Magento_Newsletter', '2.0.2', '2.0.2'),
('Magento_OfflinePayments', '2.0.0', '2.0.0'),
('Magento_OfflineShipping', '2.0.1', '2.0.1'),
('Magento_PageCache', '2.0.0', '2.0.0'),
('Magento_Payment', '2.0.0', '2.0.0'),
('Magento_Paypal', '2.0.1', '2.0.1'),
('Magento_PaypalCaptcha', '2.0.0', '2.0.0'),
('Magento_PaypalReCaptcha', '2.0.0', '2.0.0'),
('Magento_Persistent', '2.0.0', '2.0.0'),
('Magento_ProductAlert', '2.0.0', '2.0.0'),
('Magento_ProductVideo', '2.0.0.2', '2.0.0.2'),
('Magento_Quote', '2.0.8', '2.0.8'),
('Magento_QuoteAnalytics', '2.0.0', '2.0.0'),
('Magento_ReleaseNotification', '2.2.0', '2.2.0'),
('Magento_Reports', '2.0.0', '2.0.0'),
('Magento_RequireJs', '2.0.0', '2.0.0'),
('Magento_Review', '2.0.0', '2.0.0'),
('Magento_ReviewAnalytics', '2.0.0', '2.0.0'),
('Magento_Robots', '2.0.0', '2.0.0'),
('Magento_Rss', '2.0.0', '2.0.0'),
('Magento_Rule', '2.0.0', '2.0.0'),
('Magento_Sales', '2.0.11', '2.0.11'),
('Magento_SalesAnalytics', '2.0.0', '2.0.0'),
('Magento_SalesInventory', '1.0.0', '1.0.0'),
('Magento_SalesRule', '2.0.3', '2.0.3'),
('Magento_SalesSequence', '2.0.0', '2.0.0'),
('Magento_SampleData', '2.0.0', '2.0.0'),
('Magento_Search', '2.0.4', '2.0.4'),
('Magento_Security', '2.0.1', '2.0.1'),
('Magento_SendFriend', '2.0.0', '2.0.0'),
('Magento_Shipping', '2.0.0', '2.0.0'),
('Magento_Signifyd', '2.2.0', '2.2.0'),
('Magento_Sitemap', '2.0.0', '2.0.0'),
('Magento_Store', '2.1.0', '2.1.0'),
('Magento_Swagger', '2.0.0', '2.0.0'),
('Magento_SwaggerWebapi', '1.0.0', '1.0.0'),
('Magento_Swatches', '2.0.3', '2.0.3'),
('Magento_SwatchesLayeredNavigation', '2.0.0', '2.0.0'),
('Magento_Tax', '2.0.3', '2.0.3'),
('Magento_TaxImportExport', '2.0.0', '2.0.0'),
('Magento_Theme', '2.0.2', '2.0.2'),
('Magento_Translation', '2.0.0', '2.0.0'),
('Magento_Ui', '2.0.0', '2.0.0'),
('Magento_Ups', '2.0.0', '2.0.0'),
('Magento_UrlRewrite', '2.0.1', '2.0.1'),
('Magento_User', '2.0.3', '2.0.3'),
('Magento_Usps', '2.0.1', '2.0.1'),
('Magento_Variable', '2.0.0', '2.0.0'),
('Magento_Vault', '2.0.3', '2.0.3'),
('Magento_Version', '2.0.0', '2.0.0'),
('Magento_Webapi', '2.0.0', '2.0.0'),
('Magento_WebapiSecurity', '2.0.0', '2.0.0'),
('Magento_Weee', '2.0.0', '2.0.0'),
('Magento_Widget', '2.0.1', '2.0.1'),
('Magento_Wishlist', '2.0.2', '2.0.2'),
('Magento_WishlistAnalytics', '2.0.0', '2.0.0'),
('Mageplaza_BannerSlider', '2.0.0', '2.0.0'),
('Mageplaza_Blog', '2.5.2', '2.5.2'),
('Mageplaza_Core', '1.0.0', '1.0.0'),
('Mageplaza_QuickFlushCache', '1.0.0', '1.0.0'),
('Main_Store', '1.0.0', '1.0.0'),
('MSP_ReCaptcha', '1.5.0', '1.5.0'),
('Temando_Shipping', '1.2.1', '1.2.1'),
('Vertex_AddressValidation', '100.5.0', '100.5.0'),
('Vertex_Tax', '100.5.1', '100.5.1');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE `shipping_tablerate` (
  `pk` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Dumping data for table `shipping_tablerate`
--

INSERT INTO `shipping_tablerate` (`pk`, `website_id`, `dest_country_id`, `dest_region_id`, `dest_zip`, `condition_name`, `condition_value`, `price`, `cost`) VALUES
(7, 1, 'LB', 0, '*', 'package_weight', '50.0000', '222.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `signifyd_case`
--

CREATE TABLE `signifyd_case` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Order_id',
  `case_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Case_id',
  `guarantee_eligible` tinyint(1) DEFAULT NULL COMMENT 'Guarantee_eligible',
  `guarantee_disposition` varchar(32) DEFAULT 'PENDING' COMMENT 'Guarantee_disposition',
  `status` varchar(32) DEFAULT 'PENDING' COMMENT 'Status',
  `score` int(10) UNSIGNED DEFAULT NULL COMMENT 'Score',
  `associated_team` text COMMENT 'Associated_team',
  `review_disposition` varchar(32) DEFAULT NULL COMMENT 'Review_disposition',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='signifyd_case';

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE `sitemap` (
  `sitemap_id` int(10) UNSIGNED NOT NULL COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_group`
--

CREATE TABLE `store_group` (
  `group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Store group unique code',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

INSERT INTO `store_group` (`group_id`, `website_id`, `code`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'default', 'Default', 0, 0),
(1, 1, 'main_website_store', 'Main Website Store', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_website`
--

CREATE TABLE `store_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Defines Is Website Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

INSERT INTO `store_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Refund Adjustments', 'PRODUCT'),
(5, 'Gift Options', 'PRODUCT'),
(6, 'Order Gift Wrapping', 'PRODUCT'),
(7, 'Item Gift Wrapping', 'PRODUCT'),
(8, 'Printed Gift Card', 'PRODUCT'),
(9, 'Reward Points', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_updated`
--

CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `temando_checkout_address`
--

CREATE TABLE `temando_checkout_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `shipping_address_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Quote Address Id',
  `service_selection` text COMMENT 'Value Added Services'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Checkout Address';

-- --------------------------------------------------------

--
-- Table structure for table `temando_collection_point_search`
--

CREATE TABLE `temando_collection_point_search` (
  `shipping_address_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `country_id` varchar(2) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Collection Point Search';

-- --------------------------------------------------------

--
-- Table structure for table `temando_order`
--

CREATE TABLE `temando_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Order Id',
  `ext_order_id` varchar(64) NOT NULL COMMENT 'Temando Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Order';

-- --------------------------------------------------------

--
-- Table structure for table `temando_order_collection_point`
--

CREATE TABLE `temando_order_collection_point` (
  `recipient_address_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `collection_point_id` varchar(64) NOT NULL COMMENT 'Collection Point Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `country` varchar(2) NOT NULL COMMENT 'Country Code',
  `region` varchar(255) NOT NULL COMMENT 'Region',
  `postcode` varchar(255) NOT NULL COMMENT 'Zip/Postal Code',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `street` text NOT NULL COMMENT 'Street'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order Collection Point Entity';

-- --------------------------------------------------------

--
-- Table structure for table `temando_quote_collection_point`
--

CREATE TABLE `temando_quote_collection_point` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `recipient_address_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote Address Id',
  `collection_point_id` varchar(64) NOT NULL COMMENT 'Collection Point Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `country` varchar(2) NOT NULL COMMENT 'Country Code',
  `region` varchar(255) NOT NULL COMMENT 'Region',
  `postcode` varchar(255) NOT NULL COMMENT 'Zip/Postal Code',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `street` text NOT NULL COMMENT 'Street',
  `opening_hours` text NOT NULL COMMENT 'Opening Hours',
  `shipping_experiences` text NOT NULL COMMENT 'Shipping Experiences',
  `selected` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Selected'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote Collection Point Entity';

-- --------------------------------------------------------

--
-- Table structure for table `temando_shipment`
--

CREATE TABLE `temando_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `shipment_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Shipment Id',
  `ext_shipment_id` varchar(64) NOT NULL COMMENT 'External Shipment Id',
  `ext_location_id` varchar(64) DEFAULT NULL,
  `ext_tracking_url` varchar(255) DEFAULT NULL COMMENT 'External Tracking Url',
  `ext_tracking_reference` varchar(255) DEFAULT NULL COMMENT 'External Tracking Reference',
  `ext_return_shipment_id` varchar(64) DEFAULT NULL COMMENT 'External Return Shipment Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Shipment';

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `parent_id`, `theme_path`, `theme_title`, `preview_image`, `is_featured`, `area`, `type`, `code`) VALUES
(1, NULL, 'Magento/blank', 'Magento Blank', 'preview_image_647d99d4db1ab.jpeg', 0, 'frontend', 0, 'Magento/blank'),
(2, 1, 'Magento/luma', 'Magento Luma', 'preview_image_647d99d5067f0.jpeg', 0, 'frontend', 0, 'Magento/luma'),
(3, NULL, 'Magento/backend', 'Magento 2 backend', NULL, 0, 'adminhtml', 0, 'Magento/backend'),
(5, 2, 'Main/Store', 'new theme', NULL, 0, 'frontend', 0, 'Main/Store');

-- --------------------------------------------------------

--
-- Table structure for table `theme_file`
--

CREATE TABLE `theme_file` (
  `theme_files_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme files identifier',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `key_id` int(10) UNSIGNED NOT NULL COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- --------------------------------------------------------

--
-- Table structure for table `ui_bookmark`
--

CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) UNSIGNED NOT NULL COMMENT 'Bookmark identifier',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

INSERT INTO `ui_bookmark` (`bookmark_id`, `user_id`, `namespace`, `identifier`, `current`, `title`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'design_config_listing', 'current', 0, NULL, '{\"current\":{\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"actions\":4,\"theme_theme_id\":5}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'design_config_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"store_website_id\":{\"visible\":true,\"sorting\":false},\"store_group_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"theme_theme_id\":{\"visible\":true,\"sorting\":false},\"default\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"positions\":{\"default\":0,\"store_website_id\":1,\"store_group_id\":2,\"store_id\":3,\"actions\":4,\"theme_theme_id\":5}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'cms_page_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'cms_page_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"columns\":{\"page_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keywords\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"custom_theme\":{\"visible\":false,\"sorting\":false},\"custom_root_template\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"custom_theme_from\":{\"visible\":false,\"sorting\":false},\"custom_theme_to\":{\"visible\":false,\"sorting\":false}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"search\":{\"value\":\"\"},\"positions\":{\"ids\":0,\"page_id\":1,\"title\":2,\"identifier\":3,\"page_layout\":4,\"store_id\":5,\"is_active\":6,\"creation_time\":7,\"update_time\":8,\"custom_theme_from\":9,\"custom_theme_to\":10,\"custom_theme\":11,\"custom_root_template\":12,\"meta_title\":13,\"meta_keywords\":14,\"meta_description\":15,\"actions\":16}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'cms_block_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8},\"search\":{\"value\":\"\"}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'cms_block_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"block_id\":{\"visible\":true,\"sorting\":\"asc\"},\"title\":{\"visible\":true,\"sorting\":false},\"identifier\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"is_active\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"creation_time\":{\"visible\":true,\"sorting\":false},\"update_time\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"block_id\":1,\"title\":2,\"identifier\":3,\"store_id\":4,\"is_active\":5,\"creation_time\":6,\"update_time\":7,\"actions\":8},\"search\":{\"value\":\"\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'mpbannerslider_banner_listing', 'current', 0, NULL, '{\"current\":{\"columns\":{\"banner_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"updated_at\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"type\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"content\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"banner_id\":1,\"content\":2,\"name\":3,\"type\":4,\"status\":5,\"created_at\":6,\"updated_at\":7,\"actions\":8}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'mpbannerslider_banner_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"banner_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"updated_at\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"type\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"content\":{\"visible\":true,\"sorting\":false}},\"filters\":{\"applied\":{\"placeholder\":true}},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"positions\":{\"ids\":0,\"banner_id\":1,\"content\":2,\"name\":3,\"type\":4,\"status\":5,\"created_at\":6,\"updated_at\":7,\"actions\":8}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'mpbannerslider_slider_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"slider_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"banners\":{\"visible\":true,\"sorting\":false},\"location\":{\"visible\":true,\"sorting\":false},\"store_ids\":{\"visible\":true,\"sorting\":false},\"priority\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group_ids\":{\"visible\":true,\"sorting\":false},\"from_date\":{\"visible\":true,\"sorting\":false},\"to_date\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"slider_id\":1,\"name\":2,\"status\":3,\"banners\":4,\"location\":5,\"store_ids\":6,\"customer_group_ids\":7,\"priority\":8,\"from_date\":9,\"to_date\":10,\"actions\":11}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'mpbannerslider_slider_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"slider_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"banners\":{\"visible\":true,\"sorting\":false},\"location\":{\"visible\":true,\"sorting\":false},\"store_ids\":{\"visible\":true,\"sorting\":false},\"priority\":{\"visible\":true,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group_ids\":{\"visible\":true,\"sorting\":false},\"from_date\":{\"visible\":true,\"sorting\":false},\"to_date\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"slider_id\":1,\"name\":2,\"status\":3,\"banners\":4,\"location\":5,\"store_ids\":6,\"customer_group_ids\":7,\"priority\":8,\"from_date\":9,\"to_date\":10,\"actions\":11}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'product_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"cost\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":false,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"weight\":16,\"manufacturer\":17,\"meta_title\":18,\"meta_keyword\":19,\"meta_description\":20,\"color\":21,\"news_from_date\":22,\"news_to_date\":23,\"custom_design\":24,\"custom_design_from\":25,\"custom_design_to\":26,\"page_layout\":27,\"country_of_manufacture\":28,\"custom_layout\":29,\"msrp\":30,\"url_key\":31,\"gift_message_available\":32,\"tax_class_id\":33,\"cost\":34,\"actions\":35},\"search\":{\"value\":\"\"}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'product_listing', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":30,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":30},\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":false},\"name\":{\"visible\":true,\"sorting\":false},\"sku\":{\"visible\":true,\"sorting\":false},\"price\":{\"visible\":true,\"sorting\":false},\"websites\":{\"visible\":true,\"sorting\":false},\"cost\":{\"visible\":true,\"sorting\":false},\"qty\":{\"visible\":true,\"sorting\":false},\"short_description\":{\"visible\":false,\"sorting\":false},\"special_price\":{\"visible\":false,\"sorting\":false},\"weight\":{\"visible\":true,\"sorting\":false},\"meta_title\":{\"visible\":false,\"sorting\":false},\"meta_keyword\":{\"visible\":false,\"sorting\":false},\"meta_description\":{\"visible\":false,\"sorting\":false},\"msrp\":{\"visible\":false,\"sorting\":false},\"url_key\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"type_id\":{\"visible\":true,\"sorting\":false},\"attribute_set_id\":{\"visible\":true,\"sorting\":false},\"visibility\":{\"visible\":true,\"sorting\":false},\"status\":{\"visible\":true,\"sorting\":false},\"manufacturer\":{\"visible\":false,\"sorting\":false},\"color\":{\"visible\":false,\"sorting\":false},\"custom_design\":{\"visible\":false,\"sorting\":false},\"page_layout\":{\"visible\":false,\"sorting\":false},\"country_of_manufacture\":{\"visible\":false,\"sorting\":false},\"custom_layout\":{\"visible\":false,\"sorting\":false},\"gift_message_available\":{\"visible\":false,\"sorting\":false},\"tax_class_id\":{\"visible\":false,\"sorting\":false},\"thumbnail\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":false,\"sorting\":false},\"special_from_date\":{\"visible\":false,\"sorting\":false},\"special_to_date\":{\"visible\":false,\"sorting\":false},\"news_from_date\":{\"visible\":false,\"sorting\":false},\"news_to_date\":{\"visible\":false,\"sorting\":false},\"custom_design_from\":{\"visible\":false,\"sorting\":false},\"custom_design_to\":{\"visible\":false,\"sorting\":false},\"featured\":{\"sorting\":false,\"visible\":true},\"product_showing_method\":{\"visible\":false,\"sorting\":false},\"product_showing_methods\":{\"visible\":false,\"sorting\":false},\"best_seller_products\":{\"sorting\":false,\"visible\":false},\"bestsellerproducts\":{\"visible\":false,\"sorting\":false},\"product_showing_type\":{\"sorting\":false,\"visible\":true},\"brands\":{\"sorting\":\"asc\",\"visible\":true},\"model\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"entity_id\":1,\"thumbnail\":2,\"name\":3,\"type_id\":4,\"attribute_set_id\":5,\"sku\":6,\"price\":7,\"qty\":8,\"visibility\":9,\"status\":10,\"websites\":11,\"short_description\":12,\"special_price\":13,\"special_from_date\":14,\"special_to_date\":15,\"weight\":16,\"manufacturer\":17,\"meta_title\":18,\"meta_keyword\":19,\"meta_description\":20,\"color\":21,\"news_from_date\":22,\"news_to_date\":23,\"custom_design\":24,\"custom_design_from\":25,\"custom_design_to\":26,\"page_layout\":27,\"country_of_manufacture\":28,\"custom_layout\":29,\"msrp\":30,\"url_key\":31,\"gift_message_available\":32,\"tax_class_id\":33,\"cost\":34,\"actions\":35,\"featured\":36,\"best_seller_products\":37,\"product_showing_type\":38,\"brands\":39,\"model\":40},\"search\":{\"value\":\"\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'product_attributes_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'product_attributes_grid', 'current', 0, NULL, '{\"current\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"displayMode\":\"grid\",\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'product_attributes_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\"},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 'product_attributes_listing', 'current', 0, NULL, '{\"current\":{\"columns\":{\"ids\":{\"visible\":true,\"sorting\":false},\"is_required\":{\"visible\":true,\"sorting\":false},\"is_user_defined\":{\"visible\":true,\"sorting\":false},\"is_visible\":{\"visible\":true,\"sorting\":false},\"is_global\":{\"visible\":true,\"sorting\":false},\"is_searchable\":{\"visible\":true,\"sorting\":false},\"is_comparable\":{\"visible\":true,\"sorting\":false},\"is_filterable\":{\"visible\":true,\"sorting\":false},\"attribute_code\":{\"visible\":true,\"sorting\":\"asc\"},\"frontend_label\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"attribute_code\":1,\"frontend_label\":2,\"is_required\":3,\"is_user_defined\":4,\"is_visible\":5,\"is_global\":6,\"is_searchable\":7,\"is_comparable\":8,\"is_filterable\":9},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\"}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 'customer_online_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"customer_id\":{\"visible\":true,\"sorting\":\"asc\"},\"firstname\":{\"visible\":true,\"sorting\":false},\"lastname\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"last_visit_at\":{\"visible\":true,\"sorting\":false},\"visitor_type\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"customer_id\":0,\"firstname\":1,\"lastname\":2,\"email\":3,\"last_visit_at\":4,\"visitor_type\":5}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 'customer_online_grid', 'current', 0, NULL, '{\"current\":{\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"customer_id\":{\"visible\":true,\"sorting\":\"asc\"},\"firstname\":{\"visible\":true,\"sorting\":false},\"lastname\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"last_visit_at\":{\"visible\":true,\"sorting\":false},\"visitor_type\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"customer_id\":0,\"firstname\":1,\"lastname\":2,\"email\":3,\"last_visit_at\":4,\"visitor_type\":5}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 'sales_order_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":\"desc\"},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"signifyd_guarantee_status\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19,\"signifyd_guarantee_status\":20}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 'sales_order_grid', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"total_refunded\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":\"desc\"},\"status\":{\"visible\":true,\"sorting\":false},\"customer_group\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"signifyd_guarantee_status\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"increment_id\":1,\"store_id\":2,\"created_at\":3,\"billing_name\":4,\"shipping_name\":5,\"base_grand_total\":6,\"grand_total\":7,\"status\":8,\"billing_address\":9,\"shipping_address\":10,\"shipping_information\":11,\"customer_email\":12,\"customer_group\":13,\"subtotal\":14,\"shipping_and_handling\":15,\"customer_name\":16,\"payment_method\":17,\"total_refunded\":18,\"actions\":19,\"signifyd_guarantee_status\":20}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 'customer_listing', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'customer_listing', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"displayMode\":\"grid\",\"columns\":{\"entity_id\":{\"visible\":true,\"sorting\":\"asc\"},\"name\":{\"visible\":true,\"sorting\":false},\"email\":{\"visible\":true,\"sorting\":false},\"billing_telephone\":{\"visible\":true,\"sorting\":false},\"billing_postcode\":{\"visible\":true,\"sorting\":false},\"billing_region\":{\"visible\":true,\"sorting\":false},\"confirmation\":{\"visible\":true,\"sorting\":false},\"created_in\":{\"visible\":true,\"sorting\":false},\"billing_full\":{\"visible\":false,\"sorting\":false},\"shipping_full\":{\"visible\":false,\"sorting\":false},\"taxvat\":{\"visible\":true,\"sorting\":false},\"billing_street\":{\"visible\":false,\"sorting\":false},\"billing_city\":{\"visible\":false,\"sorting\":false},\"billing_fax\":{\"visible\":false,\"sorting\":false},\"billing_vat_id\":{\"visible\":false,\"sorting\":false},\"billing_company\":{\"visible\":false,\"sorting\":false},\"billing_firstname\":{\"visible\":false,\"sorting\":false},\"billing_lastname\":{\"visible\":false,\"sorting\":false},\"lock_expires\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"group_id\":{\"visible\":true,\"sorting\":false},\"billing_country_id\":{\"visible\":true,\"sorting\":false},\"website_id\":{\"visible\":true,\"sorting\":false},\"gender\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"dob\":{\"visible\":true,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"positions\":{\"ids\":0,\"entity_id\":1,\"name\":2,\"email\":3,\"group_id\":4,\"billing_telephone\":5,\"billing_postcode\":6,\"billing_country_id\":7,\"billing_region\":8,\"created_at\":9,\"website_id\":10,\"confirmation\":11,\"created_in\":12,\"billing_full\":13,\"shipping_full\":14,\"dob\":15,\"taxvat\":16,\"gender\":17,\"billing_street\":18,\"billing_city\":19,\"billing_fax\":20,\"billing_vat_id\":21,\"billing_company\":22,\"billing_firstname\":23,\"billing_lastname\":24,\"lock_expires\":25,\"actions\":26}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'sales_order_shipment_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 'sales_order_shipment_grid', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 'sales_order_view_invoice_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 'sales_order_view_creditmemo_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, 'sales_order_view_shipment_grid', 'default', 1, 'Default View', '{\"views\":{\"default\":{\"label\":\"Default View\",\"index\":\"default\",\"editable\":false,\"data\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}},\"value\":\"Default View\"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 'sales_order_view_invoice_grid', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"grand_total\":7,\"store_id\":8,\"billing_address\":9,\"shipping_address\":10,\"customer_name\":11,\"customer_email\":12,\"customer_group_id\":13,\"payment_method\":14,\"shipping_information\":15,\"subtotal\":16,\"shipping_and_handling\":17,\"actions\":18}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ui_bookmark` (`bookmark_id`, `user_id`, `namespace`, `identifier`, `current`, `title`, `config`, `created_at`, `updated_at`) VALUES
(29, 1, 'sales_order_view_creditmemo_grid', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":false},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"billing_name\":{\"visible\":true,\"sorting\":false},\"base_grand_total\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"subtotal\":{\"visible\":false,\"sorting\":false},\"shipping_and_handling\":{\"visible\":false,\"sorting\":false},\"adjustment_positive\":{\"visible\":false,\"sorting\":false},\"adjustment_negative\":{\"visible\":false,\"sorting\":false},\"order_base_grand_total\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"state\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"billing_name\":5,\"state\":6,\"base_grand_total\":7,\"order_status\":8,\"store_id\":9,\"billing_address\":10,\"shipping_address\":11,\"customer_name\":12,\"customer_email\":13,\"customer_group_id\":14,\"payment_method\":15,\"shipping_information\":16,\"subtotal\":17,\"shipping_and_handling\":18,\"adjustment_positive\":19,\"adjustment_negative\":20,\"order_base_grand_total\":21,\"actions\":22}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, 'sales_order_view_shipment_grid', 'current', 0, NULL, '{\"current\":{\"search\":{\"value\":\"\"},\"filters\":{\"applied\":{\"placeholder\":true}},\"paging\":{\"pageSize\":20,\"current\":1,\"options\":{\"20\":{\"value\":20,\"label\":20},\"30\":{\"value\":30,\"label\":30},\"50\":{\"value\":50,\"label\":50},\"100\":{\"value\":100,\"label\":100},\"200\":{\"value\":200,\"label\":200}},\"value\":20},\"columns\":{\"increment_id\":{\"visible\":true,\"sorting\":\"asc\"},\"order_increment_id\":{\"visible\":true,\"sorting\":false},\"shipping_name\":{\"visible\":true,\"sorting\":false},\"total_qty\":{\"visible\":true,\"sorting\":false},\"store_id\":{\"visible\":false,\"sorting\":false},\"customer_name\":{\"visible\":false,\"sorting\":false},\"customer_email\":{\"visible\":false,\"sorting\":false},\"billing_address\":{\"visible\":false,\"sorting\":false},\"shipping_address\":{\"visible\":false,\"sorting\":false},\"shipping_information\":{\"visible\":false,\"sorting\":false},\"ids\":{\"visible\":true,\"sorting\":false},\"created_at\":{\"visible\":true,\"sorting\":false},\"order_created_at\":{\"visible\":true,\"sorting\":false},\"order_status\":{\"visible\":false,\"sorting\":false},\"customer_group_id\":{\"visible\":false,\"sorting\":false},\"payment_method\":{\"visible\":false,\"sorting\":false},\"actions\":{\"visible\":true,\"sorting\":false}},\"displayMode\":\"grid\",\"positions\":{\"ids\":0,\"increment_id\":1,\"created_at\":2,\"order_increment_id\":3,\"order_created_at\":4,\"shipping_name\":5,\"total_qty\":6,\"order_status\":7,\"store_id\":8,\"customer_name\":9,\"customer_email\":10,\"customer_group_id\":11,\"billing_address\":12,\"shipping_address\":13,\"payment_method\":14,\"shipping_information\":15,\"actions\":16}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrite`
--

CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

INSERT INTO `url_rewrite` (`url_rewrite_id`, `entity_type`, `entity_id`, `request_path`, `target_path`, `redirect_type`, `store_id`, `description`, `is_autogenerated`, `metadata`) VALUES
(6, 'category', 6, 'heating.html', 'catalog/category/view/id/6', 0, 1, NULL, 1, NULL),
(8, 'category', 8, 'solar.html', 'catalog/category/view/id/8', 0, 1, NULL, 1, NULL),
(9, 'category', 9, 'plumbing.html', 'catalog/category/view/id/9', 0, 1, NULL, 1, NULL),
(10, 'category', 10, 'piping.html', 'catalog/category/view/id/10', 0, 1, NULL, 1, NULL),
(12, 'category', 12, 'air.html', 'catalog/category/view/id/12', 0, 1, NULL, 1, NULL),
(120, 'product', 19, 'test-the-model.html', 'catalog/product/view/id/19', 0, 1, NULL, 1, NULL),
(132, 'product', 21, 'eca-manometer-1-4.html', 'catalog/product/view/id/21', 0, 1, NULL, 1, NULL),
(133, 'product', 21, 'air/eca-manometer-1-4.html', 'catalog/product/view/id/21/category/12', 0, 1, NULL, 1, '{\"category_id\":\"12\"}'),
(134, 'product', 21, '/eca-manometer-1-4.html', 'catalog/product/view/id/21/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(135, 'product', 22, 'ov-ofix-oil-comp-tee-10mm.html', 'catalog/product/view/id/22', 0, 1, NULL, 1, NULL),
(136, 'product', 22, 'piping/ov-ofix-oil-comp-tee-10mm.html', 'catalog/product/view/id/22/category/10', 0, 1, NULL, 1, '{\"category_id\":\"10\"}'),
(137, 'product', 22, '/ov-ofix-oil-comp-tee-10mm.html', 'catalog/product/view/id/22/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(138, 'product', 23, 'ov-nr-4-metal-cabinet-120x76x11-5.html', 'catalog/product/view/id/23', 0, 1, NULL, 1, NULL),
(139, 'product', 23, 'solar/ov-nr-4-metal-cabinet-120x76x11-5.html', 'catalog/product/view/id/23/category/8', 0, 1, NULL, 1, '{\"category_id\":\"8\"}'),
(140, 'product', 23, '/ov-nr-4-metal-cabinet-120x76x11-5.html', 'catalog/product/view/id/23/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(145, 'product', 24, 'arthermo-manometer-radial.html', 'catalog/product/view/id/24', 0, 1, NULL, 1, NULL),
(146, 'product', 24, 'solar/arthermo-manometer-radial.html', 'catalog/product/view/id/24/category/8', 0, 1, NULL, 1, '{\"category_id\":\"8\"}'),
(147, 'product', 24, '/arthermo-manometer-radial.html', 'catalog/product/view/id/24/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(148, 'product', 25, 'actuat-plate-alpha10-for-2flush.html', 'catalog/product/view/id/25', 0, 1, NULL, 1, NULL),
(150, 'product', 27, 'heavy-anchor-rawl-bolt.html', 'catalog/product/view/id/27', 0, 1, NULL, 1, NULL),
(153, 'product', 30, 'ov-filling-station-for-heating-system-3-4.html', 'catalog/product/view/id/30', 0, 1, NULL, 1, NULL),
(154, 'cms-page', 5, 'shop', 'cms/page/view/page_id/5', 0, 1, NULL, 1, NULL),
(155, 'category', 13, 'heating/heat-pump.html', 'catalog/category/view/id/13', 0, 1, NULL, 1, NULL),
(156, 'category', 14, 'heating/boilers.html', 'catalog/category/view/id/14', 0, 1, NULL, 1, NULL),
(157, 'category', 15, 'heating/burners.html', 'catalog/category/view/id/15', 0, 1, NULL, 1, NULL),
(158, 'category', 16, 'heating/radiators.html', 'catalog/category/view/id/16', 0, 1, NULL, 1, NULL),
(159, 'category', 17, 'solar/solar-collectors.html', 'catalog/category/view/id/17', 0, 1, NULL, 1, NULL),
(160, 'category', 18, 'solar/solar-water-circuit.html', 'catalog/category/view/id/18', 0, 1, NULL, 1, NULL),
(161, 'category', 19, 'plumbing/hot-waters.html', 'catalog/category/view/id/19', 0, 1, NULL, 1, NULL),
(162, 'category', 20, 'plumbing/valves.html', 'catalog/category/view/id/20', 0, 1, NULL, 1, NULL),
(163, 'category', 21, 'plumbing/sanitary-fixtures.html', 'catalog/category/view/id/21', 0, 1, NULL, 1, NULL),
(164, 'category', 22, 'piping/pex.html', 'catalog/category/view/id/22', 0, 1, NULL, 1, NULL),
(165, 'category', 23, 'piping/sealant.html', 'catalog/category/view/id/23', 0, 1, NULL, 1, NULL),
(166, 'category', 24, 'air/central-vacuum.html', 'catalog/category/view/id/24', 0, 1, NULL, 1, NULL),
(167, 'product', 29, 'ov-multidis-sf-topmeter.html', 'catalog/product/view/id/29', 0, 1, NULL, 1, NULL),
(168, 'product', 29, 'heating/ov-multidis-sf-topmeter.html', 'catalog/product/view/id/29/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(169, 'product', 29, '/ov-multidis-sf-topmeter.html', 'catalog/product/view/id/29/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(170, 'product', 36, 'configurable-test.html', 'catalog/product/view/id/36', 0, 1, NULL, 1, NULL),
(172, 'product', 28, '5543-liquid-sealent.html', 'catalog/product/view/id/28', 0, 1, NULL, 1, NULL),
(174, 'product', 28, '/5543-liquid-sealent.html', 'catalog/product/view/id/28/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(201, 'product', 14, 'configurable.html', 'catalog/product/view/id/14', 0, 1, NULL, 1, NULL),
(202, 'product', 14, 'heating/configurable.html', 'catalog/product/view/id/14/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(203, 'product', 14, 'heating/heat-pump/configurable.html', 'catalog/product/view/id/14/category/13', 0, 1, NULL, 1, '{\"category_id\":\"13\"}'),
(204, 'product', 14, '/configurable.html', 'catalog/product/view/id/14/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(206, 'category', 26, 'water.html', 'catalog/category/view/id/26', 0, 1, NULL, 1, NULL),
(207, 'product', 20, 'spirotech-ab050-008-spirotop-solar-aav1-2.html', 'catalog/product/view/id/20', 0, 1, NULL, 1, NULL),
(208, 'product', 20, 'water/spirotech-ab050-008-spirotop-solar-aav1-2.html', 'catalog/product/view/id/20/category/26', 0, 1, NULL, 1, '{\"category_id\":\"26\"}'),
(209, 'product', 20, '/spirotech-ab050-008-spirotop-solar-aav1-2.html', 'catalog/product/view/id/20/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(215, 'category', 32, 'heating/floor-heating.html', 'catalog/category/view/id/32', 0, 1, NULL, 1, NULL),
(216, 'product', 26, 'twin-insulated-solar-hose.html', 'catalog/product/view/id/26', 0, 1, NULL, 1, NULL),
(217, 'product', 26, 'heating/floor-heating/twin-insulated-solar-hose.html', 'catalog/product/view/id/26/category/32', 0, 1, NULL, 1, '{\"category_id\":\"32\"}'),
(218, 'product', 26, '/twin-insulated-solar-hose.html', 'catalog/product/view/id/26/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(219, 'product', 26, 'heating/twin-insulated-solar-hose.html', 'catalog/product/view/id/26/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(220, 'category', 33, 'solar/solar-water-heaters.html', 'catalog/category/view/id/33', 0, 1, NULL, 1, NULL),
(221, 'category', 34, 'piping/copper.html', 'catalog/category/view/id/34', 0, 1, NULL, 1, NULL),
(222, 'category', 35, 'water/water-treatment.html', 'catalog/category/view/id/35', 0, 1, NULL, 1, NULL),
(223, 'category', 36, 'water/sewage-treatment.html', 'catalog/category/view/id/36', 0, 1, NULL, 1, NULL),
(224, 'product', 40, 'maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40', 0, 1, NULL, 1, NULL),
(225, 'product', 40, 'heating/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(226, 'product', 40, 'solar/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/8', 0, 1, NULL, 1, '{\"category_id\":\"8\"}'),
(227, 'product', 40, 'plumbing/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/9', 0, 1, NULL, 1, '{\"category_id\":\"9\"}'),
(228, 'product', 40, 'piping/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/10', 0, 1, NULL, 1, '{\"category_id\":\"10\"}'),
(229, 'product', 40, 'air/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/12', 0, 1, NULL, 1, '{\"category_id\":\"12\"}'),
(230, 'product', 40, 'water/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/26', 0, 1, NULL, 1, '{\"category_id\":\"26\"}'),
(231, 'product', 40, '/maxa-air-to-water-heat-pump-10kw-ihwak-kp-v410.html', 'catalog/product/view/id/40/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(232, 'product', 41, 'maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41', 0, 1, NULL, 1, NULL),
(233, 'product', 41, 'heating/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(234, 'product', 41, 'solar/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/8', 0, 1, NULL, 1, '{\"category_id\":\"8\"}'),
(235, 'product', 41, 'plumbing/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/9', 0, 1, NULL, 1, '{\"category_id\":\"9\"}'),
(236, 'product', 41, 'piping/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/10', 0, 1, NULL, 1, '{\"category_id\":\"10\"}'),
(237, 'product', 41, 'air/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/12', 0, 1, NULL, 1, '{\"category_id\":\"12\"}'),
(238, 'product', 41, 'water/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/26', 0, 1, NULL, 1, '{\"category_id\":\"26\"}'),
(239, 'product', 41, '/maxa-calido-hot-water-heat-pump-200l.html', 'catalog/product/view/id/41/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}'),
(247, 'product', 42, 'evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42', 0, 1, NULL, 1, NULL),
(248, 'product', 42, 'heating/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/6', 0, 1, NULL, 1, '{\"category_id\":\"6\"}'),
(249, 'product', 42, 'solar/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/8', 0, 1, NULL, 1, '{\"category_id\":\"8\"}'),
(250, 'product', 42, 'piping/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/10', 0, 1, NULL, 1, '{\"category_id\":\"10\"}'),
(251, 'product', 42, 'air/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/12', 0, 1, NULL, 1, '{\"category_id\":\"12\"}'),
(252, 'product', 42, 'water/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/26', 0, 1, NULL, 1, '{\"category_id\":\"26\"}'),
(253, 'product', 42, 'heating/heat-pump/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/13', 0, 1, NULL, 1, '{\"category_id\":\"13\"}'),
(254, 'product', 42, '/evolution-ev30fm-condensing-boiler-30kw.html', 'catalog/product/view/id/42/category/3', 0, 1, NULL, 1, '{\"category_id\":\"3\"}');

-- --------------------------------------------------------

--
-- Table structure for table `variable`
--

CREATE TABLE `variable` (
  `variable_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- --------------------------------------------------------

--
-- Table structure for table `variable_value`
--

CREATE TABLE `variable_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Value Id',
  `variable_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- --------------------------------------------------------

--
-- Table structure for table `vault_payment_token`
--

CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

-- --------------------------------------------------------

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment token Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_customer_code`
--

CREATE TABLE `vertex_customer_code` (
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer ID',
  `customer_code` text COMMENT 'Customer Code for Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_customer_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_custom_option_flex_field`
--

CREATE TABLE `vertex_custom_option_flex_field` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Map Entity ID',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Customizable Option ID',
  `website_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `flex_field` text COMMENT 'Flexible Field ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customizable Option to Flex Field Map';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_invoice_sent`
--

CREATE TABLE `vertex_invoice_sent` (
  `invoice_id` int(10) UNSIGNED NOT NULL COMMENT 'Invoice ID',
  `sent_to_vertex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Invoice has been logged in Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_invoice_sent';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_order_invoice_status`
--

CREATE TABLE `vertex_order_invoice_status` (
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order ID',
  `sent_to_vertex` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Invoice has been logged in Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_order_invoice_status';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_creditmemo_item_invoice_text_code`
--

CREATE TABLE `vertex_sales_creditmemo_item_invoice_text_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Creditmemo Item ID',
  `invoice_text_code` varchar(100) NOT NULL COMMENT 'Invoice text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_creditmemo_item_invoice_text_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_creditmemo_item_tax_code`
--

CREATE TABLE `vertex_sales_creditmemo_item_tax_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Creditmemo Item ID',
  `tax_code` varchar(100) NOT NULL COMMENT 'Invoice text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_creditmemo_item_tax_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_creditmemo_item_vertex_tax_code`
--

CREATE TABLE `vertex_sales_creditmemo_item_vertex_tax_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Creditmemo Item ID',
  `vertex_tax_code` varchar(100) NOT NULL COMMENT 'Text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_creditmemo_item_vertex_tax_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_order_item_invoice_text_code`
--

CREATE TABLE `vertex_sales_order_item_invoice_text_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Item ID',
  `invoice_text_code` varchar(100) NOT NULL COMMENT 'Invoice text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_order_item_invoice_text_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_order_item_tax_code`
--

CREATE TABLE `vertex_sales_order_item_tax_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Item ID',
  `tax_code` varchar(100) NOT NULL COMMENT 'Invoice text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_order_item_tax_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_sales_order_item_vertex_tax_code`
--

CREATE TABLE `vertex_sales_order_item_vertex_tax_code` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Item ID',
  `vertex_tax_code` varchar(100) NOT NULL COMMENT 'Text code from Vertex'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vertex_sales_order_item_vertex_tax_code';

-- --------------------------------------------------------

--
-- Table structure for table `vertex_taxrequest`
--

CREATE TABLE `vertex_taxrequest` (
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `request_type` varchar(255) NOT NULL COMMENT 'Request Type',
  `response_time` int(10) UNSIGNED DEFAULT NULL COMMENT 'Milliseconds taken for Vertex API call to complete',
  `quote_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `total_tax` varchar(255) NOT NULL COMMENT 'Total Tax Amount',
  `source_path` varchar(255) NOT NULL COMMENT 'Source path controller_module_action',
  `tax_area_id` varchar(255) NOT NULL COMMENT 'Tax Jurisdictions Id',
  `sub_total` varchar(255) NOT NULL COMMENT 'Response Subtotal Amount',
  `total` varchar(255) NOT NULL COMMENT 'Response Total Amount',
  `lookup_result` varchar(255) NOT NULL COMMENT 'Tax Area Response Lookup Result',
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Request create date',
  `request_xml` text NOT NULL COMMENT 'Request XML',
  `response_xml` text NOT NULL COMMENT 'Response XML'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of requests to Vertex';

-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `widget_id` int(10) UNSIGNED NOT NULL COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE `widget_instance` (
  `instance_id` int(10) UNSIGNED NOT NULL COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Dumping data for table `widget_instance`
--

INSERT INTO `widget_instance` (`instance_id`, `instance_type`, `theme_id`, `title`, `store_ids`, `widget_parameters`, `sort_order`) VALUES
(1, 'Magento\\Catalog\\Block\\Widget\\RecentlyViewed', 5, 'recently viewed ', '0,1', '{\"uiComponent\":\"widget_recently_viewed\",\"page_size\":\"5\",\"show_attributes\":[\"name\",\"image\",\"price\"],\"show_buttons\":[\"add_to_cart\"]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE `widget_instance_page` (
  `page_id` int(10) UNSIGNED NOT NULL COMMENT 'Page Id',
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Dumping data for table `widget_instance_page`
--

INSERT INTO `widget_instance_page` (`page_id`, `instance_id`, `page_group`, `layout_handle`, `block_reference`, `page_for`, `entities`, `page_template`) VALUES
(1, 1, 'all_pages', 'default', 'sidebar.main', 'all', '', 'product/widget/viewed/sidebar.phtml');

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Dumping data for table `widget_instance_page_layout`
--

INSERT INTO `widget_instance_page_layout` (`page_id`, `layout_update_id`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist ID',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, 'aJUKui1Q9tI95SaC4VOH9PKvWpj74nTq', '2023-07-25 12:52:47'),
(2, 2, 0, 'ih6uBnHnTvm6SqVeFlZVTk8Vkx5MThBT', '2023-07-26 13:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Dumping data for table `wishlist_item`
--

INSERT INTO `wishlist_item` (`wishlist_item_id`, `wishlist_id`, `product_id`, `store_id`, `added_at`, `description`, `qty`) VALUES
(10, 1, 30, 1, '2023-07-26 10:57:14', NULL, '1.0000'),
(11, 2, 23, 1, '2023-07-26 13:16:16', NULL, '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item_option`
--

CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Dumping data for table `wishlist_item_option`
--

INSERT INTO `wishlist_item_option` (`option_id`, `wishlist_item_id`, `product_id`, `code`, `value`) VALUES
(10, 10, 30, 'info_buyRequest', '{\"product_id\":\"30\"}'),
(11, 11, 23, 'info_buyRequest', '{\"product_id\":\"23\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Indexes for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`);

--
-- Indexes for table `admin_system_messages`
--
ALTER TABLE `admin_system_messages`
  ADD PRIMARY KEY (`identity`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ADMIN_USER_USERNAME` (`username`);

--
-- Indexes for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  ADD KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`);

--
-- Indexes for table `amazon_customer`
--
ALTER TABLE `amazon_customer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `AMAZON_CUSTOMER_CUSTOMER_ID_AMAZON_ID` (`customer_id`,`amazon_id`),
  ADD UNIQUE KEY `AMAZON_CUSTOMER_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `amazon_pending_authorization`
--
ALTER TABLE `amazon_pending_authorization`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `UNQ_E6CCA08713FB32BB136A56837009C371` (`order_id`,`payment_id`,`authorization_id`);

--
-- Indexes for table `amazon_pending_capture`
--
ALTER TABLE `amazon_pending_capture`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `AMAZON_PENDING_CAPTURE_ORDER_ID_PAYMENT_ID_CAPTURE_ID` (`order_id`,`payment_id`,`capture_id`);

--
-- Indexes for table `amazon_pending_refund`
--
ALTER TABLE `amazon_pending_refund`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `AMAZON_PENDING_REFUND_ORDER_ID_PAYMENT_ID_REFUND_ID` (`order_id`,`payment_id`,`refund_id`);

--
-- Indexes for table `amazon_quote`
--
ALTER TABLE `amazon_quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `AMAZON_QUOTE_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `amazon_sales_order`
--
ALTER TABLE `amazon_sales_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `AMAZON_SALES_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `authorization_role`
--
ALTER TABLE `authorization_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Indexes for table `cache_tag`
--
ALTER TABLE `cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`),
  ADD KEY `CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Indexes for table `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Indexes for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`);

--
-- Indexes for table `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_replica`
--
ALTER TABLE `cataloginventory_stock_status_replica`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_STATUS` (`stock_status`);

--
-- Indexes for table `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_group_website_replica`
--
ALTER TABLE `catalogrule_group_website_replica`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price_replica`
--
ALTER TABLE `catalogrule_product_price_replica`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_replica`
--
ALTER TABLE `catalogrule_product_replica`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogsearch_fulltext_scope1`
--
ALTER TABLE `catalogsearch_fulltext_scope1`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`);
ALTER TABLE `catalogsearch_fulltext_scope1` ADD FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_PATH` (`path`);

--
-- Indexes for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_replica`
--
ALTER TABLE `catalog_category_product_index_replica`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_store1`
--
ALTER TABLE `catalog_category_product_index_store1`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `IDX_4B965DC45C352D6E4C9DC0FF50B1FCF5` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `IDX_47AB760CD6A893ACEA69A9C2E0112C60` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_store1_replica`
--
ALTER TABLE `catalog_category_product_index_store1_replica`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE1_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `IDX_216E521C8AD125E066D2B0BAB4A08412` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`);

--
-- Indexes for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Indexes for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_BNDL_OPT_VAL_OPT_ID_PARENT_PRD_ID_STORE_ID` (`option_id`,`parent_product_id`,`store_id`);

--
-- Indexes for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`parent_product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Indexes for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Indexes for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_VAL_ID_STORE_ID` (`entity_id`,`value_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  ADD PRIMARY KEY (`action_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_VISITOR_ID_PRODUCT_ID_TYPE_ID` (`visitor_id`,`product_id`,`type_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_FRONTEND_ACTION_CUSTOMER_ID_PRODUCT_ID_TYPE_ID` (`customer_id`,`product_id`,`type_id`);

--
-- Indexes for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_replica`
--
ALTER TABLE `catalog_product_index_eav_decimal_replica`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_replica`
--
ALTER TABLE `catalog_product_index_eav_replica`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`,`source_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_replica`
--
ALTER TABLE `catalog_product_index_price_replica`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Indexes for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`);

--
-- Indexes for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Indexes for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Indexes for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Indexes for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`);

--
-- Indexes for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  ADD KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`);

--
-- Indexes for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`),
  ADD KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- Indexes for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`),
  ADD KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `CMS_PAGE_IDENTIFIER` (`identifier`);
ALTER TABLE `cms_page` ADD FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Indexes for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  ADD KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Indexes for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Indexes for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`),
  ADD KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  ADD KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  ADD KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`);

--
-- Indexes for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`),
  ADD KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_grid_flat`
--
ALTER TABLE `customer_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  ADD KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  ADD KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  ADD KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  ADD KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`);
ALTER TABLE `customer_grid_flat` ADD FULLTEXT KEY `FTI_8746F705702DD5F6D45B8C7CE7FE9F2F` (`name`,`email`,`created_in`,`taxvat`,`shipping_full`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_log`
--
ALTER TABLE `customer_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  ADD KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`);

--
-- Indexes for table `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`),
  ADD KEY `DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Indexes for table `design_config_grid_flat`
--
ALTER TABLE `design_config_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`);
ALTER TABLE `design_config_grid_flat` ADD FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`);

--
-- Indexes for table `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`),
  ADD UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Indexes for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Indexes for table `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`),
  ADD KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Indexes for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Indexes for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Indexes for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`);

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_CODE` (`attribute_set_id`,`attribute_group_code`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Indexes for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD PRIMARY KEY (`swatch_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  ADD KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`);

--
-- Indexes for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  ADD KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Indexes for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`),
  ADD KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Indexes for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`),
  ADD UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  ADD KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`),
  ADD UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`);

--
-- Indexes for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`),
  ADD KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  ADD KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`),
  ADD KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `email_abandoned_cart`
--
ALTER TABLE `email_abandoned_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_ABANDONED_CART_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_ABANDONED_CART_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_ABANDONED_CART_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_ABANDONED_CART_EMAIL` (`email`);

--
-- Indexes for table `email_automation`
--
ALTER TABLE `email_automation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_AUTOMATION_AUTOMATION_TYPE` (`automation_type`),
  ADD KEY `EMAIL_AUTOMATION_ENROLMENT_STATUS` (`enrolment_status`),
  ADD KEY `EMAIL_AUTOMATION_TYPE_ID` (`type_id`),
  ADD KEY `EMAIL_AUTOMATION_EMAIL` (`email`),
  ADD KEY `EMAIL_AUTOMATION_PROGRAM_ID` (`program_id`),
  ADD KEY `EMAIL_AUTOMATION_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_AUTOMATION_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_AUTOMATION_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `email_campaign`
--
ALTER TABLE `email_campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_CAMPAIGN_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_CAMPAIGN_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `EMAIL_CAMPAIGN_EMAIL` (`email`),
  ADD KEY `EMAIL_CAMPAIGN_SEND_ID` (`send_id`),
  ADD KEY `EMAIL_CAMPAIGN_SEND_STATUS` (`send_status`),
  ADD KEY `EMAIL_CAMPAIGN_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_CAMPAIGN_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_CAMPAIGN_SENT_AT` (`sent_at`),
  ADD KEY `EMAIL_CAMPAIGN_EVENT_NAME` (`event_name`),
  ADD KEY `EMAIL_CAMPAIGN_MESSAGE` (`message`),
  ADD KEY `EMAIL_CAMPAIGN_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_CAMPAIGN_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `email_catalog`
--
ALTER TABLE `email_catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_CATALOG_PRODUCT_ID` (`product_id`),
  ADD KEY `EMAIL_CATALOG_IMPORTED` (`imported`),
  ADD KEY `EMAIL_CATALOG_MODIFIED` (`modified`),
  ADD KEY `EMAIL_CATALOG_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_CATALOG_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD PRIMARY KEY (`email_contact_id`),
  ADD KEY `EMAIL_CONTACT_EMAIL_CONTACT_ID` (`email_contact_id`),
  ADD KEY `EMAIL_CONTACT_IS_GUEST` (`is_guest`),
  ADD KEY `EMAIL_CONTACT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_CONTACT_WEBSITE_ID` (`website_id`),
  ADD KEY `EMAIL_CONTACT_IS_SUBSCRIBER` (`is_subscriber`),
  ADD KEY `EMAIL_CONTACT_SUBSCRIBER_STATUS` (`subscriber_status`),
  ADD KEY `EMAIL_CONTACT_EMAIL_IMPORTED` (`email_imported`),
  ADD KEY `EMAIL_CONTACT_SUBSCRIBER_IMPORTED` (`subscriber_imported`),
  ADD KEY `EMAIL_CONTACT_SUPPRESSED` (`suppressed`),
  ADD KEY `EMAIL_CONTACT_EMAIL` (`email`),
  ADD KEY `EMAIL_CONTACT_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `email_contact_consent`
--
ALTER TABLE `email_contact_consent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_CONTACT_CONSENT_EMAIL_CONTACT_ID` (`email_contact_id`);

--
-- Indexes for table `email_failed_auth`
--
ALTER TABLE `email_failed_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_AUTH_EDC_STORE_ID` (`store_id`);

--
-- Indexes for table `email_importer`
--
ALTER TABLE `email_importer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_TYPE` (`import_type`),
  ADD KEY `EMAIL_IMPORTER_WEBSITE_ID` (`website_id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_STATUS` (`import_status`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_MODE` (`import_mode`),
  ADD KEY `EMAIL_IMPORTER_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_IMPORTER_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_ID` (`import_id`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_STARTED` (`import_started`),
  ADD KEY `EMAIL_IMPORTER_IMPORT_FINISHED` (`import_finished`);

--
-- Indexes for table `email_order`
--
ALTER TABLE `email_order`
  ADD PRIMARY KEY (`email_order_id`),
  ADD KEY `EMAIL_ORDER_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `EMAIL_ORDER_EMAIL_IMPORTED` (`email_imported`),
  ADD KEY `EMAIL_ORDER_ORDER_STATUS` (`order_status`),
  ADD KEY `EMAIL_ORDER_MODIFIED` (`modified`),
  ADD KEY `EMAIL_ORDER_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` (`order_id`);

--
-- Indexes for table `email_review`
--
ALTER TABLE `email_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_REVIEW_REVIEW_ID` (`review_id`),
  ADD KEY `EMAIL_REVIEW_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_REVIEW_STORE_ID` (`store_id`),
  ADD KEY `EMAIL_REVIEW_REVIEW_IMPORTED` (`review_imported`),
  ADD KEY `EMAIL_REVIEW_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_REVIEW_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `email_rules`
--
ALTER TABLE `email_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  ADD KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `email_wishlist`
--
ALTER TABLE `email_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `EMAIL_WISHLIST_ITEM_COUNT` (`item_count`),
  ADD KEY `EMAIL_WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_MODIFIED` (`wishlist_modified`),
  ADD KEY `EMAIL_WISHLIST_WISHLIST_IMPORTED` (`wishlist_imported`),
  ADD KEY `EMAIL_WISHLIST_CREATED_AT` (`created_at`),
  ADD KEY `EMAIL_WISHLIST_UPDATED_AT` (`updated_at`),
  ADD KEY `EMAIL_WISHLIST_STORE_ID` (`store_id`);

--
-- Indexes for table `flag`
--
ALTER TABLE `flag`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `FLAG_LAST_UPDATE` (`last_update`);

--
-- Indexes for table `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Indexes for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`);

--
-- Indexes for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_history`
--
ALTER TABLE `import_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `indexer_state`
--
ALTER TABLE `indexer_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`integration_id`),
  ADD UNIQUE KEY `INTEGRATION_NAME` (`name`),
  ADD UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`);

--
-- Indexes for table `klarna_core_order`
--
ALTER TABLE `klarna_core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `KLARNA_CORE_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` (`order_id`),
  ADD KEY `KLARNA_CORE_ORDER_IS_ACKNOWLEDGED` (`is_acknowledged`);

--
-- Indexes for table `klarna_payments_quote`
--
ALTER TABLE `klarna_payments_quote`
  ADD PRIMARY KEY (`payments_quote_id`),
  ADD KEY `KLARNA_PAYMENTS_QUOTE_QUOTE_ID_QUOTE_ENTITY_ID` (`quote_id`);

--
-- Indexes for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD PRIMARY KEY (`layout_link_id`),
  ADD KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  ADD KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  ADD KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `layout_update`
--
ALTER TABLE `layout_update`
  ADD PRIMARY KEY (`layout_update_id`),
  ADD KEY `LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Indexes for table `mageplaza_bannerslider_banner`
--
ALTER TABLE `mageplaza_bannerslider_banner`
  ADD PRIMARY KEY (`banner_id`);
ALTER TABLE `mageplaza_bannerslider_banner` ADD FULLTEXT KEY `MAGEPLAZA_BANNERSLIDER_BANNER_NAME_IMAGE_URL_BANNER` (`name`,`image`,`url_banner`);

--
-- Indexes for table `mageplaza_bannerslider_banner_slider`
--
ALTER TABLE `mageplaza_bannerslider_banner_slider`
  ADD PRIMARY KEY (`slider_id`,`banner_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BANNERSLIDER_BANNER_SLIDER_SLIDER_ID_BANNER_ID` (`slider_id`,`banner_id`),
  ADD KEY `MAGEPLAZA_BANNERSLIDER_BANNER_SLIDER_SLIDER_ID` (`slider_id`),
  ADD KEY `MAGEPLAZA_BANNERSLIDER_BANNER_SLIDER_BANNER_ID` (`banner_id`);

--
-- Indexes for table `mageplaza_bannerslider_slider`
--
ALTER TABLE `mageplaza_bannerslider_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `mageplaza_blog_author`
--
ALTER TABLE `mageplaza_blog_author`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_AUTHOR_USER_ID` (`user_id`);

--
-- Indexes for table `mageplaza_blog_category`
--
ALTER TABLE `mageplaza_blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `mageplaza_blog_comment`
--
ALTER TABLE `mageplaza_blog_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `MAGEPLAZA_BLOG_COMMENT_COMMENT_ID` (`comment_id`),
  ADD KEY `MAGEPLAZA_BLOG_COMMENT_ENTITY_ID` (`entity_id`),
  ADD KEY `MAGEPLAZA_BLOG_COMMENT_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` (`post_id`);

--
-- Indexes for table `mageplaza_blog_comment_like`
--
ALTER TABLE `mageplaza_blog_comment_like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `MAGEPLAZA_BLOG_COMMENT_LIKE_LIKE_ID` (`like_id`),
  ADD KEY `FK_1AA6C994694449283752B6F4C2373B42` (`comment_id`),
  ADD KEY `MAGEPLAZA_BLOG_COMMENT_LIKE_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `mageplaza_blog_post`
--
ALTER TABLE `mageplaza_blog_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_AUTHOR_ID_MAGEPLAZA_BLOG_AUTHOR_USER_ID` (`author_id`);

--
-- Indexes for table `mageplaza_blog_post_category`
--
ALTER TABLE `mageplaza_blog_post_category`
  ADD PRIMARY KEY (`category_id`,`post_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_POST_CATEGORY_CATEGORY_ID_POST_ID` (`category_id`,`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_CATEGORY_CATEGORY_ID` (`category_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_CATEGORY_POST_ID` (`post_id`);

--
-- Indexes for table `mageplaza_blog_post_history`
--
ALTER TABLE `mageplaza_blog_post_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `mageplaza_blog_post_like`
--
ALTER TABLE `mageplaza_blog_post_like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_LIKE_LIKE_ID` (`like_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_LIKE_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` (`post_id`);

--
-- Indexes for table `mageplaza_blog_post_product`
--
ALTER TABLE `mageplaza_blog_post_product`
  ADD PRIMARY KEY (`post_id`,`entity_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_POST_PRODUCT_POST_ID_ENTITY_ID` (`post_id`,`entity_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_PRODUCT_POST_ID` (`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_PRODUCT_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `mageplaza_blog_post_tag`
--
ALTER TABLE `mageplaza_blog_post_tag`
  ADD PRIMARY KEY (`tag_id`,`post_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_POST_TAG_POST_ID_TAG_ID` (`post_id`,`tag_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TAG_POST_ID` (`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TAG_TAG_ID` (`tag_id`);

--
-- Indexes for table `mageplaza_blog_post_topic`
--
ALTER TABLE `mageplaza_blog_post_topic`
  ADD PRIMARY KEY (`topic_id`,`post_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_POST_TOPIC_POST_ID_TOPIC_ID` (`post_id`,`topic_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TOPIC_POST_ID` (`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TOPIC_TOPIC_ID` (`topic_id`);

--
-- Indexes for table `mageplaza_blog_post_traffic`
--
ALTER TABLE `mageplaza_blog_post_traffic`
  ADD PRIMARY KEY (`traffic_id`),
  ADD UNIQUE KEY `MAGEPLAZA_BLOG_POST_TRAFFIC_POST_ID_TRAFFIC_ID` (`post_id`,`traffic_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TRAFFIC_POST_ID` (`post_id`),
  ADD KEY `MAGEPLAZA_BLOG_POST_TRAFFIC_TRAFFIC_ID` (`traffic_id`);

--
-- Indexes for table `mageplaza_blog_tag`
--
ALTER TABLE `mageplaza_blog_tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `mageplaza_blog_topic`
--
ALTER TABLE `mageplaza_blog_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `mview_state`
--
ALTER TABLE `mview_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  ADD KEY `MVIEW_STATE_MODE` (`mode`);

--
-- Indexes for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Indexes for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Indexes for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Indexes for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`),
  ADD KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_SUBSCRIBER_EMAIL` (`subscriber_email`);

--
-- Indexes for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  ADD KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  ADD KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  ADD KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  ADD KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`),
  ADD KEY `OAUTH_NONCE_TIMESTAMP` (`timestamp`);

--
-- Indexes for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  ADD KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  ADD KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  ADD KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`);

--
-- Indexes for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`);

--
-- Indexes for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Indexes for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Indexes for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Indexes for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Indexes for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  ADD KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  ADD KEY `QUOTE_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD PRIMARY KEY (`address_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Indexes for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD PRIMARY KEY (`entity_id`,`quote_id`),
  ADD KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`);

--
-- Indexes for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Indexes for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  ADD KEY `RATING_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Indexes for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Indexes for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  ADD KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Indexes for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID` (`viewer_id`);

--
-- Indexes for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_users`
--
ALTER TABLE `reporting_users`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  ADD KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  ADD KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  ADD KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  ADD KEY `REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Indexes for table `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `REVIEW_ENTITY_ID` (`entity_id`),
  ADD KEY `REVIEW_STATUS_ID` (`status_id`),
  ADD KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Indexes for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  ADD KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  ADD KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Indexes for table `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`),
  ADD KEY `REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  ADD UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  ADD KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Indexes for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  ADD KEY `SALESRULE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  ADD KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `SALES_CREDITMEMO_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_creditmemo_grid`
--
ALTER TABLE `sales_creditmemo_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`);
ALTER TABLE `sales_creditmemo_grid` ADD FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_STATE` (`state`),
  ADD KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice_grid`
--
ALTER TABLE `sales_invoice_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_GRID_STATE` (`state`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`);
ALTER TABLE `sales_invoice_grid` ADD FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS` (`status`),
  ADD KEY `SALES_ORDER_STATE` (`state`),
  ADD KEY `SALES_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  ADD KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_grid`
--
ALTER TABLE `sales_order_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_GRID_STATUS` (`status`),
  ADD KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  ADD KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  ADD KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`);
ALTER TABLE `sales_order_grid` ADD FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  ADD KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_status`
--
ALTER TABLE `sales_order_status`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD PRIMARY KEY (`status`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD PRIMARY KEY (`status`,`state`);

--
-- Indexes for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`);

--
-- Indexes for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD PRIMARY KEY (`tax_item_id`),
  ADD UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`);

--
-- Indexes for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`);

--
-- Indexes for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`);

--
-- Indexes for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`);

--
-- Indexes for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_grid`
--
ALTER TABLE `sales_shipment_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`);
ALTER TABLE `sales_shipment_grid` ADD FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`);

--
-- Indexes for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `search_query`
--
ALTER TABLE `search_query`
  ADD PRIMARY KEY (`query_id`),
  ADD UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  ADD KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  ADD KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  ADD KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  ADD KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`);
ALTER TABLE `search_synonyms` ADD FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`);

--
-- Indexes for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `SENDFRIEND_LOG_IP` (`ip`),
  ADD KEY `SENDFRIEND_LOG_TIME` (`time`);

--
-- Indexes for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `setup_module`
--
ALTER TABLE `setup_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  ADD PRIMARY KEY (`pk`),
  ADD UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`);

--
-- Indexes for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SIGNIFYD_CASE_ORDER_ID` (`order_id`),
  ADD UNIQUE KEY `SIGNIFYD_CASE_CASE_ID` (`case_id`);

--
-- Indexes for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`sitemap_id`),
  ADD KEY `SITEMAP_STORE_ID` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `STORE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  ADD KEY `STORE_GROUP_ID` (`group_id`);

--
-- Indexes for table `store_group`
--
ALTER TABLE `store_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `STORE_GROUP_CODE` (`code`),
  ADD KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`);

--
-- Indexes for table `store_website`
--
ALTER TABLE `store_website`
  ADD PRIMARY KEY (`website_id`),
  ADD UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  ADD KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`);

--
-- Indexes for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`),
  ADD KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  ADD KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  ADD KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Indexes for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`),
  ADD KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  ADD KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  ADD KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Indexes for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  ADD KEY `TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `TEMANDO_CHKT_ADDR_SHPP_ADDR_ID_QUOTE_ADDR_ADDR_ID` (`shipping_address_id`);

--
-- Indexes for table `temando_collection_point_search`
--
ALTER TABLE `temando_collection_point_search`
  ADD PRIMARY KEY (`shipping_address_id`),
  ADD KEY `TEMANDO_COLLECTION_POINT_SRCH_COUNTRY_ID_DIR_COUNTRY_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `temando_order`
--
ALTER TABLE `temando_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `TEMANDO_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` (`order_id`);

--
-- Indexes for table `temando_order_collection_point`
--
ALTER TABLE `temando_order_collection_point`
  ADD PRIMARY KEY (`recipient_address_id`);

--
-- Indexes for table `temando_quote_collection_point`
--
ALTER TABLE `temando_quote_collection_point`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `FK_4ABED96BBA0BAF57A5EC10E47B5A0F12` (`recipient_address_id`);

--
-- Indexes for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `TEMANDO_SHIPMENT_SHIPMENT_ID_EXT_SHIPMENT_ID` (`shipment_id`,`ext_shipment_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD PRIMARY KEY (`theme_files_id`),
  ADD KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`);

--
-- Indexes for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`);

--
-- Indexes for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`),
  ADD UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  ADD KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  ADD KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`);

--
-- Indexes for table `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`variable_id`),
  ADD UNIQUE KEY `VARIABLE_CODE` (`code`);

--
-- Indexes for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  ADD KEY `VARIABLE_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `VAULT_PAYMENT_TOKEN_HASH_UNIQUE_INDEX_PUBLIC_HASH` (`public_hash`),
  ADD UNIQUE KEY `UNQ_54DCE14AEAEA03B587F9EF723EB10A10` (`payment_method_code`,`customer_id`,`gateway_token`),
  ADD KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `vault_payment_token_order_payment_link`
--
ALTER TABLE `vault_payment_token_order_payment_link`
  ADD PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  ADD KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`);

--
-- Indexes for table `vertex_customer_code`
--
ALTER TABLE `vertex_customer_code`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `vertex_custom_option_flex_field`
--
ALTER TABLE `vertex_custom_option_flex_field`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `VERTEX_CUSTOM_OPTION_FLEX_FIELD_OPTION_ID_WEBSITE_ID` (`option_id`,`website_id`);

--
-- Indexes for table `vertex_invoice_sent`
--
ALTER TABLE `vertex_invoice_sent`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `vertex_order_invoice_status`
--
ALTER TABLE `vertex_order_invoice_status`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `vertex_sales_creditmemo_item_invoice_text_code`
--
ALTER TABLE `vertex_sales_creditmemo_item_invoice_text_code`
  ADD UNIQUE KEY `UNQ_4BC40DA748D7713ADA661D2DE1BCF161` (`item_id`,`invoice_text_code`);

--
-- Indexes for table `vertex_sales_creditmemo_item_tax_code`
--
ALTER TABLE `vertex_sales_creditmemo_item_tax_code`
  ADD UNIQUE KEY `VERTEX_SALES_CREDITMEMO_ITEM_TAX_CODE_ITEM_ID_TAX_CODE` (`item_id`,`tax_code`);

--
-- Indexes for table `vertex_sales_creditmemo_item_vertex_tax_code`
--
ALTER TABLE `vertex_sales_creditmemo_item_vertex_tax_code`
  ADD UNIQUE KEY `UNQ_31D7AADB3412BC7E7C1C98D5CC3A5D46` (`item_id`,`vertex_tax_code`);

--
-- Indexes for table `vertex_sales_order_item_invoice_text_code`
--
ALTER TABLE `vertex_sales_order_item_invoice_text_code`
  ADD UNIQUE KEY `UNQ_96F6BE3160A4185CEA4D866018EAF6DC` (`item_id`,`invoice_text_code`);

--
-- Indexes for table `vertex_sales_order_item_tax_code`
--
ALTER TABLE `vertex_sales_order_item_tax_code`
  ADD UNIQUE KEY `VERTEX_SALES_ORDER_ITEM_TAX_CODE_ITEM_ID_TAX_CODE` (`item_id`,`tax_code`);

--
-- Indexes for table `vertex_sales_order_item_vertex_tax_code`
--
ALTER TABLE `vertex_sales_order_item_vertex_tax_code`
  ADD UNIQUE KEY `VERTEX_SALES_ORDER_ITEM_VERTEX_TAX_CODE_ITEM_ID_VERTEX_TAX_CODE` (`item_id`,`vertex_tax_code`);

--
-- Indexes for table `vertex_taxrequest`
--
ALTER TABLE `vertex_taxrequest`
  ADD PRIMARY KEY (`request_id`),
  ADD UNIQUE KEY `VERTEX_TAXREQUEST_REQUEST_ID` (`request_id`),
  ADD KEY `VERTEX_TAXREQUEST_REQUEST_TYPE` (`request_type`),
  ADD KEY `VERTEX_TAXREQUEST_ORDER_ID` (`order_id`);

--
-- Indexes for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  ADD KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  ADD KEY `WEEE_TAX_COUNTRY` (`country`),
  ADD KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`),
  ADD KEY `WIDGET_WIDGET_CODE` (`widget_code`);

--
-- Indexes for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD PRIMARY KEY (`instance_id`),
  ADD KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`);

--
-- Indexes for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `WISHLIST_SHARED` (`shared`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`wishlist_item_id`),
  ADD KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `WISHLIST_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`),
  ADD KEY `WISHLIST_ITEM_OPTION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Notification id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  MODIFY `password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Password Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `amazon_customer`
--
ALTER TABLE `amazon_customer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `amazon_pending_authorization`
--
ALTER TABLE `amazon_pending_authorization`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `amazon_pending_capture`
--
ALTER TABLE `amazon_pending_capture`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `amazon_pending_refund`
--
ALTER TABLE `amazon_pending_refund`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `amazon_quote`
--
ALTER TABLE `amazon_quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `amazon_sales_order`
--
ALTER TABLE `amazon_sales_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `authorization_role`
--
ALTER TABLE `authorization_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Stock Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';

--
-- AUTO_INCREMENT for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';

--
-- AUTO_INCREMENT for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';

--
-- AUTO_INCREMENT for table `catalogrule_product_price_replica`
--
ALTER TABLE `catalogrule_product_price_replica`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';

--
-- AUTO_INCREMENT for table `catalogrule_product_replica`
--
ALTER TABLE `catalogrule_product_replica`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';

--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID';

--
-- AUTO_INCREMENT for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';

--
-- AUTO_INCREMENT for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Selection Id';

--
-- AUTO_INCREMENT for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  MODIFY `record_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record Id', AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=674;

--
-- AUTO_INCREMENT for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Action Id';

--
-- AUTO_INCREMENT for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';

--
-- AUTO_INCREMENT for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';

--
-- AUTO_INCREMENT for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option ID';

--
-- AUTO_INCREMENT for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID';

--
-- AUTO_INCREMENT for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID';

--
-- AUTO_INCREMENT for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID';

--
-- AUTO_INCREMENT for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID';

--
-- AUTO_INCREMENT for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID';

--
-- AUTO_INCREMENT for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID';

--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';

--
-- AUTO_INCREMENT for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_log`
--
ALTER TABLE `customer_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID', AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';

--
-- AUTO_INCREMENT for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';

--
-- AUTO_INCREMENT for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Region Id', AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';

--
-- AUTO_INCREMENT for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Price ID';

--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';

--
-- AUTO_INCREMENT for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item ID';

--
-- AUTO_INCREMENT for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';

--
-- AUTO_INCREMENT for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';

--
-- AUTO_INCREMENT for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';

--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id', AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id';

--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  MODIFY `swatch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id', AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';

--
-- AUTO_INCREMENT for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Element Id', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id';

--
-- AUTO_INCREMENT for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_abandoned_cart`
--
ALTER TABLE `email_abandoned_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_automation`
--
ALTER TABLE `email_automation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_campaign`
--
ALTER TABLE `email_campaign`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_catalog`
--
ALTER TABLE `email_catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `email_contact`
--
ALTER TABLE `email_contact`
  MODIFY `email_contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_contact_consent`
--
ALTER TABLE `email_contact_consent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_failed_auth`
--
ALTER TABLE `email_failed_auth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_importer`
--
ALTER TABLE `email_importer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_order`
--
ALTER TABLE `email_order`
  MODIFY `email_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_review`
--
ALTER TABLE `email_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_rules`
--
ALTER TABLE `email_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';

--
-- AUTO_INCREMENT for table `email_wishlist`
--
ALTER TABLE `email_wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flag`
--
ALTER TABLE `flag`
  MODIFY `flag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flag Id', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';

--
-- AUTO_INCREMENT for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id';

--
-- AUTO_INCREMENT for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `import_history`
--
ALTER TABLE `import_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History record Id';

--
-- AUTO_INCREMENT for table `indexer_state`
--
ALTER TABLE `indexer_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `integration`
--
ALTER TABLE `integration`
  MODIFY `integration_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Integration ID';

--
-- AUTO_INCREMENT for table `klarna_core_order`
--
ALTER TABLE `klarna_core_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `klarna_payments_quote`
--
ALTER TABLE `klarna_payments_quote`
  MODIFY `payments_quote_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payments Id';

--
-- AUTO_INCREMENT for table `layout_link`
--
ALTER TABLE `layout_link`
  MODIFY `layout_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layout_update`
--
ALTER TABLE `layout_update`
  MODIFY `layout_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mageplaza_bannerslider_banner`
--
ALTER TABLE `mageplaza_bannerslider_banner`
  MODIFY `banner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Banner ID', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mageplaza_bannerslider_slider`
--
ALTER TABLE `mageplaza_bannerslider_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Slider ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mageplaza_blog_author`
--
ALTER TABLE `mageplaza_blog_author`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Author ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mageplaza_blog_category`
--
ALTER TABLE `mageplaza_blog_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Category ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mageplaza_blog_comment`
--
ALTER TABLE `mageplaza_blog_comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Comment ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_comment_like`
--
ALTER TABLE `mageplaza_blog_comment_like`
  MODIFY `like_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Like ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_post`
--
ALTER TABLE `mageplaza_blog_post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Post ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_post_history`
--
ALTER TABLE `mageplaza_blog_post_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_post_like`
--
ALTER TABLE `mageplaza_blog_post_like`
  MODIFY `like_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Like ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_post_traffic`
--
ALTER TABLE `mageplaza_blog_post_traffic`
  MODIFY `traffic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Traffic ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_tag`
--
ALTER TABLE `mageplaza_blog_tag`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tag ID';

--
-- AUTO_INCREMENT for table `mageplaza_blog_topic`
--
ALTER TABLE `mageplaza_blog_topic`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Topic ID';

--
-- AUTO_INCREMENT for table `mview_state`
--
ALTER TABLE `mview_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'View State Id';

--
-- AUTO_INCREMENT for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';

--
-- AUTO_INCREMENT for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';

--
-- AUTO_INCREMENT for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';

--
-- AUTO_INCREMENT for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';

--
-- AUTO_INCREMENT for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log Id';

--
-- AUTO_INCREMENT for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';

--
-- AUTO_INCREMENT for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';

--
-- AUTO_INCREMENT for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Report Id';

--
-- AUTO_INCREMENT for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Row Id';

--
-- AUTO_INCREMENT for table `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Session id';

--
-- AUTO_INCREMENT for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';

--
-- AUTO_INCREMENT for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quote_address`
--
ALTER TABLE `quote_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Id', AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  MODIFY `address_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';

--
-- AUTO_INCREMENT for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quote_item`
--
ALTER TABLE `quote_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quote_payment`
--
ALTER TABLE `quote_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payment Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  MODIFY `rate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rate Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote id';

--
-- AUTO_INCREMENT for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id';

--
-- AUTO_INCREMENT for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';

--
-- AUTO_INCREMENT for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Module Id';

--
-- AUTO_INCREMENT for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `reporting_users`
--
ALTER TABLE `reporting_users`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id';

--
-- AUTO_INCREMENT for table `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id', AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT for table `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review id';

--
-- AUTO_INCREMENT for table `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review detail id';

--
-- AUTO_INCREMENT for table `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review entity id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id';

--
-- AUTO_INCREMENT for table `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Status id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';

--
-- AUTO_INCREMENT for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id';

--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';

--
-- AUTO_INCREMENT for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Label Id';

--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  MODIFY `tax_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Id';

--
-- AUTO_INCREMENT for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  MODIFY `tax_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id';

--
-- AUTO_INCREMENT for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id';

--
-- AUTO_INCREMENT for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  MODIFY `meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `search_query`
--
ALTER TABLE `search_query`
  MODIFY `query_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Query ID', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id';

--
-- AUTO_INCREMENT for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';

--
-- AUTO_INCREMENT for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  MODIFY `pk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';

--
-- AUTO_INCREMENT for table `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `sitemap_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id';

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Store Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_group`
--
ALTER TABLE `store_group`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Group Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_website`
--
ALTER TABLE `store_website`
  MODIFY `website_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Website Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id';

--
-- AUTO_INCREMENT for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';

--
-- AUTO_INCREMENT for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id';

--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';

--
-- AUTO_INCREMENT for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `temando_order`
--
ALTER TABLE `temando_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `temando_quote_collection_point`
--
ALTER TABLE `temando_quote_collection_point`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theme_file`
--
ALTER TABLE `theme_file`
  MODIFY `theme_files_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier';

--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation';

--
-- AUTO_INCREMENT for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  MODIFY `bookmark_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  MODIFY `url_rewrite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id', AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `variable`
--
ALTER TABLE `variable`
  MODIFY `variable_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Id';

--
-- AUTO_INCREMENT for table `variable_value`
--
ALTER TABLE `variable_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id';

--
-- AUTO_INCREMENT for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';

--
-- AUTO_INCREMENT for table `vertex_custom_option_flex_field`
--
ALTER TABLE `vertex_custom_option_flex_field`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Map Entity ID';

--
-- AUTO_INCREMENT for table `vertex_taxrequest`
--
ALTER TABLE `vertex_taxrequest`
  MODIFY `request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weee_tax`
--
ALTER TABLE `weee_tax`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Widget Id';

--
-- AUTO_INCREMENT for table `widget_instance`
--
ALTER TABLE `widget_instance`
  MODIFY `instance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Instance Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Page Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `wishlist_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `amazon_customer`
--
ALTER TABLE `amazon_customer`
  ADD CONSTRAINT `AMAZON_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `amazon_quote`
--
ALTER TABLE `amazon_quote`
  ADD CONSTRAINT `AMAZON_QUOTE_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `amazon_sales_order`
--
ALTER TABLE `amazon_sales_order`
  ADD CONSTRAINT `AMAZON_SALES_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_frontend_action`
--
ALTER TABLE `catalog_product_frontend_action`
  ADD CONSTRAINT `CAT_PRD_FRONTEND_ACTION_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_campaign`
--
ALTER TABLE `email_campaign`
  ADD CONSTRAINT `EMAIL_CAMPAIGN_STORE_ID_CORE/STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_catalog`
--
ALTER TABLE `email_catalog`
  ADD CONSTRAINT `EMAIL_CATALOG_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD CONSTRAINT `EMAIL_CONTACT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_contact_consent`
--
ALTER TABLE `email_contact_consent`
  ADD CONSTRAINT `FK_17E9EA0C469163E550BC6B732AC49FDB` FOREIGN KEY (`email_contact_id`) REFERENCES `email_contact` (`email_contact_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_order`
--
ALTER TABLE `email_order`
  ADD CONSTRAINT `EMAIL_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EMAIL_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `email_wishlist`
--
ALTER TABLE `email_wishlist`
  ADD CONSTRAINT `EMAIL_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EMAIL_WISHLIST_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

--
-- Constraints for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `integration`
--
ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_bannerslider_banner_slider`
--
ALTER TABLE `mageplaza_bannerslider_banner_slider`
  ADD CONSTRAINT `FK_824689F307EEDC9AF4DD5A7D11110615` FOREIGN KEY (`banner_id`) REFERENCES `mageplaza_bannerslider_banner` (`banner_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_988AB80B5D2DF60CAD31BAFF020B3903` FOREIGN KEY (`slider_id`) REFERENCES `mageplaza_bannerslider_slider` (`slider_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_comment`
--
ALTER TABLE `mageplaza_blog_comment`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_COMMENT_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_comment_like`
--
ALTER TABLE `mageplaza_blog_comment_like`
  ADD CONSTRAINT `FK_1AA6C994694449283752B6F4C2373B42` FOREIGN KEY (`comment_id`) REFERENCES `mageplaza_blog_comment` (`comment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEPLAZA_BLOG_COMMENT_LIKE_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post`
--
ALTER TABLE `mageplaza_blog_post`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_AUTHOR_ID_MAGEPLAZA_BLOG_AUTHOR_USER_ID` FOREIGN KEY (`author_id`) REFERENCES `mageplaza_blog_author` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_category`
--
ALTER TABLE `mageplaza_blog_post_category`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_CATEGORY_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_CTGR_CTGR_ID_MAGEPLAZA_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `mageplaza_blog_category` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_like`
--
ALTER TABLE `mageplaza_blog_post_like`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_LIKE_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_product`
--
ALTER TABLE `mageplaza_blog_post_product`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_PRD_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_PRODUCT_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_tag`
--
ALTER TABLE `mageplaza_blog_post_tag`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_TAG_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_TAG_TAG_ID_MAGEPLAZA_BLOG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mageplaza_blog_tag` (`tag_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_topic`
--
ALTER TABLE `mageplaza_blog_post_topic`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_TOPIC_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_TOPIC_TOPIC_ID_MAGEPLAZA_BLOG_TOPIC_TOPIC_ID` FOREIGN KEY (`topic_id`) REFERENCES `mageplaza_blog_topic` (`topic_id`) ON DELETE CASCADE;

--
-- Constraints for table `mageplaza_blog_post_traffic`
--
ALTER TABLE `mageplaza_blog_post_traffic`
  ADD CONSTRAINT `MAGEPLAZA_BLOG_POST_TRAFFIC_POST_ID_MAGEPLAZA_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `mageplaza_blog_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

--
-- Constraints for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `release_notification_viewer_log`
--
ALTER TABLE `release_notification_viewer_log`
  ADD CONSTRAINT `RELEASE_NOTIFICATION_VIEWER_LOG_VIEWER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`viewer_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `search_query`
--
ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  ADD CONSTRAINT `SIGNIFYD_CASE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `store_group`
--
ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  ADD CONSTRAINT `TEMANDO_CHKT_ADDR_SHPP_ADDR_ID_QUOTE_ADDR_ADDR_ID` FOREIGN KEY (`shipping_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_collection_point_search`
--
ALTER TABLE `temando_collection_point_search`
  ADD CONSTRAINT `TEMANDO_COLLECTION_POINT_SRCH_COUNTRY_ID_DIR_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country_id`) REFERENCES `directory_country` (`country_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `TEMANDO_COLLECTION_POINT_SRCH_SHPP_ADDR_ID_QUOTE_ADDR_ADDR_ID` FOREIGN KEY (`shipping_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_order`
--
ALTER TABLE `temando_order`
  ADD CONSTRAINT `TEMANDO_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_order_collection_point`
--
ALTER TABLE `temando_order_collection_point`
  ADD CONSTRAINT `FK_EEB9F0F035B969ECA24160257CFC6F6B` FOREIGN KEY (`recipient_address_id`) REFERENCES `sales_order_address` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_quote_collection_point`
--
ALTER TABLE `temando_quote_collection_point`
  ADD CONSTRAINT `FK_4ABED96BBA0BAF57A5EC10E47B5A0F12` FOREIGN KEY (`recipient_address_id`) REFERENCES `temando_collection_point_search` (`shipping_address_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  ADD CONSTRAINT `TEMANDO_SHIPMENT_SHIPMENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`shipment_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `translation`
--
ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

--
-- Constraints for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `vault_payment_token_order_payment_link`
--
ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_OPTION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
